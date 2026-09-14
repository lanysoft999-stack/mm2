-- [Varuma v9.0 - MM2 Full Global Update]

-- ============ HARD CLEANUP ============
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local SoundService = game:GetService("SoundService")
local TeleportService = game:GetService("TeleportService")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera

print("[v9.0] === BOOT ===")

pcall(function()
    for _, obj in ipairs(CoreGui:GetChildren()) do
        if obj.Name:find("Varuma") then obj:Destroy() end
    end
end)
pcall(function()
    local pg = LocalPlayer:FindFirstChild("PlayerGui")
    if pg then
        for _, obj in ipairs(pg:GetChildren()) do
            if obj.Name:find("Varuma") then obj:Destroy() end
        end
    end
end)

if _G.VarumaHack then
    pcall(function()
        if _G.VarumaHack.connections then
            for _, c in ipairs(_G.VarumaHack.connections) do pcall(function() c:Disconnect() end) end
        end
        if _G.VarumaHack.drawings then
            for _, d in ipairs(_G.VarumaHack.drawings) do pcall(function() d:Remove() end) end
        end
    end)
end
_G.VarumaHack = { connections = {}, drawings = {} }

local function trackConnection(conn)
    table.insert(_G.VarumaHack.connections, conn)
    return conn
end
local function trackDrawing(drawing)
    table.insert(_G.VarumaHack.drawings, drawing)
    return drawing
end

-- ============ SCREEN GUI ============
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "VarumaHackUI"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false
ScreenGui.IgnoreGuiInset = true
ScreenGui.Enabled = true
ScreenGui.DisplayOrder = 999

local ok = pcall(function() ScreenGui.Parent = CoreGui end)
if not ok or not ScreenGui.Parent then
    ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
end
print("[v9.0] ScreenGui ->", ScreenGui.Parent:GetFullName())

-- ============ STATE ============
local State = { running = true, menuVisible = true, isUnloaded = false }

-- ============ CONFIG ============
local Config = {
    Rage = {
        Enabled = false, Spinbot = false, SpinbotSpeed = 45,
        SilentAim = false, SilentAimFOV = 200, SilentAimVisibleOnly = true, SilentAimTarget = 1,
        AntiMurderer = false, AntiMurdererRange = 20, AntiMurdererCooldown = 0.4,
        KillFeed = true
    },
    Legit = {
        SheriffAimbot = false, FOVRadius = 120, FOVShow = true,
        AimSmoothness = 0.25, AimTarget = 1, FOVColor = 1,
        Triggerbot = false, TriggerRadius = 15,
        TriggerKey = Enum.KeyCode.E,
        HitMarker = false, AutoReload = false,
        Hitsound = false, HitsoundType = 1, HitsoundVolume = 0.5
    },
    Visuals = {
        Chams = true, GunChams = true,
        BoxESP = false, SkeletonESP = false, ESPMaxDistance = 500,
        HealthBar = true,
        ThirdPerson = false, GameQuality = 1, FogEnabled = false,
        FogDistance = 500, FogColorIndex = 1,
        BulletTracers = false, PlayerTrails = false,
        TrailColor = 1, TrailStopWhenIdle = true, TrailIdleThreshold = 1,
        JumpEffect = false, JumpEffectColor = 2,
        JumpRing = false, JumpRingColor = 2, JumpRingRadius = 5,
        MapColor = false, MapColorIndex = 1, MapColorIntensity = 70, MapColorMode = 1,
        FallingDots = false, FallingDotsColor = 6, FallingDotsCount = 100, FallingDotsSpeed = 2
    },
    Misc = {
        AutoGunPick = false, WalkSpeedEnabled = false, WalkSpeed = 16, Bhop = false,
        AutoFarmCoins = false, AntiAFK = true, AntiVoid = true,
        AutoSheep = false, AutoSheepDist = 15,
        Fly = false, FlySpeed = 3, FlyUseJoystick = true, FlyVertical = true, FlyShowJoystick = true
    },
    Hotkeys = {
        Enabled = true,
        ToggleRage = Enum.KeyCode.R,
        TPToMurderer = Enum.KeyCode.T
    },
    Fling = { Enabled = false, AntiFling = true, FlingPower = 150000, Duration = 8 },
    Settings = { MenuKey = Enum.KeyCode.Insert, AltMenuKey = Enum.KeyCode.Y }
}

-- ============ MM2 ROLE DICTS ============
local KNIFE_NAMES = { ["Knife"]=true, ["KnifeGolden"]=true, ["KnifeRainbow"]=true, ["KnifeChroma"]=true, ["GoldenKnife"]=true }
local GUN_NAMES = { ["Gun"]=true, ["Revolver"]=true, ["RevolverGolden"]=true, ["GunChroma"]=true, ["GunRainbow"]=true, ["GoldenGun"]=true }

-- ============ COLORS ============
local MURDERER_COLOR = Color3.fromRGB(255, 50, 50)
local SHERIFF_COLOR  = Color3.fromRGB(60, 130, 255)
local INNOCENT_COLOR = Color3.fromRGB(240, 240, 240)

local fogColorNames = {"Standard", "White", "Blue", "Purple", "Red"}
local fogColorValues = { nil, Color3.fromRGB(240, 245, 255), Color3.fromRGB(90, 150, 255), Color3.fromRGB(170, 90, 255), Color3.fromRGB(255, 70, 70) }

local fovColorNames = {"White", "Blue", "Red"}
local fovColorValues = { Color3.fromRGB(255, 255, 255), Color3.fromRGB(60, 150, 255), Color3.fromRGB(255, 60, 60) }

local aimTargetNames = {"Murderer Only", "Sheriff Only", "All Players"}
local jumpColorNames = {"Red", "Blue", "Cyan", "Purple", "Gold", "White"}
local jumpColorValues = {
    Color3.fromRGB(255, 70, 70), Color3.fromRGB(60, 150, 255),
    Color3.fromRGB(60, 220, 255), Color3.fromRGB(180, 100, 255),
    Color3.fromRGB(255, 200, 60), Color3.fromRGB(245, 245, 250)
}
local hitsoundNames = {"Click", "Beep", "Pop"}
local trailColorNames = {"Red", "Cyan", "Purple", "Gold", "White", "Rainbow"}
local trailColorValues = {
    Color3.fromRGB(255, 80, 80), Color3.fromRGB(60, 220, 255),
    Color3.fromRGB(180, 100, 255), Color3.fromRGB(255, 200, 60),
    Color3.fromRGB(245, 245, 250), nil
}
local fallingDotColorNames = {"Red", "Cyan", "Purple", "Gold", "Green", "White", "Rainbow"}
local fallingDotColorValues = {
    Color3.fromRGB(255, 80, 80), Color3.fromRGB(60, 220, 255),
    Color3.fromRGB(180, 100, 255), Color3.fromRGB(255, 200, 60),
    Color3.fromRGB(80, 220, 100), Color3.fromRGB(245, 245, 250), nil
}
local ringColorNames = fallingDotColorNames
local ringColorValues = fallingDotColorValues
local mapColorNames = fallingDotColorNames
local mapColorValues = fallingDotColorValues
local qualityNames = {"Low", "Medium", "High", "Max"}

-- ============ ROLE STATE ============
local myRole = "LOADING"

local function checkTools(container, names)
    if not container then return false end
    for _, item in ipairs(container:GetChildren()) do
        if item:IsA("Tool") and names[item.Name] then return true end
    end
    return false
end

local function recalcMyRole()
    if not LocalPlayer.Character then myRole = "LOADING"; return end
    local attr = LocalPlayer:GetAttribute("Role") or LocalPlayer:GetAttribute("role")
    if attr == "Murderer" or attr == "MURDERER" then myRole = "MURDERER"; return end
    if attr == "Sheriff" or attr == "SHERIFF" then myRole = "SHERIFF"; return end
    local char = LocalPlayer.Character
    local bp = LocalPlayer:FindFirstChild("Backpack")
    if checkTools(char, KNIFE_NAMES) or checkTools(bp, KNIFE_NAMES) then myRole = "MURDERER"
    elseif checkTools(char, GUN_NAMES) or checkTools(bp, GUN_NAMES) then myRole = "SHERIFF"
    else myRole = "INNOCENT" end
end

local function bindRoleListeners()
    local backpack = LocalPlayer:FindFirstChild("Backpack")
    if backpack then
        trackConnection(backpack.ChildAdded:Connect(function(c) if c:IsA("Tool") then recalcMyRole() end end))
        trackConnection(backpack.ChildRemoved:Connect(function(c) if c:IsA("Tool") then recalcMyRole() end end))
    end
    trackConnection(LocalPlayer.ChildAdded:Connect(function(c) if c.Name == "Backpack" then task.defer(bindRoleListeners) end end))
end
bindRoleListeners()

task.spawn(function()
    while not State.isUnloaded do
        if myRole == "LOADING" then recalcMyRole(); task.wait(0.15)
        else task.wait(0.5) end
    end
end)

local function bindCharListeners(char)
    trackConnection(char.ChildAdded:Connect(function(c) if c:IsA("Tool") then recalcMyRole() end end))
    trackConnection(char.ChildRemoved:Connect(function(c) if c:IsA("Tool") then recalcMyRole() end end))
end
if LocalPlayer.Character then bindCharListeners(LocalPlayer.Character) end
trackConnection(LocalPlayer.CharacterAdded:Connect(function(char)
    myRole = "LOADING"; bindCharListeners(char); task.defer(recalcMyRole)
end))
trackConnection(LocalPlayer.CharacterRemoving:Connect(function() myRole = "LOADING" end))

-- ============ HELPERS ============
local function isMurderer(player)
    local attr = player:GetAttribute("Role") or player:GetAttribute("role")
    if attr == "Murderer" or attr == "MURDERER" then return true end
    return checkTools(player.Character, KNIFE_NAMES) or checkTools(player:FindFirstChild("Backpack"), KNIFE_NAMES)
end
local function isSheriff(player)
    local attr = player:GetAttribute("Role") or player:GetAttribute("role")
    if attr == "Sheriff" or attr == "SHERIFF" then return true end
    return checkTools(player.Character, GUN_NAMES) or checkTools(player:FindFirstChild("Backpack"), GUN_NAMES)
end
local function isPlayerAlive(player)
    if player == LocalPlayer then return false end
    local char = player.Character
    if not char or not char.Parent then return false end
    local hum = char:FindFirstChildOfClass("Humanoid")
    local hrp = char:FindFirstChild("HumanoidRootPart")
    if not hum or not hrp or not hrp.Parent then return false end
    return hum.Health > 0
end
local function hasGunEquipped()
    if not LocalPlayer.Character then return false end
    local bp = LocalPlayer:FindFirstChild("Backpack")
    return checkTools(LocalPlayer.Character, GUN_NAMES) or checkTools(bp, GUN_NAMES)
end
local function hasKnife()
    if not LocalPlayer.Character then return false end
    local bp = LocalPlayer:FindFirstChild("Backpack")
    return checkTools(LocalPlayer.Character, KNIFE_NAMES) or checkTools(bp, KNIFE_NAMES)
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
    return (myHRP.Position - theirHRP.Position).Magnitude
end

-- ============ WATERMARK ============
local Watermark = Instance.new("Frame")
Watermark.Parent = ScreenGui
Watermark.BackgroundColor3 = Color3.fromRGB(15, 15, 22)
Watermark.BorderSizePixel = 0
Watermark.AnchorPoint = Vector2.new(1, 0)
Watermark.Position = UDim2.new(1, -15, 0, 15)
Watermark.Size = UDim2.new(0, 210, 0, 40)
Watermark.ZIndex = 100

local WMCorner = Instance.new("UICorner"); WMCorner.CornerRadius = UDim.new(0, 6); WMCorner.Parent = Watermark
local WMStroke = Instance.new("UIStroke"); WMStroke.Color = MURDERER_COLOR; WMStroke.Thickness = 1.5; WMStroke.Parent = Watermark

local WMLogo = Instance.new("TextLabel")
WMLogo.Parent = Watermark; WMLogo.BackgroundTransparency = 1
WMLogo.Position = UDim2.new(0, 6, 0, 0); WMLogo.Size = UDim2.new(0, 30, 1, 0)
WMLogo.Font = Enum.Font.GothamBlack; WMLogo.Text = "V"
WMLogo.TextColor3 = MURDERER_COLOR; WMLogo.TextSize = 24
WMLogo.TextXAlignment = Enum.TextXAlignment.Center
WMLogo.TextYAlignment = Enum.TextYAlignment.Center
WMLogo.ZIndex = 101

local WMText = Instance.new("TextLabel")
WMText.Parent = Watermark; WMText.BackgroundTransparency = 1
WMText.Size = UDim2.new(1, 0, 1, 0)
WMText.Font = Enum.Font.GothamBold
WMText.TextColor3 = Color3.fromRGB(245, 245, 250)
WMText.TextSize = 10.5; WMText.RichText = true
WMText.TextXAlignment = Enum.TextXAlignment.Right
WMText.TextYAlignment = Enum.TextYAlignment.Center
WMText.ZIndex = 101

local WMPad = Instance.new("UIPadding"); WMPad.Parent = WMText
WMPad.PaddingLeft = UDim.new(0, 38); WMPad.PaddingRight = UDim.new(0, 14)

local WMClick = Instance.new("TextButton")
WMClick.Parent = Watermark
WMClick.BackgroundTransparency = 1
WMClick.Size = UDim2.new(1, 0, 1, 0)
WMClick.Text = ""
WMClick.ZIndex = 102
WMClick.AutoButtonColor = false

local currentPingWM = 0
local function updateWatermark()
    local brand = State.menuVisible and "#ff6060" or "#883333"
    WMText.Text = string.format(
        '<font color="#22ddff">%d ms</font> <font color="#666666">|</font> <font color="#ffffff">MM2</font> <font color="#666666">|</font> <font color="%s">Varuma v9.0</font>',
        currentPingWM, brand)
end
updateWatermark()

-- ============ MENU ============
local MenuFrame = Instance.new("Frame")
MenuFrame.Name = "MenuFrame"
MenuFrame.Parent = ScreenGui
MenuFrame.BackgroundColor3 = Color3.fromRGB(12, 12, 16)
MenuFrame.BorderSizePixel = 0
MenuFrame.ClipsDescendants = true
MenuFrame.Position = UDim2.new(0.5, -230, 0.5, -140)
MenuFrame.Size = UDim2.new(0, 460, 0, 280)
MenuFrame.Active = true
MenuFrame.Draggable = true
MenuFrame.ZIndex = 50

local MainCorner = Instance.new("UICorner"); MainCorner.CornerRadius = UDim.new(0, 10); MainCorner.Parent = MenuFrame
local MainStroke = Instance.new("UIStroke"); MainStroke.Color = Color3.fromRGB(255,255,255); MainStroke.Transparency = 0.85; MainStroke.Parent = MenuFrame

local wmHolding = false
WMClick.MouseButton1Down:Connect(function() wmHolding = true end)
WMClick.MouseButton1Up:Connect(function()
    if not wmHolding then return end
    wmHolding = false
    if State.isUnloaded then return end
    MenuFrame.Visible = not MenuFrame.Visible
    State.menuVisible = MenuFrame.Visible
    updateWatermark()
end)

local QuickToggle = Instance.new("TextButton")
QuickToggle.Parent = ScreenGui
QuickToggle.BackgroundColor3 = MURDERER_COLOR
QuickToggle.BorderSizePixel = 0
QuickToggle.AnchorPoint = Vector2.new(1, 0)
QuickToggle.Position = UDim2.new(1, -15, 0, 62)
QuickToggle.Size = UDim2.new(0, 36, 0, 36)
QuickToggle.Font = Enum.Font.GothamBlack
QuickToggle.Text = "V"
QuickToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
QuickToggle.TextSize = 16
QuickToggle.ZIndex = 100
QuickToggle.AutoButtonColor = false
local QTCorner = Instance.new("UICorner"); QTCorner.CornerRadius = UDim.new(1, 0); QTCorner.Parent = QuickToggle
local QTStroke = Instance.new("UIStroke"); QTStroke.Color = Color3.fromRGB(255,255,255); QTStroke.Transparency = 0.5; QTStroke.Thickness = 1.5; QTStroke.Parent = QuickToggle
QuickToggle.MouseButton1Click:Connect(function()
    if State.isUnloaded then return end
    MenuFrame.Visible = not MenuFrame.Visible
    State.menuVisible = MenuFrame.Visible
    updateWatermark()
end)

local Header = Instance.new("Frame")
Header.Parent = MenuFrame
Header.BackgroundColor3 = Color3.fromRGB(16, 16, 22)
Header.Size = UDim2.new(1, 0, 0, 28)
Header.BorderSizePixel = 0
Header.ZIndex = 51
local HeaderCorner = Instance.new("UICorner"); HeaderCorner.CornerRadius = UDim.new(0, 10); HeaderCorner.Parent = Header

local TitleText = Instance.new("TextLabel")
TitleText.Parent = Header; TitleText.BackgroundTransparency = 1
TitleText.Position = UDim2.new(0, 12, 0, 0)
TitleText.Size = UDim2.new(0, 240, 1, 0)
TitleText.Font = Enum.Font.GothamBold
TitleText.Text = "VARUMA HACK // MM2"
TitleText.TextColor3 = Color3.fromRGB(241, 245, 249)
TitleText.TextSize = 11
TitleText.TextXAlignment = Enum.TextXAlignment.Left
TitleText.ZIndex = 52

local StatsBar = Instance.new("Frame")
StatsBar.Parent = MenuFrame
StatsBar.BackgroundColor3 = Color3.fromRGB(15, 15, 21)
StatsBar.Position = UDim2.new(0, 0, 0, 28)
StatsBar.Size = UDim2.new(1, 0, 0, 24)
StatsBar.BorderSizePixel = 0
StatsBar.ZIndex = 51

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
PingLabel.ZIndex = 52

local FpsLabel = Instance.new("TextLabel")
FpsLabel.Parent = StatsBar; FpsLabel.BackgroundTransparency = 1
FpsLabel.Size = UDim2.new(0, 65, 1, 0)
FpsLabel.Font = Enum.Font.GothamBold; FpsLabel.Text = "FPS: --"
FpsLabel.TextColor3 = Color3.fromRGB(200,210,220); FpsLabel.TextSize = 9
FpsLabel.ZIndex = 52

local RoleLabel = Instance.new("TextLabel")
RoleLabel.Parent = StatsBar; RoleLabel.BackgroundTransparency = 1
RoleLabel.Size = UDim2.new(0, 110, 1, 0)
RoleLabel.Font = Enum.Font.GothamBold; RoleLabel.Text = "ROLE: --"
RoleLabel.TextColor3 = Color3.fromRGB(200,210,220); RoleLabel.TextSize = 9
RoleLabel.ZIndex = 52

local RoundLabel = Instance.new("TextLabel")
RoundLabel.Parent = StatsBar; RoundLabel.BackgroundTransparency = 1
RoundLabel.Size = UDim2.new(0, 95, 1, 0)
RoundLabel.Font = Enum.Font.GothamBold; RoundLabel.Text = "ROUND: --"
RoundLabel.TextColor3 = Color3.fromRGB(255, 200, 60); RoundLabel.TextSize = 9
RoundLabel.ZIndex = 52

local Body = Instance.new("ScrollingFrame")
Body.Parent = MenuFrame
Body.BackgroundTransparency = 1
Body.ClipsDescendants = true
Body.Position = UDim2.new(0, 0, 0, 52)
Body.Size = UDim2.new(1, 0, 1, -82)
Body.CanvasSize = UDim2.new(0, 0, 0, 900)
Body.ScrollBarThickness = 4
Body.ScrollBarImageColor3 = MURDERER_COLOR
Body.ScrollingDirection = Enum.ScrollingDirection.Y
Body.ZIndex = 51

local BodyPad = Instance.new("UIPadding")
BodyPad.Parent = Body
BodyPad.PaddingLeft = UDim.new(0, 8); BodyPad.PaddingRight = UDim.new(0, 8); BodyPad.PaddingTop = UDim.new(0, 6)

local Footer = Instance.new("Frame")
Footer.Parent = MenuFrame
Footer.BackgroundColor3 = Color3.fromRGB(14, 14, 20)
Footer.Position = UDim2.new(0, 0, 1, -30)
Footer.Size = UDim2.new(1, 0, 0, 30)
Footer.BorderSizePixel = 0
Footer.ClipsDescendants = true
Footer.ZIndex = 51
local FooterCorner = Instance.new("UICorner"); FooterCorner.CornerRadius = UDim.new(0, 10); FooterCorner.Parent = Footer

local FLayout = Instance.new("UIListLayout")
FLayout.Parent = Footer
FLayout.FillDirection = Enum.FillDirection.Horizontal
FLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
FLayout.SortOrder = Enum.SortOrder.LayoutOrder

local tabs = {"rage", "legit", "visuals", "fling", "misc"}
local contentFrames = {}
local columnFrames = {}

local CategoryBar = Instance.new("Frame")
CategoryBar.Parent = Body
CategoryBar.BackgroundTransparency = 1
CategoryBar.Size = UDim2.new(1, 0, 0, 16)

local CatTag = Instance.new("TextLabel")
CatTag.Parent = CategoryBar
CatTag.BackgroundColor3 = MURDERER_COLOR
CatTag.BackgroundTransparency = 0.85
CatTag.Size = UDim2.new(0, 70, 0, 14)
CatTag.Font = Enum.Font.GothamBold
CatTag.Text = "  rage"
CatTag.TextColor3 = MURDERER_COLOR
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
    leftCol.Name = "LeftCol"; leftCol.Parent = tabContent
    leftCol.BackgroundTransparency = 1
    leftCol.Size = UDim2.new(0.485, 0, 0, 880)
    local leftList = Instance.new("UIListLayout"); leftList.Parent = leftCol
    leftList.Padding = UDim.new(0, 6); leftList.SortOrder = Enum.SortOrder.LayoutOrder

    local rightCol = Instance.new("Frame")
    rightCol.Name = "RightCol"; rightCol.Parent = tabContent
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

local tabButtons = {}
local tabIndicators = {}

for i, tabName in ipairs(tabs) do
    local tabBtn = Instance.new("TextButton")
    tabBtn.Parent = Footer
    tabBtn.BackgroundTransparency = 1
    tabBtn.Size = UDim2.new(1/#tabs, 0, 1, 0)
    tabBtn.Font = Enum.Font.GothamBold
    tabBtn.Text = tabName:upper()
    tabBtn.TextColor3 = (i == 1) and MURDERER_COLOR or Color3.fromRGB(150,160,175)
    tabBtn.TextSize = 8
    tabBtn.ZIndex = 52
    tabBtn.TextYAlignment = Enum.TextYAlignment.Top

    local btnPad = Instance.new("UIPadding"); btnPad.Parent = tabBtn; btnPad.PaddingTop = UDim.new(0, 6)

    local glow = Instance.new("Frame")
    glow.Name = "TabGlow"; glow.Parent = tabBtn
    glow.BackgroundColor3 = MURDERER_COLOR
    glow.BackgroundTransparency = (i == 1) and 0.75 or 1
    glow.BorderSizePixel = 0
    glow.AnchorPoint = Vector2.new(0.5, 1)
    glow.Position = UDim2.new(0.5, 0, 1, -2)
    glow.Size = UDim2.new(0.75, 0, 0, 5)
    glow.ZIndex = 53
    local glowCorner = Instance.new("UICorner"); glowCorner.CornerRadius = UDim.new(1, 0); glowCorner.Parent = glow

    local indicator = Instance.new("Frame")
    indicator.Name = "TabIndicator"; indicator.Parent = tabBtn
    indicator.BackgroundColor3 = MURDERER_COLOR
    indicator.BackgroundTransparency = (i == 1) and 0 or 1
    indicator.BorderSizePixel = 0
    indicator.AnchorPoint = Vector2.new(0.5, 1)
    indicator.Position = UDim2.new(0.5, 0, 1, -3)
    indicator.Size = UDim2.new(0.7, 0, 0, 2)
    indicator.ZIndex = 54
    local indCorner = Instance.new("UICorner"); indCorner.CornerRadius = UDim.new(1, 0); indCorner.Parent = indicator

    tabButtons[tabName] = tabBtn
    tabIndicators[tabName] = {bar = indicator, glow = glow}

    tabBtn.MouseButton1Click:Connect(function()
        for _, f in pairs(contentFrames) do f.Visible = false end
        contentFrames[tabName].Visible = true
        CatTag.Text = "  " .. tabName
        for name, btn in pairs(tabButtons) do
            local parts = tabIndicators[name]
            local isActive = (name == tabName)
            TweenService:Create(btn, TweenInfo.new(0.2), { TextColor3 = isActive and MURDERER_COLOR or Color3.fromRGB(150,160,175) }):Play()
            TweenService:Create(parts.bar, TweenInfo.new(0.2), { BackgroundTransparency = isActive and 0 or 1 }):Play()
            TweenService:Create(parts.glow, TweenInfo.new(0.2), { BackgroundTransparency = isActive and 0.75 or 1 }):Play()
        end
    end)
end

-- ============ CARD BUILDERS ============
local function AddCard(tabKey, title, desc, defaultState, callback, configPath, subSettings, column)
    local parentCol = pickColumn(tabKey, column)
    local card = Instance.new("Frame")
    card.Parent = parentCol
    card.BackgroundColor3 = Color3.fromRGB(18, 18, 26)
    card.BorderSizePixel = 0
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
    local subHeightVal = 0
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
                valLbl.TextColor3 = MURDERER_COLOR; valLbl.TextSize = 8
                valLbl.TextXAlignment = Enum.TextXAlignment.Right

                local sBar = Instance.new("Frame")
                sBar.Parent = subRow; sBar.BackgroundColor3 = Color3.fromRGB(30,30,40)
                sBar.Position = UDim2.new(0, 7, 0, 18); sBar.Size = UDim2.new(1, -14, 0, 4)
                sBar.BorderSizePixel = 0
                local sbCorner = Instance.new("UICorner"); sbCorner.CornerRadius = UDim.new(0,2); sbCorner.Parent = sBar

                local sFill = Instance.new("Frame")
                sFill.Parent = sBar; sFill.BackgroundColor3 = MURDERER_COLOR
                sFill.Size = UDim2.new((sub.default - sub.min) / (sub.max - sub.min), 0, 1, 0)
                sFill.BorderSizePixel = 0
                local sfCorner = Instance.new("UICorner"); sfCorner.CornerRadius = UDim.new(0,2); sfCorner.Parent = sFill

                local dragging = false
                local function upd(input)
                    local pos = math.clamp((input.Position.X - sBar.AbsolutePosition.X) / sBar.AbsoluteSize.X, 0, 1)
                    sFill.Size = UDim2.new(pos, 0, 1, 0)
                    local v = math.floor(sub.min + (sub.max - sub.min) * pos)
                    valLbl.Text = tostring(v)
                    pcall(function() sub.callback(v) end)
                end
                sBar.InputBegan:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                        dragging = true; upd(input)
                    end
                end)
                trackConnection(UserInputService.InputEnded:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then dragging = false end
                end))
                trackConnection(UserInputService.InputChanged:Connect(function(input)
                    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then upd(input) end
                end))
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
                valBtn.TextColor3 = MURDERER_COLOR; valBtn.TextSize = 7
                local vc = Instance.new("UICorner"); vc.CornerRadius = UDim.new(0,3); vc.Parent = valBtn

                local idx = sub.default or 1
                valBtn.Text = sub.options[idx]
                valBtn.MouseButton1Click:Connect(function()
                    idx = idx + 1; if idx > #sub.options then idx = 1 end
                    valBtn.Text = sub.options[idx]
                    pcall(function() sub.callback(idx, sub.options[idx]) end)
                end)
            end
        end

        for _ = 1, #subSettings do subHeightVal = subHeightVal + 26 end
        subHeightVal = subHeightVal + (#subSettings - 1) * 5 + 6
    end

    local function setVisual(state)
        toggleBtn.BackgroundColor3 = state and Color3.fromRGB(255,255,255) or Color3.fromRGB(30,30,40)
        knob.BackgroundColor3 = state and Color3.fromRGB(15,15,18) or Color3.fromRGB(161,161,170)
        knob.Position = state and UDim2.new(1,-11,0.5,-4.5) or UDim2.new(0,2,0.5,-4.5)
        if subContainer then
            local targetH = state and subHeightVal or 0
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
    if defaultState and subContainer then
        card.Size = UDim2.new(1, 0, 0, 36 + subHeightVal)
        subContainer.Size = UDim2.new(1, 0, 0, subHeightVal)
        subContainer.Visible = true
    end
end

local function AddActionCard(tabKey, title, desc, btnText, callback, column)
    local parentCol = pickColumn(tabKey, column)
    local card = Instance.new("Frame")
    card.Parent = parentCol
    card.BackgroundColor3 = Color3.fromRGB(18,18,26)
    card.BorderSizePixel = 0
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
    actionBtn.BackgroundColor3 = MURDERER_COLOR
    actionBtn.AnchorPoint = Vector2.new(1, 0.5)
    actionBtn.Position = UDim2.new(1, -8, 0.5, 0)
    actionBtn.Size = UDim2.new(0, 68, 0, 20)
    actionBtn.Font = Enum.Font.GothamBold
    actionBtn.Text = btnText
    actionBtn.TextColor3 = Color3.fromRGB(255,255,255); actionBtn.TextSize = 7
    local aCorner = Instance.new("UICorner"); aCorner.CornerRadius = UDim.new(0,4); aCorner.Parent = card

    actionBtn.MouseButton1Click:Connect(function() pcall(function() callback() end) end)
end

-- ============ DRAWINGS ============
local Drawings = { Tracers = {}, HitMarkers = {}, Trail = nil, FallingDots = {} }

-- ============ ESP SYSTEM ============
local ESPData = {}

local function getESP(player)
    if not ESPData[player] then
        local d = {}
        d.corners = {}
        for i = 1, 8 do
            d.corners[i] = trackDrawing(Drawing.new("Line"))
            d.corners[i].Thickness = 2
            d.corners[i].Visible = false
        end
        d.topBar = trackDrawing(Drawing.new("Line")); d.topBar.Thickness = 3; d.topBar.Visible = false
        d.healthBg = trackDrawing(Drawing.new("Line"))
        d.healthBg.Thickness = 3; d.healthBg.Color = Color3.fromRGB(0, 0, 0)
        d.healthBg.Transparency = 0.5; d.healthBg.Visible = false
        d.healthBar = trackDrawing(Drawing.new("Line")); d.healthBar.Thickness = 3; d.healthBar.Visible = false
        d.nameText = trackDrawing(Drawing.new("Text"))
        d.nameText.Size = 13; d.nameText.Center = true; d.nameText.Outline = true; d.nameText.Visible = false
        d.roleText = trackDrawing(Drawing.new("Text"))
        d.roleText.Size = 10; d.roleText.Center = true; d.roleText.Outline = true; d.roleText.Visible = false
        d.distText = trackDrawing(Drawing.new("Text"))
        d.distText.Size = 10; d.distText.Center = true; d.distText.Outline = true; d.distText.Visible = false
        d.headDot = trackDrawing(Drawing.new("Circle"))
        d.headDot.Thickness = 2; d.headDot.NumSides = 24; d.headDot.Filled = false; d.headDot.Visible = false
        d.skeleton = {}
        for i = 1, 5 do
            d.skeleton[i] = trackDrawing(Drawing.new("Line"))
            d.skeleton[i].Thickness = 1.5; d.skeleton[i].Transparency = 0.15; d.skeleton[i].Visible = false
        end
        ESPData[player] = d
    end
    return ESPData[player]
end

local function hideESP(player)
    local d = ESPData[player]
    if not d then return end
    for _, c in ipairs(d.corners) do c.Visible = false end
    d.topBar.Visible = false
    d.healthBg.Visible = false
    d.healthBar.Visible = false
    d.nameText.Visible = false
    d.roleText.Visible = false
    d.distText.Visible = false
    d.headDot.Visible = false
    for _, l in ipairs(d.skeleton) do l.Visible = false end
end

local function drawESP(player, roleColor)
    local char = player.Character
    if not char then hideESP(player); return end
    local hum = char:FindFirstChildOfClass("Humanoid")
    local hrp = char:FindFirstChild("HumanoidRootPart")
    local head = char:FindFirstChild("Head")
    if not hum or not hrp or not head or hum.Health <= 0 then hideESP(player); return end
    local hrpPos = hrp.Position
    local dist3D = (Camera.CFrame.Position - hrpPos).Magnitude
    if Config.Visuals.ESPMaxDistance and dist3D > Config.Visuals.ESPMaxDistance then hideESP(player); return end
    local topWorld = Vector3.new(hrpPos.X, head.Position.Y + 0.5, hrpPos.Z)
    local botWorld = Vector3.new(hrpPos.X, hrpPos.Y - 2.8, hrpPos.Z)
    local topScreen, topOn = Camera:WorldToViewportPoint(topWorld)
    local botScreen, botOn = Camera:WorldToViewportPoint(botWorld)
    if not (topOn and botOn) then hideESP(player); return end
    if topScreen.Y > botScreen.Y then topScreen, botScreen = botScreen, topScreen end
    local h = math.abs(botScreen.Y - topScreen.Y)
    local w = h * 0.55
    if w < 6 or h < 12 then hideESP(player); return end
    local x = topScreen.X - w / 2
    local y = topScreen.Y
    local cl = math.clamp(math.min(w, h) * 0.25, 6, math.min(w, h) / 2)
    local d = getESP(player)
    if Config.Visuals.BoxESP then
        d.corners[1].From = Vector2.new(x, y);          d.corners[1].To = Vector2.new(x + cl, y)
        d.corners[2].From = Vector2.new(x, y);          d.corners[2].To = Vector2.new(x, y + cl)
        d.corners[3].From = Vector2.new(x + w - cl, y); d.corners[3].To = Vector2.new(x + w, y)
        d.corners[4].From = Vector2.new(x + w, y);      d.corners[4].To = Vector2.new(x + w, y + cl)
        d.corners[5].From = Vector2.new(x, y + h - cl); d.corners[5].To = Vector2.new(x, y + h)
        d.corners[6].From = Vector2.new(x, y + h);      d.corners[6].To = Vector2.new(x + cl, y + h)
        d.corners[7].From = Vector2.new(x + w - cl, y + h); d.corners[7].To = Vector2.new(x + w, y + h)
        d.corners[8].From = Vector2.new(x + w, y + h - cl); d.corners[8].To = Vector2.new(x + w, y + h)
        for _, c in ipairs(d.corners) do c.Color = roleColor; c.Visible = true end
        d.topBar.From = Vector2.new(x - 1, y - 3)
        d.topBar.To = Vector2.new(x + w + 1, y - 3)
        d.topBar.Color = roleColor
        d.topBar.Visible = true
    else
        for _, c in ipairs(d.corners) do c.Visible = false end
        d.topBar.Visible = false
    end
    if Config.Visuals.BoxESP and Config.Visuals.HealthBar ~= false then
        local hpPct = math.clamp(hum.Health / math.max(hum.MaxHealth, 1), 0, 1)
        local barX = x - 7
        d.healthBg.From = Vector2.new(barX, y)
        d.healthBg.To = Vector2.new(barX, y + h)
        d.healthBg.Visible = true
        d.healthBar.From = Vector2.new(barX, y + h * (1 - hpPct))
        d.healthBar.To = Vector2.new(barX, y + h)
        if hpPct > 0.6 then d.healthBar.Color = Color3.fromRGB(80, 220, 100)
        elseif hpPct > 0.3 then d.healthBar.Color = Color3.fromRGB(255, 200, 60)
        else d.healthBar.Color = Color3.fromRGB(255, 50, 50) end
        d.healthBar.Visible = true
    else
        d.healthBg.Visible = false
        d.healthBar.Visible = false
    end
    d.nameText.Text = player.Name
    d.nameText.Position = Vector2.new(x + w / 2, y - 20)
    d.nameText.Color = Color3.fromRGB(255, 255, 255)
    d.nameText.Visible = true
    d.roleText.Text = getRoleName(player)
    d.roleText.Position = Vector2.new(x + w / 2, y - 7)
    d.roleText.Color = roleColor
    d.roleText.Visible = true
    d.distText.Text = "[" .. math.floor(dist3D) .. "m]"
    d.distText.Position = Vector2.new(x + w / 2, y + h + 4)
    d.distText.Color = Color3.fromRGB(200, 200, 200)
    d.distText.Visible = true
    local headScreen, headOn = Camera:WorldToViewportPoint(head.Position)
    if headOn then
        d.headDot.Position = Vector2.new(headScreen.X, headScreen.Y)
        d.headDot.Radius = math.clamp(60 / math.max(headScreen.Z, 1), 3, 8)
        d.headDot.Color = roleColor
        d.headDot.Visible = true
    else d.headDot.Visible = false end
    if Config.Visuals.SkeletonESP then
        local torso = char:FindFirstChild("Torso") or char:FindFirstChild("UpperTorso")
        local la = char:FindFirstChild("Left Arm") or char:FindFirstChild("LeftUpperArm")
        local ra = char:FindFirstChild("Right Arm") or char:FindFirstChild("RightUpperArm")
        local ll = char:FindFirstChild("Left Leg") or char:FindFirstChild("LeftUpperLeg")
        local rl = char:FindFirstChild("Right Leg") or char:FindFirstChild("RightUpperLeg")
        if torso and la and ra and ll and rl then
            local function proj(p) local sp, on = Camera:WorldToViewportPoint(p); return Vector2.new(sp.X, sp.Y), on end
            local hp, hOn = proj(head.Position); local tp, tOn = proj(torso.Position)
            local lap, laOn = proj(la.Position); local rap, raOn = proj(ra.Position)
            local llp, llOn = proj(ll.Position); local rlp, rlOn = proj(rl.Position)
            if hOn and tOn then d.skeleton[1].From = hp; d.skeleton[1].To = tp; d.skeleton[1].Color = roleColor; d.skeleton[1].Visible = true else d.skeleton[1].Visible = false end
            if tOn and laOn then d.skeleton[2].From = tp; d.skeleton[2].To = lap; d.skeleton[2].Color = roleColor; d.skeleton[2].Visible = true else d.skeleton[2].Visible = false end
            if tOn and raOn then d.skeleton[3].From = tp; d.skeleton[3].To = rap; d.skeleton[3].Color = roleColor; d.skeleton[3].Visible = true else d.skeleton[3].Visible = false end
            if tOn and llOn then d.skeleton[4].From = tp; d.skeleton[4].To = llp; d.skeleton[4].Color = roleColor; d.skeleton[4].Visible = true else d.skeleton[4].Visible = false end
            if tOn and rlOn then d.skeleton[5].From = tp; d.skeleton[5].To = rlp; d.skeleton[5].Color = roleColor; d.skeleton[5].Visible = true else d.skeleton[5].Visible = false end
        else for _, l in ipairs(d.skeleton) do l.Visible = false end end
    else for _, l in ipairs(d.skeleton) do l.Visible = false end end
end

local function updateESP()
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and isPlayerAlive(player) then
            drawESP(player, getRoleColor(player))
        else hideESP(player) end
    end
end

trackConnection(Players.PlayerRemoving:Connect(function(p) ESPData[p] = nil end))

-- ============ CHAMS ============
local function updateChams()
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character then
            local char = player.Character
            if Config.Visuals.Chams and isPlayerAlive(player) then
                local newColor = isMurderer(player) and MURDERER_COLOR 
                    or (isSheriff(player) and SHERIFF_COLOR or Color3.fromRGB(150, 160, 175))
                local hl = char:FindFirstChild("VarumaHackHighlight")
                if not hl then
                    hl = Instance.new("Highlight")
                    hl.Name = "VarumaHackHighlight"
                    hl.Adornee = char
                    hl.FillColor = newColor
                    hl.OutlineColor = Color3.fromRGB(255, 255, 255)
                    hl.FillTransparency = 0.4
                    hl.OutlineTransparency = 0.1
                    hl.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                    hl.Parent = char
                else
                    if hl.FillColor ~= newColor then hl.FillColor = newColor end
                    if hl.Adornee ~= char then hl.Adornee = char end
                end
            else
                local existing = char:FindFirstChild("VarumaHackHighlight")
                if existing then existing:Destroy() end
            end
        end
    end
end

-- ============ FOV ============
local FOVGlowOuter = trackDrawing(Drawing.new("Circle"))
FOVGlowOuter.Visible = true; FOVGlowOuter.Transparency = 0.18; FOVGlowOuter.Thickness = 7
FOVGlowOuter.Color = Color3.fromRGB(255,255,255); FOVGlowOuter.NumSides = 96
FOVGlowOuter.Radius = Config.Legit.FOVRadius; FOVGlowOuter.Filled = false

local FOVGlowMid = trackDrawing(Drawing.new("Circle"))
FOVGlowMid.Visible = true; FOVGlowMid.Transparency = 0.45; FOVGlowMid.Thickness = 4
FOVGlowMid.Color = Color3.fromRGB(255,255,255); FOVGlowMid.NumSides = 96
FOVGlowMid.Radius = Config.Legit.FOVRadius; FOVGlowMid.Filled = false

local FOVCircle = trackDrawing(Drawing.new("Circle"))
FOVCircle.Visible = true; FOVCircle.Transparency = 1; FOVCircle.Thickness = 2
FOVCircle.Color = Color3.fromRGB(255,255,255); FOVCircle.NumSides = 96
FOVCircle.Radius = Config.Legit.FOVRadius; FOVCircle.Filled = false

-- ============ SILENT AIM ============
local silentAimCacheFrame = -1
local silentAimCacheTarget = nil
local currentFrameCounter = 0

local function isSilentAimValidTarget(player)
    if not isPlayerAlive(player) then return false end
    local t = Config.Rage.SilentAimTarget or 1
    if t == 1 then return isMurderer(player) end
    if t == 2 then return isSheriff(player) end
    if t == 3 then return true end
    return false
end

local function computeSilentAimTarget()
    if not Config.Rage.SilentAim then return nil end
    if not LocalPlayer.Character then return nil end
    local center = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
    local bestTarget, bestScreenDist = nil, Config.Rage.SilentAimFOV
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and isSilentAimValidTarget(player) then
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

local function getSilentAimTarget()
    if silentAimCacheFrame == currentFrameCounter then return silentAimCacheTarget end
    silentAimCacheFrame = currentFrameCounter
    silentAimCacheTarget = computeSilentAimTarget()
    return silentAimCacheTarget
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
            local selfName = self and self.Name or ""
            local lowerName = string.lower(selfName)
            if string.find(lowerName, "gun") or string.find(lowerName, "fire") or string.find(lowerName, "shoot") or string.find(lowerName, "shot") then
                local target = getSilentAimTarget()
                if target then
                    local args = {...}
                    for i, arg in ipairs(args) do
                        if typeof(arg) == "CFrame" then
                            args[i] = CFrame.new(Camera.CFrame.Position, target.Position)
                        elseif typeof(arg) == "Instance" and arg:IsA("BasePart") then
                            args[i] = target
                        elseif typeof(arg) == "Vector3" then
                            args[i] = target.Position
                        end
                    end
                    return oldNamecall(self, table.unpack(args))
                end
            end
        end
        return oldNamecall(self, ...)
    end)
    setreadonly(mt, true)
end)

-- ============ HIT MARKER ============
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
        local l = trackDrawing(Drawing.new("Line"))
        l.From = c[1]; l.To = c[2]; l.Thickness = 2
        l.Color = Color3.fromRGB(255, 60, 60)
        l.Transparency = 1; l.Visible = true
        table.insert(lines, l)
    end
    table.insert(Drawings.HitMarkers, {lines = lines, age = 0, life = 0.15})
end
local function updateHitMarkers(dt)
    for i = #Drawings.HitMarkers, 1, -1 do
        local hm = Drawings.HitMarkers[i]
        hm.age = hm.age + dt
        local p = hm.age / hm.life
        if p >= 1 then
            for _, l in ipairs(hm.lines) do pcall(function() l:Remove() end) end
            table.remove(Drawings.HitMarkers, i)
        else
            for _, l in ipairs(hm.lines) do l.Transparency = 1 - p end
        end
    end
end

-- ============ HITSOUND ============
local function playHitsound()
    if not Config.Legit.Hitsound then return end
    local snd = Instance.new("Sound")
    snd.Volume = Config.Legit.HitsoundVolume
    snd.PlaybackSpeed = 1
    if Config.Legit.HitsoundType == 1 then
        snd.SoundId = "rbxasset://sounds/electronicpingshort.wav"; snd.PlaybackSpeed = 2.2
    elseif Config.Legit.HitsoundType == 2 then
        snd.SoundId = "rbxasset://sounds/button.wav"; snd.PlaybackSpeed = 1.8
    else
        snd.SoundId = "rbxasset://sounds/switch3.wav"; snd.PlaybackSpeed = 2.5
    end
    snd.Parent = SoundService
    snd:Play()
    task.delay(1, function() if snd and snd.Parent then snd:Destroy() end end)
end

-- ============ KILL FEED ============
local KillFeedFrame = Instance.new("Frame")
KillFeedFrame.Parent = ScreenGui
KillFeedFrame.BackgroundTransparency = 1
KillFeedFrame.AnchorPoint = Vector2.new(1, 0)
KillFeedFrame.Position = UDim2.new(1, -15, 0, 65)
KillFeedFrame.Size = UDim2.new(0, 260, 0, 300)
KillFeedFrame.ZIndex = 5

local KFLayout = Instance.new("UIListLayout")
KFLayout.Parent = KillFeedFrame
KFLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
KFLayout.SortOrder = Enum.SortOrder.LayoutOrder
KFLayout.Padding = UDim.new(0, 5)

local function pushKillFeed(playerName, roleName, roleColor, killedByMe)
    if not Config.Rage.KillFeed then return end
    local card = Instance.new("Frame")
    card.BackgroundColor3 = Color3.fromRGB(14, 14, 20)
    card.BackgroundTransparency = 1
    card.BorderSizePixel = 0
    card.Size = UDim2.new(1, 0, 0, 34)
    card.ZIndex = 6
    card.Parent = KillFeedFrame
    local cardCorner = Instance.new("UICorner"); cardCorner.CornerRadius = UDim.new(0, 5); cardCorner.Parent = card
    local cardGlow = Instance.new("UIStroke"); cardGlow.Color = roleColor; cardGlow.Thickness = 3; cardGlow.Transparency = 1; cardGlow.Parent = card
    local accent = Instance.new("Frame")
    accent.BackgroundColor3 = roleColor; accent.BorderSizePixel = 0
    accent.Size = UDim2.new(0, 3, 1, 0); accent.BackgroundTransparency = 1
    accent.ZIndex = 7; accent.Parent = card
    local accentCorner = Instance.new("UICorner"); accentCorner.CornerRadius = UDim.new(0, 2); accentCorner.Parent = accent
    local iconBg = Instance.new("Frame")
    iconBg.BackgroundColor3 = roleColor; iconBg.BackgroundTransparency = 1; iconBg.BorderSizePixel = 0
    iconBg.Position = UDim2.new(0, 8, 0.5, -9); iconBg.Size = UDim2.new(0, 18, 0, 18)
    iconBg.ZIndex = 7; iconBg.Parent = card
    local iconCorner = Instance.new("UICorner"); iconCorner.CornerRadius = UDim.new(1, 0); iconCorner.Parent = iconBg
    local iconLabel = Instance.new("TextLabel")
    iconLabel.BackgroundTransparency = 1; iconLabel.Size = UDim2.new(1, 0, 1, 0)
    iconLabel.Font = Enum.Font.GothamBlack; iconLabel.Text = string.sub(roleName, 1, 1)
    iconLabel.TextColor3 = Color3.fromRGB(15, 15, 22); iconLabel.TextSize = 11
    iconLabel.TextTransparency = 1; iconLabel.ZIndex = 8; iconLabel.Parent = iconBg
    local nameLabel = Instance.new("TextLabel")
    nameLabel.BackgroundTransparency = 1
    nameLabel.Position = UDim2.new(0, 32, 0, 4); nameLabel.Size = UDim2.new(1, -40, 0, 13)
    nameLabel.Font = Enum.Font.GothamBold; nameLabel.Text = playerName
    nameLabel.TextColor3 = Color3.fromRGB(245, 245, 250); nameLabel.TextSize = 10
    nameLabel.TextXAlignment = Enum.TextXAlignment.Left
    nameLabel.TextTruncate = Enum.TextTruncate.AtEnd
    nameLabel.TextTransparency = 1; nameLabel.ZIndex = 7; nameLabel.Parent = card
    local statusLabel = Instance.new("TextLabel")
    statusLabel.BackgroundTransparency = 1
    statusLabel.Position = UDim2.new(0, 32, 0, 17); statusLabel.Size = UDim2.new(1, -40, 0, 11)
    statusLabel.Font = Enum.Font.Gotham
    statusLabel.Text = killedByMe and "VICTIM ELIMINATED" or (roleName .. " · DEAD")
    statusLabel.TextColor3 = killedByMe and Color3.fromRGB(80, 220, 100) or roleColor
    statusLabel.TextSize = 7.5
    statusLabel.TextXAlignment = Enum.TextXAlignment.Left
    statusLabel.TextTransparency = 1; statusLabel.ZIndex = 7; statusLabel.Parent = card
    card.Position = UDim2.new(0, 60, 0, 0)
    local APPEAR_T = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
    local FADE_OUT_T = TweenInfo.new(0.45, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
    TweenService:Create(card, APPEAR_T, {Position = UDim2.new(0, 0, 0, 0), BackgroundTransparency = 0}):Play()
    TweenService:Create(accent, APPEAR_T, {BackgroundTransparency = 0}):Play()
    TweenService:Create(iconBg, APPEAR_T, {BackgroundTransparency = 0}):Play()
    TweenService:Create(iconLabel, APPEAR_T, {TextTransparency = 0}):Play()
    TweenService:Create(nameLabel, APPEAR_T, {TextTransparency = 0}):Play()
    TweenService:Create(statusLabel, APPEAR_T, {TextTransparency = 0}):Play()
    TweenService:Create(cardGlow, TweenInfo.new(0.4), {Transparency = 0.6}):Play()
    task.spawn(function()
        task.wait(3.2)
        if not card or not card.Parent then return end
        TweenService:Create(card, FADE_OUT_T, {Position = UDim2.new(0, 60, 0, 0), BackgroundTransparency = 1}):Play()
        TweenService:Create(accent, FADE_OUT_T, {BackgroundTransparency = 1}):Play()
        TweenService:Create(iconBg, FADE_OUT_T, {BackgroundTransparency = 1}):Play()
        TweenService:Create(iconLabel, FADE_OUT_T, {TextTransparency = 1}):Play()
        TweenService:Create(nameLabel, FADE_OUT_T, {TextTransparency = 1}):Play()
        TweenService:Create(statusLabel, FADE_OUT_T, {TextTransparency = 1}):Play()
        TweenService:Create(cardGlow, FADE_OUT_T, {Transparency = 1}):Play()
        task.wait(0.5)
        if card and card.Parent then card:Destroy() end
    end)
end

local function hookPlayerDeath(player)
    local function onDied()
        if player ~= LocalPlayer then
            local role = getRoleName(player)
            local col = getRoleColor(player)
            local killedByMe = false
            if LocalPlayer.Character then
                local myHRP = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                local theirChar = player.Character
                if myHRP and theirChar then
                    local theirHRP = theirChar:FindFirstChild("HumanoidRootPart")
                    if theirHRP and (myHRP.Position - theirHRP.Position).Magnitude < 15 then
                        killedByMe = hasKnife() or hasGunEquipped()
                    end
                end
            end
            pushKillFeed(player.Name, role, col, killedByMe)
        end
    end
    local function attach(char)
        local hum = char:WaitForChild("Humanoid", 3)
        if not hum then return end
        trackConnection(hum.Died:Connect(onDied))
    end
    if player.Character then task.spawn(attach, player.Character) end
    trackConnection(player.CharacterAdded:Connect(function(c) task.spawn(attach, c) end))
end
for _, p in ipairs(Players:GetPlayers()) do hookPlayerDeath(p) end
trackConnection(Players.PlayerAdded:Connect(hookPlayerDeath))

-- ============ FLING ============
local activeFlings = {}
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
        for _ = 1, 3 do
            if not target.Character then break end
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
            tHRP.AssemblyLinearVelocity = Vector3.new(
                (math.random(-150, 150) / 100) * power * 0.2,
                power * 0.5 + math.random(0, 200),
                (math.random(-150, 150) / 100) * power * 0.2)
            if elapsed - lastSpin >= 0.04 then
                lastSpin = elapsed
                local spin = power * 0.8
                tHRP.AssemblyAngularVelocity = Vector3.new(
                    (math.random(-100, 100) / 100) * spin,
                    (math.random(-100, 100) / 100) * spin,
                    (math.random(-100, 100) / 100) * spin)
            end
            myHRP.CFrame = CFrame.new(tHRP.Position + Vector3.new(0, 1, 0))
            task.wait(0.02)
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

-- ============ FALLING DOTS ============
local fallingDotRainbowHue = 0
local function getFallingDotColor()
    local idx = Config.Visuals.FallingDotsColor
    if idx == 7 then
        fallingDotRainbowHue = (fallingDotRainbowHue + 0.008) % 1
        return Color3.fromHSV(fallingDotRainbowHue, 0.85, 1)
    end
    return fallingDotColorValues[idx] or fallingDotColorValues[1]
end

local function spawnFallingDot()
    local camPos = Camera.CFrame.Position
    local camLook = Camera.CFrame.LookVector
    local right = Camera.CFrame.RightVector
    local forwardOffset = 30 + math.random() * 80
    local sideOffset = (math.random() - 0.5) * 120
    local upOffset = 50 + math.random() * 60
    local origin = camPos + camLook * forwardOffset + right * sideOffset + Vector3.new(0, upOffset, 0)
    local p = Instance.new("Part")
    p.Name = "VarumaFallingDot"
    p.Shape = Enum.PartType.Ball
    p.Size = Vector3.new(0.5, 0.5, 0.5)
    p.Material = Enum.Material.Neon
    p.Color = getFallingDotColor()
    p.Transparency = 0.1
    p.Anchored = true
    p.CanCollide = false
    p.CanQuery = false
    p.CanTouch = false
    p.CastShadow = false
    p.CFrame = CFrame.new(origin)
    p.Parent = Workspace
    local a0 = Instance.new("Attachment"); a0.Parent = p
    local a1 = Instance.new("Attachment"); a1.Position = Vector3.new(0, 1, 0); a1.Parent = p
    local trail = Instance.new("Trail")
    trail.Attachment0 = a0; trail.Attachment1 = a1
    trail.Lifetime = 0.5; trail.MinLength = 0
    trail.Color = ColorSequence.new(p.Color, p.Color)
    trail.Transparency = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 0.3),
        NumberSequenceKeypoint.new(1, 1)
    })
    trail.LightEmission = 1
    trail.Parent = p
    local rayOrigin = Vector3.new(origin.X, camPos.Y, origin.Z)
    local rayDir = Vector3.new(0, -200, 0)
    local rayParams = RaycastParams.new()
    rayParams.FilterType = Enum.RaycastFilterType.Exclude
    rayParams.FilterDescendantsInstances = {LocalPlayer.Character}
    local hit = Workspace:Raycast(rayOrigin, rayDir, rayParams)
    local targetY = hit and hit.Position.Y or (camPos.Y - 50)
    table.insert(Drawings.FallingDots, {part = p, targetY = targetY, speed = Config.Visuals.FallingDotsSpeed or 2, born = tick()})
end

local lastFallingDotsState = false
local function updateFallingDots()
    if not Config.Visuals.FallingDots then
        if lastFallingDotsState then
            for _, d in ipairs(Drawings.FallingDots) do
                if d.part and d.part.Parent then d.part:Destroy() end
            end
            Drawings.FallingDots = {}
        end
        lastFallingDotsState = false
        return
    end
    if not lastFallingDotsState then
        lastFallingDotsState = true
        local target = Config.Visuals.FallingDotsCount or 100
        for _ = 1, target do spawnFallingDot() end
    end
    local target = Config.Visuals.FallingDotsCount or 100
    local missing = target - #Drawings.FallingDots
    if missing > 0 then
        local spawnCount = math.min(missing, 15)
        for _ = 1, spawnCount do spawnFallingDot() end
    end
    for i = #Drawings.FallingDots, 1, -1 do
        local d = Drawings.FallingDots[i]
        if not d.part or not d.part.Parent then
            table.remove(Drawings.FallingDots, i)
        else
            local pos = d.part.Position
            local newY = pos.Y - d.speed
            if newY <= d.targetY then
                d.part:Destroy()
                table.remove(Drawings.FallingDots, i)
            else
                d.part.CFrame = CFrame.new(pos.X, newY, pos.Z)
                d.part.Color = getFallingDotColor()
                local distToTarget = newY - d.targetY
                if distToTarget > 40 then d.part.Transparency = 0.5
                else d.part.Transparency = math.clamp(distToTarget / 60, 0.1, 0.9) end
            end
        end
    end
end

-- ============ JUMP RING (Beam line) ============
local jumpRings = {}
local ringRainbowHue = 0

local function getRingColor()
    if (Config.Visuals.JumpRingColor or 1) == 7 then
        ringRainbowHue = (ringRainbowHue + 0.02) % 1
        return Color3.fromHSV(ringRainbowHue, 0.85, 1)
    end
    return ringColorValues[Config.Visuals.JumpRingColor or 1] or ringColorValues[1]
end

local function spawnJumpRing(worldPos, color)
    local RING_SEGMENTS = 64
    local maxRadius = Config.Visuals.JumpRingRadius or 5
    local ringModel = Instance.new("Model")
    ringModel.Name = "VarumaJumpRing"
    ringModel.Parent = Workspace
    local attachments = {}
    for i = 1, RING_SEGMENTS + 1 do
        local angle = ((i - 1) / RING_SEGMENTS) * math.pi * 2
        local a = Instance.new("Attachment")
        a.Position = Vector3.new(math.cos(angle) * maxRadius, 0, math.sin(angle) * maxRadius)
        a.Parent = ringModel
        table.insert(attachments, a)
    end
    local beams = {}
    for i = 1, RING_SEGMENTS do
        local beam = Instance.new("Beam")
        beam.Attachment0 = attachments[i]
        beam.Attachment1 = attachments[i + 1]
        beam.Width0 = 0.3; beam.Width1 = 0.3
        beam.FaceCamera = true
        beam.LightEmission = 0
        beam.LightInfluence = 0
        beam.Brightness = 1
        beam.Color = ColorSequence.new(color)
        beam.Transparency = NumberSequence.new(1)
        beam.Segments = 1
        beam.Parent = ringModel
        table.insert(beams, beam)
    end
    local anchor = Instance.new("Part")
    anchor.Anchored = true; anchor.CanCollide = false
    anchor.CanQuery = false; anchor.CanTouch = false
    anchor.Transparency = 1; anchor.Size = Vector3.new(0.1, 0.1, 0.1)
    anchor.CFrame = CFrame.new(worldPos)
    anchor.Parent = ringModel
    table.insert(jumpRings, {
        model = ringModel, anchor = anchor, beams = beams, attachments = attachments,
        origin = worldPos, maxRadius = maxRadius, age = 0, life = 0.65, color = color,
    })
end

local function updateJumpRings(dt)
    for i = #jumpRings, 1, -1 do
        local ring = jumpRings[i]
        ring.age = ring.age + dt
        local progress = ring.age / ring.life
        if progress >= 1 then
            if ring.model and ring.model.Parent then ring.model:Destroy() end
            table.remove(jumpRings, i)
        else
            local eased = 1 - math.pow(1 - progress, 2.5)
            local curRadius = 0.3 + eased * (ring.maxRadius - 0.3)
            local alpha = 1 - progress
            local col = ring.color
            if (Config.Visuals.JumpRingColor or 1) == 7 then col = getRingColor() end
            local n = #ring.attachments
            for j = 1, n do
                local angle = ((j - 1) / (n - 1)) * math.pi * 2
                ring.attachments[j].Position = Vector3.new(math.cos(angle) * curRadius, 0, math.sin(angle) * curRadius)
            end
            local beamTrans = 1 - alpha * 0.75
            local beamWidth = 0.3 * (1 - progress * 0.5)
            for _, beam in ipairs(ring.beams) do
                if beam and beam.Parent then
                    beam.Transparency = NumberSequence.new(beamTrans)
                    beam.Width0 = beamWidth
                    beam.Width1 = beamWidth
                    beam.Color = ColorSequence.new(col)
                end
            end
        end
    end
end

local function hookJumpRing()
    local function attach(char)
        local hum = char:WaitForChild("Humanoid", 3)
        if not hum then return end
        local wasGround = true
        trackConnection(hum.StateChanged:Connect(function(_, newState)
            if not Config.Visuals.JumpRing then return end
            if newState == Enum.HumanoidStateType.Jumping or newState == Enum.HumanoidStateType.Freefall then
                if wasGround then
                    wasGround = false
                    local hrp = char:FindFirstChild("HumanoidRootPart")
                    if hrp then spawnJumpRing(hrp.Position - Vector3.new(0, 1.5, 0), getRingColor()) end
                end
            elseif newState == Enum.HumanoidStateType.Landed or newState == Enum.HumanoidStateType.Running then
                wasGround = true
            end
        end))
    end
    if LocalPlayer.Character then task.spawn(attach, LocalPlayer.Character) end
    trackConnection(LocalPlayer.CharacterAdded:Connect(function(c) task.spawn(attach, c) end))
end
hookJumpRing()

-- ============ JUMP BURST ============
local jumpBursts = {}
local function spawnJumpBurst(worldPos, color)
    local parts = {}
    for i = 1, 22 do
        local p = Instance.new("Part")
        p.Shape = Enum.PartType.Ball; p.Size = Vector3.new(0.4, 0.4, 0.4)
        p.Material = Enum.Material.Neon; p.Color = color
        p.Anchored = true; p.CanCollide = false; p.CanQuery = false; p.CanTouch = false
        p.CFrame = CFrame.new(worldPos); p.Parent = Workspace
        local angle = (i / 22) * math.pi * 2
        local radius = 4 + math.random() * 3
        table.insert(parts, {part = p, startPos = worldPos,
            endPos = worldPos + Vector3.new(math.cos(angle) * radius, 3 + math.random() * 3, math.sin(angle) * radius),
            sizeBase = 0.4})
    end
    local light = Instance.new("PointLight")
    light.Color = color; light.Brightness = 6; light.Range = 18
    local anchor = Instance.new("Part")
    anchor.Anchored = true; anchor.CanCollide = false; anchor.CanQuery = false; anchor.CanTouch = false
    anchor.Transparency = 1; anchor.Size = Vector3.new(0.1, 0.1, 0.1)
    anchor.CFrame = CFrame.new(worldPos); anchor.Parent = Workspace
    light.Parent = anchor
    table.insert(jumpBursts, {parts = parts, anchor = anchor, light = light, age = 0, life = 0.85})
end

local function updateJumpBursts(dt)
    for i = #jumpBursts, 1, -1 do
        local b = jumpBursts[i]
        b.age = b.age + dt
        local progress = b.age / b.life
        if progress >= 1 then
            for _, obj in ipairs(b.parts) do if obj.part and obj.part.Parent then obj.part:Destroy() end end
            if b.light and b.light.Parent then b.light:Destroy() end
            if b.anchor and b.anchor.Parent then b.anchor:Destroy() end
            table.remove(jumpBursts, i)
        else
            local eased = 1 - math.pow(1 - progress, 3)
            for _, obj in ipairs(b.parts) do
                if obj.part and obj.part.Parent then
                    obj.part.CFrame = CFrame.new(obj.startPos:Lerp(obj.endPos, eased))
                    obj.part.Transparency = math.clamp(progress * 1.1, 0, 1)
                    local s = obj.sizeBase * (1 - progress * 0.6)
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

local function hookJumpBurst()
    local function attach(char)
        local hum = char:WaitForChild("Humanoid", 3)
        if not hum then return end
        local wasOnGround = true
        trackConnection(hum.StateChanged:Connect(function(old, new)
            if not Config.Visuals.JumpEffect then return end
            if new == Enum.HumanoidStateType.Jumping or new == Enum.HumanoidStateType.Freefall then
                if wasOnGround then
                    wasOnGround = false
                    local hrp = char:FindFirstChild("HumanoidRootPart")
                    if hrp then
                        spawnJumpBurst(hrp.Position - Vector3.new(0, 2.5, 0), jumpColorValues[Config.Visuals.JumpEffectColor] or jumpColorValues[2])
                    end
                end
            elseif new == Enum.HumanoidStateType.Landed or new == Enum.HumanoidStateType.Running then
                wasOnGround = true
            end
        end))
    end
    if LocalPlayer.Character then task.spawn(attach, LocalPlayer.Character) end
    trackConnection(LocalPlayer.CharacterAdded:Connect(function(c) task.spawn(attach, c) end))
end
hookJumpBurst()

-- ============ MAP COLOR ============
local mapColorHue = 0
local mapColorOrigParts = {}
local mapColorLightOrig = nil
local mapColorCC = nil
local mapColorActive = false

local function getMapColor()
    local idx = Config.Visuals.MapColorIndex or 1
    if idx == 7 then
        mapColorHue = (mapColorHue + 0.008) % 1
        return Color3.fromHSV(mapColorHue, 0.85, 1)
    end
    return mapColorValues[idx] or mapColorValues[1]
end

local function saveOriginalLighting()
    if mapColorLightOrig then return end
    mapColorLightOrig = {
        Ambient = Lighting.Ambient, OutdoorAmbient = Lighting.OutdoorAmbient,
        FogColor = Lighting.FogColor, FogEnd = Lighting.FogEnd, FogStart = Lighting.FogStart,
    }
end

local function applyMapColor(color)
    saveOriginalLighting()
    local intensity = (Config.Visuals.MapColorIntensity or 70) / 100
    local tint = color:Lerp(Color3.fromRGB(255, 255, 255), 1 - intensity)
    Lighting.Ambient = tint
    Lighting.OutdoorAmbient = tint
    Lighting.FogColor = tint
    Lighting.FogEnd = 10000
    Lighting.FogStart = 0
    if not mapColorCC or not mapColorCC.Parent then
        mapColorCC = Instance.new("ColorCorrectionEffect")
        mapColorCC.Name = "VarumaMapColorCC"
        mapColorCC.Parent = Lighting
    end
    mapColorCC.TintColor = tint
    mapColorCC.Brightness = 0
    mapColorCC.Contrast = 0.05
    mapColorCC.Saturation = 0.1
    if Config.Visuals.MapColorMode == 2 then
        for _, obj in ipairs(Workspace:GetDescendants()) do
            if obj:IsA("BasePart") and not obj.Name:find("Varuma") then
                local isCharPart = false
                for _, plr in ipairs(Players:GetPlayers()) do
                    if plr.Character and obj:IsDescendantOf(plr.Character) then isCharPart = true; break end
                end
                if not isCharPart then
                    if not mapColorOrigParts[obj] then mapColorOrigParts[obj] = obj.Color end
                    pcall(function() obj.Color = tint end)
                end
            end
        end
    end
end

local function clearMapColor()
    if mapColorLightOrig then
        Lighting.Ambient = mapColorLightOrig.Ambient
        Lighting.OutdoorAmbient = mapColorLightOrig.OutdoorAmbient
        Lighting.FogColor = mapColorLightOrig.FogColor
        Lighting.FogEnd = mapColorLightOrig.FogEnd
        Lighting.FogStart = mapColorLightOrig.FogStart
    end
    if mapColorCC and mapColorCC.Parent then mapColorCC:Destroy() end
    mapColorCC = nil
    for part, origColor in pairs(mapColorOrigParts) do
        if part and part.Parent then pcall(function() part.Color = origColor end) end
    end
    mapColorOrigParts = {}
    mapColorActive = false
end

local function updateMapColor()
    if not Config.Visuals.MapColor then
        if mapColorActive then clearMapColor() end
        return
    end
    mapColorActive = true
    applyMapColor(getMapColor())
end

-- ============ FOG ============
local fogOriginal = nil
local fogActive = false

local function saveOriginalFog()
    if fogOriginal then return end
    fogOriginal = {
        FogEnd = Lighting.FogEnd, FogStart = Lighting.FogStart, FogColor = Lighting.FogColor,
        Ambient = Lighting.Ambient, OutdoorAmbient = Lighting.OutdoorAmbient,
        Brightness = Lighting.Brightness,
        EnvironmentDiffuseScale = Lighting.EnvironmentDiffuseScale,
        EnvironmentSpecularScale = Lighting.EnvironmentSpecularScale,
    }
end

local function applyFog()
    local color = fogColorValues[Config.Visuals.FogColorIndex]
    if not color then return end
    saveOriginalFog()
    fogActive = true
    Lighting.FogEnd = Config.Visuals.FogDistance
    Lighting.FogStart = 0
    Lighting.FogColor = color
    Lighting.Ambient = color
    Lighting.OutdoorAmbient = color
    Lighting.Brightness = 2.5
    Lighting.EnvironmentDiffuseScale = 0.8
    Lighting.EnvironmentSpecularScale = 0.5
    local atm = Lighting:FindFirstChildOfClass("Atmosphere")
    if atm then
        atm.Density = 0.4
        atm.Offset = 0
        atm.Color = color
        atm.Decay = color
        atm.Glare = 0
        atm.Haze = 0
    end
end

local function clearFog()
    if not fogActive or not fogOriginal then return end
    Lighting.FogEnd = fogOriginal.FogEnd
    Lighting.FogStart = fogOriginal.FogStart
    Lighting.FogColor = fogOriginal.FogColor
    Lighting.Ambient = fogOriginal.Ambient
    Lighting.OutdoorAmbient = fogOriginal.OutdoorAmbient
    Lighting.Brightness = fogOriginal.Brightness
    Lighting.EnvironmentDiffuseScale = fogOriginal.EnvironmentDiffuseScale
    Lighting.EnvironmentSpecularScale = fogOriginal.EnvironmentSpecularScale
    fogActive = false
end

local fogLastState = false
local fogLastIndex = 0
local fogLastDistance = 0

local function updateFog()
    if Config.Visuals.MapColor then
        if fogActive then clearFog() end
        return
    end
    if Config.Visuals.FogEnabled then
        local color = fogColorValues[Config.Visuals.FogColorIndex]
        if not color then return end
        if not fogLastState or fogLastIndex ~= Config.Visuals.FogColorIndex or fogLastDistance ~= Config.Visuals.FogDistance then
            fogLastState = true
            fogLastIndex = Config.Visuals.FogColorIndex
            fogLastDistance = Config.Visuals.FogDistance
            applyFog()
        end
    else
        if fogLastState then fogLastState = false; clearFog() end
    end
end

-- ============ GAME QUALITY ============
local qualityOriginal = nil

local function saveOriginalQuality()
    if qualityOriginal then return end
    qualityOriginal = {
        Brightness = Lighting.Brightness, ClockTime = Lighting.ClockTime,
        GlobalShadows = Lighting.GlobalShadows,
        FogEnd = Lighting.FogEnd, FogStart = Lighting.FogStart, FogColor = Lighting.FogColor,
        Ambient = Lighting.Ambient, OutdoorAmbient = Lighting.OutdoorAmbient,
        EnvironmentDiffuseScale = Lighting.EnvironmentDiffuseScale,
        EnvironmentSpecularScale = Lighting.EnvironmentSpecularScale,
    }
    for _, eff in ipairs(Lighting:GetChildren()) do
        if eff:IsA("PostEffect") then
            eff:SetAttribute("VarumaOrigEnabled", eff.Enabled)
        end
    end
end

local function applyQuality(level)
    saveOriginalQuality()
    if level == 1 then
        Lighting.Brightness = 1; Lighting.ClockTime = 12; Lighting.GlobalShadows = false
        Lighting.FogEnd = 500; Lighting.FogStart = 0
        Lighting.Ambient = Color3.fromRGB(80, 80, 80)
        Lighting.OutdoorAmbient = Color3.fromRGB(80, 80, 80)
        Lighting.EnvironmentDiffuseScale = 0; Lighting.EnvironmentSpecularScale = 0
        for _, eff in ipairs(Lighting:GetChildren()) do
            if eff:IsA("PostEffect") then eff.Enabled = false end
            if eff:IsA("Atmosphere") then eff.Density = 1; eff.Haze = 0 end
        end
    elseif level == 2 then
        Lighting.Brightness = 2; Lighting.ClockTime = 14; Lighting.GlobalShadows = true
        Lighting.FogEnd = 1000; Lighting.FogStart = 0
        Lighting.Ambient = Color3.fromRGB(120, 120, 120)
        Lighting.OutdoorAmbient = Color3.fromRGB(120, 120, 120)
        Lighting.EnvironmentDiffuseScale = 0.3; Lighting.EnvironmentSpecularScale = 0.3
        for _, eff in ipairs(Lighting:GetChildren()) do
            if eff:IsA("PostEffect") then
                local orig = eff:GetAttribute("VarumaOrigEnabled")
                eff.Enabled = orig ~= false
            end
        end
    elseif level == 3 then
        Lighting.Brightness = 2.5; Lighting.ClockTime = 14; Lighting.GlobalShadows = true
        Lighting.FogEnd = 2000; Lighting.FogStart = 0
        Lighting.Ambient = Color3.fromRGB(160, 160, 160)
        Lighting.OutdoorAmbient = Color3.fromRGB(160, 160, 160)
        Lighting.EnvironmentDiffuseScale = 0.6; Lighting.EnvironmentSpecularScale = 0.6
        for _, eff in ipairs(Lighting:GetChildren()) do
            if eff:IsA("PostEffect") then
                local orig = eff:GetAttribute("VarumaOrigEnabled")
                eff.Enabled = orig ~= false
            end
        end
    elseif level == 4 then
        Lighting.Brightness = 3; Lighting.ClockTime = 14; Lighting.GlobalShadows = true
        Lighting.FogEnd = 100000; Lighting.FogStart = 0
        Lighting.Ambient = Color3.fromRGB(200, 200, 200)
        Lighting.OutdoorAmbient = Color3.fromRGB(200, 200, 200)
        Lighting.EnvironmentDiffuseScale = 1; Lighting.EnvironmentSpecularScale = 1
        for _, eff in ipairs(Lighting:GetChildren()) do
            if eff:IsA("PostEffect") then eff.Enabled = true end
        end
    end
end

local lastQuality = 0
local function updateQuality()
    local q = Config.Visuals.GameQuality or 1
    if q ~= lastQuality then
        lastQuality = q
        applyQuality(q)
    end
end

-- ============ SELF TRAIL ============
local TRAIL_MAX_POINTS = 40
local TRAIL_SAMPLE_DIST = 0.08
local selfTrailData = nil
local trailFading = false
local trailFadeAlpha = 1
local trailRainbowHue = 0

local function getSelfTrail()
    if not selfTrailData then
        local segments = {}
        for i = 1, TRAIL_MAX_POINTS - 1 do
            local l = trackDrawing(Drawing.new("Line"))
            l.Thickness = 4.5; l.Transparency = 1; l.Visible = false
            segments[i] = l
        end
        selfTrailData = {segments = segments, history = {}, lastPoint = nil}
    end
    return selfTrailData
end

local function getTrailColor()
    local idx = Config.Visuals.TrailColor
    if idx == 6 then
        trailRainbowHue = (trailRainbowHue + 0.015) % 1
        return Color3.fromHSV(trailRainbowHue, 0.85, 1)
    end
    return trailColorValues[idx] or trailColorValues[1]
end

local function updateSelfTrail()
    local char = LocalPlayer.Character
    if not char then
        if selfTrailData then for _, l in ipairs(selfTrailData.segments) do l.Visible = false end end
        return
    end
    local hrp = char:FindFirstChild("HumanoidRootPart")
    local hum = char:FindFirstChildOfClass("Humanoid")
    if not hrp or not hum or hum.Health <= 0 then
        if selfTrailData then for _, l in ipairs(selfTrailData.segments) do l.Visible = false end end
        return
    end
    local speed = 0
    if hrp.AssemblyLinearVelocity then
        local v = hrp.AssemblyLinearVelocity
        speed = math.sqrt(v.X * v.X + v.Z * v.Z)
    end
    local isIdle = Config.Visuals.TrailStopWhenIdle and speed < (Config.Visuals.TrailIdleThreshold or 1)
    local t = getSelfTrail()
    if isIdle then
        if not trailFading then trailFading = true; trailFadeAlpha = 1 end
        trailFadeAlpha = trailFadeAlpha - 0.06
        if trailFadeAlpha <= 0 then
            trailFadeAlpha = 0
            for _, l in ipairs(t.segments) do l.Visible = false end
            t.history = {}; t.lastPoint = nil
            return
        end
    else
        trailFading = false
        if trailFadeAlpha < 1 then trailFadeAlpha = math.min(1, trailFadeAlpha + 0.1) end
        local backPoint = (hrp.CFrame * CFrame.new(0, 0, 0.8)).Position
        if not t.lastPoint or (backPoint - t.lastPoint).Magnitude >= TRAIL_SAMPLE_DIST then
            table.insert(t.history, 1, backPoint)
            t.lastPoint = backPoint
            if #t.history > TRAIL_MAX_POINTS then table.remove(t.history) end
        end
    end
    local baseColor = getTrailColor()
    for i = 1, #t.segments do
        local a = t.history[i]; local b = t.history[i + 1]
        if a and b then
            local sp1, on1 = Camera:WorldToViewportPoint(a)
            local sp2, on2 = Camera:WorldToViewportPoint(b)
            if on1 and on2 then
                local alpha = (1 - (i / #t.segments)) * trailFadeAlpha
                t.segments[i].From = Vector2.new(sp1.X, sp1.Y)
                t.segments[i].To = Vector2.new(sp2.X, sp2.Y)
                if Config.Visuals.TrailColor == 6 then
                    local segHue = (trailRainbowHue + (i / #t.segments) * 0.5) % 1
                    t.segments[i].Color = Color3.fromHSV(segHue, 0.85, 1)
                else
                    t.segments[i].Color = baseColor
                end
                t.segments[i].Transparency = 1 - alpha * 0.9
                t.segments[i].Thickness = 4.5 * alpha + 1
                t.segments[i].Visible = alpha > 0.02
            else t.segments[i].Visible = false end
        else t.segments[i].Visible = false end
    end
end

-- ============ TRACERS ============
local function spawnTracer(startPos, endPos, color)
    local line = trackDrawing(Drawing.new("Line"))
    line.Thickness = 3.5; line.Transparency = 1; line.Color = color; line.Visible = false; line.ZIndex = 999
    table.insert(Drawings.Tracers, {line = line, startWorld = startPos, endWorld = endPos, life = 1.2, age = 0})
end

local function updateTracers(dt)
    for i = #Drawings.Tracers, 1, -1 do
        local t = Drawings.Tracers[i]
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
                table.remove(Drawings.Tracers, i)
            end
        end
    end
end

-- ============ TOOL HOOK ============
local function attachToolHandlers(tool)
    if not tool:IsA("Tool") then return end
    if tool:GetAttribute("VarumaHooked") then return end
    tool:SetAttribute("VarumaHooked", true)
    trackConnection(tool.Activated:Connect(function()
        if Config.Legit.HitMarker then spawnHitMarker() end
        if Config.Legit.Hitsound then playHitsound() end
    end))
end

local function hookLocalChar(char)
    trackConnection(char.ChildAdded:Connect(function(c)
        if c:IsA("Tool") then task.defer(attachToolHandlers, c) end
    end))
    for _, c in ipairs(char:GetChildren()) do
        if c:IsA("Tool") then task.defer(attachToolHandlers, c) end
    end
end
if LocalPlayer.Character then hookLocalChar(LocalPlayer.Character) end
trackConnection(LocalPlayer.CharacterAdded:Connect(hookLocalChar))

-- ============ AUTO RELOAD ============
task.spawn(function()
    while not State.isUnloaded do
        task.wait(0.2)
        if State.isUnloaded then break end
        if Config.Legit.AutoReload and LocalPlayer.Character then
            local tool = LocalPlayer.Character:FindFirstChildOfClass("Tool")
            if tool and GUN_NAMES[tool.Name] then
                local ammo = tool:GetAttribute("Ammo") or tool:GetAttribute("AmmoCount") or tool:GetAttribute("Clip") or tool:GetAttribute("Bullets")
                if ammo and ammo <= 0 then
                    local bp = LocalPlayer:FindFirstChild("Backpack")
                    if bp then
                        local other = bp:FindFirstChildOfClass("Tool")
                        if other then
                            tool.Parent = bp; other.Parent = LocalPlayer.Character
                            task.wait(0.08)
                            other.Parent = bp; tool.Parent = LocalPlayer.Character
                        end
                    end
                end
            end
        end
    end
end)

-- ============ FLY + JOYSTICK ============
local flyDirection = Vector3.new(0, 0, 0)

local function getMoveVector()
    local mv = Vector3.new(0, 0, 0)
    pcall(function()
        local pm = require(LocalPlayer:WaitForChild("PlayerScripts"):WaitForChild("PlayerModule"))
        local c = pm:GetControls()
        if c and c.GetMoveVector then local v = c:GetMoveVector(); if v then mv = v end end
    end)
    return mv
end

local JoystickFrame = Instance.new("Frame")
JoystickFrame.Name = "VarumaJoystick"
JoystickFrame.Parent = ScreenGui
JoystickFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 28)
JoystickFrame.BackgroundTransparency = 0.55
JoystickFrame.BorderSizePixel = 0
JoystickFrame.AnchorPoint = Vector2.new(1, 0.5)
JoystickFrame.Position = UDim2.new(1, -50, 0.5, 0)
JoystickFrame.Size = UDim2.new(0, 110, 0, 110)
JoystickFrame.ZIndex = 20
JoystickFrame.Visible = false
JoystickFrame.Active = true

local JSCorner = Instance.new("UICorner"); JSCorner.CornerRadius = UDim.new(1, 0); JSCorner.Parent = JoystickFrame
local JSStroke = Instance.new("UIStroke"); JSStroke.Color = MURDERER_COLOR; JSStroke.Transparency = 0.4; JSStroke.Thickness = 2; JSStroke.Parent = JoystickFrame

local JSInner = Instance.new("Frame")
JSInner.Parent = JoystickFrame
JSInner.BackgroundColor3 = MURDERER_COLOR
JSInner.BackgroundTransparency = 0.2
JSInner.BorderSizePixel = 0
JSInner.AnchorPoint = Vector2.new(0.5, 0.5)
JSInner.Position = UDim2.new(0.5, 0, 0.5, 0)
JSInner.Size = UDim2.new(0, 48, 0, 48)
JSInner.ZIndex = 21
local JSInnerCorner = Instance.new("UICorner"); JSInnerCorner.CornerRadius = UDim.new(1, 0); JSInnerCorner.Parent = JSInner
local JSInnerStroke = Instance.new("UIStroke"); JSInnerStroke.Color = Color3.fromRGB(255,255,255); JSInnerStroke.Transparency = 0.2; JSInnerStroke.Thickness = 1.5; JSInnerStroke.Parent = JSInner

local JSArrow = Instance.new("TextLabel")
JSArrow.Parent = JSInner; JSArrow.BackgroundTransparency = 1; JSArrow.Size = UDim2.new(1, 0, 1, 0)
JSArrow.Font = Enum.Font.GothamBlack; JSArrow.Text = "✦"
JSArrow.TextColor3 = Color3.fromRGB(255,255,255); JSArrow.TextSize = 18
JSArrow.TextTransparency = 0.1; JSArrow.ZIndex = 22

local JSLabel = Instance.new("TextLabel")
JSLabel.Parent = JoystickFrame; JSLabel.BackgroundTransparency = 1
JSLabel.AnchorPoint = Vector2.new(0.5, 1); JSLabel.Position = UDim2.new(0.5, 0, 0, -6)
JSLabel.Size = UDim2.new(1, 0, 0, 12)
JSLabel.Font = Enum.Font.GothamBold; JSLabel.Text = "FLY"
JSLabel.TextColor3 = MURDERER_COLOR; JSLabel.TextSize = 9; JSLabel.ZIndex = 21

local TouchArea = Instance.new("TextButton")
TouchArea.Parent = JoystickFrame
TouchArea.BackgroundTransparency = 1
TouchArea.Size = UDim2.new(1, 0, 1, 0)
TouchArea.Text = ""
TouchArea.ZIndex = 25
TouchArea.AutoButtonColor = false
TouchArea.Active = true

local joystickActive = false
local joystickInputPos = Vector2.new(0, 0)

local function updateJoystickFromAbs(absPos)
    local center = Vector2.new(
        JoystickFrame.AbsolutePosition.X + JoystickFrame.AbsoluteSize.X / 2,
        JoystickFrame.AbsolutePosition.Y + JoystickFrame.AbsoluteSize.Y / 2
    )
    local delta = Vector2.new(absPos.X - center.X, absPos.Y - center.Y)
    local maxR = JoystickFrame.AbsoluteSize.X / 2 - 18
    local mag = delta.Magnitude
    if mag > maxR then delta = delta.Unit * maxR; mag = maxR end
    JSInner.Position = UDim2.new(0.5, delta.X, 0.5, delta.Y)
    joystickInputPos = Vector2.new(delta.X / maxR, delta.Y / maxR)
end

local function resetJoystick()
    joystickActive = false
    TweenService:Create(JSInner, TweenInfo.new(0.15), {Position = UDim2.new(0.5, 0, 0.5, 0)}):Play()
    joystickInputPos = Vector2.new(0, 0)
end

TouchArea.InputBegan:Connect(function(input)
    if State.isUnloaded then return end
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        joystickActive = true
        updateJoystickFromAbs(input.Position)
    end
end)

trackConnection(UserInputService.InputChanged:Connect(function(input)
    if State.isUnloaded then return end
    if not joystickActive then return end
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        updateJoystickFromAbs(input.Position)
    end
end))

trackConnection(UserInputService.InputEnded:Connect(function(input)
    if State.isUnloaded then return end
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        if joystickActive then resetJoystick() end
    end
end))

trackConnection(RunService.Stepped:Connect(function()
    if State.isUnloaded then return end
    JoystickFrame.Visible = Config.Misc.Fly and Config.Misc.FlyShowJoystick
    if not Config.Misc.Fly then return end
    local char = LocalPlayer.Character
    if not char then return end
    local hrp = char:FindFirstChild("HumanoidRootPart")
    local hum = char:FindFirstChildOfClass("Humanoid")
    if not hrp or not hum or hum.Health <= 0 then return end
    local camCF = Camera.CFrame
    local forward = camCF.LookVector
    local right = camCF.RightVector
    local hasInput = false
    local dir = nil
    if joystickActive and joystickInputPos.Magnitude > 0.08 then
        hasInput = true
        local jx = joystickInputPos.X
        local jy = -joystickInputPos.Y
        local ff = Vector3.new(forward.X, 0, forward.Z)
        local fr = Vector3.new(right.X, 0, right.Z)
        if ff.Magnitude > 0 then ff = ff.Unit end
        if fr.Magnitude > 0 then fr = fr.Unit end
        dir = (ff * jy + fr * jx)
        if dir.Magnitude > 0 then
            dir = dir.Unit
            if Config.Misc.FlyVertical and jy > 0.3 then
                dir = Vector3.new(dir.X, forward.Y * jy * 1.2, dir.Z)
                if dir.Magnitude > 0 then dir = dir.Unit end
            end
        end
    elseif Config.Misc.FlyUseJoystick then
        local mv = getMoveVector()
        if mv.Magnitude > 0.08 then
            hasInput = true
            local mw = (forward * mv.Z + right * mv.X)
            if mw.Magnitude > 0.01 then dir = mw.Unit end
        end
    end
    if not hasInput or not dir then
        if hrp.AssemblyLinearVelocity.Magnitude > 5 then
            hrp.AssemblyLinearVelocity = hrp.AssemblyLinearVelocity * 0.85
        end
        return
    end
    if not Config.Misc.FlyVertical then
        dir = Vector3.new(dir.X, 0, dir.Z)
        if dir.Magnitude > 0 then dir = dir.Unit end
    end
    flyDirection = dir
    hrp.AssemblyLinearVelocity = dir * (Config.Misc.FlySpeed or 3) * 50
end))

-- ============ AUTO FARM COINS ============
local function isRealCoin(obj)
    if not obj or not obj.Parent then return false end
    if not obj:IsA("BasePart") then return false end
    local lower = string.lower(obj.Name)
    local nameMatch = string.find(lower, "coin") or string.find(lower, "money") or string.find(lower, "cash")
    if not nameMatch then return false end
    local size = obj.Size
    if size.X > 8 or size.Y > 8 or size.Z > 8 then return false end
    if obj:FindFirstAncestorOfClass("Tool") then return false end
    if obj:FindFirstAncestorOfClass("Accessory") then return false end
    return true
end

local function findCoins()
    local coins = {}
    local seen = {}
    local function scan(container, depth)
        if depth > 4 then return end
        if not container then return end
        for _, obj in ipairs(container:GetChildren()) do
            if obj:IsA("BasePart") and isRealCoin(obj) then
                if not seen[obj] then seen[obj] = true; table.insert(coins, obj) end
            elseif obj:IsA("Model") or obj:IsA("Folder") then
                scan(obj, depth + 1)
            end
        end
    end
    scan(Workspace, 1)
    local rs = game:GetService("ReplicatedStorage")
    scan(rs, 1)
    for _, p in ipairs(Players:GetPlayers()) do
        if p.Character then scan(p.Character, 1) end
    end
    return coins
end

local farming = false
task.spawn(function()
    while not State.isUnloaded do
        task.wait(0.3)
        if State.isUnloaded then break end
        if Config.Misc.AutoFarmCoins and not farming then
            local char = LocalPlayer.Character
            if char then
                local hrp = char:FindFirstChild("HumanoidRootPart")
                local hum = char:FindFirstChildOfClass("Humanoid")
                if hrp and hum and hum.Health > 0 then
                    farming = true
                    local originalCF = hrp.CFrame
                    local coins = findCoins()
                    if #coins == 0 then
                        farming = false
                        task.wait(1)
                    else
                        for _, c in ipairs(coins) do
                            c:SetAttribute("VarumaDist", (c.Position - hrp.Position).Magnitude)
                        end
                        table.sort(coins, function(a, b) 
                            return (a:GetAttribute("VarumaDist") or math.huge) < (b:GetAttribute("VarumaDist") or math.huge)
                        end)
                        for _, coin in ipairs(coins) do
                            if not Config.Misc.AutoFarmCoins then break end
                            if coin and coin.Parent then
                                pcall(function() hrp.CFrame = CFrame.new(coin.Position + Vector3.new(0, 1, 0)) end)
                                task.wait(0.08)
                                pcall(function()
                                    firetouchinterest(hrp, coin, 0)
                                    task.wait(0.03)
                                    firetouchinterest(hrp, coin, 1)
                                end)
                                task.wait(0.4)
                            end
                        end
                        if hrp and hrp.Parent then pcall(function() hrp.CFrame = originalCF end) end
                    end
                    farming = false
                    task.wait(0.5)
                end
            end
        end
    end
end)

-- ============ CARDS ============
AddCard("rage", "Ragebot", "auto target", false, function(v) Config.Rage.Enabled = v end, nil, nil, "left")
AddCard("rage", "Spinbot", "spin rotation", false, function(v) Config.Rage.Spinbot = v end, nil, {
    {kind = "slider", title = "Speed Deg/Tick", min = 5, max = 180, default = 45, callback = function(v) Config.Rage.SpinbotSpeed = v end}
}, "right")
AddCard("rage", "Silent Aim", "hit ignores crosshair", false, function(v) Config.Rage.SilentAim = v end, nil, {
    {kind = "slider", title = "FOV", min = 30, max = 400, default = 200, callback = function(v) Config.Rage.SilentAimFOV = v end},
    {kind = "cycle", title = "Target", options = aimTargetNames, default = 1, callback = function(i) Config.Rage.SilentAimTarget = i end}
}, "left")
AddCard("rage", "Visible Only", "skip walls", true, function(v) Config.Rage.SilentAimVisibleOnly = v end, nil, nil, "right")
AddCard("rage", "Anti-Murderer", "tp away", false, function(v) Config.Rage.AntiMurderer = v end, nil, {
    {kind = "slider", title = "Range", min = 5, max = 60, default = 20, callback = function(v) Config.Rage.AntiMurdererRange = v end}
}, "left")
AddCard("rage", "Kill Feed", "death notifications", true, function(v) Config.Rage.KillFeed = v end, nil, nil, "right")

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
end, "left")

AddActionCard("rage", "Kill All", "murderer only", "KILL ALL", function()
    if not hasKnife() then return end
    local myChar = LocalPlayer.Character
    if not myChar then return end
    local myHRP = myChar:FindFirstChild("HumanoidRootPart")
    if not myHRP then return end
    local knife = myChar:FindFirstChildOfClass("Tool")
    if not knife or not KNIFE_NAMES[knife.Name] then
        local bp = LocalPlayer:FindFirstChild("Backpack")
        if bp then
            for _, t in ipairs(bp:GetChildren()) do
                if t:IsA("Tool") and KNIFE_NAMES[t.Name] then knife = t; break end
            end
        end
    end
    if not knife then return end
    knife.Parent = myChar
    task.wait(0.05)
    local handle = knife:FindFirstChild("Handle")
    if not handle then return end
    local targets = {}
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and isPlayerAlive(player) then
            local tHRP = player.Character:FindFirstChild("HumanoidRootPart")
            if tHRP then table.insert(targets, {player = player, hrp = tHRP, dist = (tHRP.Position - myHRP.Position).Magnitude}) end
        end
    end
    table.sort(targets, function(a, b) return a.dist < b.dist end)
    local originalCF = myHRP.CFrame
    for _, t in ipairs(targets) do
        if t.hrp and t.hrp.Parent and isPlayerAlive(t.player) then
            myHRP.CFrame = t.hrp.CFrame * CFrame.new(0, 0, -1.5)
            task.wait(math.random(5, 15) / 100)
            for _, part in ipairs(t.player.Character:GetDescendants()) do
                if part:IsA("BasePart") then
                    pcall(function()
                        firetouchinterest(handle, part, 0)
                        firetouchinterest(handle, part, 1)
                    end)
                end
            end
            task.wait(math.random(3, 8) / 100)
        end
    end
    task.wait(0.1)
    if myHRP and myHRP.Parent then myHRP.CFrame = originalCF end
end, "right")

AddCard("legit", "Sheriff Aimbot", "auto lock on head", false, function(v) Config.Legit.SheriffAimbot = v end, nil, {
    {kind = "slider", title = "FOV", min = 30, max = 400, default = 120, callback = function(v) Config.Legit.FOVRadius = v end},
    {kind = "slider", title = "Smoothness %", min = 5, max = 100, default = 25, callback = function(v) Config.Legit.AimSmoothness = v / 100 end},
    {kind = "cycle", title = "Target", options = aimTargetNames, default = 1, callback = function(i) Config.Legit.AimTarget = i end}
}, "left")
AddCard("legit", "FOV Circle", "target filter", true, function(v) Config.Legit.FOVShow = v end, nil, {
    {kind = "cycle", title = "Color", options = fovColorNames, default = 1, callback = function(i) Config.Legit.FOVColor = i end}
}, "right")
AddCard("legit", "Triggerbot", "auto fire", false, function(v) Config.Legit.Triggerbot = v end, nil, {
    {kind = "slider", title = "Radius (px)", min = 5, max = 40, default = 15, callback = function(v) Config.Legit.TriggerRadius = v end}
}, "left")
AddCard("legit", "Hit Marker", "X on hit", false, function(v) Config.Legit.HitMarker = v end, nil, nil, "right")
AddCard("legit", "Hitsound", "sound on hit", false, function(v) Config.Legit.Hitsound = v end, nil, {
    {kind = "cycle", title = "Type", options = hitsoundNames, default = 1, callback = function(i) Config.Legit.HitsoundType = i end},
    {kind = "slider", title = "Volume %", min = 0, max = 100, default = 50, callback = function(v) Config.Legit.HitsoundVolume = v / 100 end}
}, "left")
AddCard("legit", "Auto Reload", "swap to reload", false, function(v) Config.Legit.AutoReload = v end, nil, nil, "right")

AddCard("visuals", "Box ESP", "corner box", false, function(v) Config.Visuals.BoxESP = v end, nil, {
    {kind = "slider", title = "Max Dist", min = 50, max = 2000, default = 500, callback = function(v) Config.Visuals.ESPMaxDistance = v end}
}, "left")
AddCard("visuals", "Skeleton ESP", "bone skeleton", false, function(v) Config.Visuals.SkeletonESP = v end, nil, nil, "right")
AddCard("visuals", "Role Chams", "player highlight", true, function(v) Config.Visuals.Chams = v end, nil, nil, "left")
AddCard("visuals", "Gun Chams", "gun highlight", true, function(v) Config.Visuals.GunChams = v end, nil, nil, "right")
AddCard("visuals", "Bullet Tracers", "shot line", false, function(v) Config.Visuals.BulletTracers = v end, nil, nil, "left")
AddCard("visuals", "Player Trails", "motion trail", false, function(v) Config.Visuals.PlayerTrails = v end, nil, {
    {kind = "cycle", title = "Color", options = trailColorNames, default = 1, callback = function(i) Config.Visuals.TrailColor = i end},
    {kind = "slider", title = "Idle Threshold", min = 1, max = 20, default = 1, callback = function(v) Config.Visuals.TrailIdleThreshold = v end}
}, "right")
AddCard("visuals", "Jump Effect", "burst on jump", false, function(v) Config.Visuals.JumpEffect = v end, nil, {
    {kind = "cycle", title = "Color", options = jumpColorNames, default = 2, callback = function(i) Config.Visuals.JumpEffectColor = i end}
}, "left")
AddCard("visuals", "Jump Ring", "кольцо под ногами", false, function(v) Config.Visuals.JumpRing = v end, nil, {
    {kind = "cycle", title = "Color", options = ringColorNames, default = 2, callback = function(i) Config.Visuals.JumpRingColor = i end},
    {kind = "slider", title = "Radius", min = 2, max = 15, default = 5, callback = function(v) Config.Visuals.JumpRingRadius = v end}
}, "right")
AddCard("visuals", "Falling Dots", "падающие точки", false, function(v) Config.Visuals.FallingDots = v end, nil, {
    {kind = "slider", title = "Count", min = 10, max = 300, default = 100, callback = function(v) Config.Visuals.FallingDotsCount = v end},
    {kind = "slider", title = "Speed", min = 0.5, max = 10, default = 2, callback = function(v) Config.Visuals.FallingDotsSpeed = v end},
    {kind = "cycle", title = "Color", options = fallingDotColorNames, default = 7, callback = function(i) Config.Visuals.FallingDotsColor = i end}
}, "left")
AddCard("visuals", "Map Color", "перекраска карты", false, function(v) Config.Visuals.MapColor = v end, nil, {
    {kind = "cycle", title = "Color", options = mapColorNames, default = 1, callback = function(i) Config.Visuals.MapColorIndex = i end},
    {kind = "slider", title = "Intensity %", min = 10, max = 100, default = 70, callback = function(v) Config.Visuals.MapColorIntensity = v end},
    {kind = "cycle", title = "Mode", options = {"Light", "Full"}, default = 1, callback = function(i) Config.Visuals.MapColorMode = i end}
}, "right")
AddCard("visuals", "Third Person", "camera behind", false, function(v) Config.Visuals.ThirdPerson = v end, nil, nil, "left")
AddCard("visuals", "Game Quality", "качество графики", false, function(v) end, nil, {
    {kind = "cycle", title = "Quality", options = qualityNames, default = 2, callback = function(i) Config.Visuals.GameQuality = i end}
}, "right")
AddCard("visuals", "Custom Fog", "atmosphere", false, function(v) Config.Visuals.FogEnabled = v end, nil, {
    {kind = "slider", title = "Distance", min = 50, max = 3000, default = 500, callback = function(v) Config.Visuals.FogDistance = v end},
    {kind = "cycle", title = "Color", options = fogColorNames, default = 1, callback = function(i) Config.Visuals.FogColorIndex = i end}
}, "left")

AddCard("fling", "Fling Module", "enable fling", false, function(v) Config.Fling.Enabled = v end, nil, {
    {kind = "slider", title = "Power", min = 50000, max = 500000, default = 150000, callback = function(v) Config.Fling.FlingPower = v end},
    {kind = "slider", title = "Duration (s)", min = 3, max = 20, default = 8, callback = function(v) Config.Fling.Duration = v end}
}, "left")
AddCard("fling", "Anti-Fling", "protect yourself", true, function(v) Config.Fling.AntiFling = v end, nil, nil, "right")

-- FLING TARGETS
local flingContent = contentFrames["fling"]
local FlingTableLabel = Instance.new("TextLabel")
FlingTableLabel.Parent = flingContent
FlingTableLabel.BackgroundTransparency = 1
FlingTableLabel.Position = UDim2.new(0, 0, 0, 160)
FlingTableLabel.Size = UDim2.new(1, 0, 0, 14)
FlingTableLabel.Font = Enum.Font.GothamBold
FlingTableLabel.Text = "TARGETS (alive only)"
FlingTableLabel.TextColor3 = MURDERER_COLOR
FlingTableLabel.TextSize = 9
FlingTableLabel.TextXAlignment = Enum.TextXAlignment.Left
FlingTableLabel.ZIndex = 52

local FlingListFrame = Instance.new("ScrollingFrame")
FlingListFrame.Parent = flingContent
FlingListFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 26)
FlingListFrame.BackgroundTransparency = 0.1
FlingListFrame.BorderSizePixel = 0
FlingListFrame.Position = UDim2.new(0, 0, 0, 178)
FlingListFrame.Size = UDim2.new(1, 0, 0, 300)
FlingListFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
FlingListFrame.ScrollBarThickness = 3
FlingListFrame.ScrollBarImageColor3 = MURDERER_COLOR
FlingListFrame.ZIndex = 52
local FLCorner = Instance.new("UICorner"); FLCorner.CornerRadius = UDim.new(0,5); FLCorner.Parent = FlingListFrame
local FLStroke = Instance.new("UIStroke"); FLStroke.Color = Color3.fromRGB(255,255,255); FLStroke.Transparency = 0.85; FLStroke.Parent = FlingListFrame
local FLList = Instance.new("UIListLayout"); FLList.Parent = FlingListFrame
FLList.Padding = UDim.new(0, 3); FLList.SortOrder = Enum.SortOrder.LayoutOrder
local FLPad = Instance.new("UIPadding"); FLPad.Parent = FlingListFrame
FLPad.PaddingTop = UDim.new(0, 4); FLPad.PaddingLeft = UDim.new(0, 4); FLPad.PaddingRight = UDim.new(0, 4)

local flingButtons = {}
local function rebuildFlingList()
    for _, btn in pairs(flingButtons) do 
        if btn and btn.Parent then btn:Destroy() end 
    end
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
            btn.Text = "  " .. player.Name .. "   [" .. getRoleName(player) .. "]   " 
                .. (alive and tostring(math.floor(getDistanceToPlayer(player))) .. "m" or "DEAD")
            btn.TextSize = 8
            btn.TextXAlignment = Enum.TextXAlignment.Left
            btn.TextColor3 = alive and getRoleColor(player) or Color3.fromRGB(90, 90, 100)
            btn.AutoButtonColor = alive
            btn.ZIndex = 53
            local bc = Instance.new("UICorner"); bc.CornerRadius = UDim.new(0,4); bc.Parent = btn
            local bs = Instance.new("UIStroke")
            bs.Color = alive and getRoleColor(player) or Color3.fromRGB(60, 60, 70)
            bs.Transparency = alive and 0.7 or 0.85
            bs.Parent = btn
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
trackConnection(Players.PlayerAdded:Connect(function() task.defer(rebuildFlingList) end))
trackConnection(Players.PlayerRemoving:Connect(function(p)
    if flingButtons[p] then flingButtons[p]:Destroy(); flingButtons[p] = nil end
    task.defer(rebuildFlingList)
end))
task.spawn(function()
    while not State.isUnloaded do
        task.wait(2)
        if State.isUnloaded then break end
        pcall(rebuildFlingList)
    end
end)

AddCard("misc", "Auto Gun Pick", "instant pickup", false, function(v) Config.Misc.AutoGunPick = v end, nil, nil, "left")
AddCard("misc", "Speed Hack", "custom speed", false, function(v) Config.Misc.WalkSpeedEnabled = v end, nil, {
    {kind = "slider", title = "Speed", min = 16, max = 100, default = 16, callback = function(v) Config.Misc.WalkSpeed = v end}
}, "right")
AddCard("misc", "Infinite Jump", "hold space", false, function(v) Config.Misc.Bhop = v end, nil, nil, "left")
AddCard("misc", "Auto Farm Coins", "farm coins", false, function(v) Config.Misc.AutoFarmCoins = v end, nil, nil, "right")
AddCard("misc", "Anti-AFK", "no kick", true, function(v) Config.Misc.AntiAFK = v end, nil, nil, "left")
AddCard("misc", "Anti-Void", "respawn if falling", true, function(v) Config.Misc.AntiVoid = v end, nil, nil, "right")
AddCard("misc", "Auto-Sheep", "follow murderer", false, function(v) Config.Misc.AutoSheep = v end, nil, {
    {kind = "slider", title = "Distance", min = 5, max = 40, default = 15, callback = function(v) Config.Misc.AutoSheepDist = v end}
}, "left")
AddCard("misc", "Fly (Налёт)", "лететь куда смотришь", false, function(v) Config.Misc.Fly = v end, nil, {
    {kind = "slider", title = "Speed", min = 1, max = 15, default = 3, callback = function(v) Config.Misc.FlySpeed = v end},
    {kind = "cycle", title = "Joystick", options = {"Off", "On"}, default = 2, callback = function(i) Config.Misc.FlyUseJoystick = (i == 2) end},
    {kind = "cycle", title = "Vertical", options = {"Off", "On"}, default = 2, callback = function(i) Config.Misc.FlyVertical = (i == 2) end},
    {kind = "cycle", title = "Show Stick", options = {"Off", "On"}, default = 2, callback = function(i) Config.Misc.FlyShowJoystick = (i == 2) end}
}, "right")

AddActionCard("misc", "Server Hop", "rejoin", "REJOIN", function() TeleportService:Teleport(game.PlaceId, LocalPlayer) end, "left")
AddActionCard("misc", "Unload", "remove script", "UNLOAD", function()
    State.isUnloaded = true
    pcall(function()
        for _, c in ipairs(_G.VarumaHack.connections) do pcall(function() c:Disconnect() end) end
        for _, d in ipairs(_G.VarumaHack.drawings) do pcall(function() d:Remove() end) end
    end)
    _G.VarumaHack = nil
    pcall(function() ScreenGui:Destroy() end)
    print("[v9.0] Unloaded")
end, "right")

-- ============ MAIN LOOPS ============
local fpsCount, fpsTime, currentFPS = 0, 0, 0
local lastStats, lastFPS = 0, 0

trackConnection(RunService.RenderStepped:Connect(function(dt)
    if State.isUnloaded then return end
    currentFrameCounter = currentFrameCounter + 1

    fpsCount = fpsCount + 1; fpsTime = fpsTime + dt
    local now = tick()
    if now - lastFPS >= 1 then
        currentFPS = math.floor(fpsCount / fpsTime)
        fpsCount = 0; fpsTime = 0; lastFPS = now
    end
    if now - lastStats >= 0.25 then
        lastStats = now
        local ping = 0
        pcall(function() ping = math.floor(LocalPlayer:GetNetworkPing() * 1000) end)
        currentPingWM = ping
        PingLabel.Text = "PING: " .. ping
        FpsLabel.Text = "FPS: " .. currentFPS
        RoleLabel.Text = "ROLE: " .. myRole
        if myRole == "MURDERER" then RoleLabel.TextColor3 = MURDERER_COLOR
        elseif myRole == "SHERIFF" then RoleLabel.TextColor3 = SHERIFF_COLOR
        elseif myRole == "INNOCENT" then RoleLabel.TextColor3 = INNOCENT_COLOR
        else RoleLabel.TextColor3 = Color3.fromRGB(150,160,175) end
        updateWatermark()
    end

    updateHitMarkers(dt)
    updateTracers(dt)
    updateJumpRings(dt)
    updateMapColor()
    updateFog()
    updateQuality()

    if Config.Legit.FOVShow then
        local c = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
        local col = fovColorValues[Config.Legit.FOVColor] or fovColorValues[1]
        FOVCircle.Position = c; FOVCircle.Radius = Config.Legit.FOVRadius; FOVCircle.Visible = true; FOVCircle.Color = col
        FOVGlowMid.Position = c; FOVGlowMid.Radius = Config.Legit.FOVRadius; FOVGlowMid.Visible = true; FOVGlowMid.Color = col
        FOVGlowOuter.Position = c; FOVGlowOuter.Radius = Config.Legit.FOVRadius; FOVGlowOuter.Visible = true; FOVGlowOuter.Color = col
    else
        FOVCircle.Visible = false; FOVGlowMid.Visible = false; FOVGlowOuter.Visible = false
    end

    if Config.Visuals.ThirdPerson then
        LocalPlayer.CameraMaxZoomDistance = 15; LocalPlayer.CameraMinZoomDistance = 15
    else
        LocalPlayer.CameraMaxZoomDistance = 400; LocalPlayer.CameraMinZoomDistance = 0.5
    end

    if Config.Rage.Spinbot and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local hrp = LocalPlayer.Character.HumanoidRootPart
        hrp.CFrame = hrp.CFrame * CFrame.Angles(0, math.rad(Config.Rage.SpinbotSpeed or 45), 0)
    end

    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
        local hum = LocalPlayer.Character.Humanoid
        if Config.Misc.WalkSpeedEnabled then hum.WalkSpeed = Config.Misc.WalkSpeed
        else if hum.WalkSpeed ~= 16 then hum.WalkSpeed = 16 end end
    end

    updateESP()
    updateChams()

    if Config.Visuals.PlayerTrails then updateSelfTrail()
    else if selfTrailData then for _, l in ipairs(selfTrailData.segments) do l.Visible = false end end end

    updateFallingDots()

    if Config.Legit.SheriffAimbot and hasGunEquipped() then
        local center = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
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

    if Config.Misc.AntiVoid and LocalPlayer.Character then
        local hrp = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if hrp and hrp.Position.Y < -50 then
            hrp.CFrame = CFrame.new(0, 50, 0)
            hrp.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
        end
    end

    if Config.Misc.AutoSheep and myRole == "SHERIFF" and LocalPlayer.Character then
        local myHRP = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if myHRP then
            local nearest, nearestD = nil, math.huge
            for _, p in ipairs(Players:GetPlayers()) do
                if p ~= LocalPlayer and isMurderer(p) and isPlayerAlive(p) then
                    local t = p.Character:FindFirstChild("HumanoidRootPart")
                    if t then
                        local d = (t.Position - myHRP.Position).Magnitude
                        if d < nearestD then nearestD = d; nearest = p end
                    end
                end
            end
            if nearest and nearest.Character then
                local tHRP = nearest.Character:FindFirstChild("HumanoidRootPart")
                if tHRP then
                    local td = Config.Misc.AutoSheepDist
                    if math.abs(nearestD - td) > 3 then
                        local dir = (tHRP.Position - myHRP.Position).Unit
                        myHRP.CFrame = CFrame.new(tHRP.Position - dir * td + Vector3.new(0, 3, 0))
                    end
                end
            end
        end
    end
end))

task.spawn(function()
    while not State.isUnloaded do
        task.wait(0.02)
        if State.isUnloaded then break end
        if Config.Legit.Triggerbot and hasGunEquipped() then
            local char = LocalPlayer.Character
            if char then
                local tool = char:FindFirstChildOfClass("Tool")
                if tool and GUN_NAMES[tool.Name] then
                    if UserInputService:IsKeyDown(Config.Legit.TriggerKey) then
                        local center = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
                        local trig = false
                        for _, p in ipairs(Players:GetPlayers()) do
                            if p ~= LocalPlayer and p.Character and isMurderer(p) and isPlayerAlive(p) then
                                local head = p.Character:FindFirstChild("Head")
                                if head then
                                    local sp, onScreen = Camera:WorldToViewportPoint(head.Position)
                                    if onScreen and (Vector2.new(sp.X, sp.Y) - center).Magnitude <= Config.Legit.TriggerRadius then
                                        trig = true; break
                                    end
                                end
                            end
                        end
                        if trig then pcall(function() tool:Activate() end) end
                    end
                end
            end
        end
    end
end)

trackConnection(UserInputService.JumpRequest:Connect(function()
    if State.isUnloaded or not Config.Misc.Bhop then return end
    local char = LocalPlayer.Character
    if not char then return end
    local hum = char:FindFirstChildOfClass("Humanoid")
    if hum and hum.Health > 0 then hum:ChangeState(Enum.HumanoidStateType.Jumping) end
end))

local isPickingGun = false
task.spawn(function()
    while not State.isUnloaded do
        task.wait(0.05)
        if State.isUnloaded then break end
        if Config.Misc.AutoGunPick and not isPickingGun and myRole ~= "MURDERER" then
            local gunDrop = Workspace:FindFirstChild("GunDrop", true)
            if gunDrop and LocalPlayer.Character then
                local hrp = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                if hrp then
                    local sheriffAlive = false
                    for _, p in ipairs(Players:GetPlayers()) do
                        if p ~= LocalPlayer and isSheriff(p) and isPlayerAlive(p) then sheriffAlive = true; break end
                    end
                    if not sheriffAlive then
                        isPickingGun = true
                        local orig = hrp.CFrame
                        local tp
                        if gunDrop:IsA("BasePart") then tp = gunDrop
                        elseif gunDrop:IsA("Model") then tp = gunDrop.PrimaryPart or gunDrop:FindFirstChild("Handle") or gunDrop:FindFirstChildWhichIsA("BasePart", true) end
                        if tp then
                            hrp.CFrame = tp.CFrame + Vector3.new(0, 2, 0)
                            task.wait(0.08)
                            pcall(function()
                                firetouchinterest(hrp, tp, 0)
                                task.wait(0.08)
                                firetouchinterest(hrp, tp, 1)
                            end)
                            task.wait(0.15)
                            if hrp and hrp.Parent then hrp.CFrame = orig end
                        end
                        task.wait(0.5)
                        isPickingGun = false
                    end
                end
            end
        end
    end
end)

local antiMurdererLastTP = 0
task.spawn(function()
    while not State.isUnloaded do
        task.wait(0.05)
        if State.isUnloaded then break end
        if Config.Rage.AntiMurderer and LocalPlayer.Character then
            local myChar = LocalPlayer.Character
            local myHRP = myChar:FindFirstChild("HumanoidRootPart")
            local myHum = myChar:FindFirstChildOfClass("Humanoid")
            if myHRP and myHum and myHum.Health > 0 then
                local now = tick()
                if now - antiMurdererLastTP >= Config.Rage.AntiMurdererCooldown then
                    local nearest, nearestD = nil, math.huge
                    for _, p in ipairs(Players:GetPlayers()) do
                        if p ~= LocalPlayer and isMurderer(p) and isPlayerAlive(p) then
                            local t = p.Character:FindFirstChild("HumanoidRootPart")
                            if t then
                                local d = (t.Position - myHRP.Position).Magnitude
                                if d < nearestD then nearestD = d; nearest = p end
                            end
                        end
                    end
                    if nearest and nearestD <= Config.Rage.AntiMurdererRange then
                        local safeTarget, bestSafeDist = nil, -1
                        local mPos = nearest.Character.HumanoidRootPart.Position
                        for _, p in ipairs(Players:GetPlayers()) do
                            if p ~= LocalPlayer and p ~= nearest and isPlayerAlive(p) then
                                local t = p.Character:FindFirstChild("HumanoidRootPart")
                                if t then
                                    local distFromM = (t.Position - mPos).Magnitude
                                    if distFromM > bestSafeDist then
                                        bestSafeDist = distFromM
                                        safeTarget = p
                                    end
                                end
                            end
                        end
                        if safeTarget and safeTarget.Character then
                            local sHRP = safeTarget.Character:FindFirstChild("HumanoidRootPart")
                            if sHRP then
                                myHRP.CFrame = CFrame.new(sHRP.Position + Vector3.new(math.random(-2, 2), 0, math.random(-2, 2)))
                                antiMurdererLastTP = now
                            end
                        else
                            local awayDir = (myHRP.Position - mPos)
                            if awayDir.Magnitude > 0 then awayDir = awayDir.Unit else awayDir = Vector3.new(1, 0, 0) end
                            myHRP.CFrame = CFrame.new(myHRP.Position + awayDir * 25)
                            antiMurdererLastTP = now
                        end
                    end
                end
            end
        end
    end
end)

trackConnection(RunService.Heartbeat:Connect(function()
    if State.isUnloaded or not Config.Fling.AntiFling then return end
    local char = LocalPlayer.Character
    if not char then return end
    local hrp = char:FindFirstChild("HumanoidRootPart")
    local hum = char:FindFirstChildOfClass("Humanoid")
    if not hrp or not hum or hum.Health <= 0 then return end
    if hrp.AssemblyLinearVelocity.Magnitude > 500 or hrp.AssemblyAngularVelocity.Magnitude > 100 then
        hrp.AssemblyLinearVelocity = Vector3.new(0,0,0)
        hrp.AssemblyAngularVelocity = Vector3.new(0,0,0)
    end
end))

pcall(function()
    trackConnection(LocalPlayer.Idled:Connect(function()
        if State.isUnloaded or not Config.Misc.AntiAFK then return end
        local vu = game:GetService("VirtualUser")
        vu:CaptureController()
        vu:ClickButton2(Vector2.new())
    end))
end)

trackConnection(UserInputService.InputBegan:Connect(function(input, gpe)
    if State.isUnloaded then return end
    if input.KeyCode == Config.Settings.MenuKey or input.KeyCode == Config.Settings.AltMenuKey then
        MenuFrame.Visible = not MenuFrame.Visible
        State.menuVisible = MenuFrame.Visible
        updateWatermark()
        return
    end
    if Config.Hotkeys.Enabled and not gpe then
        if input.KeyCode == Config.Hotkeys.ToggleRage then
            Config.Rage.Enabled = not Config.Rage.Enabled
        elseif input.KeyCode == Config.Hotkeys.TPToMurderer then
            if LocalPlayer.Character then
                local myHRP = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                if myHRP then
                    for _, p in ipairs(Players:GetPlayers()) do
                        if p ~= LocalPlayer and isMurderer(p) and isPlayerAlive(p) then
                            local t = p.Character:FindFirstChild("HumanoidRootPart")
                            if t then myHRP.CFrame = CFrame.new(t.Position + t.CFrame.LookVector * 2); break end
                        end
                    end
                end
            end
        end
    end
end))

print("[v9.0] === READY ===")
