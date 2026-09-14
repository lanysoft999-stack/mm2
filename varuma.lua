-- [Varuma Hack v5.1 - 2s Death FX, V Logo, Short Config, Fat Tracers]

local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")
local TweenService = game:GetService("TweenService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera
local Mouse = LocalPlayer:GetMouse()

if CoreGui:FindFirstChild("VarumaHackUI") then CoreGui.VarumaHackUI:Destroy() end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "VarumaHackUI"
ScreenGui.Parent = CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false
ScreenGui.IgnoreGuiInset = true

local isUnloaded = false

local OriginalLighting = {
    Brightness = Lighting.Brightness, ClockTime = Lighting.ClockTime,
    GlobalShadows = Lighting.GlobalShadows,
    FogEnd = Lighting.FogEnd, FogStart = Lighting.FogStart, FogColor = Lighting.FogColor,
    Ambient = Lighting.Ambient, OutdoorAmbient = Lighting.OutdoorAmbient,
    EnvironmentDiffuseScale = Lighting.EnvironmentDiffuseScale,
    EnvironmentSpecularScale = Lighting.EnvironmentSpecularScale
}

local Config = {
    Rage = {
        Enabled = false, Spinbot = false,
        Radar = false, RadarRange = 150, RadarRadius = 60,
        AntiMurderer = false, AntiMurdererRange = 20, AntiMurdererCooldown = 0.4,
        SilentAim = false, SilentAimFOV = 200, SilentAimVisibleOnly = true
    },
    Legit = {
        SheriffAimbot = false, FOVRadius = 120, FOVShow = true,
        AimSmoothness = 0.25, AimTarget = 1, FOVColor = 1,
        Triggerbot = false, TriggerRadius = 15, TriggerDelay = 0,
        TriggerKey = Enum.KeyCode.E,
        HitMarker = false, AutoReload = false
    },
    Visuals = {
        Chams = true, GunChams = true, SelfChams = false, SelfChamsTransparency = 0.5,
        BoxESP = false, SkeletonESP = false,
        ThirdPerson = false, Fullbright = false, FogEnabled = false,
        FogColorIndex = 1, FogDistance = 500,
        BulletTracers = false, PlayerTrails = false, JumpEffect = false, JumpEffectColor = 2,
        DeathEffects = false, DeathEffectType = 1, DeathEffectColor = 1,
        SelfColor = 1, SelfColorEnabled = false
    },
    Misc = {
        AutoGunPick = false, WalkSpeedEnabled = false, WalkSpeed = 16, Bhop = false,
        AutoFarmCoins = false
    },
    Fling = { Enabled = false, AntiFling = true, FlingPower = 150000, Duration = 8 },
    Settings = { MenuKey = Enum.KeyCode.Insert }
}

local activeDrawings = { Highlights = {}, Skeletons = {}, Radar = {}, Boxes = {} }
local uiSetters = {}
local activeTracers = {}
local jumpBursts = {}
local hitMarkers = {}
local recentDeaths = {}

local MURDERER_COLOR = Color3.fromRGB(255, 50, 50)
local SHERIFF_COLOR = Color3.fromRGB(60, 130, 255)
local INNOCENT_COLOR = Color3.fromRGB(240, 240, 240)

local fogColorNames = {"Standard", "White", "Blue", "Purple", "Red"}
local fogColorValues = {
    nil,
    Color3.fromRGB(240, 245, 255),
    Color3.fromRGB(90, 150, 255),
    Color3.fromRGB(170, 90, 255),
    Color3.fromRGB(255, 70, 70)
}

local fovColorNames = {"White", "Blue", "Red"}
local fovColorValues = {
    Color3.fromRGB(255, 255, 255),
    Color3.fromRGB(60, 150, 255),
    Color3.fromRGB(255, 60, 60)
}

local effectColors = {
    Color3.fromRGB(255, 60, 60),
    Color3.fromRGB(60, 220, 255),
    Color3.fromRGB(180, 100, 255),
    Color3.fromRGB(255, 200, 60),
    Color3.fromRGB(80, 220, 100),
    Color3.fromRGB(245, 245, 250)
}
local effectColorNames = {"Red", "Cyan", "Purple", "Gold", "Green", "White"}
local deathEffectTypes = {"CS2 Shockwave", "Nova Ring", "Shatter"}
local selfColorNames = {"Original", "Gray", "Red", "Blue", "White"}
local selfColorValues = {
    nil, Color3.fromRGB(120, 120, 120), Color3.fromRGB(255, 50, 50),
    Color3.fromRGB(60, 130, 255), Color3.fromRGB(245, 245, 250)
}
local aimTargetNames = {"Murderer Only", "Sheriff Only", "All Players"}
local jumpColorNames = {"Red", "Blue", "Cyan", "Purple", "Gold", "White"}
local jumpColorValues = {
    Color3.fromRGB(255, 70, 70),
    Color3.fromRGB(60, 150, 255),
    Color3.fromRGB(60, 220, 255),
    Color3.fromRGB(180, 100, 255),
    Color3.fromRGB(255, 200, 60),
    Color3.fromRGB(245, 245, 250)
}
local selfOriginalColors = {}

-- ==================== ROLE STATE ====================
local myRole = "LOADING"

local function recalcMyRole()
    if not LocalPlayer.Character then myRole = "LOADING"; return end
    local char = LocalPlayer.Character
    local backpack = LocalPlayer:FindFirstChild("Backpack")
    local function contains(c, names)
        if not c then return false end
        for _, item in ipairs(c:GetChildren()) do
            if item:IsA("Tool") then
                for _, n in ipairs(names) do
                    if item.Name == n then return true end
                end
            end
        end
        return false
    end
    if contains(char, {"Knife"}) or contains(backpack, {"Knife"}) then myRole = "MURDERER"
    elseif contains(char, {"Gun", "Revolver"}) or contains(backpack, {"Gun", "Revolver"}) then myRole = "SHERIFF"
    else myRole = "INNOCENT" end
end

local function bindRoleListeners()
    local backpack = LocalPlayer:FindFirstChild("Backpack")
    if backpack then
        backpack.ChildAdded:Connect(function(c) if c:IsA("Tool") then task.defer(recalcMyRole) end end)
        backpack.ChildRemoved:Connect(function(c) if c:IsA("Tool") then task.defer(recalcMyRole) end end)
    end
    LocalPlayer.ChildAdded:Connect(function(c) if c.Name == "Backpack" then task.defer(bindRoleListeners) end end)
end
bindRoleListeners()

local function bindCharacterListeners(char)
    char.ChildAdded:Connect(function(c) if c:IsA("Tool") then task.defer(recalcMyRole) end end)
    char.ChildRemoved:Connect(function(c) if c:IsA("Tool") then task.defer(recalcMyRole) end end)
end

if LocalPlayer.Character then bindCharacterListeners(LocalPlayer.Character) end
LocalPlayer.CharacterAdded:Connect(function(char)
    myRole = "LOADING"; bindCharacterListeners(char); task.defer(recalcMyRole)
    task.wait(0.3)
    selfOriginalColors = {}
    if applySelfColor then applySelfColor() end
end)
LocalPlayer.CharacterRemoving:Connect(function() myRole = "LOADING" end)

-- ==================== HELPERS ====================
local function isMurderer(player)
    local char = player.Character
    local backpack = player:FindFirstChild("Backpack")
    local function check(c)
        if not c then return false end
        for _, item in ipairs(c:GetChildren()) do
            if item:IsA("Tool") and item.Name == "Knife" then return true end
        end
        return false
    end
    return check(char) or check(backpack)
end

local function isSheriff(player)
    local char = player.Character
    local backpack = player:FindFirstChild("Backpack")
    local function check(c)
        if not c then return false end
        for _, item in ipairs(c:GetChildren()) do
            if item:IsA("Tool") and (item.Name == "Gun" or item.Name == "Revolver") then return true end
        end
        return false
    end
    return check(char) or check(backpack)
end

local function isPlayerAlive(player)
    if player == LocalPlayer then return false end
    local char = player.Character
    if not char or not char.Parent then return false end
    local hum = char:FindFirstChildOfClass("Humanoid")
    local hrp = char:FindFirstChild("HumanoidRootPart")
    if not hum or not hrp or not hrp.Parent then return false end
    if hum.Health <= 0 then return false end
    local state = hum:GetState()
    if state == Enum.HumanoidStateType.Dead then return false end
    local deathT = recentDeaths[player]
    if deathT and (tick() - deathT) < 3 then return false end
    return true
end

local function hasGunEquipped()
    if not LocalPlayer.Character then return false end
    local function check(c)
        for _, item in ipairs(c:GetChildren()) do
            if item:IsA("Tool") and (item.Name == "Gun" or item.Name == "Revolver") then return true end
        end
        return false
    end
    return check(LocalPlayer.Character) or check(LocalPlayer.Backpack)
end

local function hasKnife()
    if not LocalPlayer.Character then return false end
    local function check(c)
        for _, item in ipairs(c:GetChildren()) do
            if item:IsA("Tool") and item.Name == "Knife" then return true end
        end
        return false
    end
    return check(LocalPlayer.Character) or check(LocalPlayer.Backpack)
end

local function getRoleColor(player)
    if isMurderer(player) then return MURDERER_COLOR
    elseif isSheriff(player) then return SHERIFF_COLOR
    else return INNOCENT_COLOR end
end

local function getRoleName(player)
    if isMurderer(player) then return "MURDERER"
    elseif isSheriff(player) then return "SHERIFF"
    else return "INNOCENT" end
end

local function getDistanceToPlayer(player)
    if not LocalPlayer.Character or not player.Character then return 0 end
    local myHRP = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    local theirHRP = player.Character:FindFirstChild("HumanoidRootPart")
    if not myHRP or not theirHRP then return 0 end
    return math.floor((myHRP.Position - theirHRP.Position).Magnitude)
end

local function getEffectColor()
    return effectColors[Config.Visuals.DeathEffectColor] or effectColors[1]
end

local function getFOVColor()
    return fovColorValues[Config.Legit.FOVColor] or fovColorValues[1]
end

-- ==================== DEATH FX WATCHDOG (force cleanup after 2s) ====================
task.spawn(function()
    while not isUnloaded do
        task.wait(1)
        if isUnloaded then break end
        local now = tick()
        for _, obj in ipairs(Workspace:GetDescendants()) do
            if obj.Name == "VarumaDeathFX" or obj.Name == "VarumaDeathLight" then
                local born = obj:GetAttribute("VarumaBorn")
                if born and (now - born) > 2.0 then
                    pcall(function() obj:Destroy() end)
                end
            end
        end
    end
end)

-- ==================== ESP WATCHDOG ====================
local function cleanupDrawings()
    for player, r in pairs(activeDrawings.Radar) do
        if not player.Parent or not player.Character then
            if r.shaft1 then pcall(function() r.shaft1:Remove() end) end
            if r.shaft2 then pcall(function() r.shaft2:Remove() end) end
            if r.tip1 then pcall(function() r.tip1:Remove() end) end
            if r.tip2 then pcall(function() r.tip2:Remove() end) end
            activeDrawings.Radar[player] = nil
        end
    end
    for player, b in pairs(activeDrawings.Boxes) do
        if not player.Parent then
            for _, l in ipairs(b.corners) do pcall(function() l:Remove() end) end
            pcall(function() b.healthBar:Remove() end)
            pcall(function() b.nameText:Remove() end)
            pcall(function() b.distText:Remove() end)
            activeDrawings.Boxes[player] = nil
        end
    end
    for player, lines in pairs(activeDrawings.Skeletons) do
        if not player.Parent then
            for _, l in ipairs(lines) do pcall(function() l:Remove() end) end
            activeDrawings.Skeletons[player] = nil
        end
    end
    for player, hl in pairs(activeDrawings.Highlights) do
        if not player.Parent or (hl and not hl.Parent) then
            if hl then pcall(function() hl:Destroy() end) end
            activeDrawings.Highlights[player] = nil
        end
    end
    for i = #activeTracers, 1, -1 do
        local t = activeTracers[i]
        if not t.line then table.remove(activeTracers, i) end
    end
    for i = #hitMarkers, 1, -1 do
        local hm = hitMarkers[i]
        if hm.age > 1 then
            for _, l in ipairs(hm.lines) do pcall(function() l:Remove() end) end
            table.remove(hitMarkers, i)
        end
    end
end

task.spawn(function()
    while not isUnloaded do
        task.wait(5)
        if isUnloaded then break end
        pcall(cleanupDrawings)
    end
end)

-- ==================== ROUND TIMER ====================
local function formatTime(seconds)
    if seconds < 0 then seconds = 0 end
    local m = math.floor(seconds / 60)
    local s = math.floor(seconds % 60)
    return string.format("%d:%02d", m, s)
end

local roundTimerSource = nil
local roundTimerLastScan = 0
local estimatedRoundStart = tick()

local function findRoundTimer()
    for _, name in ipairs({"RoundTimeLeft", "TimeRemaining", "RoundEndTime", "RoundStartTime", "TimeLeft", "Timer", "RoundTimer", "Time"}) do
        local attr = LocalPlayer:GetAttribute(name)
        if attr and type(attr) == "number" then
            return {type = "attr", obj = LocalPlayer, name = name}
        end
    end
    for _, name in ipairs({"RoundTimeLeft", "TimeRemaining", "RoundTimer", "TimeLeft"}) do
        local attr = Workspace:GetAttribute(name)
        if attr and type(attr) == "number" then
            return {type = "attr", obj = Workspace, name = name}
        end
    end
    local containers = {ReplicatedStorage, Workspace, Lighting}
    if ReplicatedStorage:FindFirstChild("Remotes") then table.insert(containers, ReplicatedStorage.Remotes) end
    if ReplicatedStorage:FindFirstChild("Modules") then table.insert(containers, ReplicatedStorage.Modules) end
    for _, container in ipairs(containers) do
        for _, child in ipairs(container:GetDescendants()) do
            if child:IsA("NumberValue") or child:IsA("IntValue") then
                local lower = string.lower(child.Name)
                if (string.find(lower, "time") or string.find(lower, "timer") or string.find(lower, "round"))
                   and not string.find(lower, "spawn") and not string.find(lower, "cooldown") then
                    local v = child.Value
                    if type(v) == "number" and v > 5 and v < 1000 then
                        return {type = "value", obj = child}
                    end
                end
            end
        end
    end
    for _, plr in ipairs(Players:GetPlayers()) do
        for _, name in ipairs({"RoundTimeLeft", "TimeRemaining", "RoundTimer"}) do
            local attr = plr:GetAttribute(name)
            if attr and type(attr) == "number" then
                return {type = "attr", obj = plr, name = name}
            end
        end
    end
    return nil
end

local function getRoundTimeRemaining()
    local now = tick()
    if not roundTimerSource or now - roundTimerLastScan > 3 then
        roundTimerSource = findRoundTimer()
        roundTimerLastScan = now
    end
    if roundTimerSource then
        local v
        if roundTimerSource.type == "attr" then
            v = roundTimerSource.obj:GetAttribute(roundTimerSource.name)
        elseif roundTimerSource.type == "value" then
            if not roundTimerSource.obj.Parent then
                roundTimerSource = nil
                return nil
            end
            v = roundTimerSource.obj.Value
        end
        if v and type(v) == "number" then
            if v > 1e9 then return math.max(0, v - os.time())
            elseif v > 600 then return math.max(0, v / 1000)
            elseif v > 0 and v < 600 then return v end
        end
    end
    local elapsed = tick() - estimatedRoundStart
    local remaining = 180 - elapsed
    if remaining < 0 then remaining = 0 end
    return remaining
end

task.spawn(function()
    local lastChar = LocalPlayer.Character
    while not isUnloaded do
        task.wait(1)
        if LocalPlayer.Character ~= lastChar then
            lastChar = LocalPlayer.Character
            estimatedRoundStart = tick()
        end
    end
end)

-- ==================== SELF COLOR ====================
function applySelfColor()
    local char = LocalPlayer.Character
    if not char then return end
    local presetIndex = Config.Visuals.SelfColor
    local targetColor = selfColorValues[presetIndex]
    if presetIndex ~= 1 and next(selfOriginalColors) == nil then
        for _, part in ipairs(char:GetChildren()) do
            if part:IsA("BasePart") then selfOriginalColors[part] = part.Color end
        end
    end
    if presetIndex == 1 then
        for part, origColor in pairs(selfOriginalColors) do
            if part and part.Parent and part:IsA("BasePart") then
                TweenService:Create(part, TweenInfo.new(0.3), {Color = origColor}):Play()
            end
        end
        selfOriginalColors = {}
    else
        for _, part in ipairs(char:GetChildren()) do
            if part:IsA("BasePart") then
                if not selfOriginalColors[part] then selfOriginalColors[part] = part.Color end
                TweenService:Create(part, TweenInfo.new(0.3), {Color = targetColor}):Play()
            end
        end
    end
end

-- ==================== SELF CHAMS ====================
local selfChamsHighlight = nil

local function updateSelfChams()
    local char = LocalPlayer.Character
    if not char then
        if selfChamsHighlight and selfChamsHighlight.Parent then
            selfChamsHighlight:Destroy()
        end
        selfChamsHighlight = nil
        return
    end

    if Config.Visuals.SelfChams then
        if not selfChamsHighlight or not selfChamsHighlight.Parent or selfChamsHighlight.Adornee ~= char then
            if selfChamsHighlight and selfChamsHighlight.Parent then
                selfChamsHighlight:Destroy()
            end
            selfChamsHighlight = Instance.new("Highlight")
            selfChamsHighlight.Name = "VarumaSelfChams"
            selfChamsHighlight.Adornee = char
            selfChamsHighlight.FillColor = Config.Visuals.SelfColorEnabled and (selfColorValues[Config.Visuals.SelfColor] or Color3.fromRGB(255,255,255)) or Color3.fromRGB(255, 255, 255)
            selfChamsHighlight.OutlineColor = Color3.fromRGB(255, 255, 255)
            selfChamsHighlight.OutlineTransparency = 1
            selfChamsHighlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            selfChamsHighlight.Parent = char
        end
        selfChamsHighlight.FillTransparency = math.clamp(1 - Config.Visuals.SelfChamsTransparency, 0, 1)
    else
        if selfChamsHighlight and selfChamsHighlight.Parent then
            selfChamsHighlight:Destroy()
        end
        selfChamsHighlight = nil
    end
end

-- ==================== FLING v4 ====================
local activeFlings = {}
local FLING_TICK = 0.02
local FLING_SPIN_INTERVAL = 0.04

local function flingPlayer(target)
    if not target or target == LocalPlayer then return end
    if not Config.Fling.Enabled then return end
    if activeFlings[target] then return end
    if not isPlayerAlive(target) then return end

    local myChar = LocalPlayer.Character
    if not myChar then return end
    local myHRP = myChar:FindFirstChild("HumanoidRootPart")
    if not myHRP then return end
    local targetHRP = target.Character:FindFirstChild("HumanoidRootPart")
    if not targetHRP then return end

    local originalCFrame = myHRP.CFrame
    local flingStart = tick()
    local duration = Config.Fling.Duration
    local power = Config.Fling.FlingPower
    activeFlings[target] = true

    task.spawn(function()
        for attempt = 1, 3 do
            for _, part in ipairs(target.Character:GetDescendants()) do
                if part:IsA("BasePart") then
                    pcall(function() part:SetNetworkOwner(LocalPlayer) end)
                    pcall(function() part.CustomPhysicalProperties = PhysicalProperties.new(0.01, 0.01, 0.01, 0, 0) end)
                end
            end
            task.wait(0.05)
        end
    end)

    task.spawn(function()
        local lastSpin = 0
        while activeFlings[target] do
            local elapsed = tick() - flingStart
            if elapsed >= duration then break end
            if not target.Character or not target.Parent then break end
            local tHRP = target.Character:FindFirstChild("HumanoidRootPart")
            local tHum = target.Character:FindFirstChildOfClass("Humanoid")
            if not tHRP or not tHum or tHum.Health <= 0 then break end
            if not myHRP or not myHRP.Parent then break end

            pcall(function() tHRP:SetNetworkOwner(LocalPlayer) end)

            local velX = (math.random(-150, 150) / 100) * power * 0.2
            local velY = power * 0.5 + math.random(0, 200)
            local velZ = (math.random(-150, 150) / 100) * power * 0.2
            tHRP.AssemblyLinearVelocity = Vector3.new(velX, velY, velZ)

            if elapsed - lastSpin >= FLING_SPIN_INTERVAL then
                lastSpin = elapsed
                local spin = power * 0.8
                tHRP.AssemblyAngularVelocity = Vector3.new(
                    (math.random(-100, 100) / 100) * spin,
                    (math.random(-100, 100) / 100) * spin,
                    (math.random(-100, 100) / 100) * spin
                )
            end

            myHRP.CFrame = CFrame.new(tHRP.Position + Vector3.new(0, 1, 0))

            task.wait(FLING_TICK)
        end

        activeFlings[target] = nil
        task.wait(0.3)
        if myHRP and myHRP.Parent then
            myHRP.CFrame = originalCFrame
            myHRP.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
            myHRP.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
        end
    end)
end

-- ==================== WATERMARK (with V logo) ====================
local Watermark = Instance.new("Frame")
Watermark.Parent = ScreenGui
Watermark.BackgroundColor3 = Color3.fromRGB(15, 15, 22)
Watermark.BorderSizePixel = 0
Watermark.AnchorPoint = Vector2.new(1, 0)
Watermark.Position = UDim2.new(1, -15, 0, 15)
Watermark.Size = UDim2.new(0, 210, 0, 40)
Watermark.ZIndex = 2

local WMGradient = Instance.new("UIGradient")
WMGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(35, 22, 40)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(15, 15, 22)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 10, 16))
}
WMGradient.Rotation = 35
WMGradient.Parent = Watermark

local WMCorner = Instance.new("UICorner"); WMCorner.CornerRadius = UDim.new(0, 6); WMCorner.Parent = Watermark
local WMStroke = Instance.new("UIStroke"); WMStroke.Color = Color3.fromRGB(239,68,68); WMStroke.Transparency = 0.25; WMStroke.Thickness = 1.5; WMStroke.Parent = Watermark
local WMGlow = Instance.new("UIStroke"); WMGlow.Color = Color3.fromRGB(239,68,68); WMGlow.Transparency = 0.75; WMGlow.Thickness = 4; WMGlow.Parent = Watermark

local WMAccent = Instance.new("Frame")
WMAccent.Parent = Watermark
WMAccent.BackgroundColor3 = Color3.fromRGB(239, 68, 68)
WMAccent.BorderSizePixel = 0
WMAccent.Position = UDim2.new(1, -8, 0.5, -10)
WMAccent.Size = UDim2.new(0, 3, 0, 20)
WMAccent.ZIndex = 4
local WMAccentCorner = Instance.new("UICorner"); WMAccentCorner.CornerRadius = UDim.new(0, 2); WMAccentCorner.Parent = WMAccent

-- Логотип V
local WMLogoGlow = Instance.new("TextLabel")
WMLogoGlow.Parent = Watermark
WMLogoGlow.BackgroundTransparency = 1
WMLogoGlow.Position = UDim2.new(0, 6, 0, 0)
WMLogoGlow.Size = UDim2.new(0, 30, 1, 0)
WMLogoGlow.Font = Enum.Font.GothamBlack
WMLogoGlow.Text = "V"
WMLogoGlow.TextColor3 = Color3.fromRGB(239, 68, 68)
WMLogoGlow.TextSize = 24
WMLogoGlow.TextTransparency = 0.7
WMLogoGlow.TextXAlignment = Enum.TextXAlignment.Center
WMLogoGlow.TextYAlignment = Enum.TextYAlignment.Center
WMLogoGlow.ZIndex = 5

local WMLogo = Instance.new("TextLabel")
WMLogo.Parent = Watermark
WMLogo.BackgroundTransparency = 1
WMLogo.Position = UDim2.new(0, 6, 0, 0)
WMLogo.Size = UDim2.new(0, 30, 1, 0)
WMLogo.Font = Enum.Font.GothamBlack
WMLogo.Text = "V"
WMLogo.TextColor3 = Color3.fromRGB(239, 68, 68)
WMLogo.TextSize = 22
WMLogo.TextXAlignment = Enum.TextXAlignment.Center
WMLogo.TextYAlignment = Enum.TextYAlignment.Center
WMLogo.ZIndex = 6

local WMText = Instance.new("TextLabel")
WMText.Parent = Watermark
WMText.BackgroundTransparency = 1
WMText.Size = UDim2.new(1, 0, 1, 0)
WMText.Font = Enum.Font.GothamBold
WMText.TextColor3 = Color3.fromRGB(245, 245, 250)
WMText.TextSize = 10.5
WMText.RichText = true
WMText.TextXAlignment = Enum.TextXAlignment.Right
WMText.TextYAlignment = Enum.TextYAlignment.Center
WMText.ZIndex = 5

local WMPad = Instance.new("UIPadding"); WMPad.Parent = WMText
WMPad.PaddingLeft = UDim.new(0, 38); WMPad.PaddingRight = UDim.new(0, 14)

local WMClick = Instance.new("TextButton")
WMClick.Parent = Watermark
WMClick.BackgroundTransparency = 1
WMClick.Size = UDim2.new(1, 0, 1, 0)
WMClick.Text = ""
WMClick.ZIndex = 7
WMClick.AutoButtonColor = false

local currentPingForWM = 0
local menuVisible = true

local function updateWatermarkText()
    local brandColor = menuVisible and "#ff6060" or "#883333"
    WMText.Text = string.format(
        '<font color="#22ddff">%d ms</font> <font color="#666666">|</font> <font color="#ffffff">MM2</font> <font color="#666666">|</font> <font color="%s">Varuma</font>',
        currentPingForWM, brandColor
    )
end
updateWatermarkText()

-- ==================== FOV ====================
local FOVGlowOuter = Drawing.new("Circle")
FOVGlowOuter.Visible = true; FOVGlowOuter.Transparency = 0.18; FOVGlowOuter.Thickness = 7
FOVGlowOuter.Color = Color3.fromRGB(255,255,255); FOVGlowOuter.NumSides = 96
FOVGlowOuter.Radius = Config.Legit.FOVRadius; FOVGlowOuter.Filled = false

local FOVGlowMid = Drawing.new("Circle")
FOVGlowMid.Visible = true; FOVGlowMid.Transparency = 0.45; FOVGlowMid.Thickness = 4
FOVGlowMid.Color = Color3.fromRGB(255,255,255); FOVGlowMid.NumSides = 96
FOVGlowMid.Radius = Config.Legit.FOVRadius; FOVGlowMid.Filled = false

local FOVCircle = Drawing.new("Circle")
FOVCircle.Visible = true; FOVCircle.Transparency = 1; FOVCircle.Thickness = 2
FOVCircle.Color = Color3.fromRGB(255,255,255); FOVCircle.NumSides = 96
FOVCircle.Radius = Config.Legit.FOVRadius; FOVCircle.Filled = false

-- ==================== DEATH TRACKING ====================
local function hookDeath(player)
    local function attach(char)
        local hum = char:WaitForChild("Humanoid", 3)
        if not hum then return end
        hum.Died:Connect(function() recentDeaths[player] = tick() end)
    end
    if player.Character then task.spawn(attach, player.Character) end
    player.CharacterAdded:Connect(function(c) task.spawn(attach, c) end)
end
for _, p in ipairs(Players:GetPlayers()) do hookDeath(p) end
Players.PlayerAdded:Connect(hookDeath)

-- ==================== HIT MARKERS ====================
local function spawnHitMarker()
    local baseX = Camera.ViewportSize.X / 2
    local baseY = Camera.ViewportSize.Y / 2
    local size = 10
    local lines = {}
    local coords = {
        {Vector2.new(baseX - size, baseY - size), Vector2.new(baseX - size + 6, baseY - size + 6)},
        {Vector2.new(baseX + size - 6, baseY - size), Vector2.new(baseX + size, baseY - size + 6)},
        {Vector2.new(baseX - size, baseY + size - 6), Vector2.new(baseX - size + 6, baseY + size)},
        {Vector2.new(baseX + size - 6, baseY + size - 6), Vector2.new(baseX + size, baseY + size)}
    }
    for _, c in ipairs(coords) do
        local l = Drawing.new("Line")
        l.From = c[1]; l.To = c[2]
        l.Thickness = 2
        l.Color = Color3.fromRGB(255, 60, 60)
        l.Transparency = 1; l.Visible = true
        table.insert(lines, l)
    end
    table.insert(hitMarkers, {lines = lines, age = 0, life = 0.15})
end

local function updateHitMarkers(dt)
    for i = #hitMarkers, 1, -1 do
        local hm = hitMarkers[i]
        hm.age = hm.age + dt
        local progress = hm.age / hm.life
        if progress >= 1 then
            for _, l in ipairs(hm.lines) do pcall(function() l:Remove() end) end
            table.remove(hitMarkers, i)
        else
            for _, l in ipairs(hm.lines) do l.Transparency = 1 - progress end
        end
    end
end

-- ==================== HIT DETECTION ====================
local function hookHitMarker(tool)
    tool.Activated:Connect(function()
        if not Config.Legit.HitMarker then return end
        local char = LocalPlayer.Character
        if not char then return end
        local handle = tool:FindFirstChild("Handle")
        if not handle then return end
        local origin = handle.Position
        local dir = Camera.CFrame.LookVector * 500
        local params = RaycastParams.new()
        params.FilterType = Enum.RaycastFilterType.Exclude
        params.FilterDescendantsInstances = {char}
        local result = Workspace:Raycast(origin, dir, params)
        if result and result.Instance then
            local model = result.Instance:FindFirstAncestorOfClass("Model")
            if model and Players:GetPlayerFromCharacter(model) then spawnHitMarker() end
        end
    end)
end

local function hookTool(tool)
    if not tool:IsA("Tool") then return end
    hookHitMarker(tool)
end

local function hookLocalCharacter(char)
    char.ChildAdded:Connect(function(child) if child:IsA("Tool") then task.defer(hookTool, child) end end)
    for _, child in ipairs(char:GetChildren()) do
        if child:IsA("Tool") then task.defer(hookTool, child) end
    end
end
if LocalPlayer.Character then hookLocalCharacter(LocalPlayer.Character) end
LocalPlayer.CharacterAdded:Connect(hookLocalCharacter)

-- ==================== AUTO RELOAD ====================
task.spawn(function()
    while not isUnloaded do
        task.wait(0.2)
        if isUnloaded then break end
        if Config.Legit.AutoReload and LocalPlayer.Character then
            local tool = LocalPlayer.Character:FindFirstChildOfClass("Tool")
            if tool and (tool.Name == "Gun" or tool.Name == "Revolver") then
                local ammo = tool:GetAttribute("Ammo") or tool:GetAttribute("AmmoCount") or tool:GetAttribute("Clip") or tool:GetAttribute("Bullets")
                if ammo and ammo <= 0 then
                    local backpack = LocalPlayer:FindFirstChild("Backpack")
                    if backpack then
                        local other = backpack:FindFirstChildOfClass("Tool")
                        if other then
                            tool.Parent = backpack
                            other.Parent = LocalPlayer.Character
                            task.wait(0.08)
                            other.Parent = backpack
                            tool.Parent = LocalPlayer.Character
                        end
                    end
                end
            end
        end
    end
end)

-- ==================== TRIGGERBOT ====================
local triggerLastFire = 0
task.spawn(function()
    while not isUnloaded do
        task.wait(0.02)
        if isUnloaded then break end
        if Config.Legit.Triggerbot and hasGunEquipped() then
            local char = LocalPlayer.Character
            if char then
                local tool = char:FindFirstChildOfClass("Tool")
                if tool and (tool.Name == "Gun" or tool.Name == "Revolver") then
                    if UserInputService:IsKeyDown(Config.Legit.TriggerKey) then
                        local center = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
                        local triggering = false
                        for _, player in ipairs(Players:GetPlayers()) do
                            if player ~= LocalPlayer and player.Character and isMurderer(player) and isPlayerAlive(player) then
                                local head = player.Character:FindFirstChild("Head")
                                local hum = player.Character:FindFirstChildOfClass("Humanoid")
                                if head and hum and hum.Health > 0 then
                                    local sp, onScreen = Camera:WorldToViewportPoint(head.Position)
                                    if onScreen then
                                        local dist = (Vector2.new(sp.X, sp.Y) - center).Magnitude
                                        if dist <= Config.Legit.TriggerRadius then triggering = true; break end
                                    end
                                end
                            end
                        end
                        if triggering and tick() - triggerLastFire >= Config.Legit.TriggerDelay then
                            pcall(function() tool:Activate() end)
                            triggerLastFire = tick()
                        end
                    end
                end
            end
        end
    end
end)

-- ==================== RADAR/BOX/SKEL ====================
local function getRadarArrow(idx)
    if not activeDrawings.Radar[idx] then
        local s1 = Drawing.new("Line"); s1.Thickness=2; s1.Transparency=0.75; s1.Visible=false
        local s2 = Drawing.new("Line"); s2.Thickness=1; s2.Transparency=0.5; s2.Visible=false
        local t1 = Drawing.new("Line"); t1.Thickness=2; t1.Transparency=0.95; t1.Visible=false
        local t2 = Drawing.new("Line"); t2.Thickness=2; t2.Transparency=0.95; t2.Visible=false
        activeDrawings.Radar[idx] = {shaft1=s1, shaft2=s2, tip1=t1, tip2=t2}
    end
    return activeDrawings.Radar[idx]
end
local function hideRadarArrow(idx)
    local a = activeDrawings.Radar[idx]
    if a then a.shaft1.Visible=false; a.shaft2.Visible=false; a.tip1.Visible=false; a.tip2.Visible=false end
end

local function getBox(player)
    if not activeDrawings.Boxes[player] then
        local corners = {}
        for i = 1, 8 do
            local l = Drawing.new("Line"); l.Thickness=1.5; l.Transparency=1; l.Visible=false
            corners[i] = l
        end
        local hb = Drawing.new("Line"); hb.Thickness=2; hb.Visible=false
        local nt = Drawing.new("Text"); nt.Size=13; nt.Center=true; nt.Outline=true; nt.Visible=false
        local dt = Drawing.new("Text"); dt.Size=11; dt.Center=true; dt.Outline=true; dt.Visible=false
        activeDrawings.Boxes[player] = {corners=corners, healthBar=hb, nameText=nt, distText=dt}
    end
    return activeDrawings.Boxes[player]
end
local function hideBox(player)
    local b = activeDrawings.Boxes[player]
    if not b then return end
    for _, l in ipairs(b.corners) do l.Visible = false end
    b.healthBar.Visible=false; b.nameText.Visible=false; b.distText.Visible=false
end

local function drawBoxESP(player, color)
    local char = player.Character
    if not char then hideBox(player); return end
    local hrp = char:FindFirstChild("HumanoidRootPart")
    local head = char:FindFirstChild("Head")
    local hum = char:FindFirstChildOfClass("Humanoid")
    if not hrp or not head or not hum or hum.Health <= 0 then hideBox(player); return end

    local hrpPos = hrp.Position
    local topWorld = Vector3.new(hrpPos.X, head.Position.Y + 1, hrpPos.Z)
    local botWorld = Vector3.new(hrpPos.X, hrpPos.Y - 3, hrpPos.Z)
    local topScreen, topOn = Camera:WorldToViewportPoint(topWorld)
    local botScreen, botOn = Camera:WorldToViewportPoint(botWorld)
    if not (topOn and botOn) then hideBox(player); return end
    if topScreen.Y > botScreen.Y then topScreen, botScreen = botScreen, topScreen end

    local boxHeight = math.abs(botScreen.Y - topScreen.Y)
    local boxWidth = boxHeight * 0.5
    if boxWidth < 5 then hideBox(player); return end

    local x = topScreen.X - boxWidth / 2
    local y = topScreen.Y
    local w = boxWidth
    local h = boxHeight
    local cl = math.clamp(math.min(w, h) * 0.22, 4, math.min(w, h) / 2)

    local b = getBox(player)
    local c = b.corners
    c[1].From = Vector2.new(x, y); c[1].To = Vector2.new(x + cl, y)
    c[2].From = Vector2.new(x, y); c[2].To = Vector2.new(x, y + cl)
    c[3].From = Vector2.new(x + w - cl, y); c[3].To = Vector2.new(x + w, y)
    c[4].From = Vector2.new(x + w, y); c[4].To = Vector2.new(x + w, y + cl)
    c[5].From = Vector2.new(x, y + h - cl); c[5].To = Vector2.new(x, y + h)
    c[6].From = Vector2.new(x, y + h); c[6].To = Vector2.new(x + cl, y + h)
    c[7].From = Vector2.new(x + w - cl, y + h); c[7].To = Vector2.new(x + w, y + h)
    c[8].From = Vector2.new(x + w, y + h - cl); c[8].To = Vector2.new(x + w, y + h)
    for _, l in ipairs(c) do l.Color = color; l.Visible = true end

    local hpPct = math.clamp(hum.Health / math.max(hum.MaxHealth, 1), 0, 1)
    b.healthBar.From = Vector2.new(x - 6, y + h * (1 - hpPct))
    b.healthBar.To = Vector2.new(x - 6, y + h)
    if hpPct > 0.6 then b.healthBar.Color = Color3.fromRGB(80, 220, 100)
    elseif hpPct > 0.3 then b.healthBar.Color = Color3.fromRGB(255, 200, 60)
    else b.healthBar.Color = Color3.fromRGB(255, 50, 50) end
    b.healthBar.Visible = true

    b.nameText.Text = player.Name .. " | " .. getRoleName(player)
    b.nameText.Position = Vector2.new(x + w / 2, y - 15)
    b.nameText.Color = color
    b.nameText.Visible = true

    local dist = math.floor((Camera.CFrame.Position - hrpPos).Magnitude)
    b.distText.Text = tostring(dist) .. " studs"
    b.distText.Position = Vector2.new(x + w / 2, y + h + 2)
    b.distText.Color = Color3.fromRGB(220, 220, 220)
    b.distText.Visible = true
end

local SKELETON_BONES = 5
local function getSkeleton(player)
    if not activeDrawings.Skeletons[player] then
        local lines = {}
        for i = 1, SKELETON_BONES do
            local l = Drawing.new("Line"); l.Thickness=1.5; l.Transparency=0.9
            l.Color=Color3.fromRGB(255,255,255); l.Visible=false
            lines[i] = l
        end
        activeDrawings.Skeletons[player] = lines
    end
    return activeDrawings.Skeletons[player]
end
local function hideSkeleton(player)
    local lines = activeDrawings.Skeletons[player]
    if lines then for _, l in ipairs(lines) do l.Visible = false end end
end

local function drawSkeleton(player, color)
    local char = player.Character
    if not char then hideSkeleton(player); return end
    local head = char:FindFirstChild("Head")
    local torso = char:FindFirstChild("Torso") or char:FindFirstChild("UpperTorso")
    local la = char:FindFirstChild("Left Arm") or char:FindFirstChild("LeftUpperArm")
    local ra = char:FindFirstChild("Right Arm") or char:FindFirstChild("RightUpperArm")
    local ll = char:FindFirstChild("Left Leg") or char:FindFirstChild("LeftUpperLeg")
    local rl = char:FindFirstChild("Right Leg") or char:FindFirstChild("RightUpperLeg")
    if not (head and torso and la and ra and ll and rl) then hideSkeleton(player); return end

    local function proj(pos)
        local sp, onScreen = Camera:WorldToViewportPoint(pos)
        return Vector2.new(sp.X, sp.Y), onScreen
    end
    local hp, hOn = proj(head.Position); local tp, tOn = proj(torso.Position)
    local lap, laOn = proj(la.Position); local rap, raOn = proj(ra.Position)
    local llp, llOn = proj(ll.Position); local rlp, rlOn = proj(rl.Position)

    local lines = getSkeleton(player)
    if hOn and tOn then lines[1].From = hp; lines[1].To = tp; lines[1].Color = color; lines[1].Visible = true else lines[1].Visible = false end
    if tOn and laOn then lines[2].From = tp; lines[2].To = lap; lines[2].Color = color; lines[2].Visible = true else lines[2].Visible = false end
    if tOn and raOn then lines[3].From = tp; lines[3].To = rap; lines[3].Color = color; lines[3].Visible = true else lines[3].Visible = false end
    if tOn and llOn then lines[4].From = tp; lines[4].To = llp; lines[4].Color = color; lines[4].Visible = true else lines[4].Visible = false end
    if tOn and rlOn then lines[5].From = tp; lines[5].To = rlp; lines[5].Color = color; lines[5].Visible = true else lines[5].Visible = false end
end

-- ==================== BULLET TRACERS (fat, long, through walls) ====================
local function spawnTracer(startPos, endPos, color)
    local line = Drawing.new("Line")
    line.Thickness = 3.5
    line.Transparency = 1
    line.Color = color
    line.Visible = false
    line.ZIndex = 999
    table.insert(activeTracers, {line=line, startWorld=startPos, endWorld=endPos, life=1.2, age=0})
end

local function updateTracers(dt)
    for i = #activeTracers, 1, -1 do
        local t = activeTracers[i]
        t.age = t.age + dt
        local sp1, on1 = Camera:WorldToViewportPoint(t.startWorld)
        local sp2, on2 = Camera:WorldToViewportPoint(t.endWorld)
        if on1 and on2 and t.age < t.life then
            t.line.From = Vector2.new(sp1.X, sp1.Y)
            t.line.To = Vector2.new(sp2.X, sp2.Y)
            local p = t.age / t.life
            t.line.Transparency = math.clamp(p * p, 0, 1)
            t.line.Thickness = 3.5 - p * 2
            t.line.Visible = true
        else
            t.line.Visible = false
            if t.age >= t.life then
                pcall(function() t.line:Remove() end)
                table.remove(activeTracers, i)
            end
        end
    end
end

local function hookTracerTool(tool)
    tool.Activated:Connect(function()
        if not Config.Visuals.BulletTracers then return end
        local char = LocalPlayer.Character
        if not char then return end
        local handle = tool:FindFirstChild("Handle")
        if not handle then return end
        local origin = handle.Position
        local dir = Camera.CFrame.LookVector * 500
        local params = RaycastParams.new()
        params.FilterType = Enum.RaycastFilterType.Exclude
        params.FilterDescendantsInstances = {char}
        params.IgnoreWater = true
        local result = Workspace:Raycast(origin, dir, params)
        local hitPos = result and result.Position or (origin + dir)
        local hitPlayer = nil
        if result and result.Instance then
            local model = result.Instance:FindFirstAncestorOfClass("Model")
            if model then
                local plr = Players:GetPlayerFromCharacter(model)
                if plr then hitPlayer = plr end
            end
        end
        local tracerColor = hitPlayer and Color3.fromRGB(255, 80, 80) or Color3.fromRGB(255, 255, 255)
        spawnTracer(origin, hitPos, tracerColor)
    end)
end

local function hookTracerCharacter(char)
    char.ChildAdded:Connect(function(child) if child:IsA("Tool") then task.defer(hookTracerTool, child) end end)
    for _, child in ipairs(char:GetChildren()) do
        if child:IsA("Tool") then task.defer(hookTracerTool, child) end
    end
end
if LocalPlayer.Character then hookTracerCharacter(LocalPlayer.Character) end
LocalPlayer.CharacterAdded:Connect(hookTracerCharacter)

-- ==================== SELF TRAIL ====================
local TRAIL_MAX_POINTS = 40
local TRAIL_SAMPLE_DIST = 0.08
local selfTrail = nil

local function getSelfTrail()
    if not selfTrail then
        local segments = {}
        for i = 1, TRAIL_MAX_POINTS - 1 do
            local l = Drawing.new("Line")
            l.Thickness = 4.5
            l.Transparency = 1
            l.Visible = false
            segments[i] = l
        end
        selfTrail = {segments = segments, history = {}, lastPoint = nil}
    end
    return selfTrail
end
local function hideSelfTrail()
    if not selfTrail then return end
    for _, l in ipairs(selfTrail.segments) do l.Visible = false end
end
local function destroySelfTrail()
    if not selfTrail then return end
    for _, l in ipairs(selfTrail.segments) do pcall(function() l:Remove() end) end
    selfTrail = nil
end

local function updateSelfTrail(color)
    local char = LocalPlayer.Character
    if not char then hideSelfTrail(); return end
    local hrp = char:FindFirstChild("HumanoidRootPart")
    local hum = char:FindFirstChildOfClass("Humanoid")
    if not hrp or not hum or hum.Health <= 0 then hideSelfTrail(); return end

    local t = getSelfTrail()
    local backPoint = (hrp.CFrame * CFrame.new(0, 0, 0.8)).Position

    if not t.lastPoint or (backPoint - t.lastPoint).Magnitude >= TRAIL_SAMPLE_DIST then
        table.insert(t.history, 1, backPoint)
        t.lastPoint = backPoint
        if #t.history > TRAIL_MAX_POINTS then table.remove(t.history) end
    end

    for i = 1, #t.segments do
        local a = t.history[i]
        local b = t.history[i + 1]
        if a and b then
            local sp1, on1 = Camera:WorldToViewportPoint(a)
            local sp2, on2 = Camera:WorldToViewportPoint(b)
            if on1 and on2 then
                local alpha = 1 - (i / #t.segments)
                t.segments[i].From = Vector2.new(sp1.X, sp1.Y)
                t.segments[i].To = Vector2.new(sp2.X, sp2.Y)
                t.segments[i].Color = color
                t.segments[i].Transparency = alpha * 0.9
                t.segments[i].Thickness = 4.5 * alpha + 1
                t.segments[i].Visible = true
            else
                t.segments[i].Visible = false
            end
        else
            t.segments[i].Visible = false
        end
    end
end

-- ==================== JUMP EFFECT ====================
local JUMP_BURST_COUNT = 22
local JUMP_SPARK_COUNT = 14
local JUMP_BURST_LIFE = 0.85

local function spawnJumpBurst(worldPos, color)
    local parts = {}
    for i = 1, JUMP_BURST_COUNT do
        local p = Instance.new("Part")
        p.Shape = Enum.PartType.Ball
        p.Size = Vector3.new(0.4, 0.4, 0.4)
        p.Material = Enum.Material.Neon
        p.Color = color
        p.Transparency = 0
        p.Anchored = true
        p.CanCollide = false
        p.CanQuery = false
        p.CanTouch = false
        p.CastShadow = false
        p.CFrame = CFrame.new(worldPos)
        p.Parent = Workspace

        local angle = (i / JUMP_BURST_COUNT) * math.pi * 2
        local radius = 4 + math.random() * 3
        local endPos = worldPos + Vector3.new(
            math.cos(angle) * radius,
            3 + math.random() * 3,
            math.sin(angle) * radius
        )
        table.insert(parts, {part = p, startPos = worldPos, endPos = endPos, sizeBase = 0.4})
    end

    for i = 1, JUMP_SPARK_COUNT do
        local p = Instance.new("Part")
        p.Shape = Enum.PartType.Ball
        p.Size = Vector3.new(0.18, 0.18, 0.18)
        p.Material = Enum.Material.Neon
        p.Color = color:Lerp(Color3.fromRGB(255, 255, 255), 0.4)
        p.Transparency = 0
        p.Anchored = true
        p.CanCollide = false
        p.CanQuery = false
        p.CanTouch = false
        p.CastShadow = false
        p.CFrame = CFrame.new(worldPos)
        p.Parent = Workspace

        local angle = math.random() * math.pi * 2
        local radius = 2 + math.random() * 4
        local endPos = worldPos + Vector3.new(
            math.cos(angle) * radius,
            5 + math.random() * 4,
            math.sin(angle) * radius
        )
        table.insert(parts, {part = p, startPos = worldPos, endPos = endPos, sizeBase = 0.18, isSpark = true})
    end

    local light = Instance.new("PointLight")
    light.Color = color
    light.Brightness = 6
    light.Range = 18
    local anchor = Instance.new("Part")
    anchor.Anchored = true; anchor.CanCollide = false; anchor.CanQuery = false; anchor.CanTouch = false
    anchor.Transparency = 1; anchor.Size = Vector3.new(0.1,0.1,0.1)
    anchor.CFrame = CFrame.new(worldPos); anchor.Parent = Workspace
    light.Parent = anchor

    table.insert(jumpBursts, {
        parts = parts,
        anchor = anchor, light = light,
        age = 0, life = JUMP_BURST_LIFE
    })
end

local function updateJumpBursts(dt)
    for i = #jumpBursts, 1, -1 do
        local b = jumpBursts[i]
        b.age = b.age + dt
        local progress = b.age / b.life
        if progress >= 1 then
            for _, obj in ipairs(b.parts) do
                if obj.part and obj.part.Parent then obj.part:Destroy() end
            end
            if b.light and b.light.Parent then b.light:Destroy() end
            if b.anchor and b.anchor.Parent then b.anchor:Destroy() end
            table.remove(jumpBursts, i)
        else
            local eased = 1 - math.pow(1 - progress, 3)
            for _, obj in ipairs(b.parts) do
                if obj.part and obj.part.Parent then
                    obj.part.CFrame = CFrame.new(obj.startPos:Lerp(obj.endPos, eased))
                    obj.part.Transparency = math.clamp(progress * 1.1, 0, 1)
                    local shrink
                    if obj.isSpark then shrink = 1 - progress * 0.9
                    else shrink = 1 - progress * 0.6 end
                    local s = obj.sizeBase * shrink
                    obj.part.Size = Vector3.new(s, s, s)
                end
            end
            if b.light and b.light.Parent then
                b.light.Brightness = 6 * (1 - progress)
                b.light.Range = 18 * (1 - progress * 0.6)
            end
        end
    end
end

local function hookLocalJump()
    local function attach(char)
        local hum = char:WaitForChild("Humanoid", 3)
        if not hum then return end
        local wasOnGround = true
        hum.StateChanged:Connect(function(old, new)
            if not Config.Visuals.JumpEffect then return end
            if new == Enum.HumanoidStateType.Jumping or new == Enum.HumanoidStateType.Freefall then
                if wasOnGround then
                    wasOnGround = false
                    local hrp = char:FindFirstChild("HumanoidRootPart")
                    if hrp then
                        local col = jumpColorValues[Config.Visuals.JumpEffectColor] or jumpColorValues[2]
                        spawnJumpBurst(hrp.Position - Vector3.new(0, 2.5, 0), col)
                    end
                end
            elseif new == Enum.HumanoidStateType.Landed or new == Enum.HumanoidStateType.Running then
                wasOnGround = true
            end
        end)
    end
    if LocalPlayer.Character then task.spawn(attach, LocalPlayer.Character) end
    LocalPlayer.CharacterAdded:Connect(function(c) task.spawn(attach, c) end)
end
hookLocalJump()

-- ==================== DEATH FX (2s lifetime) ====================
local function getCharSkeletonParts(char)
    local parts = {}
    parts.head = char:FindFirstChild("Head")
    parts.torso = char:FindFirstChild("Torso") or char:FindFirstChild("UpperTorso")
    parts.la = char:FindFirstChild("Left Arm") or char:FindFirstChild("LeftUpperArm")
    parts.ra = char:FindFirstChild("Right Arm") or char:FindFirstChild("RightUpperArm")
    parts.ll = char:FindFirstChild("Left Leg") or char:FindFirstChild("LeftUpperLeg")
    parts.rl = char:FindFirstChild("Right Leg") or char:FindFirstChild("RightUpperLeg")
    return parts
end

local function spawnCS2ShockwaveEffect(char, color)
    if not char or not char.Parent then return end
    local hrp = char:FindFirstChild("HumanoidRootPart") or char:FindFirstChild("Torso")
    if not hrp then return end
    local origin = hrp.Position
    local bornT = tick()

    local shockParts = {}
    local SHOCK_COUNT = 40
    for i = 1, SHOCK_COUNT do
        local p = Instance.new("Part")
        p.Name = "VarumaDeathFX"
        p.Shape = Enum.PartType.Ball
        p.Size = Vector3.new(0.5, 0.5, 0.5)
        p.Material = Enum.Material.Neon
        p.Color = color
        p.Transparency = 0
        p.Anchored = true
        p.CanCollide = false
        p.CanQuery = false
        p.CanTouch = false
        p.CastShadow = false
        p.CFrame = CFrame.new(origin)
        p:SetAttribute("VarumaBorn", bornT)
        p.Parent = Workspace

        local angle = (i / SHOCK_COUNT) * math.pi * 2
        local elevation = math.random() * 0.8 - 0.2
        local radius = 8 + math.random() * 4
        local endPos = origin + Vector3.new(
            math.cos(angle) * radius,
            elevation * 6,
            math.sin(angle) * radius
        )
        table.insert(shockParts, {part = p, startPos = origin, endPos = endPos})
    end

    local sparks = {}
    local SPARK_COUNT = 30
    for i = 1, SPARK_COUNT do
        local p = Instance.new("Part")
        p.Name = "VarumaDeathFX"
        p.Shape = Enum.PartType.Ball
        p.Size = Vector3.new(0.2, 0.2, 0.2)
        p.Material = Enum.Material.Neon
        p.Color = color:Lerp(Color3.fromRGB(255, 255, 255), 0.6)
        p.Transparency = 0
        p.Anchored = true
        p.CanCollide = false
        p.CanQuery = false
        p.CanTouch = false
        p.CastShadow = false
        p.CFrame = CFrame.new(origin)
        p:SetAttribute("VarumaBorn", bornT)
        p.Parent = Workspace

        local angle = math.random() * math.pi * 2
        local elevation = math.random() * 1.2 - 0.3
        local radius = 3 + math.random() * 6
        local endPos = origin + Vector3.new(
            math.cos(angle) * radius,
            elevation * 8 + 2,
            math.sin(angle) * radius
        )
        table.insert(sparks, {part = p, startPos = origin, endPos = endPos})
    end

    local ring1 = {}
    local ring2 = {}
    local N = 32
    for i = 1, N do
        local l1 = Drawing.new("Line"); l1.Thickness=3; l1.Transparency=1; l1.Color=color; l1.Visible=false
        local l2 = Drawing.new("Line"); l2.Thickness=2; l2.Transparency=0.8; l2.Color=color:Lerp(Color3.fromRGB(255,255,255), 0.3); l2.Visible=false
        ring1[i] = l1
        ring2[i] = l2
    end

    local light = Instance.new("PointLight")
    light.Color = color
    light.Brightness = 12
    light.Range = 30
    local lightAnchor = Instance.new("Part")
    lightAnchor.Name = "VarumaDeathLight"
    lightAnchor.Anchored = true; lightAnchor.CanCollide = false; lightAnchor.CanQuery = false; lightAnchor.CanTouch = false
    lightAnchor.Transparency = 1; lightAnchor.Size = Vector3.new(0.1,0.1,0.1)
    lightAnchor.CFrame = CFrame.new(origin)
    lightAnchor:SetAttribute("VarumaBorn", bornT)
    lightAnchor.Parent = Workspace
    light.Parent = lightAnchor

    local LIFETIME = 2.0
    local startT = tick()
    task.spawn(function()
        while tick() - startT < LIFETIME do
            local elapsed = tick() - startT
            local progress = math.clamp(elapsed / LIFETIME, 0, 1)

            local shockEased = 1 - math.pow(1 - progress, 4)
            for _, obj in ipairs(shockParts) do
                if obj.part and obj.part.Parent then
                    obj.part.CFrame = CFrame.new(obj.startPos:Lerp(obj.endPos, shockEased))
                    obj.part.Transparency = math.clamp(progress * 1.5, 0, 1)
                    local s = 0.5 * (1 - progress * 0.8)
                    obj.part.Size = Vector3.new(s, s, s)
                end
            end

            local sparkEased = 1 - math.pow(1 - progress, 2)
            for _, obj in ipairs(sparks) do
                if obj.part and obj.part.Parent then
                    local pos = obj.startPos:Lerp(obj.endPos, sparkEased)
                    pos = pos - Vector3.new(0, progress * progress * 8, 0)
                    obj.part.CFrame = CFrame.new(pos)
                    obj.part.Transparency = math.clamp(progress * 1.3, 0, 1)
                    local s = 0.2 * (1 - progress)
                    obj.part.Size = Vector3.new(s, s, s)
                end
            end

            local center2D, onScreen = Camera:WorldToViewportPoint(origin - Vector3.new(0, 3, 0))
            if onScreen then
                local scaleFactor = 250 / math.max(center2D.Z, 1)
                local r1 = math.clamp((progress * 40) * scaleFactor, 5, 300)
                for i = 1, N do
                    local a1 = (i / N) * math.pi * 2
                    local a2 = ((i + 1) / N) * math.pi * 2
                    ring1[i].From = Vector2.new(center2D.X + math.cos(a1) * r1, center2D.Y + math.sin(a1) * r1 * 0.4)
                    ring1[i].To = Vector2.new(center2D.X + math.cos(a2) * r1, center2D.Y + math.sin(a2) * r1 * 0.4)
                    ring1[i].Transparency = 1 - progress
                    ring1[i].Visible = true
                end

                local r2p = math.clamp((progress - 0.2) / 0.8, 0, 1)
                if r2p > 0 then
                    local r2 = math.clamp((r2p * 30) * scaleFactor, 5, 220)
                    for i = 1, N do
                        local a1 = (i / N) * math.pi * 2
                        local a2 = ((i + 1) / N) * math.pi * 2
                        ring2[i].From = Vector2.new(center2D.X + math.cos(a1) * r2, center2D.Y + math.sin(a1) * r2 * 0.4)
                        ring2[i].To = Vector2.new(center2D.X + math.cos(a2) * r2, center2D.Y + math.sin(a2) * r2 * 0.4)
                        ring2[i].Transparency = 1 - r2p
                        ring2[i].Visible = true
                    end
                else
                    for i = 1, N do ring2[i].Visible = false end
                end
            else
                for i = 1, N do ring1[i].Visible = false; ring2[i].Visible = false end
            end

            if light and light.Parent then
                light.Brightness = 12 * (1 - progress)
                light.Range = 30 * (1 - progress * 0.6)
            end

            task.wait(0.03)
        end

        for _, obj in ipairs(shockParts) do if obj.part and obj.part.Parent then obj.part:Destroy() end end
        for _, obj in ipairs(sparks) do if obj.part and obj.part.Parent then obj.part:Destroy() end end
        for i = 1, N do pcall(function() ring1[i]:Remove() end); pcall(function() ring2[i]:Remove() end) end
        if light and light.Parent then light:Destroy() end
        if lightAnchor and lightAnchor.Parent then lightAnchor:Destroy() end
    end)
end

local function spawnNovaRingEffect(char, color)
    if not char or not char.Parent then return end
    local hrp = char:FindFirstChild("HumanoidRootPart") or char:FindFirstChild("Torso")
    if not hrp then return end
    local origin = hrp.Position
    local bornT = tick()

    local rings = {}
    local RINGS = 3
    local PER_RING = 24
    for ringIdx = 1, RINGS do
        local ringParts = {}
        for i = 1, PER_RING do
            local p = Instance.new("Part")
            p.Name = "VarumaDeathFX"
            p.Shape = Enum.PartType.Ball
            p.Size = Vector3.new(0.5, 0.5, 0.5)
            p.Material = Enum.Material.Neon
            p.Color = color
            p.Transparency = 0
            p.Anchored = true
            p.CanCollide = false
            p.CanQuery = false
            p.CanTouch = false
            p.CastShadow = false
            p.CFrame = CFrame.new(origin)
            p:SetAttribute("VarumaBorn", bornT)
            p.Parent = Workspace
            table.insert(ringParts, p)
        end
        table.insert(rings, ringParts)
    end

    local light = Instance.new("PointLight")
    light.Color = color
    light.Brightness = 10
    light.Range = 25
    local lightAnchor = Instance.new("Part")
    lightAnchor.Name = "VarumaDeathLight"
    lightAnchor.Anchored = true; lightAnchor.CanCollide = false
    lightAnchor.CanQuery = false; lightAnchor.CanTouch = false
    lightAnchor.Transparency = 1; lightAnchor.Size = Vector3.new(0.1,0.1,0.1)
    lightAnchor.CFrame = CFrame.new(origin)
    lightAnchor:SetAttribute("VarumaBorn", bornT)
    lightAnchor.Parent = Workspace
    light.Parent = lightAnchor

    local LIFETIME = 2.0
    local startT = tick()
    task.spawn(function()
        while tick() - startT < LIFETIME do
            local elapsed = tick() - startT
            for ringIdx, ringParts in ipairs(rings) do
                local ringDelay = (ringIdx - 1) * 0.2
                local rp = math.clamp((elapsed - ringDelay) / (LIFETIME - 0.4), 0, 1)
                if rp > 0 then
                    local re = 1 - math.pow(1 - rp, 3)
                    local radius = re * (8 + ringIdx * 5)
                    local yOffset = re * 4 + ringIdx * 1.5
                    local tilt = elapsed * 2 * ringIdx

                    for i, orb in ipairs(ringParts) do
                        if orb and orb.Parent then
                            local angle = (i / PER_RING) * math.pi * 2 + tilt
                            local x = math.cos(angle) * radius
                            local z = math.sin(angle) * radius
                            orb.CFrame = CFrame.new(origin + Vector3.new(x, yOffset, z))
                            orb.Transparency = math.clamp(rp * 1.1, 0, 1)
                            orb.Size = Vector3.new(0.5, 0.5, 0.5) * (1 - rp * 0.7)
                        end
                    end
                end
            end
            if light and light.Parent then
                local lp = math.clamp(elapsed / LIFETIME, 0, 1)
                light.Brightness = 10 * (1 - lp)
                light.Range = 25 * (1 - lp * 0.5)
            end
            task.wait(0.03)
        end

        for _, ringParts in ipairs(rings) do
            for _, orb in ipairs(ringParts) do if orb and orb.Parent then orb:Destroy() end end
        end
        if light and light.Parent then light:Destroy() end
        if lightAnchor and lightAnchor.Parent then lightAnchor:Destroy() end
    end)
end

local function spawnShatterEffect(char, color)
    if not char or not char.Parent then return end
    local sp = getCharSkeletonParts(char)
    if not sp.torso then return end
    local origin = sp.torso.Position
    local bornT = tick()

    local shards = {}
    local SHARDS = 50
    for i = 1, SHARDS do
        local p = Instance.new("Part")
        p.Name = "VarumaDeathFX"
        p.Size = Vector3.new(0.3, 0.3, 0.15)
        p.Material = Enum.Material.Neon
        p.Color = color
        p.Transparency = 0
        p.Anchored = true
        p.CanCollide = false
        p.CanQuery = false
        p.CanTouch = false
        p.CastShadow = false
        p.CFrame = CFrame.new(origin)
        p:SetAttribute("VarumaBorn", bornT)
        p.Parent = Workspace

        local angle = math.random() * math.pi * 2
        local elev = math.random() * 1.5 - 0.4
        local radius = 5 + math.random() * 8
        local endPos = origin + Vector3.new(
            math.cos(angle) * radius,
            elev * 10 + 3,
            math.sin(angle) * radius
        )
        table.insert(shards, {
            part = p, startPos = origin, endPos = endPos,
            rotSpeed = Vector3.new(math.random(-800, 800), math.random(-800, 800), math.random(-800, 800))
        })
    end

    local light = Instance.new("PointLight")
    light.Color = color
    light.Brightness = 15
    light.Range = 30
    local lightAnchor = Instance.new("Part")
    lightAnchor.Name = "VarumaDeathLight"
    lightAnchor.Anchored = true; lightAnchor.CanCollide = false
    lightAnchor.CanQuery = false; lightAnchor.CanTouch = false
    lightAnchor.Transparency = 1; lightAnchor.Size = Vector3.new(0.1,0.1,0.1)
    lightAnchor.CFrame = CFrame.new(origin)
    lightAnchor:SetAttribute("VarumaBorn", bornT)
    lightAnchor.Parent = Workspace
    light.Parent = lightAnchor

    local LIFETIME = 2.0
    local startT = tick()
    task.spawn(function()
        while tick() - startT < LIFETIME do
            local elapsed = tick() - startT
            local progress = math.clamp(elapsed / LIFETIME, 0, 1)
            local eased = 1 - math.pow(1 - progress, 2)

            for _, obj in ipairs(shards) do
                if obj.part and obj.part.Parent then
                    local pos = obj.startPos:Lerp(obj.endPos, eased)
                    pos = pos - Vector3.new(0, progress * progress * 12, 0)
                    obj.part.CFrame = CFrame.new(pos) * CFrame.Angles(
                        math.rad(obj.rotSpeed.X * elapsed),
                        math.rad(obj.rotSpeed.Y * elapsed),
                        math.rad(obj.rotSpeed.Z * elapsed)
                    )
                    obj.part.Transparency = math.clamp(progress * 1.2, 0, 1)
                end
            end

            if light and light.Parent then
                light.Brightness = 15 * (1 - progress)
                light.Range = 30 * (1 - progress * 0.5)
            end

            task.wait(0.03)
        end

        for _, obj in ipairs(shards) do if obj.part and obj.part.Parent then obj.part:Destroy() end end
        if light and light.Parent then light:Destroy() end
        if lightAnchor and lightAnchor.Parent then lightAnchor:Destroy() end
    end)
end

local function triggerDeathEffect(char)
    if not Config.Visuals.DeathEffects then return end
    if not char then return end
    local color = getEffectColor()
    local effectType = Config.Visuals.DeathEffectType
    task.spawn(function()
        task.wait(0.03)
        if effectType == 1 then spawnCS2ShockwaveEffect(char, color)
        elseif effectType == 2 then spawnNovaRingEffect(char, color)
        elseif effectType == 3 then spawnShatterEffect(char, color) end
    end)
end

local function hookDeathEffect(player)
    local function attach(char)
        local hum = char:WaitForChild("Humanoid", 3)
        if not hum then return end
        hum.Died:Connect(function() triggerDeathEffect(char) end)
    end
    if player.Character then task.spawn(attach, player.Character) end
    player.CharacterAdded:Connect(function(c) task.spawn(attach, c) end)
end
for _, p in ipairs(Players:GetPlayers()) do hookDeathEffect(p) end
Players.PlayerAdded:Connect(hookDeathEffect)

-- ==================== AUTO FARM COINS ====================
local COIN_NAMES = {"Coin", "Coins", "CoinDrop", "Money", "Cash", "CashDrop", "MoneyDrop"}
local function isCoin(obj)
    if not obj or not obj.Parent then return false end
    for _, n in ipairs(COIN_NAMES) do if obj.Name == n then return true end end
    if string.find(string.lower(obj.Name), "coin") then return true end
    return false
end
local farming = false
local COIN_DELAY = 0.5

task.spawn(function()
    while not isUnloaded do
        task.wait(0.5)
        if isUnloaded then break end
        if Config.Misc.AutoFarmCoins and not farming then
            local hrp = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            local hum = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
            if hrp and hum and hum.Health > 0 then
                farming = true
                local originalCF = hrp.CFrame
                local found = false
                for _, obj in ipairs(Workspace:GetDescendants()) do
                    if not Config.Misc.AutoFarmCoins then break end
                    if isCoin(obj) then
                        if obj:IsA("BasePart") then
                            hrp.CFrame = obj.CFrame
                            pcall(function() firetouchinterest(hrp, obj, 0); firetouchinterest(hrp, obj, 1) end)
                            found = true
                            task.wait(COIN_DELAY)
                        elseif obj:IsA("Model") then
                            local primary = obj.PrimaryPart or obj:FindFirstChildWhichIsA("BasePart", true)
                            if primary then
                                hrp.CFrame = primary.CFrame
                                for _, part in ipairs(obj:GetDescendants()) do
                                    if part:IsA("BasePart") then
                                        pcall(function() firetouchinterest(hrp, part, 0); firetouchinterest(hrp, part, 1) end)
                                    end
                                end
                                found = true
                                task.wait(COIN_DELAY)
                            end
                        end
                        if found then break end
                    end
                end
                if hrp and hrp.Parent then hrp.CFrame = originalCF end
                farming = false
            end
        end
    end
end)

-- ==================== CONFIG SYSTEM ====================
local CONFIG_ROOT = "VarumaHack"
local CONFIG_FOLDER = CONFIG_ROOT .. "/configs"
local memoryStore = {}
local fileIOAvailable = (writefile and readfile and isfile and listfiles and makefolder and isfolder) ~= nil

local function ensureFolder()
    if not fileIOAvailable then return end
    pcall(function()
        if not isfolder(CONFIG_ROOT) then makefolder(CONFIG_ROOT) end
        if not isfolder(CONFIG_FOLDER) then makefolder(CONFIG_FOLDER) end
    end)
end

local function listConfigs()
    local list = {}
    if fileIOAvailable then
        ensureFolder()
        pcall(function()
            for _, file in ipairs(listfiles(CONFIG_FOLDER)) do
                local name = file:match("([^/\\]+)%.json$")
                if name then table.insert(list, name) end
            end
        end)
    else for name, _ in pairs(memoryStore) do table.insert(list, name) end end
    table.sort(list)
    return list
end

local function saveConfig(name)
    if not name or name == "" then return false end
    local data
    local ok = pcall(function() data = HttpService:JSONEncode(Config) end)
    if not ok then return false end
    if fileIOAvailable then
        ensureFolder()
        return pcall(function() writefile(CONFIG_FOLDER .. "/" .. name .. ".json", data) end)
    else memoryStore[name] = data; return true end
end

local function loadConfig(name)
    if not name or name == "" then return false end
    local content
    if fileIOAvailable then
        ensureFolder()
        local path = CONFIG_FOLDER .. "/" .. name .. ".json"
        if not isfile(path) then return false end
        local ok = pcall(function() content = readfile(path) end)
        if not ok or not content then return false end
    else content = memoryStore[name]; if not content then return false end end
    local ok, data = pcall(function() return HttpService:JSONDecode(content) end)
    if not ok or type(data) ~= "table" then return false end
    for cat, vals in pairs(data) do
        if type(vals) == "table" and Config[cat] then
            for k, v in pairs(vals) do Config[cat][k] = v end
        end
    end
    if data.Settings and data.Settings.MenuKey then
        local keyName = tostring(data.Settings.MenuKey)
        local enum = Enum.KeyCode[keyName]
        if enum then Config.Settings.MenuKey = enum end
    end
    return true
end

local function applyUIToConfig()
    for path, setter in pairs(uiSetters) do
        local cat, key = path:match("^(%w+)%.(%w+)$")
        if cat and key and Config[cat] then
            local value = Config[cat][key]
            if value ~= nil then pcall(function() setter(value) end) end
        end
    end
end

local function deleteConfig(name)
    if not name or name == "" then return false end
    if fileIOAvailable then
        local path = CONFIG_FOLDER .. "/" .. name .. ".json"
        if isfile(path) then pcall(function() delfile(path) end); return true end
        return false
    else memoryStore[name] = nil; return true end
end

-- ==================== MENU ====================
local MenuFrame = Instance.new("Frame")
MenuFrame.Name = "MenuFrame"
MenuFrame.Parent = ScreenGui
MenuFrame.BackgroundColor3 = Color3.fromRGB(12, 12, 16)
MenuFrame.BackgroundTransparency = 0
MenuFrame.BorderSizePixel = 0
MenuFrame.ClipsDescendants = true
MenuFrame.Position = UDim2.new(0.5, -230, 0.5, -140)
MenuFrame.Size = UDim2.new(0, 460, 0, 280)
MenuFrame.Active = true
MenuFrame.Draggable = true

local MainCorner = Instance.new("UICorner"); MainCorner.CornerRadius = UDim.new(0, 10); MainCorner.Parent = MenuFrame
local MainStroke = Instance.new("UIStroke"); MainStroke.Color = Color3.fromRGB(255,255,255); MainStroke.Transparency = 0.85; MainStroke.Parent = MenuFrame

local Header = Instance.new("Frame")
Header.Parent = MenuFrame
Header.BackgroundColor3 = Color3.fromRGB(16, 16, 22)
Header.BackgroundTransparency = 0
Header.Size = UDim2.new(1, 0, 0, 28)
Header.BorderSizePixel = 0
Header.ZIndex = 2
local HeaderCorner = Instance.new("UICorner"); HeaderCorner.CornerRadius = UDim.new(0, 10); HeaderCorner.Parent = Header

local TitleText = Instance.new("TextLabel")
TitleText.Parent = Header
TitleText.BackgroundTransparency = 1
TitleText.Position = UDim2.new(0, 12, 0, 0)
TitleText.Size = UDim2.new(0, 220, 1, 0)
TitleText.Font = Enum.Font.GothamBold
TitleText.Text = "VARUMA HACK // MM2"
TitleText.TextColor3 = Color3.fromRGB(241, 245, 249)
TitleText.TextSize = 11
TitleText.TextXAlignment = Enum.TextXAlignment.Left
TitleText.ZIndex = 3

local SizeSelector = Instance.new("Frame")
SizeSelector.Parent = Header
SizeSelector.BackgroundTransparency = 1
SizeSelector.AnchorPoint = Vector2.new(1, 0.5)
SizeSelector.Position = UDim2.new(1, -8, 0.5, 0)
SizeSelector.Size = UDim2.new(0, 100, 0, 20)
SizeSelector.ZIndex = 3

local SLLayout = Instance.new("UIListLayout")
SLLayout.Parent = SizeSelector
SLLayout.FillDirection = Enum.FillDirection.Horizontal
SLLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
SLLayout.VerticalAlignment = Enum.VerticalAlignment.Center
SLLayout.Padding = UDim.new(0, 4)

local PhoneBtn = Instance.new("TextButton")
PhoneBtn.Parent = SizeSelector
PhoneBtn.Size = UDim2.new(0, 46, 1, 0)
PhoneBtn.BackgroundColor3 = Color3.fromRGB(239, 68, 68)
PhoneBtn.BorderSizePixel = 0
PhoneBtn.Font = Enum.Font.GothamBold
PhoneBtn.Text = "PHONE"
PhoneBtn.TextColor3 = Color3.fromRGB(255,255,255)
PhoneBtn.TextSize = 7
PhoneBtn.ZIndex = 4
local PBCorner = Instance.new("UICorner"); PBCorner.CornerRadius = UDim.new(0, 3); PBCorner.Parent = PhoneBtn

local TabletBtn = Instance.new("TextButton")
TabletBtn.Parent = SizeSelector
TabletBtn.Size = UDim2.new(0, 50, 1, 0)
TabletBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
TabletBtn.BorderSizePixel = 0
TabletBtn.Font = Enum.Font.GothamBold
TabletBtn.Text = "TABLET"
TabletBtn.TextColor3 = Color3.fromRGB(150,160,175)
TabletBtn.TextSize = 7
TabletBtn.ZIndex = 4
local TBCorner = Instance.new("UICorner"); TBCorner.CornerRadius = UDim.new(0, 3); TBCorner.Parent = TabletBtn

local SIZE_PHONE = {size = UDim2.new(0, 460, 0, 280), pos = UDim2.new(0.5, -230, 0.5, -140)}
local SIZE_TABLET = {size = UDim2.new(0, 560, 0, 360), pos = UDim2.new(0.5, -280, 0.5, -180)}

local function applyMenuSize(preset, isSmall)
    TweenService:Create(MenuFrame, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Size = preset.size, Position = preset.pos
    }):Play()
    PhoneBtn.BackgroundColor3 = isSmall and Color3.fromRGB(239,68,68) or Color3.fromRGB(30,30,40)
    PhoneBtn.TextColor3 = isSmall and Color3.fromRGB(255,255,255) or Color3.fromRGB(150,160,175)
    TabletBtn.BackgroundColor3 = (not isSmall) and Color3.fromRGB(239,68,68) or Color3.fromRGB(30,30,40)
    TabletBtn.TextColor3 = (not isSmall) and Color3.fromRGB(255,255,255) or Color3.fromRGB(150,160,175)
end
PhoneBtn.MouseButton1Click:Connect(function() applyMenuSize(SIZE_PHONE, true) end)
TabletBtn.MouseButton1Click:Connect(function() applyMenuSize(SIZE_TABLET, false) end)

local StatsBar = Instance.new("Frame")
StatsBar.Parent = MenuFrame
StatsBar.BackgroundColor3 = Color3.fromRGB(15, 15, 21)
StatsBar.BackgroundTransparency = 0
StatsBar.Position = UDim2.new(0, 0, 0, 28)
StatsBar.Size = UDim2.new(1, 0, 0, 24)
StatsBar.BorderSizePixel = 0
StatsBar.ZIndex = 2

local StatsLayout = Instance.new("UIListLayout")
StatsLayout.Parent = StatsBar
StatsLayout.FillDirection = Enum.FillDirection.Horizontal
StatsLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
StatsLayout.VerticalAlignment = Enum.VerticalAlignment.Center
StatsLayout.Padding = UDim.new(0, 12)

local PingLabel = Instance.new("TextLabel")
PingLabel.Parent = StatsBar; PingLabel.BackgroundTransparency = 1
PingLabel.Size = UDim2.new(0, 85, 1, 0)
PingLabel.Font = Enum.Font.GothamBold; PingLabel.Text = "PING: --"
PingLabel.TextColor3 = Color3.fromRGB(200,210,220); PingLabel.TextSize = 9
PingLabel.ZIndex = 3

local FpsLabel = Instance.new("TextLabel")
FpsLabel.Parent = StatsBar; FpsLabel.BackgroundTransparency = 1
FpsLabel.Size = UDim2.new(0, 65, 1, 0)
FpsLabel.Font = Enum.Font.GothamBold; FpsLabel.Text = "FPS: --"
FpsLabel.TextColor3 = Color3.fromRGB(200,210,220); FpsLabel.TextSize = 9
FpsLabel.ZIndex = 3

local RoleLabel = Instance.new("TextLabel")
RoleLabel.Parent = StatsBar; RoleLabel.BackgroundTransparency = 1
RoleLabel.Size = UDim2.new(0, 110, 1, 0)
RoleLabel.Font = Enum.Font.GothamBold; RoleLabel.Text = "ROLE: --"
RoleLabel.TextColor3 = Color3.fromRGB(200,210,220); RoleLabel.TextSize = 9
RoleLabel.ZIndex = 3

local RoundLabel = Instance.new("TextLabel")
RoundLabel.Parent = StatsBar; RoundLabel.BackgroundTransparency = 1
RoundLabel.Size = UDim2.new(0, 95, 1, 0)
RoundLabel.Font = Enum.Font.GothamBold; RoundLabel.Text = "ROUND: --"
RoundLabel.TextColor3 = Color3.fromRGB(255, 200, 60); RoundLabel.TextSize = 9
RoundLabel.ZIndex = 3

local Footer = Instance.new("Frame")
Footer.Parent = MenuFrame
Footer.BackgroundColor3 = Color3.fromRGB(14, 14, 20)
Footer.BackgroundTransparency = 0
Footer.Position = UDim2.new(0, 0, 1, -30)
Footer.Size = UDim2.new(1, 0, 0, 30)
Footer.BorderSizePixel = 0
Footer.ClipsDescendants = true
Footer.ZIndex = 2
local FooterCorner = Instance.new("UICorner"); FooterCorner.CornerRadius = UDim.new(0, 10); FooterCorner.Parent = Footer

local FLayout = Instance.new("UIListLayout")
FLayout.Parent = Footer
FLayout.FillDirection = Enum.FillDirection.Horizontal
FLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
FLayout.SortOrder = Enum.SortOrder.LayoutOrder

local tabs = {"rage", "legit", "visuals", "fling", "misc"}
local contentFrames = {}
local columnFrames = {}

local Body = Instance.new("ScrollingFrame")
Body.Parent = MenuFrame
Body.BackgroundTransparency = 1
Body.ClipsDescendants = true
Body.Position = UDim2.new(0, 0, 0, 52)
Body.Size = UDim2.new(1, 0, 1, -82)
Body.CanvasSize = UDim2.new(0, 0, 0, 900)
Body.ScrollBarThickness = 4
Body.ScrollBarImageColor3 = Color3.fromRGB(239, 68, 68)
Body.ScrollingDirection = Enum.ScrollingDirection.Y
Body.ElasticBehavior = Enum.ElasticBehavior.WhenScrollable
Body.ZIndex = 2

local BodyPadding = Instance.new("UIPadding")
BodyPadding.Parent = Body
BodyPadding.PaddingLeft = UDim.new(0, 8); BodyPadding.PaddingRight = UDim.new(0, 8)
BodyPadding.PaddingTop = UDim.new(0, 6)

local CategoryBar = Instance.new("Frame")
CategoryBar.Parent = Body
CategoryBar.BackgroundTransparency = 1
CategoryBar.Size = UDim2.new(1, 0, 0, 16)

local CatTag = Instance.new("TextLabel")
CatTag.Parent = CategoryBar
CatTag.BackgroundColor3 = Color3.fromRGB(239, 68, 68)
CatTag.BackgroundTransparency = 0.85
CatTag.Size = UDim2.new(0, 70, 0, 14)
CatTag.Font = Enum.Font.GothamBold
CatTag.Text = "  rage"
CatTag.TextColor3 = Color3.fromRGB(239, 68, 68)
CatTag.TextSize = 9
CatTag.TextXAlignment = Enum.TextXAlignment.Left
local CTCorner = Instance.new("UICorner"); CTCorner.CornerRadius = UDim.new(0, 3); CTCorner.Parent = CatTag

for i, tabName in ipairs(tabs) do
    local tabContent = Instance.new("Frame")
    tabContent.Name = tabName .. "_content"
    tabContent.Parent = Body
    tabContent.BackgroundTransparency = 1
    tabContent.Position = UDim2.new(0, 0, 0, 20)
    tabContent.Size = UDim2.new(1, 0, 0, 880)
    tabContent.Visible = (i == 1)

    local leftCol = Instance.new("Frame")
    leftCol.Name = "LeftCol"
    leftCol.Parent = tabContent
    leftCol.BackgroundTransparency = 1
    leftCol.Position = UDim2.new(0, 0, 0, 0)
    leftCol.Size = UDim2.new(0.485, 0, 0, 880)
    local leftList = Instance.new("UIListLayout"); leftList.Parent = leftCol
    leftList.Padding = UDim.new(0, 6); leftList.SortOrder = Enum.SortOrder.LayoutOrder

    local rightCol = Instance.new("Frame")
    rightCol.Name = "RightCol"
    rightCol.Parent = tabContent
    rightCol.BackgroundTransparency = 1
    rightCol.Position = UDim2.new(0.515, 0, 0, 0)
    rightCol.Size = UDim2.new(0.485, 0, 0, 880)
    local rightList = Instance.new("UIListLayout"); rightList.Parent = rightCol
    rightList.Padding = UDim.new(0, 6); rightList.SortOrder = Enum.SortOrder.LayoutOrder

    contentFrames[tabName] = tabContent
    columnFrames[tabName] = {left = leftCol, right = rightCol, lastCol = "right"}
end

local function pickColumn(tabKey, column)
    if column == "left" then return columnFrames[tabKey].left end
    if column == "right" then return columnFrames[tabKey].right end
    local cf = columnFrames[tabKey]
    cf.lastCol = (cf.lastCol == "left") and "right" or "left"
    return cf[cf.lastCol]
end

-- ==================== CARD BUILDERS ====================
local function AddCard(tabKey, title, desc, defaultState, callback, configPath, subSettings, column)
    local parentCol = pickColumn(tabKey, column)
    local card = Instance.new("Frame")
    card.Parent = parentCol
    card.BackgroundColor3 = Color3.fromRGB(18, 18, 26)
    card.BackgroundTransparency = 0; card.BorderSizePixel = 0
    card.Size = UDim2.new(1, 0, 0, 36)

    local cCorner = Instance.new("UICorner"); cCorner.CornerRadius = UDim.new(0, 5); cCorner.Parent = card
    local cStroke = Instance.new("UIStroke"); cStroke.Color = Color3.fromRGB(255,255,255); cStroke.Transparency = 0.85; cStroke.Parent = card

    local tc = Instance.new("Frame"); tc.Parent = card; tc.BackgroundTransparency = 1
    tc.Position = UDim2.new(0,7,0,4); tc.Size = UDim2.new(1,-42,0,30)

    local tLabel = Instance.new("TextLabel"); tLabel.Parent = tc; tLabel.BackgroundTransparency = 1
    tLabel.Position = UDim2.new(0,0,0,0); tLabel.Size = UDim2.new(1,0,0,15)
    tLabel.Font = Enum.Font.GothamMedium; tLabel.Text = title
    tLabel.TextColor3 = Color3.fromRGB(241,245,249); tLabel.TextSize = 8.5
    tLabel.TextXAlignment = Enum.TextXAlignment.Left

    local dLabel = Instance.new("TextLabel"); dLabel.Parent = tc; dLabel.BackgroundTransparency = 1
    dLabel.Position = UDim2.new(0,0,0,15); dLabel.Size = UDim2.new(1,0,0,13)
    dLabel.Font = Enum.Font.Gotham; dLabel.Text = desc
    dLabel.TextColor3 = Color3.fromRGB(150,160,175); dLabel.TextSize = 6
    dLabel.TextXAlignment = Enum.TextXAlignment.Left
    dLabel.TextTruncate = Enum.TextTruncate.AtEnd

    local toggleBtn = Instance.new("TextButton")
    toggleBtn.Parent = card
    toggleBtn.BackgroundColor3 = defaultState and Color3.fromRGB(255,255,255) or Color3.fromRGB(30,30,40)
    toggleBtn.AnchorPoint = Vector2.new(1, 0)
    toggleBtn.Position = UDim2.new(1,-8,0,11)
    toggleBtn.Size = UDim2.new(0, 24, 0, 13)
    toggleBtn.Text = ""
    local tCorner = Instance.new("UICorner"); tCorner.CornerRadius = UDim.new(0,10); tCorner.Parent = toggleBtn

    local knob = Instance.new("Frame")
    knob.Parent = toggleBtn
    knob.BackgroundColor3 = defaultState and Color3.fromRGB(15,15,18) or Color3.fromRGB(161,161,170)
    knob.Position = defaultState and UDim2.new(1,-11,0.5,-4.5) or UDim2.new(0,2,0.5,-4.5)
    knob.Size = UDim2.new(0, 9, 0, 9)
    local kCorner = Instance.new("UICorner"); kCorner.CornerRadius = UDim.new(0,10); kCorner.Parent = knob

    local subContainer = nil
    if subSettings and #subSettings > 0 then
        subContainer = Instance.new("Frame")
        subContainer.Parent = card
        subContainer.BackgroundTransparency = 1
        subContainer.Position = UDim2.new(0, 0, 0, 36)
        subContainer.Size = UDim2.new(1, 0, 0, 0)
        subContainer.ClipsDescendants = true; subContainer.Visible = false

        local subList = Instance.new("UIListLayout"); subList.Parent = subContainer
        subList.Padding = UDim.new(0, 5); subList.SortOrder = Enum.SortOrder.LayoutOrder

        local subPad = Instance.new("UIPadding"); subPad.Parent = subContainer
        subPad.PaddingTop = UDim.new(0, 3); subPad.PaddingBottom = UDim.new(0, 3)
        subPad.PaddingLeft = UDim.new(0, 6); subPad.PaddingRight = UDim.new(0, 6)

        for _, sub in ipairs(subSettings) do
            local subRow = Instance.new("Frame")
            subRow.Parent = subContainer
            subRow.BackgroundColor3 = Color3.fromRGB(24, 24, 32)
            subRow.BackgroundTransparency = 0.2; subRow.BorderSizePixel = 0
            subRow.Size = UDim2.new(1, 0, 0, 26)
            local srCorner = Instance.new("UICorner"); srCorner.CornerRadius = UDim.new(0,3); srCorner.Parent = subRow

            if sub.kind == "slider" then
                local nameLbl = Instance.new("TextLabel")
                nameLbl.Parent = subRow; nameLbl.BackgroundTransparency = 1
                nameLbl.Position = UDim2.new(0, 7, 0, 3); nameLbl.Size = UDim2.new(1, -65, 0, 11)
                nameLbl.Font = Enum.Font.GothamMedium; nameLbl.Text = sub.title
                nameLbl.TextColor3 = Color3.fromRGB(210, 215, 225); nameLbl.TextSize = 8
                nameLbl.TextXAlignment = Enum.TextXAlignment.Left

                local valLbl = Instance.new("TextLabel")
                valLbl.Parent = subRow; valLbl.BackgroundTransparency = 1
                valLbl.AnchorPoint = Vector2.new(1, 0); valLbl.Position = UDim2.new(1, -7, 0, 3)
                valLbl.Size = UDim2.new(0, 55, 0, 11)
                valLbl.Font = Enum.Font.GothamBold; valLbl.Text = tostring(sub.default)
                valLbl.TextColor3 = Color3.fromRGB(239, 68, 68); valLbl.TextSize = 8
                valLbl.TextXAlignment = Enum.TextXAlignment.Right

                local sBar = Instance.new("Frame")
                sBar.Parent = subRow; sBar.BackgroundColor3 = Color3.fromRGB(30,30,40)
                sBar.Position = UDim2.new(0, 7, 0, 18); sBar.Size = UDim2.new(1, -14, 0, 4)
                sBar.BorderSizePixel = 0
                local sbCorner = Instance.new("UICorner"); sbCorner.CornerRadius = UDim.new(0,2); sbCorner.Parent = sBar

                local sFill = Instance.new("Frame")
                sFill.Parent = sBar; sFill.BackgroundColor3 = Color3.fromRGB(239,68,68)
                sFill.Size = UDim2.new((sub.default - sub.min) / (sub.max - sub.min), 0, 1, 0)
                sFill.BorderSizePixel = 0
                local sfCorner = Instance.new("UICorner"); sfCorner.CornerRadius = UDim.new(0,2); sfCorner.Parent = sFill

                local sDragging = false
                local function sUpdate(input)
                    local pos = math.clamp((input.Position.X - sBar.AbsolutePosition.X) / sBar.AbsoluteSize.X, 0, 1)
                    sFill.Size = UDim2.new(pos, 0, 1, 0)
                    local v = math.floor(sub.min + (sub.max - sub.min) * pos)
                    valLbl.Text = tostring(v)
                    pcall(function() sub.callback(v) end)
                end
                sBar.InputBegan:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                        sDragging = true; sUpdate(input)
                    end
                end)
                UserInputService.InputEnded:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then sDragging = false end
                end)
                UserInputService.InputChanged:Connect(function(input)
                    if sDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then sUpdate(input) end
                end)
                if sub.configPath then
                    uiSetters[sub.configPath] = function(v)
                        v = tonumber(v) or sub.default
                        local pos = math.clamp((v - sub.min) / (sub.max - sub.min), 0, 1)
                        sFill.Size = UDim2.new(pos, 0, 1, 0)
                        valLbl.Text = tostring(v)
                        pcall(function() sub.callback(v) end)
                    end
                end
            elseif sub.kind == "cycle" then
                local nameLbl = Instance.new("TextLabel")
                nameLbl.Parent = subRow; nameLbl.BackgroundTransparency = 1
                nameLbl.Position = UDim2.new(0, 7, 0, 0); nameLbl.Size = UDim2.new(1, -90, 1, 0)
                nameLbl.Font = Enum.Font.GothamMedium; nameLbl.Text = sub.title
                nameLbl.TextColor3 = Color3.fromRGB(210, 215, 225); nameLbl.TextSize = 8
                nameLbl.TextXAlignment = Enum.TextXAlignment.Left

                local valBtn = Instance.new("TextButton")
                valBtn.Parent = subRow
                valBtn.BackgroundColor3 = Color3.fromRGB(30,30,40); valBtn.BorderSizePixel = 0
                valBtn.AnchorPoint = Vector2.new(1, 0.5); valBtn.Position = UDim2.new(1, -7, 0.5, 0)
                valBtn.Size = UDim2.new(0, 80, 0, 19)
                valBtn.Font = Enum.Font.GothamBold
                valBtn.TextColor3 = Color3.fromRGB(239,68,68); valBtn.TextSize = 7
                local vc = Instance.new("UICorner"); vc.CornerRadius = UDim.new(0,3); vc.Parent = valBtn

                local idx = sub.default or 1
                valBtn.Text = sub.options[idx]
                valBtn.MouseButton1Click:Connect(function()
                    idx = idx + 1
                    if idx > #sub.options then idx = 1 end
                    valBtn.Text = sub.options[idx]
                    pcall(function() sub.callback(idx, sub.options[idx]) end)
                end)
                if sub.configPath then
                    uiSetters[sub.configPath] = function(v)
                        idx = tonumber(v) or 1
                        if sub.options[idx] then valBtn.Text = sub.options[idx] end
                        pcall(function() sub.callback(idx, sub.options[idx]) end)
                    end
                end
            end
        end

        local subHeight = 0
        for _, sub in ipairs(subSettings) do subHeight = subHeight + 26 end
        subHeight = subHeight + (#subSettings - 1) * 5 + 6
        card:SetAttribute("SubHeight", subHeight)
    end

    local function setVisual(state)
        toggleBtn.BackgroundColor3 = state and Color3.fromRGB(255,255,255) or Color3.fromRGB(30,30,40)
        knob.BackgroundColor3 = state and Color3.fromRGB(15,15,18) or Color3.fromRGB(161,161,170)
        knob.Position = state and UDim2.new(1,-11,0.5,-4.5) or UDim2.new(0,2,0.5,-4.5)
        if subContainer then
            local targetH = state and card:GetAttribute("SubHeight") or 0
            TweenService:Create(card, TweenInfo.new(0.2), {Size = UDim2.new(1, 0, 0, 36 + targetH)}):Play()
            TweenService:Create(subContainer, TweenInfo.new(0.2), {Size = UDim2.new(1, 0, 0, targetH)}):Play()
            subContainer.Visible = state
        end
    end

    local state = defaultState
    toggleBtn.MouseButton1Click:Connect(function()
        state = not state
        setVisual(state)
        pcall(function() callback(state) end)
    end)
    if configPath then
        uiSetters[configPath] = function(v)
            state = v and true or false
            setVisual(state)
            pcall(function() callback(state) end)
        end
    end
    if defaultState and subContainer then
        local targetH = card:GetAttribute("SubHeight") or 0
        card.Size = UDim2.new(1, 0, 0, 36 + targetH)
        subContainer.Size = UDim2.new(1, 0, 0, targetH)
        subContainer.Visible = true
    end
end

local function AddActionCard(tabKey, title, desc, btnText, callback, column)
    local parentCol = pickColumn(tabKey, column)
    local card = Instance.new("Frame")
    card.Parent = parentCol
    card.BackgroundColor3 = Color3.fromRGB(18,18,26)
    card.BackgroundTransparency = 0; card.BorderSizePixel = 0
    card.Size = UDim2.new(1, 0, 0, 36)

    local cCorner = Instance.new("UICorner"); cCorner.CornerRadius = UDim.new(0,5); cCorner.Parent = card
    local cStroke = Instance.new("UIStroke"); cStroke.Color = Color3.fromRGB(255,255,255); cStroke.Transparency = 0.85; cStroke.Parent = card

    local tc = Instance.new("Frame"); tc.Parent = card; tc.BackgroundTransparency = 1
    tc.Position = UDim2.new(0,7,0,4); tc.Size = UDim2.new(1,-84,0,30)

    local tLabel = Instance.new("TextLabel"); tLabel.Parent = tc; tLabel.BackgroundTransparency = 1
    tLabel.Position = UDim2.new(0,0,0,0); tLabel.Size = UDim2.new(1,0,0,15)
    tLabel.Font = Enum.Font.GothamMedium; tLabel.Text = title
    tLabel.TextColor3 = Color3.fromRGB(241,245,249); tLabel.TextSize = 8.5
    tLabel.TextXAlignment = Enum.TextXAlignment.Left

    local dLabel = Instance.new("TextLabel"); dLabel.Parent = tc; dLabel.BackgroundTransparency = 1
    dLabel.Position = UDim2.new(0,0,0,15); dLabel.Size = UDim2.new(1,0,0,13)
    dLabel.Font = Enum.Font.Gotham; dLabel.Text = desc
    dLabel.TextColor3 = Color3.fromRGB(150,160,175); dLabel.TextSize = 6
    dLabel.TextXAlignment = Enum.TextXAlignment.Left
    dLabel.TextTruncate = Enum.TextTruncate.AtEnd

    local actionBtn = Instance.new("TextButton")
    actionBtn.Parent = card
    actionBtn.BackgroundColor3 = Color3.fromRGB(239,68,68)
    actionBtn.AnchorPoint = Vector2.new(1, 0.5)
    actionBtn.Position = UDim2.new(1, -8, 0.5, 0)
    actionBtn.Size = UDim2.new(0, 68, 0, 20)
    actionBtn.Font = Enum.Font.GothamBold
    actionBtn.Text = btnText
    actionBtn.TextColor3 = Color3.fromRGB(255,255,255); actionBtn.TextSize = 7
    local aCorner = Instance.new("UICorner"); aCorner.CornerRadius = UDim.new(0,4); aCorner.Parent = actionBtn

    actionBtn.MouseButton1Click:Connect(function() pcall(function() callback() end) end)
end

-- ==================== LEGIT TAB ====================
AddCard("legit", "Sheriff Aimbot", "auto lock on head", false, function(v) Config.Legit.SheriffAimbot = v end, "Legit.SheriffAimbot", {
    {kind = "slider", title = "FOV", min = 30, max = 400, default = 120, callback = function(v) Config.Legit.FOVRadius = v end, configPath = "Legit.FOVRadius"},
    {kind = "slider", title = "Smoothness %", min = 5, max = 100, default = 25, callback = function(v) Config.Legit.AimSmoothness = v / 100 end, configPath = "Legit.AimSmoothness"}
}, "left")

AddCard("legit", "FOV Circle", "target filter", true, function(v)
    Config.Legit.FOVShow = v
    FOVCircle.Visible = v; FOVGlowOuter.Visible = v; FOVGlowMid.Visible = v
end, "Legit.FOVShow", {
    {kind = "cycle", title = "Aim Target", options = aimTargetNames, default = 1, callback = function(i) Config.Legit.AimTarget = i end, configPath = "Legit.AimTarget"},
    {kind = "cycle", title = "FOV Color", options = fovColorNames, default = 1, callback = function(i) Config.Legit.FOVColor = i end, configPath = "Legit.FOVColor"}
}, "right")

AddCard("legit", "Triggerbot", "auto fire when on target", false, function(v) Config.Legit.Triggerbot = v end, "Legit.Triggerbot", {
    {kind = "slider", title = "Radius (px)", min = 5, max = 40, default = 15, callback = function(v) Config.Legit.TriggerRadius = v end, configPath = "Legit.TriggerRadius"},
    {kind = "slider", title = "Delay (ms)", min = 0, max = 300, default = 0, callback = function(v) Config.Legit.TriggerDelay = v / 1000 end, configPath = "Legit.TriggerDelay"}
}, "left")

AddCard("legit", "Hit Marker", "X marker on hit", false, function(v) Config.Legit.HitMarker = v end, "Legit.HitMarker", nil, "right")
AddCard("legit", "Auto Reload", "swap to reload", false, function(v) Config.Legit.AutoReload = v end, "Legit.AutoReload", nil, "left")

-- ==================== RAGE TAB ====================
AddCard("rage", "Ragebot", "auto target", false, function(v) Config.Rage.Enabled = v end, "Rage.Enabled")
AddCard("rage", "Spinbot", "spin rotation", false, function(v) Config.Rage.Spinbot = v end, "Rage.Spinbot")
AddCard("rage", "Silent Aim", "hit ignores crosshair", false, function(v) Config.Rage.SilentAim = v end, "Rage.SilentAim", {
    {kind = "slider", title = "FOV", min = 30, max = 400, default = 200, callback = function(v) Config.Rage.SilentAimFOV = v end, configPath = "Rage.SilentAimFOV"}
}, "left")
AddCard("rage", "Visible Only", "skip walls", true, function(v) Config.Rage.SilentAimVisibleOnly = v end, "Rage.SilentAimVisibleOnly")
AddCard("rage", "Radar", "arrow radar", false, function(v) Config.Rage.Radar = v end, "Rage.Radar", {
    {kind = "slider", title = "Radius", min = 30, max = 120, default = 60, callback = function(v) Config.Rage.RadarRadius = v end, configPath = "Rage.RadarRadius"},
    {kind = "slider", title = "Range", min = 50, max = 500, default = 150, callback = function(v) Config.Rage.RadarRange = v end, configPath = "Rage.RadarRange"}
}, "right")
AddCard("rage", "Anti-Murderer", "tp away (alive only)", false, function(v) Config.Rage.AntiMurderer = v end, "Rage.AntiMurderer", {
    {kind = "slider", title = "Range", min = 5, max = 60, default = 20, callback = function(v) Config.Rage.AntiMurdererRange = v end, configPath = "Rage.AntiMurdererRange"}
}, "left")

AddActionCard("rage", "TP to Murderer", "to killer", "TP", function()
    if not LocalPlayer.Character then return end
    local myHRP = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if not myHRP then return end
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and isMurderer(player) and isPlayerAlive(player) then
            local t = player.Character:FindFirstChild("HumanoidRootPart")
            if t then myHRP.CFrame = CFrame.new(t.Position + t.CFrame.LookVector * 2); break end
        end
    end
end, "right")

AddActionCard("rage", "TP to Sheriff", "to sheriff", "TP", function()
    if not LocalPlayer.Character then return end
    local myHRP = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if not myHRP then return end
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and isSheriff(player) and isPlayerAlive(player) then
            local t = player.Character:FindFirstChild("HumanoidRootPart")
            if t then myHRP.CFrame = CFrame.new(t.Position + t.CFrame.LookVector * 2); break end
        end
    end
end, "left")

AddActionCard("rage", "Kill All", "murderer only", "KILL ALL", function()
    if not hasKnife() then return end
    local myChar = LocalPlayer.Character
    if not myChar then return end
    local myHRP = myChar:FindFirstChild("HumanoidRootPart")
    if not myHRP then return end
    local knife = myChar:FindFirstChild("Knife") or LocalPlayer.Backpack:FindFirstChild("Knife")
    if not knife then return end
    knife.Parent = myChar
    local handle = knife:FindFirstChild("Handle")
    if not handle then return end
    local originalPos = myHRP.CFrame
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and isPlayerAlive(player) then
            local tChar = player.Character
            local tHRP = tChar:FindFirstChild("HumanoidRootPart")
            if tHRP then
                myHRP.CFrame = tHRP.CFrame * CFrame.new(0, 0, -1.5)
                task.wait(0.03)
                for _, part in ipairs(tChar:GetDescendants()) do
                    if part:IsA("BasePart") then
                        pcall(function()
                            firetouchinterest(handle, part, 0)
                            firetouchinterest(handle, part, 1)
                        end)
                    end
                end
                task.wait(0.03)
            end
        end
    end
    task.wait(0.05)
    myHRP.CFrame = originalPos
end, "right")

-- ==================== VISUALS TAB ====================
AddCard("visuals", "Box ESP", "corner box", false, function(v) Config.Visuals.BoxESP = v end, "Visuals.BoxESP")
AddCard("visuals", "Skeleton ESP", "bone skeleton", false, function(v) Config.Visuals.SkeletonESP = v end, "Visuals.SkeletonESP")
AddCard("visuals", "Role Chams", "player highlight", true, function(v) Config.Visuals.Chams = v end, "Visuals.Chams")
AddCard("visuals", "Self Chams", "transparent highlight on you", false, function(v) Config.Visuals.SelfChams = v end, "Visuals.SelfChams", {
    {kind = "slider", title = "Opacity %", min = 5, max = 95, default = 50, callback = function(v) Config.Visuals.SelfChamsTransparency = v / 100 end, configPath = "Visuals.SelfChamsTransparency"}
})
AddCard("visuals", "Gun Chams", "gun highlight", true, function(v) Config.Visuals.GunChams = v end, "Visuals.GunChams")
AddCard("visuals", "Bullet Tracers", "shot line", false, function(v) Config.Visuals.BulletTracers = v end, "Visuals.BulletTracers")
AddCard("visuals", "Player Trails", "self motion trail", false, function(v) Config.Visuals.PlayerTrails = v end, "Visuals.PlayerTrails")
AddCard("visuals", "Jump Effect", "burst on jump", false, function(v) Config.Visuals.JumpEffect = v end, "Visuals.JumpEffect", {
    {kind = "cycle", title = "Color", options = jumpColorNames, default = 2, callback = function(i) Config.Visuals.JumpEffectColor = i end, configPath = "Visuals.JumpEffectColor"}
})
AddCard("visuals", "Third Person", "camera behind", false, function(v) Config.Visuals.ThirdPerson = v end, "Visuals.ThirdPerson")
AddCard("visuals", "Fullbright", "brightness max", false, function(v) Config.Visuals.Fullbright = v end, "Visuals.Fullbright")
AddCard("visuals", "Custom Fog", "atmosphere + color", false, function(v) Config.Visuals.FogEnabled = v end, "Visuals.FogEnabled", {
    {kind = "slider", title = "Distance", min = 50, max = 3000, default = 500, callback = function(v) Config.Visuals.FogDistance = v end, configPath = "Visuals.FogDistance"},
    {kind = "cycle", title = "Fog Color", options = fogColorNames, default = 1, callback = function(i) Config.Visuals.FogColorIndex = i end, configPath = "Visuals.FogColorIndex"}
})
AddCard("visuals", "Self Color", "recolor yourself", false, function(v) Config.Visuals.SelfColorEnabled = v; if applySelfColor then applySelfColor() end end, nil, {
    {kind = "cycle", title = "Color", options = selfColorNames, default = 1, callback = function(i) Config.Visuals.SelfColor = i; applySelfColor() end, configPath = "Visuals.SelfColor"}
})
AddCard("visuals", "Death Effects", "effect on death (2s)", false, function(v) Config.Visuals.DeathEffects = v end, "Visuals.DeathEffects")
AddCard("visuals", "Effect Type", "death fx type", false, function(v) end, nil, {
    {kind = "cycle", title = "Type", options = deathEffectTypes, default = 1, callback = function(i) Config.Visuals.DeathEffectType = i end, configPath = "Visuals.DeathEffectType"},
    {kind = "cycle", title = "Color", options = effectColorNames, default = 1, callback = function(i) Config.Visuals.DeathEffectColor = i end, configPath = "Visuals.DeathEffectColor"}
})

-- ==================== FLING TAB ====================
AddCard("fling", "Fling Module", "enable fling", false, function(v) Config.Fling.Enabled = v end, "Fling.Enabled", {
    {kind = "slider", title = "Power", min = 50000, max = 500000, default = 150000, callback = function(v) Config.Fling.FlingPower = v end, configPath = "Fling.FlingPower"},
    {kind = "slider", title = "Duration (s)", min = 3, max = 20, default = 8, callback = function(v) Config.Fling.Duration = v end, configPath = "Fling.Duration"}
}, "left")
AddCard("fling", "Anti-Fling", "protect yourself", true, function(v) Config.Fling.AntiFling = v end, "Fling.AntiFling", nil, "right")

local flingContent = contentFrames["fling"]
local FlingTableLabel = Instance.new("TextLabel")
FlingTableLabel.Parent = flingContent
FlingTableLabel.BackgroundTransparency = 1
FlingTableLabel.Position = UDim2.new(0, 0, 0, 160)
FlingTableLabel.Size = UDim2.new(1, 0, 0, 14)
FlingTableLabel.Font = Enum.Font.GothamBold
FlingTableLabel.Text = "TARGETS (alive only)"
FlingTableLabel.TextColor3 = Color3.fromRGB(239, 68, 68)
FlingTableLabel.TextSize = 9
FlingTableLabel.TextXAlignment = Enum.TextXAlignment.Left

local FlingListFrame = Instance.new("ScrollingFrame")
FlingListFrame.Parent = flingContent
FlingListFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 26)
FlingListFrame.BackgroundTransparency = 0.1
FlingListFrame.BorderSizePixel = 0
FlingListFrame.Position = UDim2.new(0, 0, 0, 178)
FlingListFrame.Size = UDim2.new(1, 0, 0, 320)
FlingListFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
FlingListFrame.ScrollBarThickness = 3
FlingListFrame.ScrollBarImageColor3 = Color3.fromRGB(239, 68, 68)

local FLCorner = Instance.new("UICorner"); FLCorner.CornerRadius = UDim.new(0,5); FLCorner.Parent = FlingListFrame
local FLStroke = Instance.new("UIStroke"); FLStroke.Color = Color3.fromRGB(255,255,255); FLStroke.Transparency = 0.85; FLStroke.Parent = FlingListFrame
local FLList = Instance.new("UIListLayout"); FLList.Parent = FlingListFrame; FLList.Padding = UDim.new(0, 3)
local FLPad = Instance.new("UIPadding"); FLPad.Parent = FlingListFrame
FLPad.PaddingTop = UDim.new(0, 4); FLPad.PaddingLeft = UDim.new(0, 4); FLPad.PaddingRight = UDim.new(0, 4)

local flingButtons = {}

local function rebuildFlingList()
    for _, btn in pairs(flingButtons) do if btn then btn:Destroy() end end
    flingButtons = {}
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            local alive = isPlayerAlive(player)
            local btn = Instance.new("TextButton")
            btn.Parent = FlingListFrame
            btn.BackgroundColor3 = alive and Color3.fromRGB(26, 26, 36) or Color3.fromRGB(18, 18, 22)
            btn.BackgroundTransparency = alive and 0.15 or 0.4
            btn.BorderSizePixel = 0
            btn.Size = UDim2.new(1, -8, 0, 26)
            btn.Font = Enum.Font.GothamBold
            btn.Text = "  " .. player.Name .. "   [" .. getRoleName(player) .. "]   " .. (alive and (getDistanceToPlayer(player) .. "m") or "DEAD")
            btn.TextSize = 8
            btn.TextXAlignment = Enum.TextXAlignment.Left
            btn.TextColor3 = alive and getRoleColor(player) or Color3.fromRGB(90, 90, 100)
            btn.AutoButtonColor = alive
            local bc = Instance.new("UICorner"); bc.CornerRadius = UDim.new(0,4); bc.Parent = btn
            local bs = Instance.new("UIStroke"); bs.Color = alive and getRoleColor(player) or Color3.fromRGB(60, 60, 70)
            bs.Transparency = alive and 0.7 or 0.85; bs.Parent = btn

            btn.MouseButton1Click:Connect(function()
                if not Config.Fling.Enabled then return end
                if not isPlayerAlive(player) then return end
                flingPlayer(player)
            end)
            flingButtons[player] = btn
        end
    end
    task.wait()
    FlingListFrame.CanvasSize = UDim2.new(0, 0, 0, FLList.AbsoluteContentSize.Y + 12)
end
rebuildFlingList()
Players.PlayerAdded:Connect(function() task.defer(rebuildFlingList) end)
Players.PlayerRemoving:Connect(function(p)
    if flingButtons[p] then flingButtons[p]:Destroy(); flingButtons[p] = nil end
    task.defer(rebuildFlingList)
end)

-- ==================== MISC TAB ====================
AddCard("misc", "Auto Gun Pick", "instant pickup", false, function(v) Config.Misc.AutoGunPick = v end, "Misc.AutoGunPick")
AddCard("misc", "Speed Hack", "custom speed", false, function(v) Config.Misc.WalkSpeedEnabled = v end, "Misc.WalkSpeedEnabled", {
    {kind = "slider", title = "Speed", min = 16, max = 100, default = 16, callback = function(v) Config.Misc.WalkSpeed = v end, configPath = "Misc.WalkSpeed"}
}, "left")
AddCard("misc", "Infinite Jump", "hold space", false, function(v) Config.Misc.Bhop = v end, "Misc.Bhop", nil, "right")
AddCard("misc", "Auto Farm Coins", "0.5s per coin", false, function(v) Config.Misc.AutoFarmCoins = v end, "Misc.AutoFarmCoins", nil, "left")
AddActionCard("misc", "Server Hop", "rejoin", "REJOIN", function() TeleportService:Teleport(game.PlaceId, LocalPlayer) end, "right")
AddActionCard("misc", "Unload", "remove script", "UNLOAD", function()
    isUnloaded = true
    pcall(function()
        FOVCircle:Remove(); FOVGlowOuter:Remove(); FOVGlowMid:Remove()
        for _, r in pairs(activeDrawings.Radar) do
            if r.shaft1 then pcall(function() r.shaft1:Remove() end) end
            if r.shaft2 then pcall(function() r.shaft2:Remove() end) end
            if r.tip1 then pcall(function() r.tip1:Remove() end) end
            if r.tip2 then pcall(function() r.tip2:Remove() end) end
        end
        for _, hl in pairs(activeDrawings.Highlights) do if hl then pcall(function() hl:Destroy() end) end end
        for p, _ in pairs(activeDrawings.Skeletons) do
            local lines = activeDrawings.Skeletons[p]
            if lines then for _, l in ipairs(lines) do pcall(function() l:Remove() end) end end
        end
        for p, _ in pairs(activeDrawings.Boxes) do
            local b = activeDrawings.Boxes[p]
            if b then
                for _, l in ipairs(b.corners) do pcall(function() l:Remove() end) end
                pcall(function() b.healthBar:Remove() end); pcall(function() b.nameText:Remove() end); pcall(function() b.distText:Remove() end)
            end
        end
        destroySelfTrail()
        for _, t in ipairs(activeTracers) do pcall(function() t.line:Remove() end) end
        for _, b in ipairs(jumpBursts) do
            for _, obj in ipairs(b.parts) do if obj.part and obj.part.Parent then obj.part:Destroy() end end
            if b.light and b.light.Parent then b.light:Destroy() end
            if b.anchor and b.anchor.Parent then b.anchor:Destroy() end
        end
        for _, hm in ipairs(hitMarkers) do
            for _, l in ipairs(hm.lines) do pcall(function() l:Remove() end) end
        end
        if selfChamsHighlight and selfChamsHighlight.Parent then selfChamsHighlight:Destroy() end
        for _, obj in ipairs(Workspace:GetDescendants()) do
            if obj.Name == "VarumaDeathFX" or obj.Name == "VarumaDeathLight" then
                pcall(function() obj:Destroy() end)
            end
        end
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
            LocalPlayer.Character.Humanoid.WalkSpeed = 16
        end
        for _, player in ipairs(Players:GetPlayers()) do
            if player.Character then
                local hl = player.Character:FindFirstChild("VarumaHackHighlight")
                if hl then hl:Destroy() end
            end
        end
        local gunDrop = Workspace:FindFirstChild("GunDrop", true)
        if gunDrop and gunDrop:FindFirstChild("VarumaHackGunHighlight") then
            gunDrop.VarumaHackGunHighlight:Destroy()
        end
        local cc = Lighting:FindFirstChild("VarumaFogCC")
        if cc then cc:Destroy() end
        Lighting.Brightness = OriginalLighting.Brightness
        Lighting.ClockTime = OriginalLighting.ClockTime
        Lighting.GlobalShadows = OriginalLighting.GlobalShadows
        Lighting.FogEnd = OriginalLighting.FogEnd
        Lighting.FogStart = OriginalLighting.FogStart
        Lighting.FogColor = OriginalLighting.FogColor
        Lighting.Ambient = OriginalLighting.Ambient
        Lighting.OutdoorAmbient = OriginalLighting.OutdoorAmbient
        Lighting.EnvironmentDiffuseScale = OriginalLighting.EnvironmentDiffuseScale
        Lighting.EnvironmentSpecularScale = OriginalLighting.EnvironmentSpecularScale
        ScreenGui:Destroy()
    end)
end, "left")

-- ==================== CONFIG UI (короткий список) ====================
local miscContent = contentFrames["misc"]
local ConfigSection = Instance.new("Frame")
ConfigSection.Parent = miscContent
ConfigSection.BackgroundColor3 = Color3.fromRGB(18, 18, 26)
ConfigSection.BackgroundTransparency = 0.1
ConfigSection.BorderSizePixel = 0
ConfigSection.Position = UDim2.new(0, 0, 0, 200)
ConfigSection.Size = UDim2.new(1, 0, 0, 260)

local CS_Corner = Instance.new("UICorner"); CS_Corner.CornerRadius = UDim.new(0,5); CS_Corner.Parent = ConfigSection
local CS_Stroke = Instance.new("UIStroke"); CS_Stroke.Color = Color3.fromRGB(255,255,255); CS_Stroke.Transparency = 0.85; CS_Stroke.Parent = ConfigSection

local CS_Title = Instance.new("TextLabel")
CS_Title.Parent = ConfigSection
CS_Title.BackgroundTransparency = 1
CS_Title.Position = UDim2.new(0, 10, 0, 6)
CS_Title.Size = UDim2.new(1, -20, 0, 14)
CS_Title.Font = Enum.Font.GothamBold
CS_Title.Text = "CONFIGS"
CS_Title.TextColor3 = Color3.fromRGB(239, 68, 68)
CS_Title.TextSize = 9
CS_Title.TextXAlignment = Enum.TextXAlignment.Left

local ConfigNameBox = Instance.new("TextBox")
ConfigNameBox.Parent = ConfigSection
ConfigNameBox.BackgroundColor3 = Color3.fromRGB(24, 24, 32)
ConfigNameBox.BorderSizePixel = 0
ConfigNameBox.Position = UDim2.new(0, 10, 0, 26)
ConfigNameBox.Size = UDim2.new(1, -20, 0, 26)
ConfigNameBox.Font = Enum.Font.GothamMedium
ConfigNameBox.PlaceholderText = "> enter config name <"
ConfigNameBox.Text = ""
ConfigNameBox.TextColor3 = Color3.fromRGB(245, 245, 250)
ConfigNameBox.PlaceholderColor3 = Color3.fromRGB(160, 165, 180)
ConfigNameBox.TextSize = 10
ConfigNameBox.ClearTextOnFocus = false
local CNBCorner = Instance.new("UICorner"); CNBCorner.CornerRadius = UDim.new(0,4); CNBCorner.Parent = ConfigNameBox
local CNBStroke = Instance.new("UIStroke"); CNBStroke.Color = Color3.fromRGB(239, 68, 68); CNBStroke.Transparency = 0; CNBStroke.Thickness = 1.5; CNBStroke.Parent = ConfigNameBox
local CNBGlow = Instance.new("UIStroke"); CNBGlow.Color = Color3.fromRGB(239, 68, 68); CNBGlow.Transparency = 0.65; CNBGlow.Thickness = 4; CNBGlow.Parent = ConfigNameBox
local CNBPad = Instance.new("UIPadding"); CNBPad.Parent = ConfigNameBox; CNBPad.PaddingLeft = UDim.new(0, 8)

local SaveBtn = Instance.new("TextButton")
SaveBtn.Parent = ConfigSection
SaveBtn.BackgroundColor3 = Color3.fromRGB(239, 68, 68)
SaveBtn.BorderSizePixel = 0
SaveBtn.Position = UDim2.new(0, 10, 0, 58)
SaveBtn.Size = UDim2.new(0.45, -15, 0, 24)
SaveBtn.Font = Enum.Font.GothamBold
SaveBtn.Text = "SAVE CONFIG"
SaveBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
SaveBtn.TextSize = 9
local SBCorner = Instance.new("UICorner"); SBCorner.CornerRadius = UDim.new(0,4); SBCorner.Parent = SaveBtn

local ConfigStatus = Instance.new("TextLabel")
ConfigStatus.Parent = ConfigSection
ConfigStatus.BackgroundTransparency = 1
ConfigStatus.Position = UDim2.new(0.48, 0, 0, 63)
ConfigStatus.Size = UDim2.new(0.52, -10, 0, 14)
ConfigStatus.Font = Enum.Font.GothamMedium
ConfigStatus.Text = fileIOAvailable and "file storage ready" or "memory only"
ConfigStatus.TextColor3 = Color3.fromRGB(140, 150, 165)
ConfigStatus.TextSize = 8
ConfigStatus.TextXAlignment = Enum.TextXAlignment.Right

local ConfigListFrame = Instance.new("ScrollingFrame")
ConfigListFrame.Parent = ConfigSection
ConfigListFrame.BackgroundColor3 = Color3.fromRGB(14, 14, 20)
ConfigListFrame.BackgroundTransparency = 0.2
ConfigListFrame.BorderSizePixel = 0
ConfigListFrame.Position = UDim2.new(0, 10, 0, 88)
ConfigListFrame.Size = UDim2.new(1, -20, 0, 160)
ConfigListFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
ConfigListFrame.ScrollBarThickness = 3
ConfigListFrame.ScrollBarImageColor3 = Color3.fromRGB(239, 68, 68)
local CLFCorner = Instance.new("UICorner"); CLFCorner.CornerRadius = UDim.new(0,4); CLFCorner.Parent = ConfigListFrame
local CLFStroke = Instance.new("UIStroke"); CLFStroke.Color = Color3.fromRGB(255,255,255); CLFStroke.Transparency = 0.85; CLFStroke.Parent = ConfigListFrame
local CLFList = Instance.new("UIListLayout"); CLFList.Parent = ConfigListFrame; CLFList.Padding = UDim.new(0, 3)
local CLFPad = Instance.new("UIPadding"); CLFPad.Parent = ConfigListFrame
CLFPad.PaddingTop = UDim.new(0, 4); CLFPad.PaddingLeft = UDim.new(0, 4); CLFPad.PaddingRight = UDim.new(0, 4)

local configRows = {}
local function setStatus(text, color)
    ConfigStatus.Text = text
    ConfigStatus.TextColor3 = color or Color3.fromRGB(140, 150, 165)
end

local function rebuildConfigList()
    for _, row in pairs(configRows) do if row then row:Destroy() end end
    configRows = {}
    local list = listConfigs()
    if #list == 0 then
        local empty = Instance.new("TextLabel")
        empty.Parent = ConfigListFrame
        empty.BackgroundTransparency = 1
        empty.Size = UDim2.new(1, -8, 0, 22)
        empty.Font = Enum.Font.GothamMedium
        empty.Text = "no configs yet"
        empty.TextColor3 = Color3.fromRGB(100, 110, 125)
        empty.TextSize = 8
        empty.TextXAlignment = Enum.TextXAlignment.Center
        table.insert(configRows, empty)
        task.wait()
        ConfigListFrame.CanvasSize = UDim2.new(0, 0, 0, 32)
        return
    end
    for _, name in ipairs(list) do
        local row = Instance.new("Frame")
        row.Parent = ConfigListFrame
        row.BackgroundColor3 = Color3.fromRGB(24, 24, 34)
        row.BackgroundTransparency = 0.15; row.BorderSizePixel = 0
        row.Size = UDim2.new(1, -8, 0, 26)
        local rCorner = Instance.new("UICorner"); rCorner.CornerRadius = UDim.new(0,3); rCorner.Parent = row
        local rStroke = Instance.new("UIStroke"); rStroke.Color = Color3.fromRGB(239,68,68); rStroke.Transparency = 0.7; rStroke.Parent = row

        local nameLabel = Instance.new("TextLabel")
        nameLabel.Parent = row; nameLabel.BackgroundTransparency = 1
        nameLabel.Position = UDim2.new(0, 8, 0, 0); nameLabel.Size = UDim2.new(1, -100, 1, 0)
        nameLabel.Font = Enum.Font.GothamBold; nameLabel.Text = name
        nameLabel.TextColor3 = Color3.fromRGB(240, 240, 245); nameLabel.TextSize = 8.5
        nameLabel.TextXAlignment = Enum.TextXAlignment.Left

        local loadBtn = Instance.new("TextButton")
        loadBtn.Parent = row
        loadBtn.BackgroundColor3 = Color3.fromRGB(239, 68, 68)
        loadBtn.BorderSizePixel = 0
        loadBtn.AnchorPoint = Vector2.new(1, 0.5)
        loadBtn.Position = UDim2.new(1, -34, 0.5, 0)
        loadBtn.Size = UDim2.new(0, 50, 0, 20)
        loadBtn.Font = Enum.Font.GothamBold
        loadBtn.Text = "LOAD"
        loadBtn.TextColor3 = Color3.fromRGB(255,255,255); loadBtn.TextSize = 7
        local lbCorner = Instance.new("UICorner"); lbCorner.CornerRadius = UDim.new(0,3); lbCorner.Parent = loadBtn

        loadBtn.MouseButton1Click:Connect(function()
            local ok = loadConfig(name)
            if ok then
                applyUIToConfig()
                setStatus("loaded: " .. name, Color3.fromRGB(80, 220, 100))
            else setStatus("failed: " .. name, Color3.fromRGB(255, 80, 80)) end
        end)

        local delBtn = Instance.new("TextButton")
        delBtn.Parent = row
        delBtn.BackgroundColor3 = Color3.fromRGB(40, 30, 35)
        delBtn.BorderSizePixel = 0
        delBtn.AnchorPoint = Vector2.new(1, 0.5)
        delBtn.Position = UDim2.new(1, -6, 0.5, 0)
        delBtn.Size = UDim2.new(0, 24, 0, 20)
        delBtn.Font = Enum.Font.GothamBold
        delBtn.Text = "X"
        delBtn.TextColor3 = Color3.fromRGB(239, 68, 68); delBtn.TextSize = 9
        local dbCorner = Instance.new("UICorner"); dbCorner.CornerRadius = UDim.new(0,3); dbCorner.Parent = delBtn

        delBtn.MouseButton1Click:Connect(function()
            deleteConfig(name)
            setStatus("deleted: " .. name, Color3.fromRGB(255, 180, 80))
            task.defer(rebuildConfigList)
        end)
        table.insert(configRows, row)
    end
    task.wait()
    ConfigListFrame.CanvasSize = UDim2.new(0, 0, 0, CLFList.AbsoluteContentSize.Y + 10)
end

SaveBtn.MouseButton1Click:Connect(function()
    local name = ConfigNameBox.Text
    if not name or name == "" then setStatus("enter a name", Color3.fromRGB(255, 180, 80)); return end
    local ok = saveConfig(name)
    if ok then
        setStatus("saved: " .. name, Color3.fromRGB(80, 220, 100))
        ConfigNameBox.Text = ""
        task.defer(rebuildConfigList)
    else setStatus("failed to save", Color3.fromRGB(255, 80, 80)) end
end)
rebuildConfigList()

-- ==================== TABS BUTTONS ====================
for i, tabName in ipairs(tabs) do
    local tabBtn = Instance.new("TextButton")
    tabBtn.Parent = Footer
    tabBtn.BackgroundColor3 = Color3.fromRGB(255,255,255)
    tabBtn.BackgroundTransparency = 1
    tabBtn.Size = UDim2.new(1/#tabs, 0, 1, 0)
    tabBtn.Font = Enum.Font.GothamBold
    tabBtn.Text = tabName:upper()
    tabBtn.TextColor3 = (i == 1) and Color3.fromRGB(239,68,68) or Color3.fromRGB(150,160,175)
    tabBtn.TextSize = 8
    tabBtn.ZIndex = 3

    tabBtn.MouseButton1Click:Connect(function()
        for _, f in pairs(contentFrames) do f.Visible = false end
        contentFrames[tabName].Visible = true
        CatTag.Text = "  " .. tabName
        for _, child in ipairs(Footer:GetChildren()) do
            if child:IsA("TextButton") then child.TextColor3 = Color3.fromRGB(150,160,175) end
        end
        tabBtn.TextColor3 = Color3.fromRGB(239,68,68)
    end)
end

WMClick.MouseButton1Click:Connect(function()
    MenuFrame.Visible = not MenuFrame.Visible
    menuVisible = MenuFrame.Visible
    updateWatermarkText()
end)

-- ==================== SILENT AIM ====================
local function getSilentAimTarget()
    if not Config.Rage.SilentAim then return nil end
    if not LocalPlayer.Character then return nil end
    local myHead = LocalPlayer.Character:FindFirstChild("Head")
    if not myHead then return nil end
    local center = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
    local bestTarget = nil
    local bestScreenDist = Config.Rage.SilentAimFOV

    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and isMurderer(player) and isPlayerAlive(player) then
            local head = player.Character:FindFirstChild("Head")
            local hum = player.Character:FindFirstChildOfClass("Humanoid")
            if head and hum and hum.Health > 0 then
                local sp, onScreen = Camera:WorldToViewportPoint(head.Position)
                if onScreen or not Config.Rage.SilentAimVisibleOnly then
                    local d = (Vector2.new(sp.X, sp.Y) - center).Magnitude
                    if d < bestScreenDist then
                        if Config.Rage.SilentAimVisibleOnly then
                            local params = RaycastParams.new()
                            params.FilterType = Enum.RaycastFilterType.Exclude
                            params.FilterDescendantsInstances = {LocalPlayer.Character, player.Character}
                            local result = Workspace:Raycast(Camera.CFrame.Position, head.Position - Camera.CFrame.Position, params)
                            if not result then bestScreenDist = d; bestTarget = head end
                        else bestScreenDist = d; bestTarget = head end
                    end
                end
            end
        end
    end
    return bestTarget
end

pcall(function()
    local mt = getrawmetatable(game)
    local oldIndex = mt.__index
    setreadonly(mt, false)
    mt.__index = newcclosure(function(self, key)
        if Config.Rage.SilentAim and (key == "Hit" or key == "Target") then
            local mouse = LocalPlayer:GetMouse()
            if self == mouse then
                local target = getSilentAimTarget()
                if target then
                    if key == "Hit" then return CFrame.new(target.Position)
                    elseif key == "Target" then return target end
                end
            end
        end
        return oldIndex(self, key)
    end)
    setreadonly(mt, true)
end)

pcall(function()
    local mt = getrawmetatable(game)
    local oldNamecall = mt.__namecall
    setreadonly(mt, false)
    mt.__namecall = newcclosure(function(self, ...)
        local method = getnamecallmethod()
        if Config.Rage.SilentAim and method == "FireServer" then
            local args = {...}
            if self and typeof(self) == "Instance" then
                local target = getSilentAimTarget()
                if target then
                    for i, arg in ipairs(args) do
                        if typeof(arg) == "CFrame" then
                            args[i] = CFrame.new(self.Parent and self.Parent:IsA("Tool") and self.Parent.Handle and self.Parent.Handle.Position or Camera.CFrame.Position, target.Position)
                        end
                    end
                end
            end
            return oldNamecall(self, table.unpack(args))
        end
        return oldNamecall(self, ...)
    end)
    setreadonly(mt, true)
end)

-- ==================== INFINITE JUMP ====================
UserInputService.JumpRequest:Connect(function()
    if isUnloaded then return end
    if not Config.Misc.Bhop then return end
    local char = LocalPlayer.Character
    if not char then return end
    local hum = char:FindFirstChildOfClass("Humanoid")
    if hum and hum.Health > 0 then hum:ChangeState(Enum.HumanoidStateType.Jumping) end
end)

task.spawn(function()
    while not isUnloaded do
        task.wait(0.05)
        if isUnloaded then break end
        if Config.Misc.Bhop then
            local char = LocalPlayer.Character
            if char then
                local hum = char:FindFirstChildOfClass("Humanoid")
                if hum and hum.Health > 0 and UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                    hum.Jump = true
                end
            end
        end
    end
end)

-- ==================== AUTO GUN PICK ====================
local isPickingGun = false
task.spawn(function()
    while not isUnloaded do
        task.wait(0.05)
        if isUnloaded then break end
        if Config.Misc.AutoGunPick and not isPickingGun then
            local gunDrop = Workspace:FindFirstChild("GunDrop", true)
            if gunDrop and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                local hrp = LocalPlayer.Character.HumanoidRootPart
                local originalPos = hrp.CFrame
                isPickingGun = true
                local targetCF, targetPart = nil, nil
                if gunDrop:IsA("BasePart") then targetCF = gunDrop.CFrame; targetPart = gunDrop
                elseif gunDrop:IsA("Model") then
                    targetCF = gunDrop:GetPivot()
                    targetPart = gunDrop.PrimaryPart or gunDrop:FindFirstChild("Handle") or gunDrop:FindFirstChildWhichIsA("BasePart", true)
                end
                if targetCF then
                    hrp.CFrame = targetCF; task.wait(0.08)
                    if targetPart and targetPart:IsA("BasePart") then
                        pcall(function()
                            firetouchinterest(hrp, targetPart, 0); task.wait(0.08)
                            firetouchinterest(hrp, targetPart, 1)
                        end)
                    end
                    task.wait(0.15); hrp.CFrame = originalPos
                end
                local timeout = tick() + 1.5
                while Workspace:FindFirstChild("GunDrop", true) and tick() < timeout and not isUnloaded do task.wait(0.05) end
                task.wait(0.5); isPickingGun = false
            end
        end
    end
end)

-- ==================== ANTI-MURDERER ====================
local antiMurdererLastTP = 0
task.spawn(function()
    while not isUnloaded do
        task.wait(0.05)
        if isUnloaded then break end
        if Config.Rage.AntiMurderer and LocalPlayer.Character then
            local myChar = LocalPlayer.Character
            local myHRP = myChar:FindFirstChild("HumanoidRootPart")
            local myHum = myChar:FindFirstChildOfClass("Humanoid")
            if myHRP and myHum and myHum.Health > 0 then
                local now = tick()
                if now - antiMurdererLastTP >= Config.Rage.AntiMurdererCooldown then
                    local nearestMurderer, nearestDist = nil, math.huge
                    for _, player in ipairs(Players:GetPlayers()) do
                        if player ~= LocalPlayer and isMurderer(player) and isPlayerAlive(player) then
                            local t = player.Character:FindFirstChild("HumanoidRootPart")
                            if t then
                                local d = (t.Position - myHRP.Position).Magnitude
                                if d < nearestDist then nearestDist = d; nearestMurderer = player end
                            end
                        end
                    end
                    if nearestMurderer and nearestDist <= Config.Rage.AntiMurdererRange then
                        local safeTarget, bestSafeDist = nil, -1
                        local mPos = nearestMurderer.Character.HumanoidRootPart.Position
                        for _, player in ipairs(Players:GetPlayers()) do
                            if player ~= LocalPlayer and player ~= nearestMurderer and isPlayerAlive(player) then
                                local t = player.Character:FindFirstChild("HumanoidRootPart")
                                if t then
                                    local distFromM = (t.Position - mPos).Magnitude
                                    local score = distFromM
                                    if isSheriff(player) then score = score + 50 end
                                    if score > bestSafeDist then bestSafeDist = score; safeTarget = player end
                                end
                            end
                        end
                        if safeTarget and safeTarget.Character and safeTarget.Character:FindFirstChild("HumanoidRootPart") then
                            local sHRP = safeTarget.Character.HumanoidRootPart
                            local offset = Vector3.new(math.random(-3,3), 0, math.random(-3,3))
                            myHRP.CFrame = CFrame.new(sHRP.Position + offset)
                            antiMurdererLastTP = now
                        else
                            local awayDir = (myHRP.Position - mPos)
                            if awayDir.Magnitude > 0 then awayDir = awayDir.Unit else awayDir = Vector3.new(1,0,0) end
                            myHRP.CFrame = CFrame.new(myHRP.Position + awayDir * 25)
                            antiMurdererLastTP = now
                        end
                    end
                end
            end
        end
    end
end)

task.spawn(function()
    while not isUnloaded do
        task.wait(0.1)
        if isUnloaded then break end
        recalcMyRole()
    end
end)

RunService.Heartbeat:Connect(function()
    if isUnloaded or not Config.Fling.AntiFling then return end
    local char = LocalPlayer.Character
    if not char then return end
    local hrp = char:FindFirstChild("HumanoidRootPart")
    local hum = char:FindFirstChildOfClass("Humanoid")
    if not hrp or not hum or hum.Health <= 0 then return end
    local lin = hrp.AssemblyLinearVelocity
    local ang = hrp.AssemblyAngularVelocity
    if lin.Magnitude > 500 or ang.Magnitude > 100 then
        hrp.AssemblyLinearVelocity = Vector3.new(0,0,0)
        hrp.AssemblyAngularVelocity = Vector3.new(0,0,0)
    end
end)

-- ==================== MAIN RENDER ====================
local fpsFrameCount, fpsElapsed, currentFPS = 0, 0, 0
local lastStatsUpdate, lastFPSUpdate, lastFlingListRefresh = 0, 0, 0

RunService.RenderStepped:Connect(function(dt)
    if isUnloaded then return end

    fpsFrameCount = fpsFrameCount + 1
    fpsElapsed = fpsElapsed + dt
    local nowTime = tick()
    if nowTime - lastFPSUpdate >= 1 then
        currentFPS = math.floor(fpsFrameCount / fpsElapsed)
        fpsFrameCount = 0; fpsElapsed = 0; lastFPSUpdate = nowTime
    end

    if nowTime - lastStatsUpdate >= 0.25 then
        lastStatsUpdate = nowTime
        local pingMs = 0
        pcall(function() pingMs = math.floor(LocalPlayer:GetNetworkPing() * 1000) end)
        PingLabel.Text = "PING: " .. pingMs
        FpsLabel.Text = "FPS: " .. currentFPS
        RoleLabel.Text = "ROLE: " .. myRole
        if myRole == "MURDERER" then RoleLabel.TextColor3 = MURDERER_COLOR
        elseif myRole == "SHERIFF" then RoleLabel.TextColor3 = SHERIFF_COLOR
        elseif myRole == "INNOCENT" then RoleLabel.TextColor3 = INNOCENT_COLOR
        else RoleLabel.TextColor3 = Color3.fromRGB(150,160,175) end

        local remaining = getRoundTimeRemaining()
        if remaining and remaining > 0 then
            RoundLabel.Text = "ROUND: " .. formatTime(remaining)
            if remaining < 30 then RoundLabel.TextColor3 = Color3.fromRGB(255, 80, 80)
            elseif remaining < 60 then RoundLabel.TextColor3 = Color3.fromRGB(255, 200, 60)
            else RoundLabel.TextColor3 = Color3.fromRGB(80, 220, 100) end
        else
            local elapsed = tick() - estimatedRoundStart
            local rem = math.max(0, 180 - elapsed)
            RoundLabel.Text = "ROUND: " .. formatTime(rem)
            if rem < 30 then RoundLabel.TextColor3 = Color3.fromRGB(255, 80, 80)
            elseif rem < 60 then RoundLabel.TextColor3 = Color3.fromRGB(255, 200, 60)
            else RoundLabel.TextColor3 = Color3.fromRGB(80, 220, 100) end
        end

        currentPingForWM = pingMs
        updateWatermarkText()

        if nowTime - lastFlingListRefresh >= 1.0 then
            lastFlingListRefresh = nowTime
            task.defer(rebuildFlingList)
        end
    end

    updateSelfChams()

    if Config.Legit.FOVShow then
        local c = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
        local col = getFOVColor()
        FOVCircle.Position = c; FOVCircle.Radius = Config.Legit.FOVRadius; FOVCircle.Visible = true; FOVCircle.Color = col
        FOVGlowMid.Position = c; FOVGlowMid.Radius = Config.Legit.FOVRadius; FOVGlowMid.Visible = true; FOVGlowMid.Color = col
        FOVGlowOuter.Position = c; FOVGlowOuter.Radius = Config.Legit.FOVRadius; FOVGlowOuter.Visible = true; FOVGlowOuter.Color = col
    else
        FOVCircle.Visible = false; FOVGlowMid.Visible = false; FOVGlowOuter.Visible = false
    end

    if Config.Visuals.Fullbright then
        Lighting.Brightness = 2; Lighting.ClockTime = 14; Lighting.GlobalShadows = false
    else
        Lighting.Brightness = OriginalLighting.Brightness
        Lighting.ClockTime = OriginalLighting.ClockTime
        Lighting.GlobalShadows = OriginalLighting.GlobalShadows
    end

    if Config.Visuals.FogEnabled then
        local fogColor = fogColorValues[Config.Visuals.FogColorIndex]
        if fogColor then
            Lighting.FogEnd = Config.Visuals.FogDistance
            Lighting.FogStart = 0
            Lighting.FogColor = fogColor
            Lighting.Ambient = fogColor
            Lighting.OutdoorAmbient = fogColor
            Lighting.EnvironmentDiffuseScale = 0.6
            Lighting.EnvironmentSpecularScale = 0.4

            local cc = Lighting:FindFirstChild("VarumaFogCC")
            if not cc then
                cc = Instance.new("ColorCorrectionEffect")
                cc.Name = "VarumaFogCC"
                cc.Parent = Lighting
            end
            cc.TintColor = fogColor
            cc.Brightness = 0
            cc.Contrast = 0.15
            cc.Saturation = -0.1
        else
            Lighting.FogEnd = OriginalLighting.FogEnd
            Lighting.FogStart = OriginalLighting.FogStart
            Lighting.FogColor = OriginalLighting.FogColor
            Lighting.Ambient = OriginalLighting.Ambient
            Lighting.OutdoorAmbient = OriginalLighting.OutdoorAmbient
            local cc = Lighting:FindFirstChild("VarumaFogCC")
            if cc then cc:Destroy() end
        end
    else
        Lighting.FogEnd = OriginalLighting.FogEnd
        Lighting.FogStart = OriginalLighting.FogStart
        Lighting.FogColor = OriginalLighting.FogColor
        Lighting.Ambient = OriginalLighting.Ambient
        Lighting.OutdoorAmbient = OriginalLighting.OutdoorAmbient
        Lighting.EnvironmentDiffuseScale = OriginalLighting.EnvironmentDiffuseScale
        Lighting.EnvironmentSpecularScale = OriginalLighting.EnvironmentSpecularScale
        local cc = Lighting:FindFirstChild("VarumaFogCC")
        if cc then cc:Destroy() end
    end

    if Config.Visuals.ThirdPerson then
        LocalPlayer.CameraMaxZoomDistance = 15; LocalPlayer.CameraMinZoomDistance = 15
    else
        LocalPlayer.CameraMaxZoomDistance = 400; LocalPlayer.CameraMinZoomDistance = 0.5
    end

    if Config.Rage.Spinbot and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local hrp = LocalPlayer.Character.HumanoidRootPart
        hrp.CFrame = hrp.CFrame * CFrame.Angles(0, math.rad(45), 0)
    end

    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
        local humanoid = LocalPlayer.Character.Humanoid
        if Config.Misc.WalkSpeedEnabled then
            humanoid.WalkSpeed = Config.Misc.WalkSpeed
        else
            if humanoid.WalkSpeed ~= 16 then humanoid.WalkSpeed = 16 end
        end
    end

    updateTracers(dt)
    updateHitMarkers(dt)
    if Config.Visuals.JumpEffect then updateJumpBursts(dt) end

    local gunDrop = Workspace:FindFirstChild("GunDrop", true)
    if Config.Visuals.GunChams and gunDrop then
        local hl = gunDrop:FindFirstChild("VarumaHackGunHighlight")
        if not hl then
            hl = Instance.new("Highlight")
            hl.Name = "VarumaHackGunHighlight"; hl.Adornee = gunDrop
            hl.FillColor = Color3.fromRGB(255, 215, 0); hl.OutlineColor = Color3.fromRGB(255,255,255)
            hl.FillTransparency = 0.3; hl.OutlineTransparency = 0.1; hl.Parent = gunDrop
        end
    else
        if gunDrop and gunDrop:FindFirstChild("VarumaHackGunHighlight") then
            gunDrop.VarumaHackGunHighlight:Destroy()
        end
    end

    local center = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)

    if Config.Rage.Radar and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local myPos = LocalPlayer.Character.HumanoidRootPart.Position
        local camLook = Camera.CFrame.LookVector; local camRight = Camera.CFrame.RightVector
        local flatLook = Vector3.new(camLook.X, 0, camLook.Z)
        local flatRight = Vector3.new(camRight.X, 0, camRight.Z)
        if flatLook.Magnitude > 0 then flatLook = flatLook.Unit end
        if flatRight.Magnitude > 0 then flatRight = flatRight.Unit end
        local innerR = Config.Rage.RadarRadius - 8
        local outerR = Config.Rage.RadarRadius + 6
        local midR = (innerR + outerR) / 2
        local used = {}
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") and isPlayerAlive(player) then
                local targetPos = player.Character.HumanoidRootPart.Position
                local diff = targetPos - myPos
                local dist = diff.Magnitude
                if dist > 0 and dist <= Config.Rage.RadarRange then
                    local flat = Vector3.new(diff.X, 0, diff.Z)
                    if flat.Magnitude > 0 then
                        local dir = flat.Unit
                        local fwd = dir:Dot(flatLook); local side = dir:Dot(flatRight)
                        local ang = math.atan2(side, fwd)
                        local dirVec = Vector2.new(math.sin(ang), -math.cos(ang))
                        local pInner = center + dirVec * innerR
                        local pMid = center + dirVec * midR
                        local pOuter = center + dirVec * outerR
                        local arrow = getRadarArrow(player)
                        arrow.shaft1.From = pInner; arrow.shaft1.To = pMid
                        arrow.shaft2.From = pMid; arrow.shaft2.To = pOuter
                        local perp = Vector2.new(-dirVec.Y, dirVec.X)
                        arrow.tip1.From = pOuter; arrow.tip1.To = pOuter - dirVec * 5 + perp * 3
                        arrow.tip2.From = pOuter; arrow.tip2.To = pOuter - dirVec * 5 - perp * 3
                        local col = getRoleColor(player)
                        arrow.shaft1.Color = col; arrow.shaft2.Color = col
                        arrow.tip1.Color = col; arrow.tip2.Color = col
                        arrow.shaft1.Visible = true; arrow.shaft2.Visible = true
                        arrow.tip1.Visible = true; arrow.tip2.Visible = true
                        used[player] = true
                    end
                end
            end
        end
        for player, _ in pairs(activeDrawings.Radar) do
            if not used[player] then hideRadarArrow(player) end
        end
    else
        for player, _ in pairs(activeDrawings.Radar) do hideRadarArrow(player) end
    end

    if Config.Visuals.BoxESP then
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= LocalPlayer and player.Character and isPlayerAlive(player) then
                drawBoxESP(player, getRoleColor(player))
            else hideBox(player) end
        end
    else
        for player, _ in pairs(activeDrawings.Boxes) do hideBox(player) end
    end

    if Config.Visuals.SkeletonESP then
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= LocalPlayer and player.Character and isPlayerAlive(player) then
                drawSkeleton(player, getRoleColor(player))
            else hideSkeleton(player) end
        end
    else
        for player, _ in pairs(activeDrawings.Skeletons) do hideSkeleton(player) end
    end

    if Config.Visuals.PlayerTrails then
        updateSelfTrail(Color3.fromRGB(255, 80, 80))
    else
        hideSelfTrail()
    end

    if Config.Legit.SheriffAimbot and hasGunEquipped() then
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= LocalPlayer and isPlayerAlive(player) then
                local validTarget = false
                if Config.Legit.AimTarget == 1 then validTarget = isMurderer(player)
                elseif Config.Legit.AimTarget == 2 then validTarget = isSheriff(player)
                elseif Config.Legit.AimTarget == 3 then validTarget = true end
                if validTarget then
                    local bone = player.Character and player.Character:FindFirstChild("Head")
                    if bone then
                        local sp, onScreen = Camera:WorldToViewportPoint(bone.Position)
                        if onScreen then
                            local dist = (Vector2.new(sp.X, sp.Y) - center).Magnitude
                            if dist <= Config.Legit.FOVRadius then
                                local alpha = math.clamp(Config.Legit.AimSmoothness, 0.02, 1)
                                Camera.CFrame = Camera.CFrame:Lerp(CFrame.new(Camera.CFrame.Position, bone.Position), alpha)
                            end
                        end
                    end
                end
            end
        end
    end

    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character then
            local char = player.Character
            if Config.Visuals.Chams and isPlayerAlive(player) then
                local hl = char:FindFirstChild("VarumaHackHighlight")
                if not hl then
                    hl = Instance.new("Highlight")
                    hl.Name = "VarumaHackHighlight"; hl.Adornee = char
                    hl.FillColor = isMurderer(player) and MURDERER_COLOR or (isSheriff(player) and SHERIFF_COLOR or Color3.fromRGB(150,160,175))
                    hl.OutlineColor = Color3.fromRGB(255,255,255)
                    hl.FillTransparency = 0.4; hl.OutlineTransparency = 0.1
                    hl.Parent = char
                    activeDrawings.Highlights[player] = hl
                else
                    local newColor = isMurderer(player) and MURDERER_COLOR or (isSheriff(player) and SHERIFF_COLOR or Color3.fromRGB(150,160,175))
                    if hl.FillColor ~= newColor then hl.FillColor = newColor end
                end
            else
                if activeDrawings.Highlights[player] then
                    pcall(function() activeDrawings.Highlights[player]:Destroy() end)
                    activeDrawings.Highlights[player] = nil
                end
                local existing = char:FindFirstChild("VarumaHackHighlight")
                if existing then existing:Destroy() end
            end
        end
    end
end)

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if isUnloaded then return end
    if input.KeyCode == Config.Settings.MenuKey then
        MenuFrame.Visible = not MenuFrame.Visible
        menuVisible = MenuFrame.Visible
        updateWatermarkText()
    end
end)
