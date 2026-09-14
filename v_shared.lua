-- Varuma v7.0 -- shared base

CoreGui = game:GetService("CoreGui")
Players = game:GetService("Players")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
Lighting = game:GetService("Lighting")
Workspace = game:GetService("Workspace")
TeleportService = game:GetService("TeleportService")
HttpService = game:GetService("HttpService")
TweenService = game:GetService("TweenService")
ReplicatedStorage = game:GetService("ReplicatedStorage")
LocalPlayer = Players.LocalPlayer
Camera = workspace.CurrentCamera
Mouse = LocalPlayer:GetMouse()

HUI = nil
pcall(function() HUI = gethui() end)
if not HUI then HUI = CoreGui end

pcall(function()
    local old = CoreGui:FindFirstChild("VarumaHackUI"); if old then old:Destroy() end
end)
pcall(function()
    local old = HUI:FindFirstChild("VarumaHackUI"); if old then old:Destroy() end
end)

ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "VarumaHackUI"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false
ScreenGui.IgnoreGuiInset = true
pcall(function() ScreenGui.Parent = HUI end)
if not ScreenGui.Parent then
    pcall(function() ScreenGui.Parent = CoreGui end)
end
if not ScreenGui.Parent then
    pcall(function() ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui", 5) end)
end

isUnloaded = false

OriginalLighting = {
    Brightness = Lighting.Brightness, ClockTime = Lighting.ClockTime,
    GlobalShadows = Lighting.GlobalShadows,
    FogEnd = Lighting.FogEnd, FogStart = Lighting.FogStart, FogColor = Lighting.FogColor,
    Ambient = Lighting.Ambient, OutdoorAmbient = Lighting.OutdoorAmbient,
    EnvironmentDiffuseScale = Lighting.EnvironmentDiffuseScale,
    EnvironmentSpecularScale = Lighting.EnvironmentSpecularScale
}

Config = {
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
        BulletTracers = false, PlayerTrails = false, PlayerTrailColor = 1,
        JumpEffect = false, JumpEffectColor = 2,
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

activeDrawings = { Highlights = {}, Skeletons = {}, Radar = {}, Boxes = {} }
uiSetters = {}
activeTracers = {}
jumpBursts = {}
hitMarkers = {}
recentDeaths = {}

MURDERER_COLOR = Color3.fromRGB(255, 50, 50)
SHERIFF_COLOR = Color3.fromRGB(60, 130, 255)
INNOCENT_COLOR = Color3.fromRGB(240, 240, 240)

fogColorNames = {"Standard", "White", "Blue", "Purple", "Red"}
fogColorValues = {
    nil,
    Color3.fromRGB(240, 245, 255),
    Color3.fromRGB(90, 150, 255),
    Color3.fromRGB(170, 90, 255),
    Color3.fromRGB(255, 70, 70)
}

fovColorNames = {"White", "Blue", "Red"}
fovColorValues = {
    Color3.fromRGB(255, 255, 255),
    Color3.fromRGB(60, 150, 255),
    Color3.fromRGB(255, 60, 60)
}

effectColors = {
    Color3.fromRGB(255, 60, 60),
    Color3.fromRGB(60, 220, 255),
    Color3.fromRGB(180, 100, 255),
    Color3.fromRGB(255, 200, 60),
    Color3.fromRGB(80, 220, 100),
    Color3.fromRGB(245, 245, 250)
}
effectColorNames = {"Red", "Cyan", "Purple", "Gold", "Green", "White"}
deathEffectTypes = {"CS2 Shockwave", "Nova Ring", "Shatter"}
selfColorNames = {"Original", "Gray", "Red", "Blue", "White"}
selfColorValues = {
    nil, Color3.fromRGB(120, 120, 120), Color3.fromRGB(255, 50, 50),
    Color3.fromRGB(60, 130, 255), Color3.fromRGB(245, 245, 250)
}
aimTargetNames = {"Murderer Only", "Sheriff Only", "All Players"}
jumpColorNames = {"Red", "Blue", "Cyan", "Purple", "Gold", "White"}
jumpColorValues = {
    Color3.fromRGB(255, 70, 70),
    Color3.fromRGB(60, 150, 255),
    Color3.fromRGB(60, 220, 255),
    Color3.fromRGB(180, 100, 255),
    Color3.fromRGB(255, 200, 60),
    Color3.fromRGB(245, 245, 250)
}
trailColorNames = {"Red", "Blue", "Cyan", "Purple", "Gold", "Green", "White", "Rainbow"}
trailColorValues = {
    Color3.fromRGB(255, 70, 70),
    Color3.fromRGB(60, 150, 255),
    Color3.fromRGB(60, 220, 255),
    Color3.fromRGB(180, 100, 255),
    Color3.fromRGB(255, 200, 60),
    Color3.fromRGB(80, 220, 100),
    Color3.fromRGB(245, 245, 250),
    nil
}
selfOriginalColors = {}

myRole = "LOADING"

function recalcMyRole()
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

function bindRoleListeners()
    local backpack = LocalPlayer:FindFirstChild("Backpack")
    if backpack then
        backpack.ChildAdded:Connect(function(c) if c:IsA("Tool") then task.defer(recalcMyRole) end end)
        backpack.ChildRemoved:Connect(function(c) if c:IsA("Tool") then task.defer(recalcMyRole) end end)
    end
    LocalPlayer.ChildAdded:Connect(function(c) if c.Name == "Backpack" then task.defer(bindRoleListeners) end end)
end
bindRoleListeners()

function bindCharacterListeners(char)
    char.ChildAdded:Connect(function(c) if c:IsA("Tool") then task.defer(recalcMyRole) end end)
    char.ChildRemoved:Connect(function(c) if c:IsA("Tool") then task.defer(recalcMyRole) end end)
end

function isMurderer(player)
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

function isSheriff(player)
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

function isPlayerAlive(player)
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

function hasGunEquipped()
    if not LocalPlayer.Character then return false end
    local function check(c)
        for _, item in ipairs(c:GetChildren()) do
            if item:IsA("Tool") and (item.Name == "Gun" or item.Name == "Revolver") then return true end
        end
        return false
    end
    return check(LocalPlayer.Character) or check(LocalPlayer.Backpack)
end

function hasKnife()
    if not LocalPlayer.Character then return false end
    local function check(c)
        for _, item in ipairs(c:GetChildren()) do
            if item:IsA("Tool") and item.Name == "Knife" then return true end
        end
        return false
    end
    return check(LocalPlayer.Character) or check(LocalPlayer.Backpack)
end

function getRoleColor(player)
    if isMurderer(player) then return MURDERER_COLOR
    elseif isSheriff(player) then return SHERIFF_COLOR
    else return INNOCENT_COLOR end
end

function getRoleName(player)
    if isMurderer(player) then return "MURDERER"
    elseif isSheriff(player) then return "SHERIFF"
    else return "INNOCENT" end
end

function getDistanceToPlayer(player)
    if not LocalPlayer.Character or not player.Character then return 0 end
    local myHRP = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    local theirHRP = player.Character:FindFirstChild("HumanoidRootPart")
    if not myHRP or not theirHRP then return 0 end
    return math.floor((myHRP.Position - theirHRP.Position).Magnitude)
end

function getEffectColor()
    return effectColors[Config.Visuals.DeathEffectColor] or effectColors[1]
end

function getFOVColor()
    return fovColorValues[Config.Legit.FOVColor] or fovColorValues[1]
end

trailRainbowPhase = 0

function getTrailColor()
    local idx = Config.Visuals.PlayerTrailColor or 1
    if idx == 8 then
        trailRainbowPhase = (trailRainbowPhase + 0.015) % 1
        return Color3.fromHSV(trailRainbowPhase, 0.85, 1)
    end
    return trailColorValues[idx] or trailColorValues[1]
end

function formatTime(seconds)
    if seconds < 0 then seconds = 0 end
    local m = math.floor(seconds / 60)
    local s = math.floor(seconds % 60)
    return string.format("%d:%02d", m, s)
end

roundTimerSource = nil
roundTimerLastScan = 0
estimatedRoundStart = tick()

function findRoundTimer()
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

function getRoundTimeRemaining()
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

function hookDeath(player)
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

if LocalPlayer.Character then bindCharacterListeners(LocalPlayer.Character) end

LocalPlayer.CharacterAdded:Connect(function(char)
    myRole = "LOADING"
    bindCharacterListeners(char)
    task.defer(recalcMyRole)
    task.wait(0.3)
    selfOriginalColors = {}
    if applySelfColor then applySelfColor() end
end)
LocalPlayer.CharacterRemoving:Connect(function() myRole = "LOADING" end)

task.spawn(function()
    while not isUnloaded do
        task.wait(1)
        if isUnloaded then break end
        for _, obj in ipairs(Workspace:GetDescendants()) do
            if obj.Name == "VarumaDeathFX" or obj.Name == "VarumaDeathLight" then
                local born = obj:GetAttribute("VarumaBorn")
                if born and (tick() - born) > 2.1 then
                    pcall(function() obj:Destroy() end)
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

warn("[Varuma] v_shared loaded")
