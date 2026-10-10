local _0x9A21 = game:GetService(string.char(80,108,97,121,101,114,115))
local _0x85C3 = game:GetService(string.char(84,119,101,101,110,83,101,114,118,105,99,101))
local _0x63F8 = game:GetService(string.char(85,115,101,114,73,110,112,117,116,83,101,114,118,105,99,101))
local _0x7FDD = game:GetService(string.char(82,117,110,83,101,114,118,105,99,101))
local _0xE922 = game:GetService(string.char(76,105,103,104,116,105,110,103))
local _0x83FE = game:GetService(string.char(84,101,120,116,83,101,114,118,105,99,101))
local _0xEDF3 = game:GetService(string.char(71,117,105,83,101,114,118,105,99,101))
local _0x28F0 = game:GetService(string.char(83,111,117,110,100,83,101,114,118,105,99,101))
local _0xD5D1 = game:GetService(string.char(67,111,110,116,101,110,116,80,114,111,118,105,100,101,114))
local _0x0E8D = game:GetService(string.char(68,101,98,114,105,115))
local _0xD33F = _0x9A21.LocalPlayer
if _G.ClumsyScriptUnload then
pcall(_G.ClumsyScriptUnload)
end
local _0x3CA1 = Enum.KeyCode.RightShift
local _0x60DD = 16
local _0x5102
local _0xD583 = Color3.fromRGB(14, 14, 14)
local _0x2CF9 = Color3.fromRGB(20, 20, 20)
local _0x3922 = Color3.fromRGB(27, 27, 27)
local _0x9245 = Color3.fromRGB(36, 36, 36)
local _0x7988 = Color3.fromRGB(42, 42, 42)
local _0x9CF4 = Color3.fromRGB(230, 230, 230)
local _0x08BE = Color3.fromRGB(120, 120, 120)
local _0xEE3F = Color3.fromRGB(85, 85, 85)
local _0x0333 = Color3.fromRGB(255, 255, 255)
local _0x7E96 = {}
local _0xABCClocal _0xB374 = {}
local _0xB9C0 = 24
local function _0xC896(_0xBA21, ttl)
if not _0xBA21 then return _0xBA21 end
_0xB374[#_0xB374 + 1] = _0xBA21
while #_0xB374 > _0xB9C0 do
local _0x6355 = table.remove(_0xB374, 1)
if _0x6355 and _0x6355.Parent then pcall(function() _0x6355:Destroy() end) end
end
if ttl then
task.delay(ttl, function()
if _0xBA21 and _0xBA21.Parent then pcall(function() _0xBA21:Destroy() end) end
end)
end
return _0xBA21
end
local function _0x3BE5()
for _0x60FA = #_0xB374, 1, -1 do
local _0xA051 = _0xB374[_0x60FA]
if _0xA051 and _0xA051.Parent then pcall(function() _0xA051:Destroy() end) end
_0xB374[_0x60FA] = nil
end
end
local function _0xF709(signal, fn)
local _0xD51E = signal:Connect(fn)
table.insert(_0x7E96, _0xD51E)
return _0xD51E
end
local function _0x81A6(_0xBB27, _0x476F)
local _0xBA21 = Instance.new(_0xBB27)
local _0x4FEA = _0x476F.Parent
_0x476F.Parent = nil
for _0x3FFC, _0xBE50 in pairs(_0x476F) do
_0xBA21[_0x3FFC] = _0xBE50
end
_0xBA21.Parent = _0x4FEA
return _0xBA21
end
local function _0x46F9(_0xBA21, _0x5ED5)
_0x81A6(string.char(85,73,67,111,114,110,101,114), { CornerRadius = UDim.new(0, _0x5ED5 or 6), Parent = _0xBA21 })
end
local function _0x1692(_0xBA21)
_0x81A6(string.char(85,73,67,111,114,110,101,114), { CornerRadius = UDim.new(1, 0), Parent = _0xBA21 })
end
local function _0x39A4(_0xBA21, _0x9C5B)
return _0x81A6(string.char(85,73,83,116,114,111,107,101), {
Color = _0x9C5B or _0x7988,
Thickness = 1,
ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
Parent = _0xBA21,
})
end
local function _0x0ED9(_0xBA21, _0x4903, _0x476F, _0x2D51, _0x04A9)
local _0x3F0B = _0x85C3:Create(_0xBA21, TweenInfo.new(_0x4903, _0x04A9 or Enum.EasingStyle.Quad, _0x2D51 or Enum.EasingDirection.Out), _0x476F)
_0x3F0B:Play()
return _0x3F0B
end
local _0x0839 = {}
local function _0x9B45(_0xA213)
local _0xE02A = _0x81A6(string.char(85,73,71,114,97,100,105,101,110,116), { Parent = _0xA213 })
table.insert(_0x0839, _0xE02A)
return _0xE02A
end
local function _0x2F28(_0x4903)
local _0x963F = {}
for _0x60FA = 0, 8 do
local _0xA051 = _0x60FA / 8
local _0xBE50 = 0.5 + 0.5 * math.sin((_0xA051 - _0x4903) * math.pi * 2)
local _0xD51E = math.floor(80 + _0xBE50 * 175)
_0x963F[#_0x963F + 1] = ColorSequenceKeypoint.new(_0xA051, Color3.fromRGB(_0xD51E, _0xD51E, _0xD51E))
end
return ColorSequence.new(_0x963F)
end
local function _0x39BD(_0x4FEA, _0xC642, _0xA331, x2, y2, _0xB6CB, _0x9C5B)
local _0x558B, _0xD132 = x2 - _0xC642, y2 - _0xA331
local _0xCAFA = math.sqrt(_0x558B * _0x558B + _0xD132 * _0xD132)
local _0x23BB = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromOffset((_0xC642 + x2) / 2, (_0xA331 + y2) / 2),
Size = UDim2.fromOffset(_0xCAFA + _0xB6CB * 0.6, _0xB6CB),
Rotation = math.deg(math.atan2(_0xD132, _0x558B)),
BackgroundColor3 = _0x9C5B or _0x08BE,
BorderSizePixel = 0,
Parent = _0x4FEA,
})
_0x1692(_0x23BB)
return _0x23BB
end
local function _0x93F4(_0x4FEA, _0xA051, _0xD4A2, _0x52F8)
local _0x23BB = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromOffset(_0xA051, _0xD4A2),
Size = UDim2.fromOffset(_0x52F8, _0x52F8),
BackgroundColor3 = _0x08BE,
BorderSizePixel = 0,
Parent = _0x4FEA,
})
_0x1692(_0x23BB)
return _0x23BB
end
local function _0x8666(_0x8442, _0x4FEA)
local _0x69D6 = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0, 0.5),
Position = UDim2.new(0, 10, 0.5, 0),
Size = UDim2.fromOffset(18, 18),
BackgroundTransparency = 1,
ZIndex = 3,
Parent = _0x4FEA,
})
local _0xFF4E = _0x81A6(string.char(85,73,83,99,97,108,101), { Parent = _0x69D6 })
local _0xEE00 = {}
local function _0x930C(_0xBA21, _0x4066)
table.insert(_0xEE00, { _0xBA21, _0x4066 })
end
if _0x8442 ==string.char(109,111,118,101)then
_0x930C(_0x93F4(_0x69D6, 11.5, 2.8, 4.6),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
local _0xF247 = {
{ 10, 6, 8, 11 },
{ 9.6, 7, 12.6, 9 },
{ 12.6, 9, 15, 7.4 },
{ 9.6, 7, 6.6, 8.6 },
{ 6.6, 8.6, 4.6, 7 },
{ 8, 11, 11, 13.4 },
{ 11, 13.4, 10.6, 17 },
{ 8, 11, 6, 14 },
{ 6, 14, 2.6, 15 },
}
for _0xBFE6, _0x334A in ipairs(_0xF247) do
_0x930C(_0x39BD(_0x69D6, _0x334A[1], _0x334A[2], _0x334A[3], _0x334A[4], 2),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
end
elseif _0x8442 ==string.char(101,121,101)then
local _0xD22E = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromOffset(9, 9),
Size = UDim2.fromOffset(16, 10),
BackgroundTransparency = 1,
Parent = _0x69D6,
})
_0x1692(_0xD22E)
_0x930C(_0x81A6(string.char(85,73,83,116,114,111,107,101), { Color = _0x08BE, Thickness = 1.6, Parent = _0xD22E }),string.char(67,111,108,111,114))
_0x930C(_0x93F4(_0x69D6, 9, 9, 5),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
elseif _0x8442 ==string.char(119,105,110,103)then
_0x930C(_0x93F4(_0x69D6, 3, 15, 3.4),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
local _0xF247 = { { 3, 15, 9, 3 }, { 9, 3, 16.5, 5 }, { 7.4, 6.4, 15.5, 9.6 }, { 5.6, 9.8, 13, 14.2 } }
for _0xBFE6, _0x334A in ipairs(_0xF247) do
_0x930C(_0x39BD(_0x69D6, _0x334A[1], _0x334A[2], _0x334A[3], _0x334A[4], 1.8),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
end
elseif _0x8442 ==string.char(115,108,105,100,101,114,115)then
local _0x8038 = { { 4, 6 }, { 9, 12 }, { 14, 8 } }
for _0xBFE6, _0x5ED5 in ipairs(_0x8038) do
_0x930C(_0x39BD(_0x69D6, 2, _0x5ED5[1], 16, _0x5ED5[1], 1.6),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
_0x930C(_0x93F4(_0x69D6, _0x5ED5[2], _0x5ED5[1], 5),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
end
elseif _0x8442 ==string.char(115,116,97,114)then
_0x930C(_0x39BD(_0x69D6, 9, 1.5, 9, 16.5, 2),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
_0x930C(_0x39BD(_0x69D6, 1.5, 9, 16.5, 9, 2),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
_0x930C(_0x39BD(_0x69D6, 5, 5, 13, 13, 1.4),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
_0x930C(_0x39BD(_0x69D6, 13, 5, 5, 13, 1.4),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
_0x930C(_0x93F4(_0x69D6, 9, 9, 5),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
elseif _0x8442 ==string.char(103,101,97,114)then
local _0x4527 = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromOffset(9, 9),
Size = UDim2.fromOffset(10, 10),
BackgroundTransparency = 1,
Parent = _0x69D6,
})
_0x1692(_0x4527)
_0x930C(_0x81A6(string.char(85,73,83,116,114,111,107,101), { Color = _0x08BE, Thickness = 2.6, Parent = _0x4527 }),string.char(67,111,108,111,114))
for _0x60FA = 0, 7 do
local _0x7D74 = math.rad(_0x60FA * 45)
_0x930C(_0x39BD(_0x69D6, 9 + math.cos(_0x7D74) * 5.5, 9 + math.sin(_0x7D74) * 5.5, 9 + math.cos(_0x7D74) * 8, 9 + math.sin(_0x7D74) * 8, 3),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
end
elseif _0x8442 ==string.char(116,97,114,103,101,116)then
local _0x4527 = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromOffset(9, 9),
Size = UDim2.fromOffset(12, 12),
BackgroundTransparency = 1,
Parent = _0x69D6,
})
_0x1692(_0x4527)
_0x930C(_0x81A6(string.char(85,73,83,116,114,111,107,101), { Color = _0x08BE, Thickness = 1.6, Parent = _0x4527 }),string.char(67,111,108,111,114))
_0x930C(_0x39BD(_0x69D6, 9, 0.5, 9, 4.5, 1.6),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
_0x930C(_0x39BD(_0x69D6, 9, 13.5, 9, 17.5, 1.6),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
_0x930C(_0x39BD(_0x69D6, 0.5, 9, 4.5, 9, 1.6),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
_0x930C(_0x39BD(_0x69D6, 13.5, 9, 17.5, 9, 1.6),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
_0x930C(_0x93F4(_0x69D6, 9, 9, 3),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
elseif _0x8442 ==string.char(99,97,114,116)then
local _0xF247 = {
{ 1, 3, 4, 3 },
{ 4, 3, 6.2, 11.5 },
{ 4.8, 5.5, 16.5, 5.5 },
{ 16.5, 5.5, 14.8, 11.5 },
{ 6.2, 11.5, 14.8, 11.5 },
{ 5.5, 8.5, 15.8, 8.5 },
}
for _0xBFE6, _0x334A in ipairs(_0xF247) do
_0x930C(_0x39BD(_0x69D6, _0x334A[1], _0x334A[2], _0x334A[3], _0x334A[4], 1.7),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
end
_0x930C(_0x93F4(_0x69D6, 7.2, 15, 3.2),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
_0x930C(_0x93F4(_0x69D6, 13.8, 15, 3.2),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
elseif _0x8442 ==string.char(112,105,110)then
local _0x4527 = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromOffset(9, 7),
Size = UDim2.fromOffset(10, 10),
BackgroundTransparency = 1,
Parent = _0x69D6,
})
_0x1692(_0x4527)
_0x930C(_0x81A6(string.char(85,73,83,116,114,111,107,101), { Color = _0x08BE, Thickness = 1.8, Parent = _0x4527 }),string.char(67,111,108,111,114))
_0x930C(_0x39BD(_0x69D6, 4.8, 9.6, 9, 16.5, 1.8),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
_0x930C(_0x39BD(_0x69D6, 13.2, 9.6, 9, 16.5, 1.8),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
_0x930C(_0x93F4(_0x69D6, 9, 7, 3),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
elseif _0x8442 ==string.char(115,109,105,108,101)then
_0x930C(_0x93F4(_0x69D6, 5.5, 6, 3.4),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
_0x930C(_0x93F4(_0x69D6, 12.5, 6, 3.4),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
_0x930C(_0x39BD(_0x69D6, 4, 11, 6.8, 13.8, 2),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
_0x930C(_0x39BD(_0x69D6, 6.8, 13.8, 11.2, 13.8, 2),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
_0x930C(_0x39BD(_0x69D6, 11.2, 13.8, 14, 11, 2),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
elseif _0x8442 ==string.char(98,111,108,116)then
_0x930C(_0x39BD(_0x69D6, 12, 1.5, 5.5, 10, 2.4),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
_0x930C(_0x39BD(_0x69D6, 5.5, 10, 12.5, 8, 2.4),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
_0x930C(_0x39BD(_0x69D6, 12.5, 8, 6, 16.5, 2.4),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
elseif _0x8442 ==string.char(103,108,111,98,101)then
local _0x4527 = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromOffset(9, 9),
Size = UDim2.fromOffset(16, 16),
BackgroundTransparency = 1,
Parent = _0x69D6,
})
_0x1692(_0x4527)
_0x930C(_0x81A6(string.char(85,73,83,116,114,111,107,101), { Color = _0x08BE, Thickness = 1.5, Parent = _0x4527 }),string.char(67,111,108,111,114))
local _0xDF66 = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromOffset(9, 9),
Size = UDim2.fromOffset(7, 16),
BackgroundTransparency = 1,
Parent = _0x69D6,
})
_0x1692(_0xDF66)
_0x930C(_0x81A6(string.char(85,73,83,116,114,111,107,101), { Color = _0x08BE, Thickness = 1.3, Parent = _0xDF66 }),string.char(67,111,108,111,114))
_0x930C(_0x39BD(_0x69D6, 1.5, 9, 16.5, 9, 1.3),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
_0x930C(_0x39BD(_0x69D6, 3, 5, 15, 5, 1.1),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
_0x930C(_0x39BD(_0x69D6, 3, 13, 15, 13, 1.1),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
elseif _0x8442 ==string.char(100,114,111,110,101)then
for _0xBFE6, _0xD51E in ipairs({ { 4, 4 }, { 14, 4 }, { 4, 14 }, { 14, 14 } }) do
_0x930C(_0x39BD(_0x69D6, 9, 9, _0xD51E[1], _0xD51E[2], 1.8),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
local _0x5ED5 = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromOffset(_0xD51E[1], _0xD51E[2]),
Size = UDim2.fromOffset(6, 6),
BackgroundTransparency = 1,
Parent = _0x69D6,
})
_0x1692(_0x5ED5)
_0x930C(_0x81A6(string.char(85,73,83,116,114,111,107,101), { Color = _0x08BE, Thickness = 1.4, Parent = _0x5ED5 }),string.char(67,111,108,111,114))
end
_0x930C(_0x93F4(_0x69D6, 9, 9, 5),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
elseif _0x8442 ==string.char(103,114,105,100)then
for _0xBFE6, _0x0D18 in ipairs({ { 4.5, 4.5 }, { 13.5, 4.5 }, { 4.5, 13.5 }, { 13.5, 13.5 } }) do
local _0x04E1 = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromOffset(_0x0D18[1], _0x0D18[2]),
Size = UDim2.fromOffset(6.5, 6.5),
BackgroundColor3 = _0x08BE,
BorderSizePixel = 0,
Parent = _0x69D6,
})
_0x46F9(_0x04E1, 2)
_0x930C(_0x04E1,string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
end
end
local _0x0D93 = {}
_0x0D93.color = function(_0xD51E, _0x4903)
for _0xBFE6, _0x0D18 in ipairs(_0xEE00) do
_0x0ED9(_0x0D18[1], _0x4903 or 0.2, { [_0x0D18[2]] = _0xD51E })
end
end
_0x0D93.pop = function()
_0xFF4E.Scale = 0.7
_0x0ED9(_0xFF4E, 0.35, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
end
return _0x0D93
end
local _0x4696 = _0x81A6(string.char(83,99,114,101,101,110,71,117,105), {
Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116),
ResetOnSpawn = false,
ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
DisplayOrder = 100,
})
local _0xA6F2 = false
if gethui then
_0xA6F2 = pcall(function()
_0x4696.Parent = gethui()
end)
end
if not _0xA6F2 then
_0xA6F2 = pcall(function()
_0x4696.Parent = game:GetService(string.char(67,111,114,101,71,117,105))
end)
end
if not _0xA6F2 then
_0x4696.Parent = _0xD33F:WaitForChild(string.char(80,108,97,121,101,114,71,117,105))
end
pcall(function()
_0x4696.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
_0x4696.ClipToDeviceSafeArea = true
end)local _0x50F4 = _0xD33F:WaitForChild(string.char(80,108,97,121,101,114,71,117,105))
local _0xAF92 = Instance.new(string.char(83,99,114,101,101,110,71,117,105))
_0xAF92.Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,70,117,108,108,86,105,101,119,112,111,114,116)_0xAF92.ResetOnSpawn = false
_0xAF92.IgnoreGuiInset = true
_0xAF92.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
_0xAF92.DisplayOrder = 9998
pcall(function()
_0xAF92.ScreenInsets = Enum.ScreenInsets.None
_0xAF92.ClipToDeviceSafeArea = false
end)
_0xAF92.Parent = _0x50F4local _0xA737 = Instance.new(string.char(83,99,114,101,101,110,71,117,105))
_0xA737.Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,70,105,120,101,100,83,99,114,101,101,110)_0xA737.ResetOnSpawn = false
_0xA737.IgnoreGuiInset = true
_0xA737.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
_0xA737.DisplayOrder = 10000
pcall(function()
_0xA737.ScreenInsets = Enum.ScreenInsets.None
_0xA737.ClipToDeviceSafeArea = false
end)
_0xA737.Parent = _0x50F4
local function _0x3C71()
local _0x0CDE = workspace:FindFirstChild(string.char(82,101,103,117,108,97,114,76,111,98,98,121))
local _0x00ED = _0x0CDE and _0x0CDE:FindFirstChild(string.char(77,97,105,110,76,111,98,98,121))
local _0xEE00 = _0x00ED and _0x00ED:FindFirstChild(string.char(80,97,114,116,115))
if not _0xEE00 then
return
end
for _0xBFE6, _0x3066 in ipairs(_0xEE00:GetChildren()) do
if _0x3066:IsA(string.char(66,97,115,101,80,97,114,116)) then
local _0x52F8 = _0x3066.Size
if math.abs(_0x52F8.X - 13.7) < 0.3 and math.abs(_0x52F8.Y - 14.5) < 0.3 and math.abs(_0x52F8.Z - 0.5) < 0.2 then
return _0x3066
end
end
end
end
local function _0x5B8A()
local _0x1A84 = _0x3C71()
if not _0x1A84 then
return
end
local _0x6355 = _0x1A84:FindFirstChild(string.char(67,108,117,109,115,121,83,99,114,105,112,116,87,97,108,108,66,114,97,110,100))
if _0x6355 then
_0x6355:Destroy()
end
_0xABCC = _0x81A6(string.char(80,97,114,116), {
Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,87,97,108,108,66,114,97,110,100),
Anchored = true,
CanCollide = false,
CanQuery = false,
CanTouch = false,
CastShadow = false,
Transparency = 1,
Size = Vector3.new(24, 4, 0.1),
CFrame = _0x1A84.CFrame * CFrame.new(0, _0x1A84.Size.Y / 2 + 3.2, _0x1A84.Size.Z / 2 + 0.06),
Parent = _0x1A84,
})
local _0x5AC9 = _0x81A6(string.char(83,117,114,102,97,99,101,71,117,105), {
Name =string.char(83,117,114,102,97,99,101),
Face = Enum.NormalId.Back,
AlwaysOnTop = false,
LightInfluence = 0,
SizingMode = Enum.SurfaceGuiSizingMode.PixelsPerStud,
PixelsPerStud = 60,
Parent = _0xABCC,
})
_0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1,
Font = Enum.Font.GothamBlack,
RichText = true,
Text =string.char(60,102,111,110,116,32,99,111,108,111,114,61,34,35,70,70,70,70,70,70,34,62,67,76,85,77,83,89,60,47,102,111,110,116,62,32,60,102,111,110,116,32,99,111,108,111,114,61,34,35,65,56,70,70,51,69,34,62,83,67,82,73,80,84,60,47,102,111,110,116,62),
TextScaled = true,
TextColor3 = Color3.new(1, 1, 1),
TextStrokeColor3 = Color3.new(0, 0, 0),
TextStrokeTransparency = 0,
Parent = _0x5AC9,
})
end
task.spawn(function()
while _0x4696.Parent do
if not _0xABCC or not _0xABCC.Parent then
_0x5B8A()
end
task.wait(2)
end
end)
local _0xCF0E = _0x81A6(string.char(66,108,117,114,69,102,102,101,99,116), { Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,66,108,117,114), Size = 0, Parent = _0xE922 })
local _0x2D1C = _0x81A6(string.char(70,114,97,109,101), {
Name =string.char(77,97,105,110),
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromScale(0.5, 0.5),
Size = UDim2.fromOffset(680, 470),
BackgroundColor3 = _0xD583,
BackgroundTransparency = 0.04,
BorderSizePixel = 0,
Visible = false,
ZIndex = 2,
Parent = _0x4696,
})
_0x46F9(_0x2D1C, 10)
local _0xC64A = _0x81A6(string.char(85,73,83,116,114,111,107,101), { Thickness = 1, Color = _0x0333, Transparency = 0.3, Parent = _0x2D1C })
_0x9B45(_0xC64A)
local _0xE9B2 = _0x81A6(string.char(85,73,83,99,97,108,101), { Scale = 0, Parent = _0x2D1C })
local _0x9B26 = false
local _0x55FA = 1
local _0x0361 = 1
local _0xB5DC = 1
local _0x1D26 = false
local _0xCE48 = nil
local _0xD770 = nil
local _0x609B = nil
local _0x2949_0x2949 = _0x81A6(string.char(84,101,120,116,66,117,116,116,111,110), {
Name =string.char(82,101,115,105,122,101,72,97,110,100,108,101),
AnchorPoint = Vector2.new(1, 1),
Position = UDim2.new(1, -7, 1, -7),
Size = UDim2.fromOffset(30, 30),
BackgroundTransparency = 1,
BorderSizePixel = 0,
AutoButtonColor = false,
Text =string.char(226,134,152),
TextColor3 = Color3.new(1, 1, 1),
TextTransparency = 0,
TextSize = 23,
Font = Enum.Font.GothamBold,
ZIndex = 100,
Parent = _0x2D1C,
})
local _0x34CD = _0x81A6(string.char(85,73,83,116,114,111,107,101), {
Thickness = 0,
Transparency = 1,
Parent = _0x2949,
})
_0xF709(_0x2949.MouseEnter, function()
if not _0x1D26 then
_0x0ED9(_0x2949, 0.12, { TextTransparency = 0.15 })
end
end)
_0xF709(_0x2949.MouseLeave, function()
if not _0x1D26 then
_0x0ED9(_0x2949, 0.12, { TextTransparency = 0 })
end
end)
_0xF709(_0x2949.InputBegan, function(input)
if input.UserInputType ~= Enum.UserInputType.MouseButton1
and input.UserInputType ~= Enum.UserInputType.Touch then
return
end
if _0x1D26 then
return
end
_0x1D26 = true
_0xCE48 = Vector2.new(input.Position.X, input.Position.Y)
_0x609B = input_0xD770 = Vector2.new(_0x2D1C.Size.X.Offset, _0x2D1C.Size.Y.Offset)
_0x2949.TextTransparency = 0.08
end)
_0xF709(_0x63F8.InputChanged, function(input)
if not _0x1D26 or not _0xCE48 or not _0xD770 or (_0x609B and input.UserInputType == Enum.UserInputType.Touch and input ~= _0x609B) then
return
end
if input.UserInputType ~= Enum.UserInputType.MouseMovement
and input.UserInputType ~= Enum.UserInputType.Touch then
return
end
local _0x9494 = Vector2.new(input.Position.X, input.Position.Y)
local _0xC4D6 = _0x9494 - _0xCE48
local _0xB8BE, _0x0D4A = 430, 320
local _0xDF48, _0xFFCD = 1000, 760if math.abs(_0xC4D6.X) < 1 and math.abs(_0xC4D6.Y) < 1 then
return
end
local _0x337A = math.clamp(_0xD770.X + _0xC4D6.X, _0xB8BE, _0xDF48)
local _0xE59B = math.clamp(_0xD770.Y + _0xC4D6.Y, _0x0D4A, _0xFFCD)
_0x2D1C.Size = UDim2.fromOffset(_0x337A, _0xE59B)
_0x0361 = _0x337A / 680
_0xB5DC = _0xE59B / 470
_0xE9B2.Scale = _0x55FA
end)
_0xF709(_0x63F8.InputEnded, function(input)
if not _0x1D26 then
return
end
if input.UserInputType ~= Enum.UserInputType.MouseButton1
and input.UserInputType ~= Enum.UserInputType.Touch then
return
end
_0x1D26 = false
_0xCE48 = nil
_0xD770 = nil
_0x609B = nil
_0x2949.TextTransparency = 0
end)
local _0x33CB
local _0x2629
local function _0x1D56()
local _0x4245 = workspace.CurrentCamera
if not _0x4245 then
return
end
local _0x56A0 = _0x4245.ViewportSize
local _0xBE6B, _0x19E6 = Vector2.zero, Vector2.zero
pcall(function()
_0xBE6B, _0x19E6 = _0xEDF3:GetGuiInset()
end)
local _0x7296 = _0x63F8.TouchEnabled and 16 or 24
local _0x7058 = math.max(1, _0x56A0.X - _0xBE6B.X - _0x19E6.X - _0x7296)
local _0xBBB8 = math.max(1, _0x56A0.Y - _0xBE6B.Y - _0x19E6.Y - _0x7296)
local _0x9E6B = math.max(1, _0x2D1C.Size.X.Offset)
local _0x5DC3 = math.max(1, _0x2D1C.Size.Y.Offset)
_0x55FA = math.clamp(math.min(_0x7058 / _0x9E6B, _0xBBB8 / _0x5DC3), 0.35, 1)
if _0x63F8.TouchEnabled then
_0x2D1C.Position = UDim2.fromScale(0.5, 0.5)
end
if _0x9B26 then
_0xE9B2.Scale = _0x55FA
end
if _0x2629 then
_0x2629()
end
end
local function _0xC67A()
if _0x33CB then
_0x33CB:Disconnect()
end
local _0x4245 = workspace.CurrentCamera
if _0x4245 then
_0x33CB = _0xF709(_0x4245:GetPropertyChangedSignal(string.char(86,105,101,119,112,111,114,116,83,105,122,101)), _0x1D56)
end
_0x1D56()
end
_0xF709(workspace:GetPropertyChangedSignal(string.char(67,117,114,114,101,110,116,67,97,109,101,114,97)), _0xC67A)
_0xF709(_0x4696:GetPropertyChangedSignal(string.char(65,98,115,111,108,117,116,101,83,105,122,101)), _0x1D56)
_0xC67A()
local _0x60FD = _0x81A6(string.char(70,114,97,109,101), { Size = UDim2.new(1, 0, 0, 38), BackgroundTransparency = 1, Parent = _0x2D1C })
local _0xC0C3 = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(64,99,108,117,109,115,121,95,99,102,103),
Font = Enum.Font.GothamBold,
TextSize = 16,
TextColor3 = _0x0333,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(14, 0),
Size = UDim2.new(0, 205, 1, 0),
Parent = _0x60FD,
})
_0x9B45(_0xC0C3)
local _0x3844 = _0x81A6(string.char(84,101,120,116,66,117,116,116,111,110), {
Text =string.char(120),
Font = Enum.Font.GothamBold,
TextSize = 13,
TextColor3 = _0x08BE,
BackgroundColor3 = _0x3922,
BackgroundTransparency = 1,
AutoButtonColor = false,
AnchorPoint = Vector2.new(1, 0.5),
Position = UDim2.new(1, -8, 0.5, 0),
Size = UDim2.fromOffset(24, 24),
Parent = _0x60FD,
})
_0x46F9(_0x3844, 6)
_0xF709(_0x3844.MouseEnter, function()
_0x0ED9(_0x3844, 0.15, { TextColor3 = _0x0333, BackgroundTransparency = 0 })
end)
_0xF709(_0x3844.MouseLeave, function()
_0x0ED9(_0x3844, 0.15, { TextColor3 = _0x08BE, BackgroundTransparency = 1 })
end)
local _0x7DB8 = _0x81A6(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(0, 38),
Size = UDim2.new(1, 0, 0, 1),
BackgroundColor3 = _0x0333,
BorderSizePixel = 0,
Parent = _0x2D1C,
})
_0x9B45(_0x7DB8)
local _0x7B49 = 10
local _0xF2A4 = 0
local _0x41BA = _0x81A6(string.char(83,99,114,111,108,108,105,110,103,70,114,97,109,101), {
Position = UDim2.fromOffset(0, 39),
Size = UDim2.new(0, 170, 1, -39),
BackgroundTransparency = 1,
BorderSizePixel = 0,
ScrollBarThickness = 4,
ScrollBarImageColor3 = _0x0333,
ScrollBarImageTransparency = 0.15,
VerticalScrollBarInset = Enum.ScrollBarInset.Always,
ScrollingDirection = Enum.ScrollingDirection.Y,
ElasticBehavior = Enum.ElasticBehavior.Never,
ScrollingEnabled = true,
Active = true,
CanvasSize = UDim2.new(),
Parent = _0x2D1C,
})
local _0xB428 = _0x81A6(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(8, 10),
Size = UDim2.new(1, -16, 0, 32),
BackgroundColor3 = _0x0333,
BorderSizePixel = 0,
ZIndex = 1,
Parent = _0x41BA,
})
_0x46F9(_0xB428, 8)
_0x81A6(string.char(85,73,71,114,97,100,105,101,110,116), {
Color = ColorSequence.new(Color3.fromRGB(105, 105, 105), Color3.fromRGB(62, 62, 62)),
Parent = _0xB428,
})
local _0xE585 = _0x81A6(string.char(85,73,83,116,114,111,107,101), {
Color = _0x0333,
Thickness = 1,
Transparency = 0.75,
ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
Parent = _0xB428,
})
local _0xA7FD = _0x81A6(string.char(85,73,71,114,97,100,105,101,110,116), { Parent = _0xE585 })
local _0x761A = NumberSequence.new(0)
local _0xEADA = NumberSequence.new({
NumberSequenceKeypoint.new(0, 1),
NumberSequenceKeypoint.new(0.5, 1),
NumberSequenceKeypoint.new(0.85, 0.2),
NumberSequenceKeypoint.new(1, 0),
})
local _0x6B1B = 0
local _0x59A4
local function _0xA33C()
_0x6B1B += 1
local _0xABD9 = _0x6B1B
if _0x59A4 then
_0x59A4:Cancel()
end
_0xA7FD.Transparency = _0xEADA
_0xA7FD.Rotation = -90
_0x59A4 = _0x0ED9(_0xA7FD, 0.5, { Rotation = 270 }, Enum.EasingDirection.InOut, Enum.EasingStyle.Sine)
_0x59A4.Completed:Connect(function(_0x522F)
if _0xABD9 ~= _0x6B1B or _0x522F ~= Enum.PlaybackState.Completed then
return
end
_0xA7FD.Transparency = _0x761A
_0xE585.Transparency = 0.4
_0x0ED9(_0xE585, 0.4, { Transparency = 0.75 })
end)
end
local _0x4813 = _0x81A6(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(8, 10),
Size = UDim2.new(1, -16, 1, -10),
BackgroundTransparency = 1,
ZIndex = 2,
Parent = _0x41BA,
})
local _0xC1A4 = _0x81A6(string.char(85,73,76,105,115,116,76,97,121,111,117,116), { Padding = UDim.new(0, 3), SortOrder = Enum.SortOrder.LayoutOrder, Parent = _0x4813 })
local function _0x973A()
_0x41BA.CanvasSize = UDim2.fromOffset(0, 10 + _0xC1A4.AbsoluteContentSize.Y + 24)
end
_0xC1A4:GetPropertyChangedSignal(string.char(65,98,115,111,108,117,116,101,67,111,110,116,101,110,116,83,105,122,101)):Connect(_0x973A)
_0x81A6(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(170, 39),
Size = UDim2.new(0, 1, 1, -39),
BackgroundColor3 = _0x7988,
BorderSizePixel = 0,
Parent = _0x2D1C,
})
_0x41BA.ZIndex = 5
local _0xCC96 = _0x81A6(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(184, 50),
Size = UDim2.new(1, -196, 1, -60),
BackgroundTransparency = 1,
ClipsDescendants = true,
ZIndex = 1,
Parent = _0x2D1C,
})
local _0xB355 = _0x81A6(string.char(70,114,97,109,101), {
Size = UDim2.fromScale(1, 1),
BackgroundColor3 = _0xD583,
BackgroundTransparency = 1,
BorderSizePixel = 0,
ZIndex = 50,
Parent = _0xCC96,
})
local _0xC5AD
local _0xB605 = {}
local _0x6EAD
local function _0x2B90(_0x4C40)
if _0x6EAD == _0x4C40 then
return
end
local _0x6355 = _0x6EAD
_0x6EAD = _0x4C40
for _0xBFE6, _0x4903 in ipairs(_0xB605) do
if _0x4903 ~= _0x4C40 then
_0x4903.page.Visible = false
end
end
local _0xD4A2 = _0x4C40.y
if _0x6355 then
_0x0ED9(_0xB428, 0.3, { Position = UDim2.fromOffset(8, _0xD4A2) }, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
else
_0xB428.Position = UDim2.fromOffset(8, _0xD4A2)
end
_0xA33C()
if _0x6355 then
_0x0ED9(_0x6355.label, 0.2, { TextColor3 = _0x08BE })
_0x6355.label.Font = Enum.Font.GothamMedium
_0x6355.icon.color(_0x08BE)
_0x6355.chev(false)
end
_0x0ED9(_0x4C40.label, 0.2, { TextColor3 = _0x0333 })
_0x4C40.label.Font = Enum.Font.GothamBold
_0x4C40.icon.color(_0x0333)
_0x4C40.icon.pop()
_0x4C40.chev(true)
_0x4C40.page.CanvasPosition = Vector2.zero
_0x4C40.page.Position = UDim2.fromOffset(0, 14)
_0x4C40.page.Visible = true
_0x0ED9(_0x4C40.page, 0.35, { Position = UDim2.fromOffset(0, 0) }, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
if _0xC5AD then
_0xC5AD:Cancel()
end
_0xB355.BackgroundTransparency = 0
_0xC5AD = _0x0ED9(_0xB355, 0.3, { BackgroundTransparency = 1 })
end
return (function(...)
local _0xD650
local function _0x6DEE(_0x1592, _0x334A, _0x4C40)
local _0xFBB7 = _0x1592.key ..string.char(32).. _0x334A.name:lower() ..string.char(32).. _0x4C40.label.Text:lower()
for _0xBFE6, _0x42FB in ipairs(_0xD650) do
if not _0xFBB7:find(_0x42FB, 1, true) then
return false
end
end
return true
end
local function _0x7700(_0x4C40)
if _0x4C40.custom then
return
end
local _0xD4A2 = 46
if _0xD650 then
for _0xBFE6, _0x334A in ipairs(_0x4C40.sections) do
local _0xA3C8 = 30
local _0x36C8 = false
for _0xBFE6, _0x1592 in ipairs(_0x334A.items) do
local _0x3E35 = _0x6DEE(_0x1592, _0x334A, _0x4C40)
_0x1592.row.Visible = _0x3E35
if _0x3E35 then
_0x1592.row.Position = UDim2.fromOffset(8, _0xA3C8)
_0xA3C8 += _0x1592.h + 6
_0x36C8 = true
end
end
_0x334A.card.Visible = _0x36C8
if _0x36C8 then
local _0x98C3 = _0xA3C8 + 8 - 6
_0x334A.card.Position = UDim2.fromOffset(2, _0xD4A2)
_0x334A.card.Size = UDim2.new(1, -8, 0, _0x98C3)
_0xD4A2 += _0x98C3 + 10
end
end
_0x4C40.page.CanvasSize = UDim2.fromOffset(0, _0xD4A2 - 10 + 2 + 4)
return
end
for _0xBFE6, _0x334A in ipairs(_0x4C40.sections) do
local _0x93A1 = not _0x4C40.subs or _0x334A.group == _0x4C40.sub
local _0x1063 = not _0x334A.collapsible or _0x334A.isOpen or _0x334A.open > 0.001
for _0xBFE6, _0x1592 in ipairs(_0x334A.items) do
_0x1592.row.Position = UDim2.fromOffset(8, _0x1592.y)
_0x1592.row.Visible = _0x1063
end
local _0x98C3 = _0x334A.height
if _0x334A.collapsible then
_0x98C3 = math.floor(30 + (_0x334A.height - 30) * _0x334A.open + 0.5)
end
_0x334A.card.Visible = _0x93A1
if _0x93A1 then
_0x334A.card.Position = UDim2.fromOffset(2, _0xD4A2)
_0x334A.card.Size = UDim2.new(1, -8, 0, _0x98C3)
_0xD4A2 += _0x98C3 + 10
end
end
_0x4C40.page.CanvasSize = UDim2.fromOffset(0, _0xD4A2 - 10 + 2 + 4)
end
local function _0x5643()
_0xF2A4 += 1
local _0x69D6 = _0x81A6(string.char(70,114,97,109,101), {
Size = UDim2.new(1, 0, 0, 9),
BackgroundTransparency = 1,
LayoutOrder = _0xF2A4,
Parent = _0x4813,
})
_0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromScale(0.5, 0.5),
Size = UDim2.new(1, 4, 0, 1),
BackgroundColor3 = _0x7988,
BorderSizePixel = 0,
Parent = _0x69D6,
})
_0x7B49 += 12
end
local function _0xF32C(_0xBD62, iconName, desc)
local _0xE783 = #_0xB605 + 1
_0xF2A4 += 1
local _0xD4A2 = _0x7B49
_0x7B49 += 35
local _0x62B1 = _0x81A6(string.char(84,101,120,116,66,117,116,116,111,110), {
Text ="",
BackgroundColor3 = _0x3922,
BackgroundTransparency = 1,
AutoButtonColor = false,
Size = UDim2.new(1, 0, 0, 32),
LayoutOrder = _0xF2A4,
Parent = _0x4813,
})
_0x46F9(_0x62B1, 7)
local _0x0D93 = _0x8666(iconName, _0x62B1)
local _0xC8F1 = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text = _0xBD62,
Font = Enum.Font.GothamMedium,
TextSize = 13,
TextColor3 = _0x08BE,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(38, 0),
Size = UDim2.new(1, -60, 1, 0),
ZIndex = 3,
Parent = _0x62B1,
})
local _0xB42F = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.new(1, -14, 0.5, 0),
Size = UDim2.fromOffset(6, 10),
BackgroundTransparency = 1,
ZIndex = 3,
Parent = _0x62B1,
})
local _0x7C0D = _0x39BD(_0xB42F, 1, 1.5, 4.5, 5, 1.5, _0xEE3F)
local _0x2BD0 = _0x39BD(_0xB42F, 4.5, 5, 1, 8.5, 1.5, _0xEE3F)
_0x7C0D.ZIndex, _0x2BD0.ZIndex = 3, 3
local function _0x6758(_0x9B7B)
_0x0ED9(_0xB42F, 0.3, { Rotation = _0x9B7B and 90 or 0 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
_0x0ED9(_0x7C0D, 0.2, { BackgroundColor3 = _0x9B7B and _0x0333 or _0xEE3F })
_0x0ED9(_0x2BD0, 0.2, { BackgroundColor3 = _0x9B7B and _0x0333 or _0xEE3F })
end
local _0x4783 = _0x81A6(string.char(83,99,114,111,108,108,105,110,103,70,114,97,109,101), {
Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1,
BorderSizePixel = 0,
ScrollBarThickness = 2,
ScrollBarImageColor3 = _0x08BE,
CanvasSize = UDim2.new(),
ScrollingDirection = Enum.ScrollingDirection.Y,
ElasticBehavior = Enum.ElasticBehavior.Never,
VerticalScrollBarInset = Enum.ScrollBarInset.Always,
ScrollBarImageTransparency = 0.4,
ClipsDescendants = true,
Visible = false,
ZIndex = 1,
Parent = _0xCC96,
})
local _0xCA33 = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text = _0xBD62,
Font = Enum.Font.GothamBold,
TextSize = 18,
TextColor3 = _0x0333,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Size = UDim2.new(1, -8, 0, 22),
Parent = _0x4783,
})
local _0xD7F8 = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text = desc or"",
Font = Enum.Font.Gotham,
TextSize = 12,
TextColor3 = _0x08BE,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(0, 22),
Size = UDim2.new(1, -8, 0, 16),
Parent = _0x4783,
})
local _0x4C40 = {
_0xE783 = _0xE783,
_0xD4A2 = _0xD4A2,
btn = _0x62B1,
_0xC8F1 = _0xC8F1,
_0x0D93 = _0x0D93,
chev = _0x6758,
_0x4783 = _0x4783,
sections = {},
title = _0xCA33,
desc = _0xD7F8,
}
table.insert(_0xB605, _0x4C40)
_0xF709(_0x62B1.MouseButton1Click, function()
_0x2B90(_0x4C40)
end)
_0xF709(_0x62B1.MouseEnter, function()
if _0x6EAD ~= _0x4C40 then
_0x0ED9(_0xC8F1, 0.15, { TextColor3 = _0x9CF4 })
_0x0D93.color(_0x9CF4, 0.15)
end
end)
_0xF709(_0x62B1.MouseLeave, function()
if _0x6EAD ~= _0x4C40 then
_0x0ED9(_0xC8F1, 0.15, { TextColor3 = _0x08BE })
_0x0D93.color(_0x08BE, 0.15)
end
end)
return _0x4C40
end
local _0x26B0 = {}
_0x26B0.__index = _0x26B0
local function _0x78B0(_0x4C40, _0xBD62, group)
local _0xFCDE = _0x81A6(string.char(70,114,97,109,101), { BackgroundColor3 = _0x2CF9, Parent = _0x4C40.page })
_0x46F9(_0xFCDE, 10)
local _0x6D2C = _0x39A4(_0xFCDE)
_0x81A6(string.char(85,73,71,114,97,100,105,101,110,116), {
Rotation = 90,
Color = ColorSequence.new(_0x0333, Color3.fromRGB(190, 190, 190)),
Parent = _0xFCDE,
})
local _0x7268 = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0, 0.5),
Position = UDim2.new(0, 12, 0, 15),
Size = UDim2.fromOffset(3, 12),
BackgroundColor3 = _0x0333,
BorderSizePixel = 0,
Parent = _0xFCDE,
})
_0x1692(_0x7268)
_0x9B45(_0x7268)
_0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text = string.upper(_0xBD62),
Font = Enum.Font.GothamBold,
TextSize = 11,
TextColor3 = _0x9CF4,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(22, 0),
Size = UDim2.new(1, -34, 0, 30),
Parent = _0xFCDE,
})
_0xF709(_0xFCDE.MouseEnter, function()
_0x0ED9(_0x6D2C, 0.2, { Color = Color3.fromRGB(56, 56, 56) })
end)
_0xF709(_0xFCDE.MouseLeave, function()
_0x0ED9(_0x6D2C, 0.2, { Color = _0x7988 })
end)
local _0x334A = setmetatable({
_0x4C40 = _0x4C40,
_0xFCDE = _0xFCDE,
_0xBD62 = _0xBD62,
_0x280C = {},
_0xD4A2 = 30,
_0x1BC5 = 32,
_0x8038 = {},
open = 1,
group = group or _0x4C40.subs and _0x4C40.subs[1],
}, _0x26B0)
table.insert(_0x4C40.sections, _0x334A)
_0x7700(_0x4C40)
return _0x334A
end
local function _0x9C85(_0x4C40, _0x280C)
_0x4C40.subs = _0x280C
_0x4C40.sub = _0x280C[1]
local _0x012B = 1
local _0xCE91 = _0x83FE:GetTextSize(_0x4C40.title.Text, 18, Enum.Font.GothamBold, Vector2.new(400, 40)).X
_0x4C40.desc.Visible = false
_0x4C40.title.Size = UDim2.fromOffset(_0xCE91 + 4, 40)
local _0x88B3 = _0x81A6(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(_0xCE91 + 16, 6),
Size = UDim2.new(1, -(_0xCE91 + 16) - 8, 0, 28),
BackgroundTransparency = 1,
ZIndex = 3,
Parent = _0x4C40.page,
})
local _0xD181 = {}
local _0xA051 = 0
for _0x60FA, sub in ipairs(_0x280C) do
local _0x3F0B = _0x83FE:GetTextSize(sub, 12, Enum.Font.GothamMedium, Vector2.new(300, 40)).X
local _0x42FB = _0x3F0B + 34
local _0xBB9C = _0x81A6(string.char(84,101,120,116,66,117,116,116,111,110), {
Text ="",
AutoButtonColor = false,
BackgroundColor3 = Color3.fromRGB(90, 90, 90),
BackgroundTransparency = _0x60FA == _0x012B and 0.35 or 1,
Position = UDim2.fromOffset(_0xA051, 0),
Size = UDim2.fromOffset(_0x42FB, 28),
ZIndex = 3,
Parent = _0x88B3,
})
_0x46F9(_0xBB9C, 9)
local _0x921D = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.new(0, 13, 0.5, 0),
Size = UDim2.fromOffset(_0x60FA == _0x012B and 6 or 0, _0x60FA == _0x012B and 6 or 0),
BackgroundColor3 = _0x0333,
BorderSizePixel = 0,
ZIndex = 4,
Parent = _0xBB9C,
})
_0x1692(_0x921D)
local _0x4AFF = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text = sub,
Font = Enum.Font.GothamMedium,
TextSize = 12,
TextColor3 = _0x60FA == _0x012B and _0x0333 or _0x08BE,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(_0x60FA == _0x012B and 22 or 12, 0),
Size = UDim2.new(1, -22, 1, 0),
TextXAlignment = Enum.TextXAlignment.Left,
ZIndex = 4,
Parent = _0xBB9C,
})
_0xD181[_0x60FA] = { _0xBB9C = _0xBB9C, _0x93F4 = _0x921D, _0x4AFF = _0x4AFF, _0x42FB = _0x42FB }
_0xA051 += _0x42FB + 4
end
local function _0x6097(_0x60FA, _0x9B7B)
local _0xCA34 = _0xD181[_0x60FA]
_0x0ED9(_0xCA34.b, 0.25, { BackgroundTransparency = _0x9B7B and 0.35 or 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
_0x0ED9(_0xCA34.dot, 0.25, { Size = UDim2.fromOffset(_0x9B7B and 6 or 0, _0x9B7B and 6 or 0) }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
_0x0ED9(_0xCA34.lbl, 0.25, { TextColor3 = _0x9B7B and _0x0333 or _0x08BE, Position = UDim2.fromOffset(_0x9B7B and 22 or 12, 0) }, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
end
local function _0x0712(_0x92FF)
_0x7700(_0x4C40)
if _0x92FF then
_0x4C40.page.CanvasPosition = Vector2.zero
_0x4C40.page.Position = UDim2.fromOffset(0, 14)
_0x0ED9(_0x4C40.page, 0.35, { Position = UDim2.fromOffset(0, 0) }, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
if _0xC5AD then
_0xC5AD:Cancel()
end
_0xB355.BackgroundTransparency = 0
_0xC5AD = _0x0ED9(_0xB355, 0.3, { BackgroundTransparency = 1 })
end
end
local function _0xB828(_0x60FA)
if _0x60FA == _0x012B then
return
end
_0x6097(_0x012B, false)
_0x012B = _0x60FA
_0x4C40.sub = _0x280C[_0x60FA]
_0x6097(_0x60FA, true)
_0x0712(true)
end
_0x4C40.setSub = function(sub)
local _0x60FA = table.find(_0x280C, sub)
if _0x60FA then
_0xB828(_0x60FA)
end
end
for _0x60FA, _0xCA34 in ipairs(_0xD181) do
_0xF709(_0xCA34.b.MouseEnter, function()
if _0x60FA ~= _0x012B then
_0x0ED9(_0xCA34.b, 0.15, { BackgroundTransparency = 0.8 })
_0x0ED9(_0xCA34.lbl, 0.15, { TextColor3 = _0x9CF4 })
end
end)
_0xF709(_0xCA34.b.MouseLeave, function()
if _0x60FA ~= _0x012B then
_0x0ED9(_0xCA34.b, 0.15, { BackgroundTransparency = 1 })
_0x0ED9(_0xCA34.lbl, 0.15, { TextColor3 = _0x08BE })
end
end)
_0xF709(_0xCA34.b.MouseButton1Click, function()
_0xB828(_0x60FA)
end)
end
_0x7700(_0x4C40)
end
_0x26B0.Collapsible = function(self2, startOpen)
self2.collapsible = true
self2.isOpen = startOpen and true or false
self2.open = self2.isOpen and 1 or 0
self2.card.ClipsDescendants = true
local _0x6D2C = self2.card:FindFirstChildOfClass(string.char(85,73,83,116,114,111,107,101))
local _0x0916 = _0x81A6(string.char(84,101,120,116,66,117,116,116,111,110), {
Text ="",
BackgroundColor3 = _0x3922,
BackgroundTransparency = 1,
AutoButtonColor = false,
Size = UDim2.new(1, 0, 0, 30),
ZIndex = 4,
Parent = self2.card,
})
local _0x0746 = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text = self2.isOpen andstring.char(104,105,100,101)orstring.char(111,112,101,110),
Font = Enum.Font.GothamMedium,
TextSize = 10,
TextColor3 = _0xEE3F,
TextXAlignment = Enum.TextXAlignment.Right,
BackgroundTransparency = 1,
AnchorPoint = Vector2.new(1, 0.5),
Position = UDim2.new(1, -30, 0, 15),
Size = UDim2.fromOffset(40, 14),
ZIndex = 5,
Parent = self2.card,
})
local _0x13D8 = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.new(1, -18, 0, 15),
Size = UDim2.fromOffset(10, 6),
BackgroundTransparency = 1,
Rotation = self2.isOpen and 180 or 0,
ZIndex = 5,
Parent = self2.card,
})
local _0xC178 = _0x39BD(_0x13D8, 1, 1, 5, 5, 1.6)
local _0x35A1 = _0x39BD(_0x13D8, 5, 5, 9, 1, 1.6)
_0xC178.ZIndex, _0x35A1.ZIndex = 5, 5
local _0x92FF = Instance.new(string.char(78,117,109,98,101,114,86,97,108,117,101))
_0x92FF.Value = self2.open
_0xF709(_0x92FF.Changed, function(_0xBE50)
self2.open = _0xBE50
_0x7700(self2.tab)
end)
local _0x95E8
local function _0xBCFD()
self2.isOpen = not self2.isOpen
local _0x9B7B = self2.isOpen
if _0x9B7B then
for _0xBFE6, _0x5ED5 in ipairs(self2.rows) do
_0x5ED5.Visible = true
end
end
if _0x95E8 then
_0x95E8:Cancel()
end
_0x95E8 = _0x0ED9(_0x92FF, _0x9B7B and 0.4 or 0.3, { Value = _0x9B7B and 1 or 0 }, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
_0x95E8.Completed:Connect(function(_0xCFC0)
if _0xCFC0 == Enum.PlaybackState.Completed and not self2.isOpen then
for _0xBFE6, _0x5ED5 in ipairs(self2.rows) do
_0x5ED5.Visible = false
end
end
end)
_0x0ED9(_0x13D8, 0.35, { Rotation = _0x9B7B and 180 or 0 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
_0x0746.Text = _0x9B7B andstring.char(104,105,100,101)orstring.char(111,112,101,110)if _0x6D2C then
_0x6D2C.Color = _0x0333
_0x0ED9(_0x6D2C, 0.5, { Color = _0x7988 })
end
end
_0xF709(_0x0916.MouseButton1Click, _0xBCFD)
self2.expand = function()
if not self2.isOpen then
_0xBCFD()
end
end
_0xF709(_0x0916.MouseEnter, function()
_0x0ED9(_0xC178, 0.15, { BackgroundColor3 = _0x0333 })
_0x0ED9(_0x35A1, 0.15, { BackgroundColor3 = _0x0333 })
_0x0ED9(_0x0746, 0.15, { TextColor3 = _0x9CF4 })
end)
_0xF709(_0x0916.MouseLeave, function()
_0x0ED9(_0xC178, 0.15, { BackgroundColor3 = _0x08BE })
_0x0ED9(_0x35A1, 0.15, { BackgroundColor3 = _0x08BE })
_0x0ED9(_0x0746, 0.15, { TextColor3 = _0xEE3F })
end)
_0x7700(self2.tab)
return self2
end
local _0x4FF7 = {}
local _0x34DB = {}
local _0xF810 = true
local _0x9CED = game:GetService(string.char(72,116,116,112,83,101,114,118,105,99,101))
local _0xA69C =string.char(67,108,117,109,115,121,83,99,114,105,112,116)local _0x1F7C = _0xA69C ..string.char(47,99,117,114,114,101,110,116,46,106,115,111,110)local _0x0C8D = _0xA69C ..string.char(47,99,111,110,102,105,103,115,46,106,115,111,110)if makefolder and not (isfolder and isfolder(_0xA69C)) then
pcall(makefolder, _0xA69C)
end
pcall(function()
local _0xE187 = isfile and isfile(_0x1F7C) and _0x1F7C orstring.char(99,108,117,109,115,121,115,99,114,105,112,116,95,99,111,110,102,105,103,46,106,115,111,110)if isfile and isfile(_0xE187) then
local _0x819A = _0x9CED:JSONDecode(readfile(_0xE187))
if type(_0x819A) ==string.char(116,97,98,108,101)then
_0x4FF7 = _0x819A
end
end
end)
local _0x9B6C = {}
pcall(function()
local _0xE187 = isfile and isfile(_0x0C8D) and _0x0C8D orstring.char(99,108,117,109,115,121,115,99,114,105,112,116,95,99,111,110,102,105,103,115,46,106,115,111,110)if isfile and isfile(_0xE187) then
local _0x819A = _0x9CED:JSONDecode(readfile(_0xE187))
if type(_0x819A) ==string.char(116,97,98,108,101)then
_0x9B6C = _0x819A
end
end
end)
local _0x82A4, _0xCB95 = false, 0
local _0xB786 = { [string.char(84,114,111,108,108,32,70,117,110,47,72,117,103,47,72,117,103)] = true }
local function _0x330E(_0xFBB7, _0xBE50)
if _0xB786[_0xFBB7] then
return
end
if _0xF810 or _0x4FF7[_0xFBB7] == _0xBE50 then
return
end
_0x4FF7[_0xFBB7] = _0xBE50
_0x82A4 = true
_0xCB95 = os.clock()
end
local function _0x0C7C()
_0x82A4 = false
if not writefile then
return
end
pcall(function()
writefile(_0x1F7C, _0x9CED:JSONEncode(_0x4FF7))
end)
end
local function _0x6B2B(source)
local _0x3E35, _0x6E98 = pcall(function()
return _0x9CED:JSONDecode(_0x9CED:JSONEncode(source))
end)
return _0x3E35 and _0x6E98 or {}
endlocal _0x49C9 =string.char(67,83,67,70,71,49,58)local _0xDC24 =string.char(65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,48,49,50,51,52,53,54,55,56,57,43,47)local function _0x076B(_0xC352)
local _0xB1B3 = {}
local _0xCAFA = #_0xC352
for _0x60FA = 1, _0xCAFA, 3 do
local _0x7D74 = string.byte(_0xC352, _0x60FA) or 0
local _0xBB9C = string.byte(_0xC352, _0x60FA + 1)
local _0xD51E = string.byte(_0xC352, _0x60FA + 2)
local _0xDDE9 = _0x7D74 * 65536 + (_0xBB9C or 0) * 256 + (_0xD51E or 0)
_0xB1B3[#_0xB1B3 + 1] = _0xDC24:sub(math.floor(_0xDDE9 / 262144) % 64 + 1, math.floor(_0xDDE9 / 262144) % 64 + 1)
_0xB1B3[#_0xB1B3 + 1] = _0xDC24:sub(math.floor(_0xDDE9 / 4096) % 64 + 1, math.floor(_0xDDE9 / 4096) % 64 + 1)
if _0xBB9C then
_0xB1B3[#_0xB1B3 + 1] = _0xDC24:sub(math.floor(_0xDDE9 / 64) % 64 + 1, math.floor(_0xDDE9 / 64) % 64 + 1)
else
_0xB1B3[#_0xB1B3 + 1] =string.char(61)end
if _0xD51E then
_0xB1B3[#_0xB1B3 + 1] = _0xDC24:sub(_0xDDE9 % 64 + 1, _0xDDE9 % 64 + 1)
else
_0xB1B3[#_0xB1B3 + 1] =string.char(61)end
end
return table.concat(_0xB1B3)
end
local function _0x26F5(_0xC352)
_0xC352 = tostring(_0xC352 or""):gsub(string.char(37,115,43),"")
if _0xC352 ==""or #_0xC352 % 4 ~= 0 or _0xC352:find(string.char(91,94,37,119,37,43,47,61,93)) then
return nil,string.char(105,110,118,97,108,105,100,32,115,104,97,114,101,32,73,68)end
local _0x0534 = {}
for _0x60FA = 1, #_0xDC24 do
_0x0534[_0xDC24:sub(_0x60FA, _0x60FA)] = _0x60FA - 1
end
local _0xB1B3 = {}
for _0x60FA = 1, #_0xC352, 4 do
local _0xBF7B, _0x318E, _0x78A8, _0xCAB5 = _0xC352:sub(_0x60FA, _0x60FA), _0xC352:sub(_0x60FA + 1, _0x60FA + 1), _0xC352:sub(_0x60FA + 2, _0x60FA + 2), _0xC352:sub(_0x60FA + 3, _0x60FA + 3)
local _0x7D74, _0xBB9C = _0x0534[_0xBF7B], _0x0534[_0x318E]
if _0x7D74 == nil or _0xBB9C == nil then
return nil,string.char(105,110,118,97,108,105,100,32,115,104,97,114,101,32,73,68)end
local _0xD51E = _0x78A8 ==string.char(61)and 0 or _0x0534[_0x78A8]
local _0x819A = _0xCAB5 ==string.char(61)and 0 or _0x0534[_0xCAB5]
if _0xD51E == nil or _0x819A == nil then
return nil,string.char(105,110,118,97,108,105,100,32,115,104,97,114,101,32,73,68)end
local _0xDDE9 = _0x7D74 * 262144 + _0xBB9C * 4096 + _0xD51E * 64 + _0x819A
_0xB1B3[#_0xB1B3 + 1] = string.char(math.floor(_0xDDE9 / 65536) % 256)
if _0x78A8 ~=string.char(61)then
_0xB1B3[#_0xB1B3 + 1] = string.char(math.floor(_0xDDE9 / 256) % 256)
end
if _0xCAB5 ~=string.char(61)then
_0xB1B3[#_0xB1B3 + 1] = string.char(_0xDDE9 % 256)
end
end
return table.concat(_0xB1B3)
end
local function _0xD75A(_0xBD62, _0xC352)
local _0xA7E5 = {
version = 1,
_0xBD62 = tostring(_0xBD62 orstring.char(83,104,97,114,101,100,32,67,111,110,102,105,103)),
_0x4FF7 = _0x6B2B(_0xC352),
}
local _0x3E35, _0x5FA3 = pcall(function()
return _0x9CED:JSONEncode(_0xA7E5)
end)
if not _0x3E35 then
return nil,string.char(99,111,117,108,100,32,110,111,116,32,101,110,99,111,100,101,32,99,111,110,102,105,103)end
return _0x49C9 .. _0x076B(_0x5FA3)
end
local function _0x4247(_0xABD9)
_0xABD9 = tostring(_0xABD9 or""):match(string.char(94,37,115,42,40,46,45,41,37,115,42,36))
if _0xABD9:sub(1, #_0x49C9) ~= _0x49C9 then
return nil,string.char(105,110,118,97,108,105,100,32,99,111,110,102,105,103,32,73,68)end
local _0x4B55, _0x7FEF = _0x26F5(_0xABD9:sub(#_0x49C9 + 1))
if not _0x4B55 then
return nil, _0x7FEF
end
local _0x3E35, _0xA7E5 = pcall(function()
return _0x9CED:JSONDecode(_0x4B55)
end)
if not _0x3E35 or type(_0xA7E5) ~=string.char(116,97,98,108,101)or _0xA7E5.version ~= 1 or type(_0xA7E5.config) ~=string.char(116,97,98,108,101)then
return nil,string.char(98,114,111,107,101,110,32,111,114,32,117,110,115,117,112,112,111,114,116,101,100,32,99,111,110,102,105,103,32,73,68)end
return _0xA7E5
end
local function _0x266A()
local _0x35BB = _0x6B2B(_0x4FF7)
for _0xBFE6, _0x5ED5 in ipairs(_0x34DB) do
if _0x5ED5.get then
local _0x3E35, _0x8F5D = pcall(_0x5ED5.get)
if _0x3E35 and _0x8F5D ~= nil then
_0x35BB[_0x5ED5.key] = _0x8F5D
end
end
end_0x35BB[string.char(77,101,110,117,47,87,105,100,116,104)] = math.floor(_0x2D1C.Size.X.Offset + 0.5)
_0x35BB[string.char(77,101,110,117,47,72,101,105,103,104,116)] = math.floor(_0x2D1C.Size.Y.Offset + 0.5)
return _0x35BB
end
local function _0x6FA0()
if not writefile then
return false,string.char(102,105,108,101,32,65,80,73,32,105,115,32,117,110,97,118,97,105,108,97,98,108,101)end
local _0x3E35, _0x7FEF = pcall(function()
writefile(_0x0C8D, _0x9CED:JSONEncode(_0x9B6C))
end)
return _0x3E35, _0x7FEF
end
local function _0x9810(_0xBD62)
_0xBD62 = tostring(_0xBD62 or""):match(string.char(94,37,115,42,40,46,45,41,37,115,42,36))
if _0xBD62 ==""then
return nil,string.char(101,110,116,101,114,32,97,32,99,111,110,102,105,103,32,110,97,109,101)end
if (utf8.len(_0xBD62) or #_0xBD62) > 32 then
return nil,string.char(110,97,109,101,32,109,117,115,116,32,98,101,32,51,50,32,99,104,97,114,97,99,116,101,114,115,32,111,114,32,108,101,115,115)end
if _0xBD62:find(string.char(91,37,99,93)) then
return nil,string.char(110,97,109,101,32,99,111,110,116,97,105,110,115,32,117,110,115,117,112,112,111,114,116,101,100,32,99,104,97,114,97,99,116,101,114,115)end
return _0xBD62
end
local function _0xF791(_0xC352)
_0x4FF7 = _0x6B2B(_0xC352)local _0x8255 = tonumber(_0x4FF7[string.char(77,101,110,117,47,87,105,100,116,104)])
local _0x9A5D = tonumber(_0x4FF7[string.char(77,101,110,117,47,72,101,105,103,104,116)])
if _0x8255 or _0x9A5D then
local _0x42FB = math.clamp(_0x8255 or _0x2D1C.Size.X.Offset, 430, 1000)
local _0x98C3 = math.clamp(_0x9A5D or _0x2D1C.Size.Y.Offset, 320, 760)
_0x2D1C.Size = UDim2.fromOffset(_0x42FB, _0x98C3)
_0x0361 = _0x42FB / 680
_0xB5DC = _0x98C3 / 470
_0xE9B2.Scale = _0x55FA
elseif next(_0x4FF7) == nil then
_0x2D1C.Size = UDim2.fromOffset(680, 470)
_0x0361 = 1
_0xB5DC = 1
_0xE9B2.Scale = _0x55FA
end
_0xF810 = true
for _0xBFE6, _0x5ED5 in ipairs(_0x34DB) do
local _0x8F5D = _0x4FF7[_0x5ED5.key]
if _0x8F5D == nil then
_0x8F5D = _0x5ED5.default
end
if _0x8F5D ~= nil then
pcall(_0x5ED5.set, _0x8F5D)
end
end
_0xF810 = false
_0x82A4 = false
_0x0C7C()
end
_0xF709(_0x7FDD.Heartbeat, function()
if _0x82A4 and os.clock() - _0xCB95 > 1 then
_0x0C7C()
end
end)
local function _0xA354(_0xDBF6, itemName)
return _0xDBF6.tab.label.Text ..string.char(47).. _0xDBF6.name ..string.char(47).. itemName
end
local function _0x64F7(_0xFBB7, _0xB828, get, default)
if _0xB786[_0xFBB7] then
return
end
table.insert(_0x34DB, { _0xFBB7 = _0xFBB7, _0xB828 = _0xB828, get = get, default = default })
end
local _0x9CCA = Color3.fromRGB(62, 62, 62)
local _0xA868 = Color3.fromRGB(88, 88, 88)
_0x26B0._row = function(self2, _0xBD62, desc, _0x1BC5)
local _0x98C3 = _0x1BC5 or (desc and 40 or 32)
local _0x741F = _0x81A6(string.char(84,101,120,116,66,117,116,116,111,110), {
Text ="",
BackgroundColor3 = _0x3922,
AutoButtonColor = false,
Position = UDim2.fromOffset(8, self2.y),
Size = UDim2.new(1, -16, 0, _0x98C3),
ClipsDescendants = true,
Parent = self2.card,
})
_0x46F9(_0x741F, 7)
local _0x0344 = _0x39A4(_0x741F)
table.insert(self2.rows, _0x741F)
table.insert(self2.items, {
_0x741F = _0x741F,
_0xD4A2 = self2.y,
_0x98C3 = _0x98C3,
_0xBD62 = _0xBD62,
desc = desc,
_0xFBB7 = (_0xBD62 ..string.char(32).. (desc or"")):lower(),
})
if self2.collapsible and not self2.isOpen then
_0x741F.Visible = false
end
self2.y += _0x98C3 + 6
self2.height = self2.y + 8 - 6
_0x7700(self2.tab)
local _0x173A = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0, 0.5),
Position = UDim2.new(0, 0, 0.5, 0),
Size = UDim2.fromOffset(2, 0),
BackgroundColor3 = _0x0333,
BorderSizePixel = 0,
ZIndex = 2,
Parent = _0x741F,
})
_0x46F9(_0x173A, 1)
local _0x6EE1 = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text = _0xBD62,
Font = Enum.Font.GothamMedium,
TextSize = 12,
TextColor3 = _0x9CF4,
TextXAlignment = Enum.TextXAlignment.Left,
TextTruncate = Enum.TextTruncate.AtEnd,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(12, desc and 6 or 0),
Size = UDim2.new(1, -150, 0, desc and 15 or _0x98C3),
Parent = _0x741F,
})
if desc then
_0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text = desc,
Font = Enum.Font.Gotham,
TextSize = 10,
TextColor3 = _0xEE3F,
TextXAlignment = Enum.TextXAlignment.Left,
TextTruncate = Enum.TextTruncate.AtEnd,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(12, 21),
Size = UDim2.new(1, -150, 0, 13),
Parent = _0x741F,
})
end
local _0xC879, _0x2395 = false, false
local function _0x6097()
local _0x662D = _0xC879 or _0x2395
_0x0ED9(_0x173A, 0.3, { Size = UDim2.fromOffset(2, _0x2395 and _0x98C3 - 14 or (_0xC879 and 12 or 0)) }, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
_0x0ED9(_0x741F, 0.15, { BackgroundColor3 = _0xC879 and _0x9245 or _0x3922 })
_0x0ED9(_0x6EE1, 0.2, {
TextColor3 = _0x662D and _0x0333 or _0x9CF4,
Position = UDim2.fromOffset(_0xC879 and 15 or 12, _0x6EE1.Position.Y.Offset),
}, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
_0x0ED9(_0x0344, 0.2, { Color = _0x2395 and _0xA868 or (_0xC879 and _0x9CCA or _0x7988) })
end
_0xF709(_0x741F.MouseEnter, function()
_0xC879 = true
_0x6097()
end)
_0xF709(_0x741F.MouseLeave, function()
_0xC879 = false
_0x6097()
end)
local function _0x7268(_0x9B7B)
_0x2395 = _0x9B7B
_0x6097()
end
return _0x741F, _0x6EE1, _0x0344, _0x7268
endlocal _0x3DF5 = {
[string.char(69,110,97,98,108,101,32,49)] =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,48,48,55,55,50,53,48,57,53,56,51,51,51,54),
Sparkle =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,49,48,50,52,49,57,51,54,57,54,54,48,56,57),
[string.char(76,97,115,101,114,32,67,108,105,99,107)] =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,56,57,49,51,48,48,54,51,52,49),
[string.char(69,110,97,98,108,101,32,50)] =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,56,52,54,50,54,48,51,54,56,54,56,48,54,55),
Notify =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,48,51,52,50,49,51,48,52,48,50,48,48,51,57),
}
local _0x7542 = true
local _0x05CA =string.char(69,110,97,98,108,101,32,49)local _0xB4A8 =string.char(69,110,97,98,108,101,32,49)local _0x0DFE =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,56,55,54,57,51,57,56,51,48)local _0x82E5 = 0
local function _0x253D(enabled)
if not _0x7542 then return end
local _0xABD9 = _0x3DF5[enabled and _0x05CA or _0xB4A8] or _0x0DFE
_0x82E5 = _0x82E5 + 1
local _0x8B04 = _0x82E5
task.spawn(function()
local function _0x6615(_0x4FEA, _0x5E9B)
local _0xEF9C = Instance.new(string.char(83,111,117,110,100))
_0xEF9C.Name =string.char(67,108,117,109,115,121,95,85,73,95,84,111,103,103,108,101,83,111,117,110,100)_0xEF9C.SoundId = _0x5E9B
_0xEF9C.Volume = 1
_0xEF9C.Looped = false
_0xEF9C.PlaybackSpeed = 1
_0xEF9C.Parent = _0x4FEA
return _0xEF9C
endlocal _0xEF9C = _0x6615(_0x28F0, _0xABD9)
local _0x536E = false
local _0x3E35 = pcall(function()
_0xEF9C:Play()
_0x536E = true
end)if not _0x3E35 or not _0x536E then
pcall(function() _0xEF9C:Destroy() end)
local _0xDF16 = workspace.CurrentCamera
if _0xDF16 then
local _0x13F1 = _0x6615(_0xDF16, _0xABD9)
pcall(function() _0x13F1:Play() end)
_0x0E8D:AddItem(_0x13F1, 5)
return
end
end
_0x0E8D:AddItem(_0xEF9C, 5)task.delay(0.35, function()
if _0x8B04 ~= _0x82E5 then return end
if _0xEF9C.Parent and not _0xEF9C.IsPlaying then
local _0x84D7 = _0x6615(workspace.CurrentCamera or _0x28F0, _0x0DFE)
pcall(function() _0x84D7:Play() end)
_0x0E8D:AddItem(_0x84D7, 5)
end
end)
end)
end
_0x26B0.Toggle = function(self2, _0xBD62, desc, callback)
local _0x522F = false
local _0xFBB7 = _0xA354(self2, _0xBD62)
local _0x741F, _0xBFE6, _0xBFE6, _0x7268 = self2:_row(_0xBD62, desc)
local _0xB86F = _0x81A6(string.char(84,101,120,116,66,117,116,116,111,110), {
AnchorPoint = Vector2.new(1, 0.5),
Position = UDim2.new(1, -10, 0.5, 0),
Size = UDim2.fromOffset(34, 18),
BackgroundColor3 = _0xD583,
BorderSizePixel = 0,
AutoButtonColor = false,
Text ="",
Parent = _0x741F,
})
_0x1692(_0xB86F)
local _0x52CC = _0x39A4(_0xB86F)
local _0xBD06 = _0x81A6(string.char(70,114,97,109,101), {
Size = UDim2.fromScale(1, 1),
BackgroundColor3 = _0x0333,
BackgroundTransparency = 1,
BorderSizePixel = 0,
Parent = _0xB86F,
})
_0x1692(_0xBD06)
_0x81A6(string.char(85,73,71,114,97,100,105,101,110,116), { Color = ColorSequence.new(Color3.fromRGB(150, 150, 150), _0x0333), Parent = _0xBD06 })
local _0xE9A9 = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.new(0, 9, 0.5, 0),
Size = UDim2.fromOffset(12, 12),
BackgroundColor3 = _0x08BE,
BorderSizePixel = 0,
ZIndex = 2,
Parent = _0xB86F,
})
_0x1692(_0xE9A9)
local function _0x71E6(_0xBE50, silent)
_0x522F = _0xBE50
_0xE9A9.Size = UDim2.fromOffset(18, 12)
_0x0ED9(_0xE9A9, 0.35, {
Position = UDim2.new(0, _0x522F and 25 or 9, 0.5, 0),
Size = UDim2.fromOffset(12, 12),
BackgroundColor3 = _0x522F and _0xD583 or _0x08BE,
}, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
_0x0ED9(_0xBD06, 0.25, { BackgroundTransparency = _0x522F and 0 or 1 })
_0x0ED9(_0x52CC, 0.25, { Color = _0x522F and _0x0333 or _0x7988 })
_0x7268(_0x522F)
_0x330E(_0xFBB7, _0x522F)
if not silent then
_0x253D(_0x522F)
task.spawn(callback, _0x522F)
end
end_0xF709(_0xB86F.MouseButton1Click, function()
_0x71E6(not _0x522F)
end)
_0x64F7(_0xFBB7, function(_0xBE50)
if type(_0xBE50) ==string.char(98,111,111,108,101,97,110)and _0xBE50 ~= _0x522F then
_0x71E6(_0xBE50)
end
end, function()
return _0x522F
end, false)
return {
Set = function(_0xBE50, silent)
if _0xBE50 ~= _0x522F then
_0x71E6(_0xBE50, silent)
end
end,
Get = function()
return _0x522F
end,
}
end
_0x26B0.Segmented = function(self2, _0xBD62, _0x0796, default, callback)
local _0x012B = table.find(_0x0796, default) or 1
local _0xDDE9 = #_0x0796
local _0xFBB7 = _0xA354(self2, _0xBD62)
local _0x741F, _0x6EE1 = self2:_row(_0xBD62, nil, 34)
local _0x22B5 = _0xDDE9 * 60
_0x6EE1.Size = UDim2.new(1, -(_0x22B5 + 24), 1, 0)
local _0xD268 = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(1, 0.5),
Position = UDim2.new(1, -6, 0.5, 0),
Size = UDim2.fromOffset(_0x22B5, 24),
BackgroundColor3 = _0xD583,
Parent = _0x741F,
})
_0x46F9(_0xD268, 7)
local _0x840E = _0x39A4(_0xD268)
local _0x1823 = _0x81A6(string.char(70,114,97,109,101), {
Position = UDim2.new((_0x012B - 1) / _0xDDE9, 2, 0, 2),
Size = UDim2.new(1 / _0xDDE9, -4, 1, -4),
BackgroundColor3 = _0x0333,
BorderSizePixel = 0,
ZIndex = 2,
Parent = _0xD268,
})
_0x46F9(_0x1823, 6)
_0x81A6(string.char(85,73,71,114,97,100,105,101,110,116), {
Rotation = 90,
Color = ColorSequence.new(_0x0333, Color3.fromRGB(185, 185, 185)),
Parent = _0x1823,
})
local _0xC838 = _0x81A6(string.char(85,73,83,99,97,108,101), { Parent = _0x1823 })
local _0xC857 = {}
local function _0xB828(_0x60FA, silent)
if _0x60FA == _0x012B then
return
end
_0x0ED9(_0xC857[_0x012B], 0.2, { TextColor3 = _0x08BE })
_0xC857[_0x012B].Font = Enum.Font.GothamMedium
_0x012B = _0x60FA
_0x0ED9(_0xC857[_0x60FA], 0.2, { TextColor3 = _0xD583 })
_0xC857[_0x60FA].Font = Enum.Font.GothamBold
_0x0ED9(_0x1823, 0.35, { Position = UDim2.new((_0x60FA - 1) / _0xDDE9, 2, 0, 2) }, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
_0xC838.Scale = 0.86
_0x0ED9(_0xC838, 0.4, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
_0x840E.Color = _0x0333
_0x0ED9(_0x840E, 0.45, { Color = _0x7988 })
_0x330E(_0xFBB7, _0x0796[_0x60FA])
if not silent then
task.spawn(callback, _0x0796[_0x60FA])
end
end
_0x64F7(_0xFBB7, function(_0xBE50)
local _0x60FA = table.find(_0x0796, _0xBE50)
if _0x60FA then
_0xB828(_0x60FA)
end
end, function()
return _0x0796[_0x012B]
end, _0x0796[table.find(_0x0796, default) or 1])
for _0x60FA, opt in ipairs(_0x0796) do
local _0xBB9C = _0x81A6(string.char(84,101,120,116,66,117,116,116,111,110), {
Text = opt,
Font = _0x60FA == _0x012B and Enum.Font.GothamBold or Enum.Font.GothamMedium,
TextSize = 11,
TextColor3 = _0x60FA == _0x012B and _0xD583 or _0x08BE,
BackgroundTransparency = 1,
AutoButtonColor = false,
Position = UDim2.fromScale((_0x60FA - 1) / _0xDDE9, 0),
Size = UDim2.fromScale(1 / _0xDDE9, 1),
ZIndex = 3,
Parent = _0xD268,
})
_0xC857[_0x60FA] = _0xBB9C
_0xF709(_0xBB9C.MouseEnter, function()
if _0x60FA ~= _0x012B then
_0x0ED9(_0xBB9C, 0.15, { TextColor3 = _0x9CF4 })
end
end)
_0xF709(_0xBB9C.MouseLeave, function()
if _0x60FA ~= _0x012B then
_0x0ED9(_0xBB9C, 0.15, { TextColor3 = _0x08BE })
end
end)
_0xF709(_0xBB9C.MouseButton1Click, function()
_0xB828(_0x60FA)
end)
end
return {
Set = function(opt, silent)
local _0x60FA = table.find(_0x0796, opt)
if _0x60FA then
_0xB828(_0x60FA, silent)
end
end,
Get = function()
return _0x0796[_0x012B]
end,
}
end
_0x26B0.Button = function(self2, _0xBD62, desc, callback)
local _0x741F = self2:_row(_0xBD62, desc)
local _0x69D6 = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(1, 0.5),
Position = UDim2.new(1, -8, 0.5, 0),
Size = UDim2.fromOffset(22, 22),
BackgroundColor3 = _0xD583,
ZIndex = 2,
Parent = _0x741F,
})
_0x1692(_0x69D6)
local _0xFEB6 = _0x39A4(_0x69D6)
local _0xCCCB = _0x81A6(string.char(85,73,83,99,97,108,101), { Parent = _0x69D6 })
local _0x13D8 = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.new(0.5, 1, 0.5, 0),
Size = UDim2.fromOffset(6, 10),
BackgroundTransparency = 1,
ZIndex = 2,
Parent = _0x69D6,
})
local _0x622A = _0x39BD(_0x13D8, 1, 1, 5, 5, 1.6)
local _0xCF9B = _0x39BD(_0x13D8, 5, 5, 1, 9, 1.6)
_0x622A.ZIndex, _0xCF9B.ZIndex = 3, 3
_0xF709(_0x741F.MouseEnter, function()
_0x0ED9(_0x69D6, 0.2, { BackgroundColor3 = _0x0333 })
_0x0ED9(_0xFEB6, 0.2, { Color = _0x0333 })
_0x0ED9(_0x622A, 0.2, { BackgroundColor3 = _0xD583 })
_0x0ED9(_0xCF9B, 0.2, { BackgroundColor3 = _0xD583 })
end)
_0xF709(_0x741F.MouseLeave, function()
_0x0ED9(_0x69D6, 0.2, { BackgroundColor3 = _0xD583 })
_0x0ED9(_0xFEB6, 0.2, { Color = _0x7988 })
_0x0ED9(_0x622A, 0.2, { BackgroundColor3 = _0x08BE })
_0x0ED9(_0xCF9B, 0.2, { BackgroundColor3 = _0x08BE })
end)
_0xF709(_0x741F.MouseButton1Click, function()
local _0x42FB = _0x741F.AbsoluteSize.X * 1.15
local _0xCC97 = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromScale(0.5, 0.5),
Size = UDim2.fromOffset(0, 0),
BackgroundColor3 = _0x0333,
BackgroundTransparency = 0.82,
BorderSizePixel = 0,
Parent = _0x741F,
})
_0x1692(_0xCC97)
_0x0ED9(_0xCC97, 0.55, { Size = UDim2.fromOffset(_0x42FB, _0x42FB), BackgroundTransparency = 1 })
task.delay(0.6, function()
_0xCC97:Destroy()
end)
_0xCCCB.Scale = 0.75
_0x0ED9(_0xCCCB, 0.4, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
task.spawn(callback)
end)
end
_0x26B0.Input = function(self2, _0xBD62, desc, placeholder)
local _0x741F = self2:_row(_0xBD62, desc)
local _0x0A80 = _0x81A6(string.char(84,101,120,116,66,111,120), {
Text ="",
PlaceholderText = placeholder orstring.char(101,110,116,101,114,32,116,101,120,116),
PlaceholderColor3 = _0xEE3F,
Font = Enum.Font.GothamMedium,
TextSize = 11,
TextColor3 = _0x9CF4,
TextXAlignment = Enum.TextXAlignment.Left,
ClearTextOnFocus = false,
BackgroundColor3 = _0xD583,
AnchorPoint = Vector2.new(1, 0.5),
Position = UDim2.new(1, -10, 0.5, 0),
Size = UDim2.fromOffset(130, 24),
Parent = _0x741F,
})
_0x46F9(_0x0A80, 6)
local _0x5B47 = _0x39A4(_0x0A80)
_0x81A6(string.char(85,73,80,97,100,100,105,110,103), { PaddingLeft = UDim.new(0, 8), PaddingRight = UDim.new(0, 8), Parent = _0x0A80 })
_0xF709(_0x0A80.Focused, function()
_0x0ED9(_0x5B47, 0.15, { Color = _0x0333 })
end)
_0xF709(_0x0A80.FocusLost, function()
_0x0ED9(_0x5B47, 0.25, { Color = _0x7988 })
end)
return {
Get = function()
return _0x0A80.Text
end,
Set = function(_0x8F5D)
_0x0A80.Text = tostring(_0x8F5D or"")
end,
SetPlaceholder = function(_0x8F5D)
_0x0A80.PlaceholderText = tostring(_0x8F5D or"")
end,
Focus = function()
_0x0A80:CaptureFocus()
end,
}
end
_0x26B0.Dropdown = function(self2, _0xBD62, desc, _0x0796, placeholder, callback)
local _0x741F = self2:_row(_0xBD62, desc)
local _0x7FBC = table.clone(_0x0796 or {})
local _0x1212
local _0x100E
local _0x8404 = _0x81A6(string.char(84,101,120,116,66,117,116,116,111,110), {
Text = placeholder orstring.char(115,101,108,101,99,116,46,46,46),
Font = Enum.Font.GothamMedium,
TextSize = 11,
TextColor3 = _0x08BE,
TextXAlignment = Enum.TextXAlignment.Left,
TextTruncate = Enum.TextTruncate.AtEnd,
BackgroundColor3 = _0xD583,
AutoButtonColor = false,
AnchorPoint = Vector2.new(1, 0.5),
Position = UDim2.new(1, -10, 0.5, 0),
Size = UDim2.fromOffset(130, 24),
Parent = _0x741F,
})
_0x46F9(_0x8404, 6)
local _0x5653 = _0x39A4(_0x8404)
_0x81A6(string.char(85,73,80,97,100,100,105,110,103), { PaddingLeft = UDim.new(0, 8), PaddingRight = UDim.new(0, 20), Parent = _0x8404 })
local _0x13D8 = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(118),
Font = Enum.Font.GothamBold,
TextSize = 10,
TextColor3 = _0xEE3F,
BackgroundTransparency = 1,
AnchorPoint = Vector2.new(1, 0.5),
Position = UDim2.new(1, -6, 0.5, -1),
Size = UDim2.fromOffset(12, 16),
ZIndex = 3,
Parent = _0x8404,
})
local function _0x9691(_0x8F5D, silent)
if _0x8F5D ~= nil and not table.find(_0x7FBC, _0x8F5D) then
return
end
_0x1212 = _0x8F5D
_0x8404.Text = _0x8F5D or placeholder orstring.char(115,101,108,101,99,116,46,46,46)_0x8404.TextColor3 = _0x8F5D and _0x9CF4 or _0x08BE
if _0x8F5D and not silent then
task.spawn(callback, _0x8F5D)
end
end
_0xF709(_0x8404.MouseButton1Click, function()
if _0x100E then
_0x100E()
return
end
local _0x507B = _0x81A6(string.char(84,101,120,116,66,117,116,116,111,110), {
Text ="",
BackgroundTransparency = 1,
AutoButtonColor = false,
Size = UDim2.fromScale(1, 1),
ZIndex = 149,
Parent = _0x4696,
})
local _0xABB2 = math.max(1, math.min(#_0x7FBC, 5))
local _0xB148 = _0xABB2 * 26 + 8
local _0xAC1A = _0x8404.AbsolutePosition - _0x4696.AbsolutePosition
local _0xA051 = math.clamp(_0xAC1A.X, 4, math.max(4, _0x4696.AbsoluteSize.X - 134))
local _0xF082 = _0xAC1A.Y + _0x8404.AbsoluteSize.Y + 4
local _0xD4A2 = _0xF082 + _0xB148 <= _0x4696.AbsoluteSize.Y - 4 and _0xF082 or math.max(4, _0xAC1A.Y - _0xB148 - 4)
local _0xDD6B = _0x81A6(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(_0xA051, _0xD4A2),
Size = UDim2.fromOffset(130, _0xB148),
BackgroundColor3 = _0x2CF9,
ZIndex = 150,
Parent = _0x4696,
})
_0x46F9(_0xDD6B, 7)
_0x81A6(string.char(85,73,83,116,114,111,107,101), { Color = _0x0333, Transparency = 0.45, Thickness = 1, Parent = _0xDD6B })
local _0xC494 = _0x81A6(string.char(83,99,114,111,108,108,105,110,103,70,114,97,109,101), {
Position = UDim2.fromOffset(4, 4),
Size = UDim2.new(1, -8, 1, -8),
BackgroundTransparency = 1,
BorderSizePixel = 0,
ScrollBarThickness = #_0x7FBC > 5 and 2 or 0,
CanvasSize = UDim2.fromOffset(0, math.max(22, #_0x7FBC * 26)),
ZIndex = 151,
Parent = _0xDD6B,
})
_0x100E = function()
_0x100E = nil
if _0x507B.Parent then
_0x507B:Destroy()
end
if _0xDD6B.Parent then
_0xDD6B:Destroy()
end
_0x0ED9(_0x5653, 0.2, { Color = _0x7988 })
_0x0ED9(_0x13D8, 0.2, { Rotation = 0, TextColor3 = _0xEE3F })
end
_0x507B.MouseButton1Click:Connect(_0x100E)
_0x0ED9(_0x5653, 0.15, { Color = _0x0333 })
_0x0ED9(_0x13D8, 0.2, { Rotation = 180, TextColor3 = _0x0333 })
if #_0x7FBC == 0 then
_0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(110,111,32,99,111,110,102,105,103,115),
Font = Enum.Font.GothamMedium,
TextSize = 10,
TextColor3 = _0xEE3F,
BackgroundTransparency = 1,
Size = UDim2.new(1, 0, 0, 22),
ZIndex = 152,
Parent = _0xC494,
})
else
for _0x60FA, _0x8F5D in ipairs(_0x7FBC) do
local _0x9C6E = _0x81A6(string.char(84,101,120,116,66,117,116,116,111,110), {
Text = _0x8F5D,
Font = _0x1212 == _0x8F5D and Enum.Font.GothamBold or Enum.Font.GothamMedium,
TextSize = 10,
TextColor3 = _0x1212 == _0x8F5D and _0x0333 or _0x9CF4,
TextTruncate = Enum.TextTruncate.AtEnd,
BackgroundColor3 = _0x1212 == _0x8F5D and _0x9245 or _0x3922,
AutoButtonColor = false,
Position = UDim2.fromOffset(0, (_0x60FA - 1) * 26),
Size = UDim2.new(1, -2, 0, 22),
ZIndex = 152,
Parent = _0xC494,
})
_0x46F9(_0x9C6E, 5)
_0x9C6E.MouseButton1Click:Connect(function()
_0x9691(_0x8F5D)
_0x100E()
end)
end
end
end)
return {
Get = function()
return _0x1212
end,
Set = _0x9691,
Update = function(newOptions)
_0x7FBC = table.clone(newOptions or {})
if _0x1212 and not table.find(_0x7FBC, _0x1212) then
_0x9691(nil, true)
end
if _0x100E then
_0x100E()
end
end,
}
end
local _0x92E9
_0x26B0.Slider = function(self2, _0xBD62, min, _0x5C27, default, callback, fmt)
fmt = fmt or tostring
local _0xFBB7 = _0xA354(self2, _0xBD62)
local _0x741F, _0x6EE1 = self2:_row(_0xBD62, nil, 44)
_0x6EE1.Position = UDim2.fromOffset(12, 7)
local _0x9F82 = 40
for _0xBFE6, _0xBE50 in ipairs({ min, _0x5C27, default }) do
_0x9F82 = math.max(_0x9F82, _0x83FE:GetTextSize(fmt(_0xBE50), 10, Enum.Font.GothamBold, Vector2.new(200, 20)).X + 16)
end
_0x6EE1.Size = UDim2.new(1, -(_0x9F82 + 30), 0, 16)
local _0x1D9C = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text = fmt(default),
Font = Enum.Font.GothamBold,
TextSize = 10,
TextColor3 = _0x9CF4,
BackgroundColor3 = _0xD583,
AnchorPoint = Vector2.new(1, 0),
Position = UDim2.new(1, -10, 0, 6),
Size = UDim2.fromOffset(_0x9F82, 18),
Parent = _0x741F,
})
_0x46F9(_0x1D9C, 6)
local _0x4308 = _0x39A4(_0x1D9C)
local _0x88B3 = _0x81A6(string.char(70,114,97,109,101), {
Position = UDim2.new(0, 12, 0, 31),
Size = UDim2.new(1, -24, 0, 5),
BackgroundColor3 = _0xD583,
BorderSizePixel = 0,
Parent = _0x741F,
})
_0x1692(_0x88B3)
_0x39A4(_0x88B3)
local _0xA684 = (default - min) / (_0x5C27 - min)
local _0x73AA = _0x81A6(string.char(70,114,97,109,101), {
Size = UDim2.new(_0xA684, 6 - 12 * _0xA684, 1, 0),
BackgroundColor3 = _0x0333,
BorderSizePixel = 0,
Parent = _0x88B3,
})
_0x1692(_0x73AA)
_0x81A6(string.char(85,73,71,114,97,100,105,101,110,116), { Color = ColorSequence.new(Color3.fromRGB(95, 95, 95), _0x0333), Parent = _0x73AA })
local _0xB86F = _0x81A6(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(6, 0),
Size = UDim2.new(1, -12, 1, 0),
BackgroundTransparency = 1,
ZIndex = 2,
Parent = _0x88B3,
})
local _0xE9A9 = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromScale(_0xA684, 0.5),
Size = UDim2.fromOffset(12, 12),
BackgroundColor3 = _0x0333,
BorderSizePixel = 0,
ZIndex = 2,
Parent = _0xB86F,
})
_0x1692(_0xE9A9)
_0x81A6(string.char(85,73,83,116,114,111,107,101), { Color = _0x3922, Thickness = 2, Parent = _0xE9A9 })
local _0x9004 = _0x81A6(string.char(85,73,83,99,97,108,101), { Parent = _0xE9A9 })
local _0x6F00 = _0x81A6(string.char(84,101,120,116,66,117,116,116,111,110), {
Text ="",
BackgroundTransparency = 1,
Position = UDim2.new(0, 0, 0, 22),
Size = UDim2.new(1, 0, 0, 22),
ZIndex = 3,
Parent = _0x741F,
})
local _0x64B6 = default
local _0x9EA9 = false
local function _0x99E6(_0x5CA5, _0x4903)
local _0x5ED5 = (_0x5CA5 - min) / (_0x5C27 - min)
_0x0ED9(_0xE9A9, _0x4903, { Position = UDim2.fromScale(_0x5ED5, 0.5) }, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
_0x0ED9(_0x73AA, _0x4903, { Size = UDim2.new(_0x5ED5, 6 - 12 * _0x5ED5, 1, 0) }, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
_0x1D9C.Text = fmt(_0x5CA5)
end
local function _0xB828(_0xA051)
local _0x42FB = math.max(_0xB86F.AbsoluteSize.X, 1)
local _0xAC1A = math.clamp((_0xA051 - _0xB86F.AbsolutePosition.X) / _0x42FB, 0, 1)
local _0x5CA5 = math.floor(min + (_0x5C27 - min) * _0xAC1A + 0.5)
_0x99E6(_0x5CA5, 0.08)
if _0x5CA5 ~= _0x64B6 then
_0x64B6 = _0x5CA5
_0x330E(_0xFBB7, _0x5CA5)
task.spawn(callback, _0x5CA5)
end
end
_0xF709(_0x741F.MouseEnter, function()
if not _0x9EA9 then
_0x0ED9(_0x9004, 0.2, { Scale = 1.15 })
end
end)
_0xF709(_0x741F.MouseLeave, function()
if not _0x9EA9 then
_0x0ED9(_0x9004, 0.2, { Scale = 1 })
end
end)
_0xF709(_0x6F00.InputBegan, function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
_0x92E9 = _0xB828
_0x9EA9 = true
_0x0ED9(_0x9004, 0.2, { Scale = 1.35 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
_0x0ED9(_0x4308, 0.15, { Color = _0x0333 })
_0x0ED9(_0x1D9C, 0.15, { TextColor3 = _0x0333 })
_0xB828(input.Position.X)
end
end)
_0xF709(_0x63F8.InputEnded, function(input)
if not _0x9EA9 then
return
end
if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
_0x9EA9 = false
_0x0ED9(_0x9004, 0.25, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
_0x0ED9(_0x4308, 0.3, { Color = _0x7988 })
_0x0ED9(_0x1D9C, 0.3, { TextColor3 = _0x9CF4 })
end
end)
local function _0xBCA4(_0xBE50, silent)
_0xBE50 = math.clamp(_0xBE50, min, _0x5C27)
_0x99E6(_0xBE50, 0.3)
if _0xBE50 ~= _0x64B6 then
_0x64B6 = _0xBE50
_0x330E(_0xFBB7, _0xBE50)
if not silent then
task.spawn(callback, _0xBE50)
end
end
end
_0x64F7(_0xFBB7, function(_0xBE50)
if type(_0xBE50) ==string.char(110,117,109,98,101,114)then
_0xBCA4(_0xBE50)
end
end, function()
return _0x64B6
end, default)
return {
Set = _0xBCA4,
Get = function()
return _0x64B6
end,
}
end
_0x26B0.Keybind = function(self2, _0xBD62, desc, getKey, setKey)
local _0xFBB7 = _0xA354(self2, _0xBD62)
local _0x741F = self2:_row(_0xBD62, desc)
local _0x8404 = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text = getKey().Name,
Font = Enum.Font.GothamBold,
TextSize = 10,
TextColor3 = _0x9CF4,
TextTruncate = Enum.TextTruncate.AtEnd,
BackgroundColor3 = _0xD583,
AnchorPoint = Vector2.new(1, 0.5),
Position = UDim2.new(1, -10, 0.5, 0),
Size = UDim2.fromOffset(84, 22),
Parent = _0x741F,
})
_0x46F9(_0x8404, 6)
local _0x5653 = _0x39A4(_0x8404)
_0xF709(_0x741F.MouseButton1Click, function()
if _0x5102 then
return
end
_0x8404.Text =string.char(112,114,101,115,115,32,97,32,107,101,121,46,46,46)_0x0ED9(_0x5653, 0.15, { Color = _0x0333 })
_0x0ED9(_0x8404, 0.15, { BackgroundColor3 = _0x9245 })
_0x5102 = function(_0x3FFC)
if _0x3FFC and _0x3FFC ~= Enum.KeyCode.Escape then
setKey(_0x3FFC)
_0x330E(_0xFBB7, _0x3FFC.Name)
end
_0x8404.Text = getKey().Name
_0x0ED9(_0x5653, 0.3, { Color = _0x7988 })
_0x0ED9(_0x8404, 0.3, { BackgroundColor3 = _0xD583 })
end
end)
_0x64F7(_0xFBB7, function(_0xBE50)
local _0x3E35, _0x3FFC = pcall(function()
return Enum.KeyCode[_0xBE50]
end)
if _0x3E35 and _0x3FFC then
setKey(_0x3FFC)
_0x8404.Text = _0x3FFC.Name
end
end, function()
return getKey().Name
end, getKey().Name)
end
_0x26B0.Select = function(self2, _0xBD62, desc, _0x0796, default, callback)
local _0x012B = table.find(_0x0796, default) or 1
local _0xDDE9 = #_0x0796
local _0xFBB7 = _0xA354(self2, _0xBD62)
local _0x741F = self2:_row(_0xBD62, desc)
local _0x8404 = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(1, 0.5),
Position = UDim2.new(1, -10, 0.5, 0),
Size = UDim2.fromOffset(130, 24),
BackgroundColor3 = _0xD583,
ClipsDescendants = true,
Parent = _0x741F,
})
_0x46F9(_0x8404, 6)
local _0x5653 = _0x39A4(_0x8404)
local _0x123B = {}
for _0xBFE6, _0x2D51 in ipairs({ -1, 1 }) do
local _0x7D74 = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.new(_0x2D51 < 0 and 0 or 1, _0x2D51 < 0 and 10 or -10, 0.5, -1),
Size = UDim2.fromOffset(5, 8),
BackgroundTransparency = 1,
ZIndex = 2,
Parent = _0x8404,
})
local _0xDDF5, _0x469C
if _0x2D51 < 0 then
_0xDDF5, _0x469C = _0x39BD(_0x7D74, 4, 0.5, 1, 4, 1.4), _0x39BD(_0x7D74, 1, 4, 4, 7.5, 1.4)
else
_0xDDF5, _0x469C = _0x39BD(_0x7D74, 1, 0.5, 4, 4, 1.4), _0x39BD(_0x7D74, 4, 4, 1, 7.5, 1.4)
end
_0xDDF5.ZIndex, _0x469C.ZIndex = 2, 2
_0x123B[_0x2D51] = { _0xEF1C = _0x7D74, _0xDDF5 = _0xDDF5, _0x469C = _0x469C }
end
local _0x7563 = {}
if _0xDDE9 <= 8 then
for _0x60FA = 1, _0xDDE9 do
local _0x819A = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 1),
Position = UDim2.new(0.5, (_0x60FA - (_0xDDE9 + 1) / 2) * 6, 1, -3),
Size = UDim2.fromOffset(_0x60FA == _0x012B and 5 or 2, 2),
BackgroundColor3 = _0x60FA == _0x012B and _0x0333 or _0xEE3F,
BorderSizePixel = 0,
ZIndex = 2,
Parent = _0x8404,
})
_0x1692(_0x819A)
_0x7563[_0x60FA] = _0x819A
end
end
local function _0xE631(_0xD85E, yScale, transp)
return _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text = _0xD85E,
Font = Enum.Font.GothamMedium,
TextSize = 11,
TextColor3 = _0x9CF4,
TextTransparency = transp,
TextTruncate = Enum.TextTruncate.AtEnd,
BackgroundTransparency = 1,
Position = UDim2.new(0, 18, yScale, #_0x7563 > 0 and -2 or 0),
Size = UDim2.new(1, -36, 1, 0),
Parent = _0x8404,
})
end
local _0x4AFF = _0xE631(_0x0796[_0x012B], 0, 0)
local _0x8FD3 = #_0x7563 > 0 and -2 or 0
local function _0xB261(_0x60FA, _0x2D51, silent)
if _0x60FA == _0x012B then
return
end
if _0x7563[_0x012B] then
_0x0ED9(_0x7563[_0x012B], 0.25, { Size = UDim2.fromOffset(2, 2), BackgroundColor3 = _0xEE3F })
end
_0x012B = _0x60FA
if _0x7563[_0x012B] then
_0x0ED9(_0x7563[_0x012B], 0.25, { Size = UDim2.fromOffset(5, 2), BackgroundColor3 = _0x0333 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
end
local _0x6355 = _0x4AFF
_0x0ED9(_0x6355, 0.15, { Position = UDim2.new(0, 18, -_0x2D51, _0x8FD3), TextTransparency = 1 })
task.delay(0.16, function()
_0x6355:Destroy()
end)
_0x4AFF = _0xE631(_0x0796[_0x012B], _0x2D51, 1)
_0x0ED9(_0x4AFF, 0.25, { Position = UDim2.new(0, 18, 0, _0x8FD3), TextTransparency = 0 }, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
local _0x570E = _0x123B[_0x2D51]
local _0xD10F = _0x570E.frame.Position
_0x570E.frame.Position = _0xD10F + UDim2.fromOffset(_0x2D51 * 3, 0)
_0x0ED9(_0x570E.frame, 0.3, { Position = _0xD10F }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
_0x5653.Color = _0x0333
_0x0ED9(_0x5653, 0.4, { Color = _0x7988 })
_0x330E(_0xFBB7, _0x0796[_0x012B])
if not silent then
task.spawn(callback, _0x0796[_0x012B])
end
end
_0x64F7(_0xFBB7, function(_0xBE50)
local _0x60FA = table.find(_0x0796, _0xBE50)
if _0x60FA and _0x60FA ~= _0x012B then
_0xB261(_0x60FA, _0x60FA > _0x012B and 1 or -1)
end
end, function()
return _0x0796[_0x012B]
end, _0x0796[table.find(_0x0796, default) or 1])
local function _0x98EA(_0x2D51)
_0xB261((_0x012B - 1 + _0x2D51) % _0xDDE9 + 1, _0x2D51)
end
_0xF709(_0x741F.MouseButton1Click, function()
_0x98EA(1)
end)
_0xF709(_0x741F.MouseButton2Click, function()
_0x98EA(-1)
end)
_0xF709(_0x741F.MouseEnter, function()
for _0xBFE6, _0x570E in pairs(_0x123B) do
_0x0ED9(_0x570E.l1, 0.15, { BackgroundColor3 = _0x0333 })
_0x0ED9(_0x570E.l2, 0.15, { BackgroundColor3 = _0x0333 })
end
end)
_0xF709(_0x741F.MouseLeave, function()
for _0xBFE6, _0x570E in pairs(_0x123B) do
_0x0ED9(_0x570E.l1, 0.15, { BackgroundColor3 = _0x08BE })
_0x0ED9(_0x570E.l2, 0.15, { BackgroundColor3 = _0x08BE })
end
end)
return {
Set = function(opt, silent)
local _0x60FA = table.find(_0x0796, opt)
if _0x60FA then
_0xB261(_0x60FA, _0x60FA > _0x012B and 1 or -1, silent)
end
end,
Get = function()
return _0x0796[_0x012B]
end,
}
end
local _0xFE09
local _0xF69F = {
Color3.fromRGB(255, 255, 255),
Color3.fromRGB(255, 69, 58),
Color3.fromRGB(255, 159, 10),
Color3.fromRGB(255, 214, 10),
Color3.fromRGB(48, 209, 88),
Color3.fromRGB(100, 210, 255),
Color3.fromRGB(10, 132, 255),
Color3.fromRGB(191, 90, 242),
Color3.fromRGB(255, 55, 95),
}
local function _0xEECF(_0xBA21)
return _0xBA21.AbsolutePosition - _0x4696.AbsolutePosition
end
local function _0x19E2(anchor, startColor, defaultColor, onChange)
local _0x98C3, _0xF15D, _0xBE50 = startColor:ToHSV()
local _0x5A10 = startColor
local _0x507B = _0x81A6(string.char(84,101,120,116,66,117,116,116,111,110), {
Text ="",
AutoButtonColor = false,
BackgroundColor3 = Color3.new(0, 0, 0),
BackgroundTransparency = 1,
Size = UDim2.fromScale(1, 1),
ZIndex = 149,
Parent = _0x2D1C,
})
_0x46F9(_0x507B, 10)
_0x0ED9(_0x507B, 0.3, { BackgroundTransparency = 0.45 })
local _0xDD6B = _0x81A6(string.char(67,97,110,118,97,115,71,114,111,117,112), {
Active = true,
AnchorPoint = Vector2.new(0.5, 0.5),
BackgroundColor3 = _0x2CF9,
GroupTransparency = 1,
Size = UDim2.fromOffset(264, 344),
ZIndex = 150,
Parent = _0x4696,
})
_0x46F9(_0xDD6B, 12)
_0x81A6(string.char(85,73,83,116,114,111,107,101), { Color = _0x0333, Transparency = 0.82, Thickness = 1, Parent = _0xDD6B })
local _0xF31D = _0x81A6(string.char(85,73,83,99,97,108,101), { Scale = 0.08, Parent = _0xDD6B })
local function _0x9457()
local _0x0D18, _0x9CB7 = _0xEECF(anchor), anchor.AbsoluteSize
return UDim2.fromOffset(_0x0D18.X + _0x9CB7.X / 2, _0x0D18.Y + _0x9CB7.Y / 2)
end
local function _0xD3AF()
local _0x0D18, _0x9CB7 = _0xEECF(_0x2D1C), _0x2D1C.AbsoluteSize
return UDim2.fromOffset(_0x0D18.X + _0x9CB7.X / 2, _0x0D18.Y + _0x9CB7.Y / 2)
end
_0xDD6B.Position = _0x9457()
local _0xDB8E = {}
local _0x2180 = {
{ Color3.fromRGB(255, 95, 87),string.char(195,151)},
{ Color3.fromRGB(254, 188, 46),string.char(226,128,147)},
{ Color3.fromRGB(40, 200, 64),string.char(43)},
}
local _0x15CD = _0x81A6(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(12, 10),
Size = UDim2.fromOffset(56, 12),
BackgroundTransparency = 1,
ZIndex = 151,
Parent = _0xDD6B,
})
for _0x60FA, _0xA0A4 in ipairs(_0x2180) do
local _0xBB9C = _0x81A6(string.char(84,101,120,116,66,117,116,116,111,110), {
Text ="",
Font = Enum.Font.GothamBold,
TextSize = 10,
TextColor3 = Color3.fromRGB(60, 20, 10),
TextTransparency = 1,
AutoButtonColor = false,
BackgroundColor3 = _0xA0A4[1],
Position = UDim2.fromOffset((_0x60FA - 1) * 19, 0),
Size = UDim2.fromOffset(12, 12),
ZIndex = 152,
Parent = _0x15CD,
})
_0x1692(_0xBB9C)
_0xBB9C.Text = _0xA0A4[2]
_0xDB8E[_0x60FA] = _0xBB9C
end
_0xF709(_0x15CD.MouseEnter, function()
for _0xBFE6, _0xBB9C in ipairs(_0xDB8E) do
_0x0ED9(_0xBB9C, 0.12, { TextTransparency = 0.2 })
end
end)
_0xF709(_0x15CD.MouseLeave, function()
for _0xBFE6, _0xBB9C in ipairs(_0xDB8E) do
_0x0ED9(_0xBB9C, 0.12, { TextTransparency = 1 })
end
end)
_0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(67,111,108,111,114),
Font = Enum.Font.GothamBold,
TextSize = 12,
TextColor3 = _0x08BE,
BackgroundTransparency = 1,
Size = UDim2.new(1, 0, 0, 32),
ZIndex = 151,
Parent = _0xDD6B,
})
local _0x04E1 = _0x81A6(string.char(70,114,97,109,101), {
Active = true,
Position = UDim2.fromOffset(14, 36),
Size = UDim2.fromOffset(236, 150),
BackgroundColor3 = Color3.fromHSV(_0x98C3, 1, 1),
ZIndex = 151,
Parent = _0xDD6B,
})
_0x46F9(_0x04E1, 8)
local _0x6E80 = _0x81A6(string.char(70,114,97,109,101), { Size = UDim2.fromScale(1, 1), BackgroundColor3 = _0x0333, ZIndex = 152, Parent = _0x04E1 })
_0x46F9(_0x6E80, 8)
_0x81A6(string.char(85,73,71,114,97,100,105,101,110,116), { Transparency = NumberSequence.new(0, 1), Parent = _0x6E80 })
local _0x93AB = _0x81A6(string.char(70,114,97,109,101), { Size = UDim2.fromScale(1, 1), BackgroundColor3 = Color3.new(0, 0, 0), ZIndex = 153, Parent = _0x04E1 })
_0x46F9(_0x93AB, 8)
_0x81A6(string.char(85,73,71,114,97,100,105,101,110,116), { Rotation = 90, Transparency = NumberSequence.new(1, 0), Parent = _0x93AB })
local _0x3E17 = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Size = UDim2.fromOffset(14, 14),
BackgroundTransparency = 1,
ZIndex = 155,
Parent = _0x04E1,
})
_0x1692(_0x3E17)
_0x81A6(string.char(85,73,83,116,114,111,107,101), { Color = _0x0333, Thickness = 2, Parent = _0x3E17 })
local _0x77DE = _0x81A6(string.char(85,73,83,99,97,108,101), { Parent = _0x3E17 })
local _0x4D5D = _0x81A6(string.char(70,114,97,109,101), {
Active = true,
Position = UDim2.fromOffset(14, 198),
Size = UDim2.fromOffset(236, 12),
BackgroundColor3 = _0x0333,
ZIndex = 151,
Parent = _0xDD6B,
})
_0x1692(_0x4D5D)
local _0xC8E2 = {}
for _0x60FA = 0, 6 do
_0xC8E2[#_0xC8E2 + 1] = ColorSequenceKeypoint.new(_0x60FA / 6, Color3.fromHSV(_0x60FA / 6 % 1, 1, 1))
end
_0x81A6(string.char(85,73,71,114,97,100,105,101,110,116), { Color = ColorSequence.new(_0xC8E2), Parent = _0x4D5D })
local _0xDB46 = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromScale(0, 0.5),
Size = UDim2.fromOffset(16, 16),
BackgroundColor3 = _0x0333,
ZIndex = 153,
Parent = _0x4D5D,
})
_0x1692(_0xDB46)
local _0x5E67 = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromScale(0.5, 0.5),
Size = UDim2.fromOffset(10, 10),
ZIndex = 154,
Parent = _0xDB46,
})
_0x1692(_0x5E67)
local _0x3A03 = _0x81A6(string.char(85,73,83,99,97,108,101), { Parent = _0xDB46 })
local _0x092C = _0x81A6(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(14, 224),
Size = UDim2.fromOffset(56, 30),
BackgroundColor3 = _0x5A10,
ClipsDescendants = true,
ZIndex = 151,
Parent = _0xDD6B,
})
_0x46F9(_0x092C, 8)
_0x39A4(_0x092C, _0x9245)
local _0x96C4 = _0x81A6(string.char(70,114,97,109,101), {
Position = UDim2.fromScale(0.5, 0),
Size = UDim2.fromScale(0.5, 1),
BorderSizePixel = 0,
ZIndex = 152,
Parent = _0x092C,
})
local _0xED6B = _0x81A6(string.char(84,101,120,116,66,111,120), {
Text ="",
PlaceholderText =string.char(35,70,70,70,70,70,70),
Font = Enum.Font.GothamMedium,
TextSize = 12,
TextColor3 = _0x9CF4,
PlaceholderColor3 = _0xEE3F,
ClearTextOnFocus = false,
BackgroundColor3 = _0x3922,
Position = UDim2.fromOffset(78, 224),
Size = UDim2.new(1, -92, 0, 30),
ZIndex = 151,
Parent = _0xDD6B,
})
_0x46F9(_0xED6B, 8)
local _0x20E4 = _0x39A4(_0xED6B)
_0x81A6(string.char(85,73,80,97,100,100,105,110,103), { PaddingLeft = UDim.new(0, 10), Parent = _0xED6B })
_0xED6B.TextXAlignment = Enum.TextXAlignment.Left
local _0x1270 = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text ="",
Font = Enum.Font.Gotham,
TextSize = 10,
TextColor3 = _0xEE3F,
TextXAlignment = Enum.TextXAlignment.Right,
BackgroundTransparency = 1,
AnchorPoint = Vector2.new(1, 0),
Position = UDim2.new(1, -8, 0, 0),
Size = UDim2.new(0, 90, 1, 0),
ZIndex = 152,
Parent = _0xED6B,
})
local _0xAA97 = {}
local _0xADAC = (236 - #_0xF69F * 20) / (#_0xF69F - 1)
for _0x60FA, _0xD51E in ipairs(_0xF69F) do
local _0xBB9C = _0x81A6(string.char(84,101,120,116,66,117,116,116,111,110), {
Text ="",
AutoButtonColor = false,
BackgroundColor3 = _0xD51E,
Position = UDim2.fromOffset(14 + (_0x60FA - 1) * (20 + _0xADAC), 266),
Size = UDim2.fromOffset(20, 20),
ZIndex = 151,
Parent = _0xDD6B,
})
_0x1692(_0xBB9C)
local _0xCFC0 = _0x81A6(string.char(85,73,83,116,114,111,107,101), { Color = _0x0333, Thickness = 1.5, Transparency = 1, Parent = _0xBB9C })
local _0xFF4E = _0x81A6(string.char(85,73,83,99,97,108,101), { Parent = _0xBB9C })
_0xF709(_0xBB9C.MouseEnter, function()
_0x0ED9(_0xFF4E, 0.15, { Scale = 1.15 })
end)
_0xF709(_0xBB9C.MouseLeave, function()
_0x0ED9(_0xFF4E, 0.15, { Scale = 1 })
end)
_0xAA97[_0x60FA] = { btn = _0xBB9C, _0x6D2C = _0xCFC0, _0x9C5B = _0xD51E, _0xFF4E = _0xFF4E }
end
local _0x37B6 = _0x81A6(string.char(84,101,120,116,66,117,116,116,111,110), {
Text =string.char(68,111,110,101),
Font = Enum.Font.GothamBold,
TextSize = 12,
TextColor3 = _0xD583,
AutoButtonColor = false,
BackgroundColor3 = _0x0333,
Position = UDim2.fromOffset(14, 300),
Size = UDim2.new(1, -28, 0, 30),
ZIndex = 151,
Parent = _0xDD6B,
})
_0x46F9(_0x37B6, 8)
local _0xA91C = _0x81A6(string.char(85,73,83,99,97,108,101), { Parent = _0x37B6 })
_0xF709(_0x37B6.MouseEnter, function()
_0x0ED9(_0x37B6, 0.15, { BackgroundColor3 = Color3.fromRGB(215, 215, 215) })
end)
_0xF709(_0x37B6.MouseLeave, function()
_0x0ED9(_0x37B6, 0.15, { BackgroundColor3 = _0x0333 })
end)
local function _0xE7D0()
return Color3.fromHSV(_0x98C3, _0xF15D, _0xBE50)
end
local function _0x6097(keepText)
local _0xD51E = _0xE7D0()
_0x04E1.BackgroundColor3 = Color3.fromHSV(_0x98C3, 1, 1)
_0x3E17.Position = UDim2.fromScale(_0xF15D, 1 - _0xBE50)
_0xDB46.Position = UDim2.fromScale(_0x98C3, 0.5)
_0x5E67.BackgroundColor3 = Color3.fromHSV(_0x98C3, 1, 1)
_0x96C4.BackgroundColor3 = _0xD51E
if not keepText then
_0xED6B.Text =string.char(35).. _0xD51E:ToHex():upper()
end
_0x1270.Text = (string.char(37,100,32,32,37,100,32,32,37,100)):format(math.floor(_0xD51E.R * 255 + 0.5), math.floor(_0xD51E.G * 255 + 0.5), math.floor(_0xD51E.B * 255 + 0.5))
for _0xBFE6, sw in ipairs(_0xAA97) do
local _0x75B5 = sw.color:ToHex() == _0xD51E:ToHex()
sw.stroke.Transparency = _0x75B5 and 0 or 1
end
onChange(_0xD51E)
end
_0x6097()
local _0x9EA9
local _0xFCD3 = 0
local _0xF817 = false
local function _0xBCC2(_0x16A1)
if _0x9EA9 ==string.char(115,113)then
local _0x0D18, _0x9CB7 = _0x04E1.AbsolutePosition, _0x04E1.AbsoluteSize
_0xF15D = math.clamp((_0x16A1.X - _0x0D18.X) / _0x9CB7.X, 0, 1)
_0xBE50 = 1 - math.clamp((_0x16A1.Y - _0x0D18.Y) / _0x9CB7.Y, 0, 1)
elseif _0x9EA9 ==string.char(104,117,101)then
local _0x0D18, _0x9CB7 = _0x4D5D.AbsolutePosition, _0x4D5D.AbsoluteSize
_0x98C3 = math.clamp((_0x16A1.X - _0x0D18.X) / _0x9CB7.X, 0, 0.999)
end
_0x6097()
end
local function _0x8678(input)
return input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch
end
local _0x6115 = {}
local function _0x3D23(signal, fn)
local _0xD51E = signal:Connect(fn)
table.insert(_0x6115, _0xD51E)
table.insert(_0x7E96, _0xD51E)
end
_0x3D23(_0x04E1.InputBegan, function(input)
if not _0x8678(input) then
return
end
_0x9EA9 =string.char(115,113)_0x0ED9(_0x77DE, 0.15, { Scale = 1.3 })
_0xBCC2(input.Position)
end)
_0x3D23(_0x4D5D.InputBegan, function(input)
if not _0x8678(input) then
return
end
_0x9EA9 =string.char(104,117,101)_0x0ED9(_0x3A03, 0.15, { Scale = 1.2 })
_0xBCC2(input.Position)
end)
_0x3D23(_0x63F8.InputChanged, function(input)
if _0x9EA9 and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
_0xBCC2(input.Position)
end
end)
_0x3D23(_0x63F8.InputEnded, function(input)
if _0x9EA9 and _0x8678(input) then
_0x9EA9 = nil
_0xFCD3 = os.clock()
_0x0ED9(_0x77DE, 0.2, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
_0x0ED9(_0x3A03, 0.2, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
end
end)
local function _0xEF3F(_0xD51E)
_0x98C3, _0xF15D, _0xBE50 = _0xD51E:ToHSV()
_0x6097()
end
for _0xBFE6, sw in ipairs(_0xAA97) do
_0x3D23(sw.btn.MouseButton1Click, function()
sw.scale.Scale = 0.8
_0x0ED9(sw.scale, 0.3, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
_0xEF3F(sw.color)
end)
end
_0x3D23(_0xED6B.Focused, function()
_0x0ED9(_0x20E4, 0.15, { Color = _0x0333 })
end)
_0x3D23(_0xED6B.FocusLost, function()
_0x0ED9(_0x20E4, 0.15, { Color = _0x7988 })
local _0x740C = _0xED6B.Text:gsub(string.char(91,94,37,120,93),"")
local _0x3E35, _0xD51E = pcall(Color3.fromHex, _0x740C)
if _0x3E35 and _0xD51E and #_0x740C == 6 then
_0xEF3F(_0xD51E)
else
_0x6097()
end
end)
_0x0ED9(_0xDD6B, 0.5, { Position = _0xD3AF() }, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
_0x0ED9(_0xF31D, 0.55, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
_0x0ED9(_0xDD6B, 0.25, { GroupTransparency = 0 })
local _0x66BE = false
local function _0x73AF(instant)
if _0x66BE then
return
end
_0x66BE = true
if _0xFE09 == _0x73AF then
_0xFE09 = nil
end
for _0xBFE6, _0xD51E in ipairs(_0x6115) do
_0xD51E:Disconnect()
end
if instant then
_0x507B:Destroy()
_0xDD6B:Destroy()
return
end
_0x0ED9(_0x507B, 0.25, { BackgroundTransparency = 1 })
_0x0ED9(_0xDD6B, 0.32, { Position = _0x9457() }, Enum.EasingDirection.In, Enum.EasingStyle.Quint)
_0x0ED9(_0xF31D, 0.32, { Scale = 0.05 }, Enum.EasingDirection.In, Enum.EasingStyle.Quint)
local _0x4903 = _0x0ED9(_0xDD6B, 0.3, { GroupTransparency = 1 }, Enum.EasingDirection.In)
_0x4903.Completed:Connect(function()
_0x507B:Destroy()
_0xDD6B:Destroy()
end)
end
_0x3D23(_0xDD6B.MouseEnter, function()
_0xF817 = true
end)
_0x3D23(_0xDD6B.MouseLeave, function()
_0xF817 = false
end)
_0x3D23(_0x507B.MouseButton1Click, function()
if _0xF817 or _0x9EA9 or os.clock() - _0xFCD3 < 0.3 then
return
end
_0x73AF()
end)
_0x3D23(_0xDB8E[1].MouseButton1Click, function()
_0xEF3F(_0x5A10)
_0x73AF()
end)
_0x3D23(_0xDB8E[2].MouseButton1Click, function()
_0x73AF()
end)
_0x3D23(_0xDB8E[3].MouseButton1Click, function()
_0xEF3F(defaultColor)
end)
_0x3D23(_0x37B6.MouseButton1Click, function()
_0xA91C.Scale = 0.92
_0x0ED9(_0xA91C, 0.2, { Scale = 1 })
_0x73AF()
end)
return _0x73AF
end
local _0x76FB
local function _0x2E58(_0x6EE1, _0xD85E, buttonText)
if _0x76FB then
_0x76FB()
end
local _0x507B = _0x81A6(string.char(84,101,120,116,66,117,116,116,111,110), {
Text ="",
AutoButtonColor = false,
BackgroundColor3 = Color3.new(0, 0, 0),
BackgroundTransparency = 1,
Size = UDim2.fromScale(1, 1),
ZIndex = 159,
Parent = _0x2D1C,
})
_0x46F9(_0x507B, 10)
_0x0ED9(_0x507B, 0.25, { BackgroundTransparency = 0.45 })
local _0xFCDE = _0x81A6(string.char(67,97,110,118,97,115,71,114,111,117,112), {
Active = true,
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromScale(0.5, 0.5),
Size = UDim2.fromOffset(300, 176),
BackgroundColor3 = _0x2CF9,
GroupTransparency = 1,
ZIndex = 160,
Parent = _0x2D1C,
})
_0x46F9(_0xFCDE, 14)
local _0xCFC0 = _0x81A6(string.char(85,73,83,116,114,111,107,101), { Color = _0x0333, Transparency = 0.6, Parent = _0xFCDE })
_0x9B45(_0xCFC0)
local _0xFF4E = _0x81A6(string.char(85,73,83,99,97,108,101), { Scale = 0.85, Parent = _0xFCDE })
local _0xA396 = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0),
Position = UDim2.new(0.5, 0, 0, 18),
Size = UDim2.fromOffset(38, 38),
BackgroundColor3 = _0x0333,
ZIndex = 161,
Parent = _0xFCDE,
})
_0x1692(_0xA396)
_0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(33),
Font = Enum.Font.GothamBlack,
TextSize = 22,
TextColor3 = _0xD583,
BackgroundTransparency = 1,
Size = UDim2.fromScale(1, 1),
ZIndex = 162,
Parent = _0xA396,
})
local _0x7375 = _0x81A6(string.char(85,73,83,99,97,108,101), { Scale = 0.4, Parent = _0xA396 })
_0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text = _0x6EE1,
Font = Enum.Font.GothamBold,
TextSize = 15,
TextColor3 = _0x0333,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(16, 64),
Size = UDim2.new(1, -32, 0, 20),
ZIndex = 161,
Parent = _0xFCDE,
})
_0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text = _0xD85E,
Font = Enum.Font.Gotham,
TextSize = 12,
TextColor3 = _0x08BE,
TextWrapped = true,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(20, 86),
Size = UDim2.new(1, -40, 0, 34),
ZIndex = 161,
Parent = _0xFCDE,
})
local _0x37B6 = _0x81A6(string.char(84,101,120,116,66,117,116,116,111,110), {
Text = buttonText orstring.char(68,111,110,101),
Font = Enum.Font.GothamBold,
TextSize = 12,
TextColor3 = _0xD583,
AutoButtonColor = false,
BackgroundColor3 = _0x0333,
AnchorPoint = Vector2.new(0.5, 1),
Position = UDim2.new(0.5, 0, 1, -14),
Size = UDim2.new(1, -32, 0, 30),
ZIndex = 161,
Parent = _0xFCDE,
})
_0x46F9(_0x37B6, 8)
local _0xA91C = _0x81A6(string.char(85,73,83,99,97,108,101), { Parent = _0x37B6 })
_0xF709(_0x37B6.MouseEnter, function()
_0x0ED9(_0x37B6, 0.15, { BackgroundColor3 = Color3.fromRGB(215, 215, 215) })
end)
_0xF709(_0x37B6.MouseLeave, function()
_0x0ED9(_0x37B6, 0.15, { BackgroundColor3 = _0x0333 })
end)
_0x0ED9(_0xFCDE, 0.25, { GroupTransparency = 0 })
_0x0ED9(_0xFF4E, 0.45, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
task.delay(0.12, function()
_0x0ED9(_0x7375, 0.45, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
end)
local _0xD4F3 = false
local function _0x73AF()
if _0xD4F3 then
return
end
_0xD4F3 = true
if _0x76FB == _0x73AF then
_0x76FB = nil
end
_0x0ED9(_0x507B, 0.2, { BackgroundTransparency = 1 })
_0x0ED9(_0xFF4E, 0.2, { Scale = 0.9 }, Enum.EasingDirection.In)
local _0x4903 = _0x0ED9(_0xFCDE, 0.2, { GroupTransparency = 1 })
_0x4903.Completed:Connect(function()
_0x507B:Destroy()
_0xFCDE:Destroy()
end)
end
_0x76FB = _0x73AF
_0xF709(_0x37B6.MouseButton1Click, function()
_0xA91C.Scale = 0.92
_0x0ED9(_0xA91C, 0.2, { Scale = 1 })
_0x73AF()
end)
_0xF709(_0x507B.MouseButton1Click, _0x73AF)
end
_0x26B0.ColorPicker = function(self2, _0xBD62, desc, default, callback)
local _0x9C5B = default
local _0xFBB7 = _0xA354(self2, _0xBD62)
local _0x741F = self2:_row(_0xBD62, desc)
local _0x6E3C = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(1, 0.5),
Position = UDim2.new(1, -10, 0.5, 0),
Size = UDim2.fromOffset(38, 22),
BackgroundColor3 = _0x9C5B,
ZIndex = 2,
Parent = _0x741F,
})
_0x46F9(_0x6E3C, 6)
local _0x5B47 = _0x39A4(_0x6E3C)
local _0x4ACB = _0x81A6(string.char(85,73,83,99,97,108,101), { Parent = _0x6E3C })
local _0xABDC = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(35).. _0x9C5B:ToHex():upper(),
Font = Enum.Font.GothamMedium,
TextSize = 11,
TextColor3 = _0x08BE,
TextXAlignment = Enum.TextXAlignment.Right,
BackgroundTransparency = 1,
AnchorPoint = Vector2.new(1, 0.5),
Position = UDim2.new(1, -56, 0.5, 0),
Size = UDim2.fromOffset(70, 20),
ZIndex = 2,
Parent = _0x741F,
})
local function _0x71E6(_0xD51E, silent)
_0x9C5B = _0xD51E
_0x6E3C.BackgroundColor3 = _0xD51E
_0xABDC.Text =string.char(35).. _0xD51E:ToHex():upper()
_0x330E(_0xFBB7, _0xD51E:ToHex())
if not silent then
task.spawn(callback, _0xD51E)
end
end
_0xF709(_0x741F.MouseEnter, function()
_0x0ED9(_0x5B47, 0.15, { Color = _0x0333 })
end)
_0xF709(_0x741F.MouseLeave, function()
_0x0ED9(_0x5B47, 0.15, { Color = _0x7988 })
end)
_0xF709(_0x741F.MouseButton1Click, function()
if _0xFE09 then
_0xFE09(true)
end
_0x4ACB.Scale = 0.85
_0x0ED9(_0x4ACB, 0.3, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
_0xFE09 = _0x19E2(_0x6E3C, _0x9C5B, default, function(_0xD51E)
_0x71E6(_0xD51E)
end)
end)
_0x64F7(_0xFBB7, function(_0xBE50)
if type(_0xBE50) ~=string.char(115,116,114,105,110,103)then
return
end
local _0x3E35, _0xD51E = pcall(Color3.fromHex, _0xBE50)
if _0x3E35 and _0xD51E then
_0x71E6(_0xD51E)
end
end, function()
return _0x9C5B:ToHex()
end, default:ToHex())
return {
Set = function(_0xD51E, silent)
_0x71E6(_0xD51E, silent)
end,
Get = function()
return _0x9C5B
end,
}
end
local _0x0EBB = { _0xB07F = nil, jump = nil, infJump = false }
local function _0xA6D4()
local _0x289D = _0xD33F.Character
return _0x289D and _0x289D:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
end
_0xF709(_0x7FDD.Heartbeat, function()
local _0xBD98 = _0xA6D4()
if _0xBD98 then
if _0x0EBB.speed and _0xBD98.WalkSpeed ~= _0x0EBB.speed then
_0xBD98.WalkSpeed = _0x0EBB.speed
end
if _0x0EBB.jump then
_0xBD98.UseJumpPower = true
if _0xBD98.JumpPower ~= _0x0EBB.jump then
_0xBD98.JumpPower = _0x0EBB.jump
end
end
end
end)
local _0xC636 = {}
_0xF709(_0x7FDD.Stepped, function()
if not _0x0EBB.noclip then
return
end
local _0x8C06 = _0xD33F.Character
if not _0x8C06 then
return
end
for _0xBFE6, _0x3066 in ipairs(_0x8C06:GetDescendants()) do
if _0x3066:IsA(string.char(66,97,115,101,80,97,114,116)) and _0x3066.CanCollide then
_0xC636[_0x3066] = true
_0x3066.CanCollide = false
end
end
end)
local function _0x7804()
_0x0EBB.noclip = false
for _0x3066 in pairs(_0xC636) do
if _0x3066.Parent then
_0x3066.CanCollide = true
end
end
table.clear(_0xC636)
end
local _0x4534 = {}
local _0xEEC4, _0xE7AC = nil, 0
_0xF709(_0x7FDD.Stepped, function()
if not _0x0EBB.antiFling then
return
end
for _0xBFE6, _0x0D18 in ipairs(_0x9A21:GetPlayers()) do
if _0x0D18 ~= _0xD33F and _0x0D18.Character then
for _0xBFE6, _0x3066 in ipairs(_0x0D18.Character:GetDescendants()) do
if _0x3066:IsA(string.char(66,97,115,101,80,97,114,116)) and _0x3066.CanCollide then
_0x4534[_0x3066] = true
_0x3066.CanCollide = false
end
end
end
end
end)
_0xF709(_0x7FDD.Heartbeat, function()
if not _0x0EBB.antiFling then
return
end
local _0x8C06 = _0xD33F.Character
local _0xE4E7 = _0x8C06 and _0x8C06:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0xE4E7 then
return
end
local _0xBE50, _0x42FB = _0xE4E7.AssemblyLinearVelocity, _0xE4E7.AssemblyAngularVelocity
if _0xBE50.Magnitude > 200 or _0x42FB.Magnitude > 60 then
for _0xBFE6, _0x3066 in ipairs(_0x8C06:GetDescendants()) do
if _0x3066:IsA(string.char(66,97,115,101,80,97,114,116)) then
_0x3066.AssemblyLinearVelocity = Vector3.zero
_0x3066.AssemblyAngularVelocity = Vector3.zero
end
end
if _0xEEC4 then
_0xE4E7.CFrame = _0xEEC4
end
elseif os.clock() - _0xE7AC > 0.1 then
_0xEEC4, _0xE7AC = _0xE4E7.CFrame, os.clock()
end
end)
local function _0xB8F5()
_0x0EBB.antiFling = false
for _0x3066 in pairs(_0x4534) do
if _0x3066.Parent then
_0x3066.CanCollide = true
end
end
table.clear(_0x4534)
end
_0xF709(_0x63F8.JumpRequest, function()
if not _0x0EBB.infJump then
return
end
local _0xBD98 = _0xA6D4()
if _0xBD98 and _0xBD98.Health > 0 then
_0xBD98:ChangeState(Enum.HumanoidStateType.Jumping)
end
end)
local _0xF524 = 0
local _0xBA76
local _0xFA0F = {}
local _0x0B89
local function _0x003D(_0x522F)
_0x9B26 = _0x522F
if _0xBA76 then
_0xBA76(_0x522F)
end
if _0x0B89 then
_0x0B89(_0x522F)
end
if not _0x522F and _0xFE09 then
_0xFE09(true)
end
_0xF524 += 1
local _0xABD9 = _0xF524
if _0x522F then
_0x2D1C.Visible = true
_0x0ED9(_0xE9B2, 0.3, { Scale = _0x55FA }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
_0x0ED9(_0xCF0E, 0.3, { Size = _0x60DD })
if _0x6EAD then
task.delay(0.15, function()
if _0xABD9 == _0xF524 then
_0xA33C()
end
end)
end
else
_0x0ED9(_0xCF0E, 0.2, { Size = 0 })
local _0x4903 = _0x0ED9(_0xE9B2, 0.2, { Scale = 0 }, Enum.EasingDirection.In)
_0x4903.Completed:Connect(function()
if _0xABD9 == _0xF524 then
_0x2D1C.Visible = false
end
end)
end
end
local _0x9B01 = false
local function _0x034C()
if _0x9B01 then
return
end
_0x003D(not _0x9B26)
end
_0xF709(_0x3844.MouseButton1Click, function()
_0x003D(false)
end)
_0xF709(_0x63F8.InputBegan, function(input, gameProcessed)
if _0x5102 then
if input.UserInputType == Enum.UserInputType.Keyboard then
local _0x23BB = _0x5102
_0x5102 = nil
_0x23BB(input.KeyCode)
end
return
end
if gameProcessed then
return
end
if input.KeyCode == _0x3CA1 then
_0x034C()
end
end)
local _0x71D8 = {}
local function _0xE91F(_0xBA21, _0xFBB7, onClick, onRelease, _0x1457)
local _0xB985 = _0x4FF7[_0xFBB7]
if type(_0xB985) ==string.char(116,97,98,108,101)and #_0xB985 == 4 then
_0xBA21.Position = UDim2.new(_0xB985[1], _0xB985[2], _0xB985[3], _0xB985[4])
end
local _0x9C96, _0x6EAC, _0x3C7B, _0xDD0A
_0xF709((_0x1457 or _0xBA21).InputBegan, function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
_0x9C96, _0x6EAC, _0x3C7B, _0xDD0A = input, input.Position, _0xBA21.Position, false
end
end)
_0xF709(_0x63F8.InputChanged, function(input)
if not _0x9C96 then
return
end
if input.UserInputType ~= Enum.UserInputType.MouseMovement and input ~= _0x9C96 then
return
end
local _0x819A = input.Position - _0x6EAC
if not _0xDD0A and _0x819A.Magnitude < 6 then
return
end
_0xDD0A = true
_0xBA21.Position = UDim2.new(_0x3C7B.X.Scale, _0x3C7B.X.Offset + _0x819A.X, _0x3C7B.Y.Scale, _0x3C7B.Y.Offset + _0x819A.Y)
local _0x7740, _0xF542, _0xD222 = _0xBA21.AbsolutePosition, _0xBA21.AbsoluteSize, _0x4696.AbsoluteSize
local _0xC2D5 = math.clamp(_0x7740.X, 0, math.max(0, _0xD222.X - _0xF542.X)) - _0x7740.X
local _0xED6F = math.clamp(_0x7740.Y, 0, math.max(0, _0xD222.Y - _0xF542.Y)) - _0x7740.Y
if _0xC2D5 ~= 0 or _0xED6F ~= 0 then
_0xBA21.Position = _0xBA21.Position + UDim2.fromOffset(_0xC2D5, _0xED6F)
end
end)
_0xF709(_0x63F8.InputEnded, function(input)
if not _0x9C96 then
return
end
if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input ~= _0x9C96 then
return
end
_0x9C96 = nil
if onRelease then
onRelease()
end
if _0xDD0A then
local _0x0D18 = _0xBA21.Position
_0x4FF7[_0xFBB7] = { _0x0D18.X.Scale, _0x0D18.X.Offset, _0x0D18.Y.Scale, _0x0D18.Y.Offset }
_0x82A4, _0xCB95 = true, os.clock()
elseif onClick then
onClick()
end
end)
end
local function _0xC82D(_0xEF1C, _0xFF4E, _0x9B7B, targetScale)
targetScale = targetScale or 1
_0xEF1C:SetAttribute(string.char(112,122,79,110), _0x9B7B)
if _0x9B7B then
_0xEF1C.Visible = true
_0xFF4E.Scale = targetScale * 0.6
_0x0ED9(_0xFF4E, 0.35, { Scale = targetScale }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
else
local _0xD672 = _0x0ED9(_0xFF4E, 0.18, { Scale = 0 }, Enum.EasingDirection.In)
_0xD672.Completed:Connect(function()
if not _0xEF1C:GetAttribute(string.char(112,122,79,110)) then
_0xEF1C.Visible = false
end
end)
end
end
local _0x2782 = {}
local _0xA373 = _0x81A6(string.char(70,114,97,109,101), {
Name =string.char(87,97,116,101,114,109,97,114,107,72,111,108,100,101,114),
BackgroundTransparency = 1,
AnchorPoint = Vector2.new(0.5, 1),
Position = UDim2.new(0.5, 0, 1, -18),
Size = UDim2.fromOffset(360, 42),
ZIndex = 50,
Parent = _0x4696,
})local _0x5E04 = os.clock()
local _0x5C40 = _0x81A6(string.char(84,101,120,116,66,117,116,116,111,110), {
Name =string.char(70,105,120,101,100,67,108,117,109,115,121,67,102,103,87,97,116,101,114,109,97,114,107),
Text ="",
AutoButtonColor = false,
AnchorPoint = Vector2.new(0.5, 1),
Position = UDim2.new(0.5, 0, 1, -8),
Size = UDim2.fromOffset(132, 30),
BackgroundColor3 = Color3.fromRGB(25, 25, 29),
BackgroundTransparency = 0.28,
BorderSizePixel = 0,
ZIndex = 70,
Parent = _0x4696,
})
_0x46F9(_0x5C40, 9)
local _0xEF66 = _0x81A6(string.char(85,73,71,114,97,100,105,101,110,116), {
Rotation = 90,
Color = ColorSequence.new({
ColorSequenceKeypoint.new(0, Color3.fromRGB(75, 75, 82)),
ColorSequenceKeypoint.new(0.5, Color3.fromRGB(30, 30, 35)),
ColorSequenceKeypoint.new(1, Color3.fromRGB(12, 12, 16)),
}),
Transparency = NumberSequence.new({
NumberSequenceKeypoint.new(0, 0.2),
NumberSequenceKeypoint.new(0.5, 0.04),
NumberSequenceKeypoint.new(1, 0.2),
}),
Parent = _0x5C40,
})
_0x81A6(string.char(85,73,83,116,114,111,107,101), {
Color = Color3.fromRGB(180, 180, 190),
Thickness = 1,
Transparency = 0.45,
ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
Parent = _0x5C40,
})
local _0x4860 = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Name =string.char(84,101,120,116),
Text =string.char(64,99,108,117,109,115,121,95,99,102,103),
Font = Enum.Font.Arcade,
TextSize = 13,
TextColor3 = Color3.fromRGB(255, 255, 255),
TextXAlignment = Enum.TextXAlignment.Center,
TextYAlignment = Enum.TextYAlignment.Center,
BackgroundTransparency = 1,
Size = UDim2.fromScale(1, 1),
ZIndex = 71,
Parent = _0x5C40,
})local _0x82FC = _0x81A6(string.char(85,73,71,114,97,100,105,101,110,116), {
Rotation = 0,
Color = _0x2F28(0),
Parent = _0x4860,
})
_0x81A6(string.char(85,73,80,97,100,100,105,110,103), {
PaddingLeft = UDim.new(0, 10),
PaddingRight = UDim.new(0, 10),
Parent = _0x5C40,
})local _0xA770 = 0
local _0x2721 = false
local _0x311A = nil
local _0xDE77 = nil
local _0x2F5B = nil
local function _0xD4F4()
if not _0xDE77 or not _0xDE77.Parent then return end
_0xDE77:SetAttribute(string.char(111,112,101,110), false)
if _0x2F5B then
_0x0ED9(_0x2F5B, 0.18, {Scale = 0}, Enum.EasingDirection.In)
end
task.delay(0.2, function()
if _0xDE77 and _0xDE77.Parent and _0xDE77:GetAttribute(string.char(111,112,101,110)) ~= true then
_0xDE77.Visible = false
end
end)
end
local function _0xB86B()
if _0xDE77 and _0xDE77.Parent then
_0xDE77.Visible = true
_0xDE77:SetAttribute(string.char(111,112,101,110), true)
_0x2F5B.Scale = 0.75
_0x0ED9(_0x2F5B, 0.3, {Scale = 1}, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
return
end
_0xDE77 = _0x81A6(string.char(70,114,97,109,101), {
Name =string.char(67,108,117,109,115,121,67,114,101,97,116,111,114,73,110,102,111),
AnchorPoint = Vector2.new(0.5, 1),
Position = UDim2.new(0.5, 0, 1, -48),
Size = UDim2.fromOffset(255, 92),
BackgroundColor3 = Color3.fromRGB(22, 22, 27),
BackgroundTransparency = 0.28,
BorderSizePixel = 0,
ZIndex = 80,
Parent = _0x4696,
})
_0x46F9(_0xDE77, 12)
_0x39A4(_0xDE77, Color3.fromRGB(170, 170, 180))
_0x81A6(string.char(85,73,71,114,97,100,105,101,110,116), {
Rotation = 90,
Color = ColorSequence.new({
ColorSequenceKeypoint.new(0, Color3.fromRGB(65, 65, 72)),
ColorSequenceKeypoint.new(0.5, Color3.fromRGB(24, 24, 29)),
ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 10, 13)),
}),
Transparency = NumberSequence.new(0.22),
Parent = _0xDE77,
})
_0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(208,154,208,176,208,189,208,176,208,187,32,209,129,208,190,208,183,208,180,208,176,209,130,208,181,208,187,209,143), Font = Enum.Font.Arcade, TextSize = 13,
TextColor3 = Color3.fromRGB(255,255,255), TextXAlignment = Enum.TextXAlignment.Center,
BackgroundTransparency = 1, Position = UDim2.fromOffset(8, 10), Size = UDim2.new(1,-16,0,20),
ZIndex = 82, Parent = _0xDE77,
})
_0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(64,99,108,117,109,115,121,95,99,102,103), Font = Enum.Font.Arcade, TextSize = 12,
TextColor3 = Color3.fromRGB(255,255,255), TextXAlignment = Enum.TextXAlignment.Center,
BackgroundTransparency = 1, Position = UDim2.fromOffset(8, 34), Size = UDim2.new(1,-16,0,20),
ZIndex = 82, Parent = _0xDE77,
})
_0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(208,174,208,183,208,181,209,128,208,189,208,181,208,185,208,188,32,209,129,208,190,208,183,208,180,208,176,209,130,208,181,208,187,209,143,32,32,64,72,101,115,101,114,115), Font = Enum.Font.Arcade, TextSize = 11,
TextColor3 = Color3.fromRGB(205,205,210), TextXAlignment = Enum.TextXAlignment.Center,
BackgroundTransparency = 1, Position = UDim2.fromOffset(8, 58), Size = UDim2.new(1,-16,0,20),
ZIndex = 82, Parent = _0xDE77,
})
_0x2F5B = _0x81A6(string.char(85,73,83,99,97,108,101), {Scale = 0, Parent = _0xDE77})
_0xDE77:SetAttribute(string.char(111,112,101,110), true)
_0x0ED9(_0x2F5B, 0.32, {Scale = 1}, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
end_0xF709(_0x5C40.Activated, function()
if _0xDE77 and _0xDE77.Parent and _0xDE77:GetAttribute(string.char(111,112,101,110)) == true then
_0xD4F4()
else
_0xB86B()
end
end)_0xF709(_0x7FDD.RenderStepped, function()
if not _0x4860 or not _0x4860.Parent then
return
end
local _0x9494 = os.clock()_0x82FC.Color = _0x2F28((_0x9494 - _0x5E04) * 0.35)
end)
local _0xBC47 = _0x81A6(string.char(84,101,120,116,66,117,116,116,111,110), {
Name =string.char(87,97,116,101,114,109,97,114,107),
Text ="",
AutoButtonColor = false,
AutomaticSize = Enum.AutomaticSize.X,
BackgroundColor3 = Color3.fromRGB(24, 24, 28),
BackgroundTransparency = 0.22,
Size = UDim2.fromOffset(0, 38),
Visible = false,
ZIndex = 50,
Parent = _0xA373,
})
_0x46F9(_0xBC47, 12)
_0x81A6(string.char(85,73,71,114,97,100,105,101,110,116), {
Rotation = 90,
Color = ColorSequence.new({
ColorSequenceKeypoint.new(0, Color3.fromRGB(55, 55, 62)),
ColorSequenceKeypoint.new(0.5, Color3.fromRGB(24, 24, 28)),
ColorSequenceKeypoint.new(1, Color3.fromRGB(12, 12, 15)),
}),
Transparency = NumberSequence.new({
NumberSequenceKeypoint.new(0, 0.15),
NumberSequenceKeypoint.new(0.5, 0.05),
NumberSequenceKeypoint.new(1, 0.18),
}),
Parent = _0xBC47,
})
local _0x14DB = _0x81A6(string.char(85,73,83,99,97,108,101), { Scale = 0, Parent = _0xBC47 })
local _0x07CC = 1
_0x2629 = function()
local _0x4245 = workspace.CurrentCamera
local _0x56A0 = _0x4245 and _0x4245.ViewportSize or Vector2.new(1280, 720)
if _0x63F8.TouchEnabled then
if math.min(_0x56A0.X, _0x56A0.Y) >= 600 then
_0x07CC = 0.85
else
_0x07CC = math.clamp(_0x55FA, 0.58, 0.75)
end
else
_0x07CC = 1
end
if _0xBC47:GetAttribute(string.char(112,122,79,110)) then
_0x14DB.Scale = _0x07CC
end
end
_0x2629()
local _0x7CAB = _0x81A6(string.char(85,73,83,116,114,111,107,101), {
Color = _0x0333,
Thickness = 1,
Transparency = 0.5,
ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
Parent = _0xBC47,
})
table.insert(_0x2782, _0x81A6(string.char(85,73,71,114,97,100,105,101,110,116), { Parent = _0x7CAB }))
_0x81A6(string.char(85,73,80,97,100,100,105,110,103), { PaddingLeft = UDim.new(0, 6), PaddingRight = UDim.new(0, 6), Parent = _0xBC47 })
_0x81A6(string.char(85,73,76,105,115,116,76,97,121,111,117,116), {
FillDirection = Enum.FillDirection.Horizontal,
VerticalAlignment = Enum.VerticalAlignment.Center,
SortOrder = Enum.SortOrder.LayoutOrder,
Padding = UDim.new(0, 9),
Parent = _0xBC47,
})
local _0xDE02 = 0
local function _0x0A13(_0xBB27, _0x476F)
_0xDE02 += 1
_0x476F.LayoutOrder = _0xDE02
if _0x476F.BackgroundTransparency == nil then
_0x476F.BackgroundTransparency = 1
end
_0x476F.BorderSizePixel = 0
_0x476F.ZIndex = _0x476F.ZIndex or 51
_0x476F.Parent = _0x476F.Parent or _0xBC47
return _0x81A6(_0xBB27, _0x476F)
end
local function _0x923A()
return _0x0A13(string.char(70,114,97,109,101), { Size = UDim2.fromOffset(1, 14), BackgroundTransparency = 0, BackgroundColor3 = _0x7988 })
end
local function _0x2DA3(width)
return _0x0A13(string.char(84,101,120,116,76,97,98,101,108), {
Text ="",
RichText = true,
Font = Enum.Font.GothamMedium,
TextSize = 12,
TextColor3 = _0x9CF4,
TextXAlignment = Enum.TextXAlignment.Left,
Size = UDim2.fromOffset(width, 36),
})
end
local _0x6EE1 = _0x0A13(string.char(70,114,97,109,101), { Size = UDim2.fromOffset(24, 24), BackgroundTransparency = 0, BackgroundColor3 = _0x0333, ClipsDescendants = true })
_0x46F9(_0x6EE1, 7)
table.insert(_0x2782, _0x81A6(string.char(85,73,71,114,97,100,105,101,110,116), { Rotation = 45, Parent = _0x6EE1 }))
local _0x4B4F = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(114,104),
Font = Enum.Font.GothamBlack,
TextSize = 12,
TextColor3 = _0xD583,
BackgroundTransparency = 1,
Size = UDim2.fromScale(1, 1),
Position = UDim2.fromOffset(0, -1),
ZIndex = 52,
Parent = _0x6EE1,
})
local _0x38BC = _0x81A6(string.char(73,109,97,103,101,76,97,98,101,108), {
Image ="",
BackgroundTransparency = 1,
Size = UDim2.fromScale(1, 1),
ScaleType = Enum.ScaleType.Fit,
Visible = false,
ZIndex = 53,
Parent = _0x6EE1,
})
task.spawn(function()
local _0x618A = getcustomasset or getsynasset
if not (writefile and _0x618A) then
return
end
local _0xE187 =string.char(99,108,117,109,115,121,115,99,114,105,112,116,95,108,111,103,111,46,112,110,103)if not (isfile and isfile(_0xE187)) then
local _0x3E35, _0xC352 = pcall(game.HttpGet, game,string.char(104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,114,111,99,107,115,99,114,105,112,116,101,114,47,77,77,50,68,114,111,110,101,47,114,101,102,115,47,104,101,97,100,115,47,109,97,105,110,47,108,111,103,111,46,112,110,103))
if not _0x3E35 or type(_0xC352) ~=string.char(115,116,114,105,110,103)or #_0xC352 == 0 or not pcall(writefile, _0xE187, _0xC352) then
return
end
end
local _0x3E35, _0x54A2 = pcall(_0x618A, _0xE187)
if _0x3E35 and _0x54A2 then
_0x38BC.Image = _0x54A2
_0x38BC.Visible = true
_0x4B4F.Visible = false
end
end)
local _0x0B71 = _0x0A13(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(64,99,108,117,109,115,121,95,99,102,103),
Font = Enum.Font.GothamSemibold,
TextSize = 14,
TextColor3 = Color3.fromRGB(245, 245, 248),
AutomaticSize = Enum.AutomaticSize.X,
Size = UDim2.fromOffset(0, 36),
})
table.insert(_0x2782, _0x81A6(string.char(85,73,71,114,97,100,105,101,110,116), { Parent = _0x0B71 }))
_0x923A()
local _0xA640 = _0x2DA3(50)
_0x923A()
local _0xD3CD = _0x0A13(string.char(70,114,97,109,101), { Size = UDim2.fromOffset(13, 10) })
local _0x883C = {}
for _0x60FA = 1, 3 do
_0x883C[_0x60FA] = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0, 1),
Position = UDim2.new(0, (_0x60FA - 1) * 5, 1, 0),
Size = UDim2.fromOffset(3, 3 + _0x60FA * 2.4),
BackgroundColor3 = _0x9245,
BorderSizePixel = 0,
ZIndex = 52,
Parent = _0xD3CD,
})
_0x46F9(_0x883C[_0x60FA], 1)
end
local _0x34FA = _0x2DA3(44)
_0x923A()
local _0x6CD2 = _0x2DA3(34)
local function _0x9C6F(_0x2700, _0x0AA5)
return string.format(string.char(60,102,111,110,116,32,99,111,108,111,114,61,34,35,70,70,70,70,70,70,34,62,37,115,60,47,102,111,110,116,62,32,60,102,111,110,116,32,99,111,108,111,114,61,34,35,55,56,55,56,55,56,34,62,37,115,60,47,102,111,110,116,62), _0x2700, _0x0AA5)
end
_0xA640.Text = _0x9C6F(string.char(45,45),string.char(102,112,115))
_0x34FA.Text = _0x9C6F(string.char(45,45),string.char(109,115))
_0x6CD2.Text =string.char(60,102,111,110,116,32,99,111,108,111,114,61,34,35,70,70,70,70,70,70,34,62).. os.date(string.char(37,72,58,37,77)) ..string.char(60,47,102,111,110,116,62)local _0xE905 = _0x0A13(string.char(70,114,97,109,101), {
AutomaticSize = Enum.AutomaticSize.X,
Size = UDim2.fromOffset(0, 24),
BackgroundTransparency = 0,
BackgroundColor3 = _0x3922,
})
_0x46F9(_0xE905, 7)
local _0xF2F1 = _0x81A6(string.char(85,73,83,116,114,111,107,101), {
Color = _0x0333,
Transparency = 0.6,
Thickness = 1,
ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
Parent = _0xE905,
})
_0x81A6(string.char(85,73,80,97,100,100,105,110,103), { PaddingLeft = UDim.new(0, 9), PaddingRight = UDim.new(0, 10), Parent = _0xE905 })
_0x81A6(string.char(85,73,76,105,115,116,76,97,121,111,117,116), {
FillDirection = Enum.FillDirection.Horizontal,
VerticalAlignment = Enum.VerticalAlignment.Center,
SortOrder = Enum.SortOrder.LayoutOrder,
Padding = UDim.new(0, 7),
Parent = _0xE905,
})
local _0x5F27 = _0x81A6(string.char(70,114,97,109,101), {
Size = UDim2.fromOffset(12, 10),
BackgroundTransparency = 1,
LayoutOrder = 1,
Parent = _0xE905,
})
local _0xFA64 = {}
for _0x60FA = 1, 3 do
_0xFA64[_0x60FA] = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.new(0.5, 0, 0, 1 + (_0x60FA - 1) * 4),
Size = UDim2.fromOffset(12, 2),
BackgroundColor3 = _0x9CF4,
BorderSizePixel = 0,
ZIndex = 53,
Parent = _0x5F27,
})
_0x1692(_0xFA64[_0x60FA])
end
local _0x513E = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(109,101,110,117),
Font = Enum.Font.GothamBold,
TextSize = 11,
TextColor3 = _0x9CF4,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Size = UDim2.fromOffset(32, 24),
LayoutOrder = 2,
ZIndex = 53,
Parent = _0xE905,
})
return (function(...)
local _0x843E = _0x81A6(string.char(70,114,97,109,101), {
Name =string.char(87,97,116,101,114,109,97,114,107,84,105,112),
AnchorPoint = Vector2.new(1, 0),
AutomaticSize = Enum.AutomaticSize.XY,
BackgroundColor3 = _0x2CF9,
BorderSizePixel = 0,
Visible = false,
ZIndex = 60,
Parent = _0xA373,
})
_0x46F9(_0x843E, 8)
_0x39A4(_0x843E, _0x9245)
local _0x6B7F = _0x81A6(string.char(85,73,83,99,97,108,101), { Scale = 0, Parent = _0x843E })
_0x81A6(string.char(85,73,80,97,100,100,105,110,103), {
PaddingLeft = UDim.new(0, 10),
PaddingRight = UDim.new(0, 10),
PaddingTop = UDim.new(0, 7),
PaddingBottom = UDim.new(0, 7),
Parent = _0x843E,
})
_0x81A6(string.char(85,73,76,105,115,116,76,97,121,111,117,116), { SortOrder = Enum.SortOrder.LayoutOrder, Padding = UDim.new(0, 2), Parent = _0x843E })
local _0xF0A1 = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(99,108,105,99,107,32,116,111,32,111,112,101,110,32,116,104,101,32,109,101,110,117),
Font = Enum.Font.GothamBold,
TextSize = 12,
TextColor3 = _0x0333,
AutomaticSize = Enum.AutomaticSize.XY,
BackgroundTransparency = 1,
LayoutOrder = 1,
ZIndex = 61,
Parent = _0x843E,
})
local _0xC08F = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text ="",
Font = Enum.Font.Gotham,
TextSize = 11,
TextColor3 = _0x08BE,
AutomaticSize = Enum.AutomaticSize.XY,
BackgroundTransparency = 1,
LayoutOrder = 2,
ZIndex = 61,
Parent = _0x843E,
})
local _0xA5D6 = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Size = UDim2.fromOffset(9, 9),
Rotation = 45,
BackgroundColor3 = _0x2CF9,
BorderSizePixel = 0,
Visible = false,
ZIndex = 59,
Parent = _0xA373,
})
_0x39A4(_0xA5D6, _0x9245)
local _0x76E0 = _0x4FF7[string.char(104,117,100,47,119,109,95,117,115,101,100)] == true
local _0xC3C8 = false
local _0x15A8, _0x2ECF = false, 0
local function _0x5880()
local _0xC299 = _0xBC47.AbsolutePosition.X
local _0xD311 = _0xE905.AbsolutePosition.X - _0xC299
local _0xD4A2 = _0xBC47.AbsoluteSize.Y + 10
_0x843E.Position = UDim2.fromOffset(_0xD311 + _0xE905.AbsoluteSize.X + 6, _0xD4A2)
_0xA5D6.Position = UDim2.fromOffset(_0xD311 + _0xE905.AbsoluteSize.X / 2, _0xD4A2)
end
local function _0x68E2(_0x9B7B, hideAfter)
_0x2ECF += 1
if _0x9B7B == _0x15A8 then
if not _0x9B7B then
return
end
else
_0x15A8 = _0x9B7B
_0xF0A1.Text = _0x9B26 andstring.char(99,108,105,99,107,32,116,111,32,99,108,111,115,101,32,116,104,101,32,109,101,110,117)orstring.char(99,108,105,99,107,32,116,111,32,111,112,101,110,32,116,104,101,32,109,101,110,117)_0xC08F.Text =string.char(100,114,97,103,32,116,111,32,109,111,118,101,32,32,194,183,32,32,111,114,32,112,114,101,115,115,32).. _0x3CA1.Name
if _0x9B7B then
_0x5880()
end
_0xC82D(_0x843E, _0x6B7F, _0x9B7B)
_0xA5D6.Visible = _0x9B7B
end
if _0x9B7B and hideAfter then
local _0xABD9 = _0x2ECF
task.delay(hideAfter, function()
if _0xABD9 == _0x2ECF and not _0xC3C8 then
_0x68E2(false)
end
end)
end
end
local function _0xEA82()
local _0xB3B6 = _0xC3C8
_0x0ED9(_0x14DB, 0.2, { Scale = _0x07CC * (_0xB3B6 and 1.03 or 1) }, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
_0x0ED9(_0x7CAB, 0.2, { Transparency = (_0xB3B6 or _0x9B26) and 0 or 0.5 })
local _0x1180 = _0xB3B6 and _0x0333 or (_0x9B26 and _0x9245 or _0x3922)
local _0x3B6C = _0xB3B6 and _0xD583 or _0x9CF4
_0x0ED9(_0xE905, 0.2, { BackgroundColor3 = _0x1180 })
_0x0ED9(_0x513E, 0.2, { TextColor3 = _0x3B6C })
for _0xBFE6, _0xA0A4 in ipairs(_0xFA64) do
_0x0ED9(_0xA0A4, 0.2, { BackgroundColor3 = _0x3B6C })
end
if _0x76E0 or _0xB3B6 then
_0x0ED9(_0xF2F1, 0.2, { Transparency = _0xB3B6 and 0 or 0.6 })
end
end
local function _0xC56B(open)
local _0x6C00, _0x04A9 = Enum.EasingDirection.Out, Enum.EasingStyle.Quint
_0x0ED9(_0xFA64[1], 0.35, { Position = UDim2.new(0.5, 0, 0, open and 5 or 1), Rotation = open and 45 or 0 }, _0x6C00, _0x04A9)
_0x0ED9(_0xFA64[2], 0.25, { Size = UDim2.fromOffset(open and 0 or 12, 2), BackgroundTransparency = open and 1 or 0 }, _0x6C00, _0x04A9)
_0x0ED9(_0xFA64[3], 0.35, { Position = UDim2.new(0.5, 0, 0, open and 5 or 9), Rotation = open and -45 or 0 }, _0x6C00, _0x04A9)
_0x513E.Text = open andstring.char(99,108,111,115,101)orstring.char(109,101,110,117)end
_0xF709(_0xBC47.MouseEnter, function()
_0xC3C8 = true
_0xEA82()
local _0xABD9 = _0x2ECF
task.delay(0.35, function()
if _0xC3C8 and _0xABD9 == _0x2ECF then
_0x68E2(true)
end
end)
end)
_0xF709(_0xBC47.MouseLeave, function()
_0xC3C8 = false
_0xEA82()
_0x68E2(false)
end)
_0xF709(_0xBC47.InputBegan, function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
_0x0ED9(_0x14DB, 0.1, { Scale = _0x07CC * 0.96 })
end
end)
_0xE91F(_0xA373,string.char(104,117,100,47,119,97,116,101,114,109,97,114,107,95,112,111,115), function()
if not _0x76E0 then
_0x76E0 = true
_0x4FF7[string.char(104,117,100,47,119,109,95,117,115,101,100)] = true
_0x82A4, _0xCB95 = true, os.clock()
end
_0x68E2(false)
_0x034C()
end, function()
if not _0x63F8.MouseEnabled then
_0xC3C8 = false
end
_0xEA82()
end, _0xBC47)
_0x71D8.setWatermark = function(_0x9B7B)
if _0x9B7B == (_0xBC47:GetAttribute(string.char(112,122,79,110)) == true) then
return
end
_0xC82D(_0xBC47, _0x14DB, _0x9B7B, _0x07CC)
if not _0x9B7B then
_0x68E2(false)
end
end
local _0x46C3 = game:GetService(string.char(83,116,97,116,115))
local function _0xD855()
local _0x3E35, _0x49BB = pcall(function()
return _0x46C3.Network.ServerStatsItem[string.char(68,97,116,97,32,80,105,110,103)]:GetValue()
end)
if _0x3E35 and type(_0x49BB) ==string.char(110,117,109,98,101,114)then
return _0x49BB
end
_0x3E35, _0x49BB = pcall(function()
return _0xD33F:GetNetworkPing() * 2000
end)
return _0x3E35 and _0x49BB or 0
end
local _0x46CD, _0x8E22, _0x221B = 0, os.clock(), -1
local _0x0035 = os.clock()
_0xF709(_0x7FDD.RenderStepped, function()
_0x46CD += 1
local _0x9494 = os.clock()
if _0xBC47.Visible then
local _0x4903 = (_0x9494 - _0x0035) * 0.35
local _0x00C9 = _0x2F28(_0x4903)
for _0xBFE6, _0x82D5 in ipairs(_0x2782) do
_0x82D5.Color = _0x00C9
end
if not _0x76E0 and not _0xC3C8 then
_0xF2F1.Transparency = 0.15 + 0.55 * (0.5 + 0.5 * math.cos((_0x9494 - _0x0035) * 4))
end
if _0x14DB.Scale > _0x07CC * 0.99 then
_0xA373.Size = UDim2.fromOffset(_0xBC47.AbsoluteSize.X, _0xBC47.AbsoluteSize.Y)
end
if _0x843E.Visible then
_0x5880()
end
end
if _0x9494 - _0x8E22 < 0.5 then
return
end
local _0x44D1 = math.floor(_0x46CD / (_0x9494 - _0x8E22) + 0.5)
_0x46CD, _0x8E22 = 0, _0x9494
if not _0xBC47.Visible then
return
end
local _0xC550 = math.floor(_0xD855() + 0.5)
_0xA640.Text = _0x9C6F(_0x44D1,string.char(102,112,115))
_0x34FA.Text = _0x9C6F(_0xC550,string.char(109,115))
_0x6CD2.Text =string.char(60,102,111,110,116,32,99,111,108,111,114,61,34,35,70,70,70,70,70,70,34,62).. os.date(string.char(37,72,58,37,77)) ..string.char(60,47,102,111,110,116,62)local _0x662D = _0xC550 < 90 and 3 or (_0xC550 < 180 and 2 or 1)
if _0x662D ~= _0x221B then
_0x221B = _0x662D
for _0x60FA, _0xBB9C in ipairs(_0x883C) do
_0x0ED9(_0xBB9C, 0.25, { BackgroundColor3 = _0x60FA <= _0x662D and _0x0333 or _0x9245 })
end
end
end)
_0x0B89 = function(_0x522F)
_0xC56B(_0x522F)
_0xEA82()
if _0x522F then
_0x68E2(false)
elseif not _0x76E0 and _0xBC47:GetAttribute(string.char(112,122,79,110)) then
task.delay(0.25, function()
if not _0x9B26 and not _0x76E0 then
_0x68E2(true, 6)
end
end)
end
end
local _0x9EA9, _0x4F30, _0x3C7B
_0xF709(_0x60FD.InputBegan, function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
_0x9EA9 = true
_0x4F30 = input.Position
_0x3C7B = _0x2D1C.Position
end
end)
_0xF709(_0x63F8.InputChanged, function(input)
if input.UserInputType ~= Enum.UserInputType.MouseMovement and input.UserInputType ~= Enum.UserInputType.Touch then
return
end
if _0x92E9 then
_0x92E9(input.Position.X)
elseif _0x9EA9 then
local _0x819A = input.Position - _0x4F30
_0x2D1C.Position = UDim2.new(_0x3C7B.X.Scale, _0x3C7B.X.Offset + _0x819A.X, _0x3C7B.Y.Scale, _0x3C7B.Y.Offset + _0x819A.Y)
end
end)
_0xF709(_0x63F8.InputEnded, function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
_0x9EA9 = false
_0x92E9 = nil
end
end)
local _0x7659, _0x3881 = os.clock(), 0
_0xF709(_0x7FDD.RenderStepped, function()
if not _0x2D1C.Visible then
return
end
local _0x9494 = os.clock()
if _0x9494 - _0x3881 < 1 / 30 then
return
end
_0x3881 = _0x9494
local _0x4903 = (_0x9494 - _0x7659) * 0.35
local _0x00C9 = _0x2F28(_0x4903)
for _0xBFE6, _0x82D5 in ipairs(_0x0839) do
_0x82D5.Color = _0x00C9
end
_0x0839[1].Rotation = _0x4903 * 90 % 360
end)
do
local _0xB427 = {
CoolRock = {
_0xE187 = _0xA69C ..string.char(47,99,111,111,108,114,111,99,107,50,46,112,110,103),
_0x7AB6 =string.char(104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,114,111,99,107,115,99,114,105,112,116,101,114,47,77,77,50,68,114,111,110,101,47,114,101,102,115,47,104,101,97,100,115,47,109,97,105,110,47,99,111,111,108,114,111,99,107,50,46,112,110,103),
_0xA7B0 = 45,
cols = 7,
cell = 144,
_0x7881 = 8,
_0xA060 = 8,
_0xD68C = 16,
_0x1C39 = 4,
delay = 0.14,
},
}
local _0x95B5 = _0x81A6(string.char(73,109,97,103,101,76,97,98,101,108), {
Name =string.char(77,97,115,99,111,116),
AnchorPoint = Vector2.new(0.5, 1),
Size = UDim2.fromOffset(150, 150),
BackgroundTransparency = 1,
ImageTransparency = 1,
ScaleType = Enum.ScaleType.Fit,
Visible = false,
ZIndex = 1,
Parent = _0x4696,
})
local _0x012B
_0xFA0F.name =string.char(67,111,111,108,82,111,99,107)if _0x4FF7[string.char(109,101,116,97,47,99,111,111,108,114,111,99,107,95,100,101,102,97,117,108,116)] ~= true then
_0x4FF7[string.char(109,101,116,97,47,99,111,111,108,114,111,99,107,95,100,101,102,97,117,108,116)] = true
_0x4FF7[string.char(83,101,116,116,105,110,103,115,47,77,97,115,99,111,116,47,67,111,111,108,82,111,99,107)] = true
_0x82A4 = true
_0x0C7C()
pcall(function()
if writefile then
writefile(string.char(99,108,117,109,115,121,115,99,114,105,112,116,95,109,97,115,99,111,116,46,116,120,116),string.char(67,111,111,108,82,111,99,107))
end
end)
else
pcall(function()
if isfile and isfile(string.char(99,108,117,109,115,121,115,99,114,105,112,116,95,109,97,115,99,111,116,46,116,120,116)) then
local _0xBE50 = readfile(string.char(99,108,117,109,115,121,115,99,114,105,112,116,95,109,97,115,99,111,116,46,116,120,116))
if _0xBE50 ==string.char(79,102,102)or _0xBE50 ==string.char(67,111,111,108,82,111,99,107)then
_0xFA0F.name = _0xBE50
end
end
end)
end
local _0x752D = {}
local function _0xBEEF(_0xBD62)
if _0x752D[_0xBD62] then
return _0x752D[_0xBD62]
end
local _0xE6E2 = _0xB427[_0xBD62]
local _0x618A = getcustomasset or getsynasset
if not _0xE6E2 or not _0x618A then
return
end
if not (isfile and isfile(_0xE6E2.file)) and _0xE6E2.url and writefile then
local _0x3E35, _0xC352 = pcall(game.HttpGet, game, _0xE6E2.url)
if _0x3E35 and type(_0xC352) ==string.char(115,116,114,105,110,103)and #_0xC352 > 0 then
pcall(writefile, _0xE6E2.file, _0xC352)
end
end
if not (isfile and isfile(_0xE6E2.file)) then
return
end
local _0x3E35, _0x54A2 = pcall(_0x618A, _0xE6E2.file)
if _0x3E35 and _0x54A2 then
_0x752D[_0xBD62] = _0x54A2
return _0x54A2
end
end
local _0x2499 = Instance.new(string.char(78,117,109,98,101,114,86,97,108,117,101))
local _0x2343 = Instance.new(string.char(78,117,109,98,101,114,86,97,108,117,101))
local _0x02D3
local _0x7DFA = 0
_0xBA76 = function(_0x522F)
if not _0x012B then
return
end
_0x7DFA += 1
local _0xABD9 = _0x7DFA
if _0x02D3 then
_0x02D3:Cancel()
end
if _0x522F then
_0x95B5.Visible = true
_0x2499.Value = 0
_0x02D3 = _0x85C3:Create(_0x2499, TweenInfo.new(0.75, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out, 0, false, 0.2), { Value = 1 })
_0x02D3:Play()
else
_0x02D3 = _0x0ED9(_0x2499, 0.2, { Value = 0 }, Enum.EasingDirection.In)
_0x02D3.Completed:Connect(function(_0xCFC0)
if _0xABD9 == _0x7DFA and _0xCFC0 == Enum.PlaybackState.Completed then
_0x95B5.Visible = false
end
end)
end
end
local _0x5112 = 0
local function _0x9135(_0xBD62)
_0x5112 += 1
local _0xABD9 = _0x5112
task.spawn(function()
if _0x012B and _0x95B5.Visible then
_0xBA76(false)
task.wait(0.22)
end
if _0xABD9 ~= _0x5112 then
return
end
_0x012B = nil
_0x95B5.Visible = false
if _0xBD62 ==string.char(79,102,102)then
return
end
local _0x54A2 = _0xBEEF(_0xBD62)
if _0xABD9 ~= _0x5112 or not _0x54A2 then
return
end
local _0xE6E2 = _0xB427[_0xBD62]
_0x95B5.Image = _0x54A2
local _0x7881, _0xD68C = _0xE6E2.cropLeft or 0, _0xE6E2.cropTop or 0
local _0xA060, _0x1C39 = _0xE6E2.cropRight or 0, _0xE6E2.cropBottom or 0
_0x95B5.ImageRectOffset = _0xE6E2.frames and Vector2.new(_0x7881, _0xD68C) or Vector2.zero
_0x95B5.ImageRectSize = _0xE6E2.frames and Vector2.new(_0xE6E2.cell - _0x7881 - _0xA060, _0xE6E2.cell - _0xD68C - _0x1C39) or Vector2.zero
_0x012B = _0xE6E2
if _0x9B26 then
_0xBA76(true)
end
end)
end
_0xFA0F.set = function(_0xBD62)
if _0xBD62 == _0xFA0F.name then
return
end
_0xFA0F.name = _0xBD62
pcall(function()
if writefile then
writefile(string.char(99,108,117,109,115,121,115,99,114,105,112,116,95,109,97,115,99,111,116,46,116,120,116), _0xBD62)
end
end)
_0x9135(_0xBD62)
end
_0xF709(_0x95B5.MouseEnter, function()
_0x0ED9(_0x2343, 0.35, { Value = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
end)
_0xF709(_0x95B5.MouseLeave, function()
_0x0ED9(_0x2343, 0.3, { Value = 0 })
end)
local _0xC2D5, _0xED6F, _0xB7E8, _0xB56E = 0, 0, 0, 0
local _0x3F18, _0x39A9 = 0, 0
local _0xEE8C = 0
local _0xC7DA
local _0x9F98 = 0
local _0xEC26 = os.clock()
_0xF709(_0x7FDD.RenderStepped, function(_0xF45E)
if not _0x95B5.Visible or not _0x012B then
_0xC7DA = nil
return
end
_0xF45E = math.min(_0xF45E, 0.03333333333333333)
local _0x4903 = os.clock() - _0xEC26
local _0x334A = _0xE9B2.Scale
local _0x0D18 = _0x2499.Value
local _0xD2D7 = _0x2343.Value
local _0x16A1, _0xDD63 = _0x2D1C.Position, _0x2D1C.Size
local _0xFEFE, _0x7425 = _0x16A1.X.Offset, _0x16A1.Y.Offset
if _0x012B.frames then
local _0x23BB = math.floor(_0x4903 / _0x012B.delay) % _0x012B.frames
_0x95B5.ImageRectOffset = Vector2.new(_0x23BB % _0x012B.cols * _0x012B.cell + (_0x012B.cropLeft or 0), math.floor(_0x23BB / _0x012B.cols) * _0x012B.cell + (_0x012B.cropTop or 0))
end
if not _0xC7DA then
_0xC2D5, _0xED6F, _0xB7E8, _0xB56E, _0x3F18, _0x39A9, _0xEE8C = _0xFEFE, _0x7425, 0, 0, 0, 0, 0
_0xC7DA = _0xFEFE
end
_0xEE8C += ((_0xFEFE - _0xC7DA) / _0xF45E - _0xEE8C) * math.min(_0xF45E * 12, 1)
_0xC7DA = _0xFEFE
_0x9F98 += ((_0x9EA9 and 1 or 0) - _0x9F98) * math.min(_0xF45E * 8, 1)
local _0x98C3 = _0xF45E / 2
for _0xBFE6 = 1, 2 do
_0xB7E8 += ((_0xFEFE - _0xC2D5) * 170 - _0xB7E8 * 13) * _0x98C3
_0xB56E += ((_0x7425 - _0xED6F) * 170 - _0xB56E * 13) * _0x98C3
_0xC2D5 += _0xB7E8 * _0x98C3
_0xED6F += _0xB56E * _0x98C3
_0x39A9 += ((math.clamp(-_0xEE8C * 0.015, -22, 22) - _0x3F18) * 120 - _0x39A9 * 9) * _0x98C3
_0x3F18 += _0x39A9 * _0x98C3
end
local _0x17DE = math.clamp(_0xC2D5 - _0xFEFE, -10, 10)
local _0xFF45 = math.clamp(_0xED6F - _0x7425, -40, 0)
_0xC2D5, _0xED6F = _0xFEFE + _0x17DE, math.clamp(_0xED6F, _0x7425 - 40, _0x7425)
local _0x04E1 = math.clamp(_0xB56E * 0.00025, -0.12, 0.12)
local _0x933D, _0xCA10 = 1 + _0x04E1 * 0.6, 1 - _0x04E1
local _0x52F8 = 150 * _0x334A * (1 + 0.07 * _0xD2D7)
local _0x42FB, _0x9436 = _0x52F8 * _0x933D, _0x52F8 * _0xCA10
local _0x2700 = _0xFEFE - _0xDD63.X.Offset / 2 * _0x334A
local _0xC23A = _0x7425 - _0xDD63.Y.Offset / 2 * _0x334A
local _0xA051 = _0x2700 + 58 * _0x334A + _0x17DE * _0x0D18
local _0x74C3 = _0xC23A + 13 * _0x334A
local _0xD4A2 = _0x74C3 - (1 - _0x0D18) * 70 * _0x334A + _0xFF45 * _0x0D18 - 6 * _0xD2D7 * _0x334A - 6 * _0x9F98 * _0x334A
local _0x4DD6 = _0x3F18 * math.clamp(_0x0D18, 0, 1) - 4 * _0xD2D7
local _0x5ED5 = math.rad(_0x4DD6)
_0xA051 += math.sin(_0x5ED5) * _0x9436 / 2
_0xD4A2 += (1 - math.cos(_0x5ED5)) * _0x9436 / 2
_0x95B5.Position = UDim2.new(_0x16A1.X.Scale, _0xA051, _0x16A1.Y.Scale, _0xD4A2)
_0x95B5.Size = UDim2.fromOffset(_0x42FB, _0x9436)
_0x95B5.Rotation = _0x4DD6
_0x95B5.ImageTransparency = math.clamp(1 - _0x0D18 * 3, 0, 1)
end)
_0x9135(_0xFA0F.name)
endlocal _0x2F55
local function _0x0C70()
local _0xCBAB = _0xD33F:FindFirstChildOfClass(string.char(66,97,99,107,112,97,99,107))
if not _0xCBAB then return end
if _0x2F55 and _0x2F55.Parent then
return
end
for _0xBFE6, _0x1DD1 in ipairs({_0xCBAB, _0xD33F.Character}) do
if _0x1DD1 then
local _0x6355 = _0x1DD1:FindFirstChild(string.char(116,112))
if _0x6355 and _0x6355:IsA(string.char(84,111,111,108)) then
_0x6355:Destroy()
end
end
end
local _0xC3A4 = Instance.new(string.char(84,111,111,108))
_0xC3A4.Name =string.char(116,112)_0xC3A4.RequiresHandle = false
_0xC3A4.CanBeDropped = false
_0xF709(_0xC3A4.Activated, function()
local _0x289D = _0xD33F.Character
local _0xB7F6 = _0x289D and _0x289D:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xDFE9 = _0xD33F:GetMouse()
if _0xB7F6 and _0xDFE9 and _0xDFE9.Hit then
local _0x0D18 = _0xDFE9.Hit.Position
_0xB7F6.CFrame = CFrame.new(_0x0D18.X, _0x0D18.Y + 3, _0x0D18.Z)
end
end)
_0xC3A4.Parent = _0xCBAB
_0x2F55 = _0xC3A4
end
local function _0xFFA5()
if _0x2F55 then
pcall(function() _0x2F55:Destroy() end)
_0x2F55 = nil
end
for _0xBFE6, _0x1DD1 in ipairs({_0xD33F:FindFirstChildOfClass(string.char(66,97,99,107,112,97,99,107)), _0xD33F.Character}) do
if _0x1DD1 then
local _0xC3A4 = _0x1DD1:FindFirstChild(string.char(116,112))
if _0xC3A4 and _0xC3A4:IsA(string.char(84,111,111,108)) then
pcall(function() _0xC3A4:Destroy() end)
end
end
end
endlocal _0xEDA5 = {
_0x2395 = false,
ui = nil,
_0xD10F = nil,
_0xE9A9 = nil,
_0x6115 = {},
drag = false,
touchObj = nil,
vec = Vector2.zero,
loopConn = nil,
charConn = nil,
_0x2E5A = 0,
_0xBBBA = nil,
_0x925C = nil,
noclipSnap = {},
}
local _0xEADF = 60
local _0xB2E7 = false
local function _0x8446()
_0xEDA5.drag = false
_0xEDA5.touchObj = nil
_0xEDA5.vec = Vector2.zero
if _0xEDA5.knob and _0xEDA5.knob.Parent then
_0xEDA5.knob.Position = UDim2.new(0.5, 0, 0.5, 0)
end
end
local function _0x6F5B(inputPos)
if not _0xEDA5.base or not _0xEDA5.base.Parent or not _0xEDA5.knob or not _0xEDA5.knob.Parent then
return
end
local _0xF89E = _0xEDA5.base.AbsolutePosition + (_0xEDA5.base.AbsoluteSize * 0.5)
local _0x18EF = Vector2.new(inputPos.X, inputPos.Y) - _0xF89E
local _0xE5A9 = math.max(1, (math.min(_0xEDA5.base.AbsoluteSize.X, _0xEDA5.base.AbsoluteSize.Y) * 0.5) - 28)
local _0xCC21 = _0x18EF.Magnitude
if _0xCC21 > _0xE5A9 then
_0x18EF = _0x18EF.Unit * _0xE5A9
end
_0xEDA5.knob.Position = UDim2.new(0.5, _0x18EF.X, 0.5, _0x18EF.Y)
_0xEDA5.vec = Vector2.new(_0x18EF.X / _0xE5A9, -_0x18EF.Y / _0xE5A9)
if _0xEDA5.vec.Magnitude > 1 then
_0xEDA5.vec = _0xEDA5.vec.Unit
end
end
local function _0xEE8D()
for _0xBFE6, _0xD51E in ipairs(_0xEDA5.conns) do
pcall(function() _0xD51E:Disconnect() end)
end
table.clear(_0xEDA5.conns)
end
local function _0x8E08()
if _0xEDA5.ui and _0xEDA5.ui.Parent and _0xEDA5.base and _0xEDA5.base.Parent then
return
end
_0xEE8D()
if _0xEDA5.ui then
pcall(function() _0xEDA5.ui:Destroy() end)
end
local _0x4696 = Instance.new(string.char(83,99,114,101,101,110,71,117,105))
_0x4696.Name =string.char(67,108,117,109,115,121,70,108,121,74,111,121,115,116,105,99,107)_0x4696.ResetOnSpawn = false
_0x4696.IgnoreGuiInset = true
_0x4696.DisplayOrder = 998
_0x4696.Parent = _0xD33F:FindFirstChildOfClass(string.char(80,108,97,121,101,114,71,117,105)) or _0xD33F.PlayerGui
_0xEDA5.ui = _0x4696
local _0xD10F = Instance.new(string.char(70,114,97,109,101))
_0xD10F.AnchorPoint = Vector2.new(0.5, 0.5)
_0xD10F.Position = UDim2.new(0.18, 0, 0.72, 0)
_0xD10F.Size = UDim2.fromOffset(150, 150)
_0xD10F.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_0xD10F.BackgroundTransparency = 0.25
_0xD10F.BorderSizePixel = 0
_0xD10F.Active = true
_0xD10F.ZIndex = 10
_0xD10F.Parent = _0x4696
local _0x5FD9 = Instance.new(string.char(85,73,67,111,114,110,101,114))
_0x5FD9.CornerRadius = UDim.new(1, 0)
_0x5FD9.Parent = _0xD10F
local _0x6D2C = Instance.new(string.char(85,73,83,116,114,111,107,101))
_0x6D2C.Color = _0x0333
_0x6D2C.Thickness = 1.5
_0x6D2C.Transparency = 0.4
_0x6D2C.Parent = _0xD10F
_0xEDA5.base = _0xD10F
local _0xE9A9 = Instance.new(string.char(70,114,97,109,101))
_0xE9A9.AnchorPoint = Vector2.new(0.5, 0.5)
_0xE9A9.Position = UDim2.new(0.5, 0, 0.5, 0)
_0xE9A9.Size = UDim2.fromOffset(55, 55)
_0xE9A9.BackgroundColor3 = _0x0333
_0xE9A9.BackgroundTransparency = 0.1
_0xE9A9.BorderSizePixel = 0
_0xE9A9.ZIndex = 11
_0xE9A9.Parent = _0xD10F
local _0x6984 = Instance.new(string.char(85,73,67,111,114,110,101,114))
_0x6984.CornerRadius = UDim.new(1, 0)
_0x6984.Parent = _0xE9A9
_0xEDA5.knob = _0xE9A9
_0xEDA5.conns[#_0xEDA5.conns + 1] = _0xD10F.InputBegan:Connect(function(input)
if not _0xEDA5.active then return end
local _0x4903 = input.UserInputType
if _0x4903 == Enum.UserInputType.Touch or _0x4903 == Enum.UserInputType.MouseButton1 then
_0xEDA5.drag = true
_0xEDA5.touchObj = input
_0x6F5B(input.Position)
end
end)
_0xEDA5.conns[#_0xEDA5.conns + 1] = _0x63F8.InputChanged:Connect(function(input)
if not _0xEDA5.active or not _0xEDA5.drag then return end
local _0x4903 = input.UserInputType
if _0x4903 == Enum.UserInputType.Touch then
if _0xEDA5.touchObj and input ~= _0xEDA5.touchObj then return end
_0x6F5B(input.Position)
elseif _0x4903 == Enum.UserInputType.MouseMovement then
_0x6F5B(input.Position)
end
end)
_0xEDA5.conns[#_0xEDA5.conns + 1] = _0x63F8.InputEnded:Connect(function(input)
if not _0xEDA5.drag then return end
if input == _0xEDA5.touchObj or input.UserInputType == Enum.UserInputType.MouseButton1 then
_0x8446()
end
end)
end
local function _0x094A()
if _0xEDA5.bv then
pcall(function() _0xEDA5.bv:Destroy() end)
_0xEDA5.bv = nil
end
if _0xEDA5.bg then
pcall(function() _0xEDA5.bg:Destroy() end)
_0xEDA5.bg = nil
end
local _0x289D = _0xD33F.Character
if _0x289D then
local _0xBD98 = _0x289D:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if _0xBD98 then _0xBD98.PlatformStand = false end
end
for _0x3066 in pairs(_0xEDA5.noclipSnap) do
if _0x3066 and _0x3066.Parent then
pcall(function() _0x3066.CanCollide = true end)
end
end
table.clear(_0xEDA5.noclipSnap)
end
local function _0x168C(_0x289D)
if not _0xEDA5.active then return end
local _0xB7F6 = _0x289D:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)) or _0x289D:WaitForChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116), 5)
local _0xBD98 = _0x289D:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100)) or _0x289D:WaitForChild(string.char(72,117,109,97,110,111,105,100), 5)
if not _0xB7F6 or not _0xBD98 or not _0xEDA5.active then return end
_0x094A()
local _0xBBBA = Instance.new(string.char(66,111,100,121,86,101,108,111,99,105,116,121))
_0xBBBA.MaxForce = Vector3.new(1e9, 1e9, 1e9)
_0xBBBA.P = 12500
_0xBBBA.Velocity = Vector3.zero
_0xBBBA.Parent = _0xB7F6
_0xEDA5.bv = _0xBBBA
local _0x925C = Instance.new(string.char(66,111,100,121,71,121,114,111))
_0x925C.MaxTorque = Vector3.new(1e9, 1e9, 1e9)
_0x925C.P = 12000
_0x925C.D = 700
_0x925C.CFrame = _0xB7F6.CFrame
_0x925C.Parent = _0xB7F6
_0xEDA5.bg = _0x925C
_0xBD98.PlatformStand = true
if _0xB2E7 then
for _0xBFE6, _0x3066 in ipairs(_0x289D:GetDescendants()) do
if _0x3066:IsA(string.char(66,97,115,101,80,97,114,116)) and _0x3066.CanCollide then
_0xEDA5.noclipSnap[_0x3066] = true
_0x3066.CanCollide = false
end
end
end
end
local function _0xF60C(enabled)
enabled = enabled == true
if enabled then
if _0xEDA5.active then
_0x8E08()
return
end
_0xEDA5.active = true
_0xEDA5.generation += 1
_0x8E08()
_0x8446()
if _0xD33F.Character then
_0x168C(_0xD33F.Character)
end
if not _0xEDA5.charConn then
_0xEDA5.charConn = _0xD33F.CharacterAdded:Connect(function(_0x289D)
if _0xEDA5.active then
task.defer(function()
if _0xEDA5.active then
_0x168C(_0x289D)
end
end)
end
end)
end
local _0x2E5A = _0xEDA5.generation
_0xEDA5.loopConn = _0x7FDD.RenderStepped:Connect(function()
if not _0xEDA5.active or _0x2E5A ~= _0xEDA5.generation then return end
local _0x289D = _0xD33F.Character
if not _0x289D then return end
local _0xB7F6 = _0x289D:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xBD98 = _0x289D:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if not _0xB7F6 or not _0xBD98 then return end
if not _0xEDA5.bv or _0xEDA5.bv.Parent ~= _0xB7F6 then
_0x168C(_0x289D)
return
end
_0xBD98.PlatformStand = true
if _0xB2E7 then
for _0xBFE6, _0x3066 in ipairs(_0x289D:GetDescendants()) do
if _0x3066:IsA(string.char(66,97,115,101,80,97,114,116)) and _0x3066.CanCollide then
_0xEDA5.noclipSnap[_0x3066] = true
_0x3066.CanCollide = false
end
end
end
if _0xEDA5.bg and _0xEDA5.bg.Parent == _0xB7F6 then
_0xEDA5.bg.CFrame = workspace.CurrentCamera.CFrame
end
local _0x073A = _0xEDA5.vec
if _0x073A.Magnitude > 0.05 then
local _0xDF16 = workspace.CurrentCamera
_0xEDA5.bv.Velocity =
(_0xDF16.CFrame.RightVector * _0x073A.X + _0xDF16.CFrame.LookVector * _0x073A.Y)
* _0xEADF
else
_0xEDA5.bv.Velocity = Vector3.zero
end
end)
else
if not _0xEDA5.active then return end
_0xEDA5.active = false
_0xEDA5.generation += 1
if _0xEDA5.loopConn then
pcall(function() _0xEDA5.loopConn:Disconnect() end)
_0xEDA5.loopConn = nil
end
_0x094A()
_0x8446()
_0xEE8D()
if _0xEDA5.ui then
pcall(function() _0xEDA5.ui:Destroy() end)
_0xEDA5.ui = nil
end
_0xEDA5.base = nil
_0xEDA5.knob = nil
if _0xEDA5.charConn then
pcall(function() _0xEDA5.charConn:Disconnect() end)
_0xEDA5.charConn = nil
end
end
endlocal _0xD5D1 = game:GetService(string.char(67,111,110,116,101,110,116,80,114,111,118,105,100,101,114))
local _0xEC6D
local _0xF8D4 = {
[string.char(79,114,105,103,105,110,97,108,32,83,104,111,116)] =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,51,56,51,55,49,48,53,53,52,55,50,50,53,53),
[string.char(69,110,97,98,108,101,32,49)] =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,48,48,55,55,50,53,48,57,53,56,51,51,51,54),
Sparkle =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,49,48,50,52,49,57,51,54,57,54,54,48,56,57),
[string.char(76,97,115,101,114,32,67,108,105,99,107)] =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,56,57,49,51,48,48,54,51,52,49),
[string.char(69,110,97,98,108,101,32,50)] =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,56,52,54,50,54,48,51,54,56,54,56,48,54,55),
Notify =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,48,51,52,50,49,51,48,52,48,50,48,48,51,57),
[string.char(82,117,115,116,32,72,101,97,100,115,104,111,116)] =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,51,56,55,53,48,51,51,49,51,56,55,48,54,52),
Neverlose =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,49,48,49,54,56,55,50,51,52,52,55,49,53,51),
Bubble =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,54,53,51,52,57,52,55,53,56,56),
[string.char(67,97,108,108,32,111,102,32,68,117,116,121)] =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,53,57,53,50,49,50,48,51,48,49),
[string.char(84,70,50,32,67,114,105,116,105,99,97,108)] =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,50,57,54,49,48,50,55,51,52),
Saber =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,56,52,49,53,54,55,56,56,49,51),
Money =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,51,57,53,54,48,49,51,48,52,49),
Shutter =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,48,48,54,54,57,50,49,53,49,54),
[string.char(76,97,122,101,114,32,66,101,97,109)] =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,51,48,55,57,49,48,52,51),
[string.char(87,105,110,100,111,119,115,32,88,80,32,69,114,114,111,114)] =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,54,48,55,49,53,51,53,55),
[string.char(84,70,50,32,72,105,116)] =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,51,52,53,53,49,52,52,57,56,49),
OSU =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,55,49,52,55,52,53,52,51,50,50),
Mario =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,53,55,48,57,52,53,54,53,53,52),
Bell =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,54,53,51,52,57,52,55,50,52,48),
Vine =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,53,51,51,50,54,56,48,56,49,48),
Bonk =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,53,55,54,54,56,57,56,49,53,57),
Skeet =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,53,54,51,51,54,57,53,54,55,57),
Fatality =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,54,53,51,52,57,52,55,56,54,57),
Minecraft =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,53,56,54,57,52,50,50,52,53,49),
}
local _0x5A54 =string.char(79,114,105,103,105,110,97,108,32,83,104,111,116)local _0xF6EB = _0xF8D4[_0x5A54]
local _0x04ED = false
local _0xDB25 = 3
local _0x54C4 = 0
local _0x17DC = 3
local _0x6E87 = 0
local _0x9FD5 = setmetatable({}, { __mode =string.char(107)})
local _0x67A8 = setmetatable({}, { __mode =string.char(107)})
local function _0x2870(_0xEF9C)
if not _0x04ED or not _0xEF9C or not _0xEF9C:IsA(string.char(83,111,117,110,100)) then return end
if _0xEF9C == _0xEC6D or _0xEF9C.Name ==string.char(67,108,117,109,115,121,95,83,104,111,116,83,111,117,110,100)then return end
local _0xA5BF = string.lower(_0xEF9C.Name)
local _0xEF31 = _0xA5BF:find(string.char(115,104,111,116), 1, true)
or _0xA5BF:find(string.char(115,104,111,111,116), 1, true)
or _0xA5BF:find(string.char(102,105,114,101), 1, true)
or _0xA5BF:find(string.char(103,117,110), 1, true)
or _0xA5BF:find(string.char(98,97,110,103), 1, true)
if not _0xEF31 then return end
if _0x9FD5[_0xEF9C] == nil then
_0x9FD5[_0xEF9C] = _0xEF9C.Volume
end
pcall(function()
_0xEF9C:Stop()
_0xEF9C.Volume = 0
end)
end
local function _0x9456(_0xC3A4)
if not _0x04ED or not _0xC3A4 then return end
for _0xBFE6, descendant in ipairs(_0xC3A4:GetDescendants()) do
if descendant:IsA(string.char(83,111,117,110,100)) then _0x2870(descendant) end
end
if not _0x67A8[_0xC3A4] then
_0x67A8[_0xC3A4] = _0xC3A4.DescendantAdded:Connect(function(descendant)
if descendant:IsA(string.char(83,111,117,110,100)) then _0x2870(descendant) end
end)
end
end
local function _0x92FC()
for _0xEF9C, originalVolume in pairs(_0x9FD5) do
if _0xEF9C and _0xEF9C.Parent then
pcall(function() _0xEF9C.Volume = originalVolume end)
end
_0x9FD5[_0xEF9C] = nil
end
for _0xC3A4, connection in pairs(_0x67A8) do
pcall(function() connection:Disconnect() end)
_0x67A8[_0xC3A4] = nil
end
end
local function _0xBA64()
local _0x289D = _0xD33F.Character
if not _0x289D then return nil end
local _0xC3A4 = _0x289D:FindFirstChildOfClass(string.char(84,111,111,108))
if not _0xC3A4 then return nil end
local _0xBD62 = string.lower(_0xC3A4.Name)if _0xBD62:find(string.char(107,110,105,102,101), 1, true) or _0xBD62:find(string.char(115,119,111,114,100), 1, true) then
return nil
end
if _0xBD62:find(string.char(112,105,115,116,111,108), 1, true)
or _0xBD62:find(string.char(115,104,101,114,105,102,102), 1, true)
or _0xBD62:find(string.char(114,101,118,111,108,118,101,114), 1, true)
or _0xBD62:find(string.char(104,97,110,100,103,117,110), 1, true)
or _0xBD62:find(string.char(103,117,110), 1, true)
then
return _0xC3A4
end
return nil
end
local function _0xDDE0()
if _0xEC6D then pcall(function() _0xEC6D:Destroy() end) end
_0xEC6D = nil
local _0x289D = _0xD33F.Character
local _0x210D = _0x289D and (_0x289D:FindFirstChild(string.char(72,101,97,100)) or _0x289D:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)))
if not _0x210D then return end
_0xEC6D = Instance.new(string.char(83,111,117,110,100))
_0xEC6D.Name =string.char(67,108,117,109,115,121,95,83,104,111,116,83,111,117,110,100)_0xEC6D.SoundId = _0xF6EB
_0xEC6D.Volume = _0xDB25
_0xEC6D.Parent = _0x210D
task.spawn(function()
pcall(function() _0xD5D1:PreloadAsync({_0xEC6D}) end)
end)
end
local function _0x6723()
if not _0x04ED then return end
if not _0xBA64() then return end
local _0x9494 = os.clock()
if _0x9494 - _0x54C4 < _0x17DC then return end
_0x54C4 = _0x9494
local _0x28E9 = _0xBA64()
if _0x28E9 then _0x9456(_0x28E9) end
if not _0xEC6D or not _0xEC6D.Parent then
_0xDDE0()
end
if _0xEC6D then
_0xEC6D.Volume = _0xDB25
_0x6E87 += 1
pcall(function()_0xEC6D.Looped = false
_0xEC6D.TimePosition = 0
_0xEC6D:Play()
end)
end
end
local function _0x8B53(_0xC3A4)
if not _0xC3A4 or not _0xC3A4:IsA(string.char(84,111,111,108)) then return end
if _0xC3A4:GetAttribute(string.char(67,108,117,109,115,121,83,104,111,116,72,111,111,107)) then return end
_0xC3A4:SetAttribute(string.char(67,108,117,109,115,121,83,104,111,116,72,111,111,107), true)
_0xF709(_0xC3A4.Activated, function()
if _0x04ED then
_0x9456(_0xC3A4)
_0x6723()
end
end)
if _0x04ED then _0x9456(_0xC3A4) end
end
local function _0xF49F()
local _0x289D = _0xD33F.Character
if not _0x289D then return end
local _0xC3A4 = _0x289D:FindFirstChildOfClass(string.char(84,111,111,108))
if _0xC3A4 then _0x8B53(_0xC3A4) end
end
_0xF709(_0x7FDD.Heartbeat, function()
if _0x04ED then
_0xF49F()
end
end)
_0xF709(_0xD33F.CharacterAdded, function()
task.delay(0.5, function()
if _0x04ED then _0xDDE0() end
end)
end)
local _0x0EC1 = _0xF32C(string.char(77,97,105,110),string.char(103,101,97,114),string.char(115,112,101,101,100,44,32,106,117,109,112,115,32,97,110,100,32,99,104,97,114,97,99,116,101,114))
local _0xDBCA = _0xF32C(string.char(67,111,109,98,97,116),string.char(116,97,114,103,101,116),string.char(99,111,109,98,97,116,32,102,101,97,116,117,114,101,115))
local _0x09BD = _0xF32C(string.char(68,114,111,110,101),string.char(100,114,111,110,101),string.char(102,108,121,32,97,32,83,104,97,104,101,100,32,111,114,32,70,80,86,32,100,114,111,110,101,32,105,110,116,111,32,112,108,97,121,101,114,115))
_0x5643()
local _0xBC91 = _0xF32C(string.char(84,114,111,108,108,32,70,117,110),string.char(115,109,105,108,101),string.char(102,117,110,32,97,110,100,32,116,114,111,108,108,105,110,103))
local _0xD3DD = _0xF32C(string.char(80,108,97,121,101,114,115),string.char(115,109,105,108,101),string.char(112,108,97,121,101,114,32,108,105,115,116,32,97,110,100,32,113,117,105,99,107,32,97,99,116,105,111,110,115))
local _0x8E61 = _0xF32C(string.char(70,114,101,101,32,97,110,105,109,115),string.char(109,111,118,101),string.char(97,110,105,109,97,116,105,111,110,32,112,97,99,107,115,32,102,111,114,32,121,111,117,114,32,99,104,97,114,97,99,116,101,114))
local _0xB0F3 = _0xF32C(string.char(86,111,116,101,32,68,117,112,101,32,77,97,112),string.char(112,105,110),string.char(118,111,116,101,32,102,111,114,32,97,32,109,97,112,32,111,118,101,114,32,97,110,100,32,111,118,101,114,32,40,116,112,32,43,32,114,101,115,101,116,32,108,111,111,112,41))
local _0xF5BA
_0x5643()
local _0x27DE = _0xF32C(string.char(86,105,115,117,97,108,115),string.char(101,121,101),string.char(114,101,97,108,105,115,116,105,99,32,115,104,97,100,101,114,44,32,108,105,103,104,116,32,97,110,100,32,115,107,121))
_0x9C85(_0x27DE, {string.char(83,104,97,100,101,114),string.char(69,83,80),string.char(66,97,99,107,84,114,97,99,107),string.char(77,111,100,101,108,115)})
local _0x3957 = _0xF32C(string.char(83,107,105,110,32,67,104,97,110,103,101,114),string.char(115,116,97,114),string.char(101,118,101,114,121,32,77,77,50,32,107,110,105,102,101,32,97,110,100,32,103,117,110,44,32,111,110,108,121,32,121,111,117,32,115,101,101,32,116,104,101,109))
local _0x048A = _0xF32C(string.char(67,117,114,115,111,114,115),string.char(98,111,108,116),string.char(121,111,117,114,32,111,119,110,32,99,117,114,115,111,114))
local _0x5DCB
local _0xDAFC
local _0x66A6
local _0x9565
local _0xBF1A
local _0xF2E7
local _0x5137
local _0x087D
local _0x9DA0
local _0x828B
local _0x88FE
local _0x7202
local _0xC90D
local _0xDF0F
local _0x4EFE
local _0xD7DE
local _0xB1DA
local _0xB9AB
local _0xF49D
local _0x422B
local _0x4E33
local _0xF027
local _0xC638
local _0x3C30
local _0xE929
local function _0xBF86(_0x0D18, _0xBD62)
local _0x8C06, _0xCBAB = _0x0D18 and _0x0D18.Character, _0x0D18 and _0x0D18:FindFirstChildOfClass(string.char(66,97,99,107,112,97,99,107))
return _0x8C06 and _0x8C06:FindFirstChild(_0xBD62) or _0xCBAB and _0xCBAB:FindFirstChild(_0xBD62)
end
local function _0x2E92(_0x0D18)
local _0x8C06 = _0x0D18 and _0x0D18.Character
local _0xE4E7 = _0x8C06 and _0x8C06:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xBD98 = _0x8C06 and _0x8C06:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if _0xE4E7 and _0xBD98 and _0xBD98.Health > 0 then
return _0xE4E7, _0xBD98, _0x8C06
end
end
local _0x8392, _0xB7CC, _0x5C56, _0x9AAD
local function _0x90B5(_0x16A1)
local _0x9494 = os.clock()
if not _0x9AAD or _0x9494 - _0x9AAD > 1 or not _0x8392 or not _0x8392.Parent then
_0x9AAD = _0x9494
_0x8392 = workspace:FindFirstChild(string.char(76,111,98,98,121)) or workspace:FindFirstChild(string.char(82,101,103,117,108,97,114,76,111,98,98,121))
_0xB7CC, _0x5C56 = nil, nil
if _0x8392 then
local _0x3E35, _0x7800, _0x52F8 = pcall(_0x8392.GetBoundingBox, _0x8392)
if _0x3E35 then
_0xB7CC = _0x7800
_0x5C56 = _0x52F8 / 2 + Vector3.new(10, 30, 10)
end
end
end
if not _0xB7CC then
return false
end
local _0xAC1A = _0xB7CC:PointToObjectSpace(_0x16A1)
return math.abs(_0xAC1A.X) <= _0x5C56.X and math.abs(_0xAC1A.Y) <= _0x5C56.Y and math.abs(_0xAC1A.Z) <= _0x5C56.Z
end
local _0x4CBA = { real = nil, pause = 0, _0x9B7B = false }
local function _0xE4E6(_0xB7F6)
if _0x4CBA.real and _0xB7F6 and _0xB7F6.Parent then
_0xB7F6.CFrame = _0x4CBA.real
end
_0x4CBA.real = nil
_0x4CBA.pause += 1
end
local function _0x0F18()
_0x4CBA.pause = math.max(0, _0x4CBA.pause - 1)
end
local _0x43C5 = function()
_0x04ED = false
_0x6E87 += 1
if _0xEC6D then pcall(function() _0xEC6D:Stop(); _0xEC6D:Destroy() end) end
_0xEC6D = nil
_0x92FC()
end
_0x5643()
local _0x01E8 = _0xF32C(string.char(83,101,116,116,105,110,103,115),string.char(115,108,105,100,101,114,115),string.char(109,101,110,117,32,115,101,116,116,105,110,103,115))
_0x973A()
local _0xFF67 = _0xF32C(string.char(83,101,114,118,101,114),string.char(103,108,111,98,101),string.char(115,101,114,118,101,114,32,97,110,100,32,117,116,105,108,105,116,105,101,115))
local _0x80D9 = _0x78B0(_0xFF67,string.char(83,111,117,110,100,115))
_0x80D9:Toggle(string.char(83,104,111,116,32,83,111,117,110,100),string.char(99,117,115,116,111,109,32,119,101,97,112,111,110,32,115,104,111,116,32,115,111,117,110,100), function(_0x9B7B)
_0x04ED = _0x9B7B
if _0x9B7B then
_0x54C4 = 0
_0xDDE0()
_0xF49F()
local _0x28E9 = _0xBA64()
if _0x28E9 then _0x9456(_0x28E9) end
else
_0x6E87 += 1
if _0xEC6D then pcall(function() _0xEC6D:Stop(); _0xEC6D:Destroy() end) end
_0xEC6D = nil
_0x92FC()
end
end)_0x80D9:Slider(string.char(83,104,111,116,32,86,111,108,117,109,101,32,47,32,208,147,209,128,208,190,208,188,208,186,208,190,209,129,209,130,209,140,32,208,178,209,139,209,129,209,130,209,128,208,181,208,187,208,176), 0, 10, _0xDB25, function(_0xBE50)
_0xDB25 = _0xBE50
if _0xEC6D then pcall(function() _0xEC6D.Volume = _0xBE50 end) end
end, function(_0xBE50)
return string.format(string.char(37,46,49,102,32,47,32,49,48), _0xBE50)
end)
_0x80D9:Dropdown(string.char(83,104,111,116,32,83,111,117,110,100,32,83,116,121,108,101),string.char(99,104,111,111,115,101,32,116,104,101,32,115,111,117,110,100,32,117,115,101,100,32,98,121,32,83,104,111,116,32,83,111,117,110,100), {string.char(79,114,105,103,105,110,97,108,32,83,104,111,116),string.char(69,110,97,98,108,101,32,49),string.char(83,112,97,114,107,108,101),string.char(76,97,115,101,114,32,67,108,105,99,107),string.char(69,110,97,98,108,101,32,50),string.char(78,111,116,105,102,121),string.char(82,117,115,116,32,72,101,97,100,115,104,111,116),string.char(78,101,118,101,114,108,111,115,101),string.char(66,117,98,98,108,101),string.char(67,97,108,108,32,111,102,32,68,117,116,121),string.char(84,70,50,32,67,114,105,116,105,99,97,108),string.char(83,97,98,101,114),string.char(77,111,110,101,121),string.char(83,104,117,116,116,101,114),string.char(76,97,122,101,114,32,66,101,97,109),string.char(87,105,110,100,111,119,115,32,88,80,32,69,114,114,111,114),string.char(84,70,50,32,72,105,116),string.char(79,83,85),string.char(77,97,114,105,111),string.char(66,101,108,108),string.char(86,105,110,101),string.char(66,111,110,107),string.char(83,107,101,101,116),string.char(70,97,116,97,108,105,116,121),string.char(77,105,110,101,99,114,97,102,116)},string.char(79,114,105,103,105,110,97,108,32,83,104,111,116), function(_0xBE50)
local _0x59FD = _0xF8D4[_0xBE50]
if not _0x59FD then return end
_0x5A54 = _0xBE50
_0xF6EB = _0x59FD
if _0xEC6D then
local _0xC6F0 = _0xEC6D.IsPlaying
pcall(function() _0xEC6D:Stop() end)
_0xEC6D.SoundId = _0xF6EB
_0xEC6D.TimePosition = 0
if _0xC6F0 then pcall(function() _0xEC6D:Play() end) end
task.spawn(function()
if _0xEC6D then pcall(function() _0xD5D1:PreloadAsync({_0xEC6D}) end) end
end)
end
end)
local _0xE835
local _0xD474 = _0x78B0(_0x0EC1,string.char(80,108,97,121,101,114))
_0xD474:Slider(string.char(87,97,108,107,83,112,101,101,100), 16, 150, 16, function(_0xBE50)
_0x0EBB.speed = _0xBE50
end)
_0xD474:Slider(string.char(74,117,109,112,80,111,119,101,114), 50, 250, 50, function(_0xBE50)
_0x0EBB.jump = _0xBE50
end)
_0xD474:Toggle(string.char(73,110,102,105,110,105,116,101,32,74,117,109,112),string.char(106,117,109,112,32,97,103,97,105,110,32,105,110,32,116,104,101,32,97,105,114), function(_0x9B7B)
_0x0EBB.infJump = _0x9B7B
end)
_0xD474:Toggle(string.char(84,80,32,84,111,111,108),string.char(99,108,105,99,107,32,116,111,32,116,101,108,101,112,111,114,116,32,116,111,32,116,104,101,32,99,117,114,115,111,114), function(_0x9B7B)
if _0x9B7B then
_0x0C70()
else
_0xFFA5()
end
end)
_0xD474:Toggle(string.char(70,108,121,32,74,111,121,115,116,105,99,107),string.char(109,111,98,105,108,101,32,106,111,121,115,116,105,99,107,32,102,108,105,103,104,116), function(_0x9B7B)
_0xF60C(_0x9B7B)
end)
_0xD474:Slider(string.char(70,108,121,32,83,112,101,101,100), 10, 300, 60, function(_0xBE50)
_0xEADF = _0xBE50
end)
_0xD474:Toggle(string.char(70,108,121,32,78,111,99,108,105,112),string.char(110,111,32,99,111,108,108,105,115,105,111,110,32,119,104,105,108,101,32,102,108,121,105,110,103), function(_0x9B7B)
_0xB2E7 = _0x9B7B
end)local _0x6F41 = false
local _0x5909 = 0.65
local _0xA121
local _0x8109 = nil
local function _0x1F38()
_0x6F41 = false
if _0xA121 then
pcall(function() _0xA121:Disconnect() end)
_0xA121 = nil
end
pcall(function()
if _0x8109 then
local _0x4245 = _0x8109
_0x4245.CFrame = CFrame.new(_0x4245.CFrame.Position, _0x4245.CFrame.Position + _0x4245.CFrame.LookVector)
end
end)
_0x8109 = nil
end
local function _0x476A()
_0x1F38()
_0x6F41 = true
_0xA121 = _0x7FDD.RenderStepped:Connect(function()
local _0x4245 = workspace.CurrentCamera
if not _0x4245 or not _0x6F41 then return end
_0x8109 = _0x4245
local _0xFF4E = math.clamp(tonumber(_0x5909) or 0.65, 0.35, 1.5)
pcall(function()
_0x4245.CFrame = _0x4245.CFrame * CFrame.new(0, 0, 0, 1, 0, 0, 0, _0xFF4E, 0, 0, 0, 1)
end)
end)
end
stopAspectRatio = _0x1F38
_0xD474:Toggle(string.char(65,115,112,101,99,116,32,82,97,116,105,111),string.char(99,104,97,110,103,101,32,116,104,101,32,99,97,109,101,114,97,32,97,115,112,101,99,116,32,115,99,97,108,101), function(_0x9B7B)
if _0x9B7B then
_0x476A()
_0xE835(string.char(65,115,112,101,99,116,32,82,97,116,105,111,58,32,79,110),string.char(83,99,97,108,101,32).. tostring(_0x5909))
else
_0x1F38()
_0xE835(string.char(65,115,112,101,99,116,32,82,97,116,105,111,58,32,79,102,102),string.char(99,97,109,101,114,97,32,114,101,115,116,111,114,101,100))
end
end)
_0xD474:Slider(string.char(65,115,112,101,99,116,32,83,99,97,108,101), 0.35, 1.5, 0.65, function(_0xBE50)
_0x5909 = tonumber(_0xBE50) or 0.65
if _0x6F41 then _0x476A() end
end)
local _0x3E5E = _0xD474:Toggle(string.char(65,110,116,105,32,70,108,105,110,103),string.char(110,111,98,111,100,121,32,99,97,110,32,102,108,105,110,103,32,121,111,117), function(_0x9B7B)
if _0x9B7B then
_0x0EBB.antiFling = true
else
_0xB8F5()
end
_0xE835(string.char(65,110,116,105,32,70,108,105,110,103,58,32).. (_0x9B7B andstring.char(79,110)orstring.char(79,102,102)), _0x9B7B andstring.char(121,111,117,32,99,97,110,39,116,32,98,101,32,102,108,117,110,103)orstring.char(100,105,115,97,98,108,101,100))
end)_0x0EBB.antiFling = true
pcall(function() _0x3E5E.Set(true, true) end)
task.defer(function()
if _0x0EBB.antiFling then
pcall(function() _0xE835(string.char(65,110,116,105,32,70,108,105,110,103),string.char(101,110,97,98,108,101,100,32,97,117,116,111,109,97,116,105,99,97,108,108,121)) end)
end
end)
_0xD474:Toggle(string.char(78,111,99,108,105,112),string.char(119,97,108,107,32,116,104,114,111,117,103,104,32,119,97,108,108,115), function(_0x9B7B)
if _0x9B7B then
_0x0EBB.noclip = true
else
_0x7804()
end
_0xE835(string.char(78,111,99,108,105,112,58,32).. (_0x9B7B andstring.char(79,110)orstring.char(79,102,102)), _0x9B7B andstring.char(119,97,108,108,115,32,99,97,110,39,116,32,115,116,111,112,32,121,111,117)orstring.char(99,111,108,108,105,115,105,111,110,32,105,115,32,98,97,99,107))
end)
_0xD474:Toggle(string.char(83,112,105,110,32,66,111,116),string.char(116,117,114,110,32,121,111,117,114,32,99,104,97,114,97,99,116,101,114,32,99,111,110,116,105,110,117,111,117,115,108,121,59,32,97,108,115,111,32,97,118,97,105,108,97,98,108,101,32,105,110,32,84,114,111,108,108,32,70,117,110), function(_0x9B7B)
if _0x9565 then
_0x9565(_0x9B7B)
else
task.defer(function()
if _0x9565 then _0x9565(_0x9B7B) end
end)
end
end)
_0xD474:Slider(string.char(83,112,105,110,32,83,112,101,101,100), 1, 30, 10, function(_0xBE50)
if _0xBF1A then
_0xBF1A(_0xBE50)
else
task.defer(function()
if _0xBF1A then _0xBF1A(_0xBE50) end
end)
end
end, function(_0xBE50)
return tostring(_0xBE50) ..string.char(120)end)
local _0xB328 = _0x78B0(_0x0EC1,string.char(79,116,104,101,114))
_0xB328:Button(string.char(82,101,115,101,116,32,115,116,97,116,115),string.char(115,112,101,101,100,32,97,110,100,32,106,117,109,112,32,98,97,99,107,32,116,111,32,100,101,102,97,117,108,116), function()
_0x0EBB.speed, _0x0EBB.jump = nil, nil
local _0xBD98 = _0xA6D4()
if _0xBD98 then
_0xBD98.WalkSpeed = 16
_0xBD98.JumpPower = 50
end
end)
_0xB328:Button(string.char(82,101,115,112,97,119,110),string.char(107,105,108,108,32,121,111,117,114,32,99,104,97,114,97,99,116,101,114), function()
local _0xBD98 = _0xA6D4()
if _0xBD98 then
_0xBD98.Health = 0
end
end)
local _0x1EC1 = {}
local function _0x0357(_0x210D)
local _0x98C3 = _0x210D:lower()
if _0x98C3:find(string.char(109,117,114,100,101,114,101,114)) then
return Color3.fromRGB(255, 70, 70),string.char(33)end
if _0x98C3:find(string.char(115,104,101,114,105,102,102)) then
return Color3.fromRGB(70, 150, 255),string.char(33)end
if _0x98C3:find(string.char(58,32,111,110)) then
return Color3.fromRGB(110, 230, 140),string.char(99,104,101,99,107)end
if _0x98C3:find(string.char(58,32,111,102,102)) then
return Color3.fromRGB(150, 150, 158),string.char(99,114,111,115,115)end
return _0x0333,string.char(105)end
local function _0xC35F()
for _0x60FA, _0x4903 in ipairs(_0x1EC1) do
local _0xD4A2 = -20 - (_0x60FA - 1) * 68
_0x0ED9(_0x4903.card, 0.35, { Position = UDim2.new(1, -20, 1, _0xD4A2) }, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
end
end
_0xE835 = function(_0x210D, body)
if _0xF810 then
return
end
local _0x173A, _0x8442 = _0x0357(_0x210D)
local _0xFCDE = _0x81A6(string.char(84,101,120,116,66,117,116,116,111,110), {
Text ="",
AutoButtonColor = false,
AnchorPoint = Vector2.new(1, 1),
Position = UDim2.new(1, 330, 1, -20),
Size = UDim2.fromOffset(270, 58),
BackgroundColor3 = _0x2CF9,
ZIndex = 150,
Parent = _0xA737,
})
_0x46F9(_0xFCDE, 12)
_0x81A6(string.char(85,73,71,114,97,100,105,101,110,116), {
Rotation = 90,
Color = ColorSequence.new(_0x0333, Color3.fromRGB(170, 170, 170)),
Parent = _0xFCDE,
})
local _0xCFC0 = _0x81A6(string.char(85,73,83,116,114,111,107,101), {
Color = _0x173A,
Transparency = 0.15,
Thickness = 1,
ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
Parent = _0xFCDE,
})
local _0xFF4E = _0x81A6(string.char(85,73,83,99,97,108,101), { Scale = 0.88, Parent = _0xFCDE })
local _0xD9AA = tostring(_0x210D):lower() ==string.char(208,178,209,128,208,176,208,179,32,209,131,208,189,208,184,209,135,209,130,208,190,208,182,208,181,208,189)local _0xBD06 = _0x81A6(string.char(70,114,97,109,101), {
Size = UDim2.new(0.7, 0, 1, 0),
BackgroundColor3 = _0x173A,
BorderSizePixel = 0,
ZIndex = 150,
Parent = _0xFCDE,
})
_0x46F9(_0xBD06, 12)
_0x81A6(string.char(85,73,71,114,97,100,105,101,110,116), {
Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0.84), NumberSequenceKeypoint.new(1, 1) }),
Parent = _0xBD06,
})
local _0x0D93 = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.new(0, 29, 0.5, -1),
Size = UDim2.fromOffset(34, 34),
BackgroundColor3 = _0x173A,
BackgroundTransparency = 0.82,
ZIndex = 151,
Parent = _0xFCDE,
})
_0x1692(_0x0D93)
_0x81A6(string.char(85,73,83,116,114,111,107,101), { Color = _0x173A, Transparency = 0.3, Thickness = 1.2, Parent = _0x0D93 })
local _0x4C3A = _0x81A6(string.char(85,73,83,99,97,108,101), { Scale = 0, Parent = _0x0D93 })
if _0x8442 ==string.char(99,104,101,99,107)then
for _0xBFE6, _0x334A in ipairs({ { 10, 17.5, 15, 22.5 }, { 15, 22.5, 24.5, 12 } }) do
_0x39BD(_0x0D93, _0x334A[1], _0x334A[2], _0x334A[3], _0x334A[4], 2.6, _0x173A).ZIndex = 152
end
elseif _0x8442 ==string.char(99,114,111,115,115)then
for _0xBFE6, _0x334A in ipairs({ { 11.5, 11.5, 22.5, 22.5 }, { 22.5, 11.5, 11.5, 22.5 } }) do
_0x39BD(_0x0D93, _0x334A[1], _0x334A[2], _0x334A[3], _0x334A[4], 2.4, _0x173A).ZIndex = 152
end
else
_0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text = _0x8442,
Font = Enum.Font.GothamBlack,
TextSize = 17,
TextColor3 = _0x173A,
BackgroundTransparency = 1,
Size = UDim2.fromScale(1, 1),
ZIndex = 152,
Parent = _0x0D93,
})
end
_0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text = _0x210D,
Font = _0xD9AA and Enum.Font.Arcade or Enum.Font.GothamBold,
TextSize = 13,
TextColor3 = _0x0333,
TextXAlignment = Enum.TextXAlignment.Left,
TextTruncate = Enum.TextTruncate.AtEnd,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(56, 10),
Size = UDim2.new(1, -68, 0, 17),
ZIndex = 151,
Parent = _0xFCDE,
})
_0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text = body or"",
Font = _0xD9AA and Enum.Font.Arcade or Enum.Font.Gotham,
TextSize = 11,
TextColor3 = Color3.fromRGB(165, 165, 172),
TextXAlignment = Enum.TextXAlignment.Left,
TextTruncate = Enum.TextTruncate.AtEnd,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(56, 28),
Size = UDim2.new(1, -68, 0, 15),
ZIndex = 151,
Parent = _0xFCDE,
})
local _0x88B3 = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0, 1),
Position = UDim2.new(0, 14, 1, -6),
Size = UDim2.new(1, -28, 0, 2),
BackgroundColor3 = _0x173A,
BackgroundTransparency = 0.25,
BorderSizePixel = 0,
ZIndex = 151,
Parent = _0xFCDE,
})
_0x1692(_0x88B3)
local _0x4903 = { _0xFCDE = _0xFCDE, _0x2E92 = true }
table.insert(_0x1EC1, 1, _0x4903)
while #_0x1EC1 > 4 do
local _0x6355 = table.remove(_0x1EC1)
_0x6355.alive = false
_0x6355.card:Destroy()
end
_0xC35F()
_0x0ED9(_0xFF4E, 0.45, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
task.delay(0.12, function()
if _0xFCDE.Parent then
_0x0ED9(_0x4C3A, 0.45, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
end
end)
_0xCFC0.Transparency = 0
_0x0ED9(_0xCFC0, 0.8, { Transparency = 0.6 })
_0x0ED9(_0x88B3, 2.8, { Size = UDim2.new(0, 0, 0, 2) }, Enum.EasingDirection.InOut, Enum.EasingStyle.Linear)
local function _0x73AF()
if not _0x4903.alive then
return
end
_0x4903.alive = false
local _0x60FA = table.find(_0x1EC1, _0x4903)
if _0x60FA then
table.remove(_0x1EC1, _0x60FA)
end
_0xC35F()
_0x0ED9(_0xFF4E, 0.25, { Scale = 0.9 }, Enum.EasingDirection.In)
local _0xB1B3 = _0x0ED9(_0xFCDE, 0.28, { Position = UDim2.new(1, 330, _0xFCDE.Position.Y.Scale, _0xFCDE.Position.Y.Offset) }, Enum.EasingDirection.In, Enum.EasingStyle.Quint)
_0xB1B3.Completed:Connect(function()
_0xFCDE:Destroy()
end)
end
_0xF709(_0xFCDE.MouseEnter, function()
_0x0ED9(_0xCFC0, 0.15, { Transparency = 0.1 })
end)
_0xF709(_0xFCDE.MouseLeave, function()
_0x0ED9(_0xCFC0, 0.25, { Transparency = 0.6 })
end)
_0xF709(_0xFCDE.MouseButton1Click, _0x73AF)
task.delay(2.8, _0x73AF)
end
do
local _0x6D81 = game:GetService(string.char(84,101,108,101,112,111,114,116,83,101,114,118,105,99,101))
local _0x9CED = game:GetService(string.char(72,116,116,112,83,101,114,118,105,99,101))
local _0x4783 = _0xFF67.page
_0xFF67.custom = true
_0xFF67.title.Visible = false
_0xFF67.desc.Visible = false
_0x4783.CanvasSize = UDim2.new()
local _0xF8DD = Color3.fromRGB(27, 27, 29)
_0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(83,101,114,118,101,114),
Font = Enum.Font.GothamBold,
TextSize = 18,
TextColor3 = _0x0333,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Size = UDim2.new(1, -8, 0, 22),
Parent = _0x4783,
})
local _0x3654 = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(108,111,97,100,105,110,103,46,46,46),
Font = Enum.Font.Gotham,
TextSize = 12,
TextColor3 = _0x08BE,
TextXAlignment = Enum.TextXAlignment.Left,
TextTruncate = Enum.TextTruncate.AtEnd,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(0, 22),
Size = UDim2.new(1, -8, 0, 16),
Parent = _0x4783,
})
local _0xDE79 =string.char(116,104,105,115,32,103,97,109,101)task.spawn(function()
local _0x3E35, _0xD38E = pcall(function()
return game:GetService(string.char(77,97,114,107,101,116,112,108,97,99,101,83,101,114,118,105,99,101)):GetProductInfo(game.PlaceId)
end)
if _0x3E35 and _0xD38E and _0xD38E.Name then
_0xDE79 = _0xD38E.Name
end
end)
local _0x3E6E = {}
local function _0xFCDE(_0x4FEA, _0x476F)
local _0xBB27 = _0x476F.Class orstring.char(70,114,97,109,101)_0x476F.Class = nil
_0x476F.BackgroundColor3 = _0x476F.BackgroundColor3 or _0xF8DD
_0x476F.Parent = _0x4FEA
local _0x23BB = _0x81A6(_0xBB27, _0x476F)
_0x46F9(_0x23BB, 10)
local _0xCFC0 = _0x81A6(string.char(85,73,83,116,114,111,107,101), {
Color = _0x0333,
Transparency = 0.55,
Thickness = 1,
ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
Parent = _0x23BB,
})
table.insert(_0x3E6E, _0x81A6(string.char(85,73,71,114,97,100,105,101,110,116), { Parent = _0xCFC0 }))
return _0x23BB, _0xCFC0
end
local _0x706D = 50
local _0x6E91 = _0x81A6(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(2, _0x706D),
Size = UDim2.new(1, -12, 0, 136),
BackgroundTransparency = 1,
Parent = _0x4783,
})
_0x81A6(string.char(85,73,71,114,105,100,76,97,121,111,117,116), {
CellSize = UDim2.new(0.5, -6, 0, 64),
CellPadding = UDim2.fromOffset(8, 8),
SortOrder = Enum.SortOrder.LayoutOrder,
Parent = _0x6E91,
})
local _0x0C2C = 0
local function _0x6E28(_0xC8F1)
_0x0C2C += 1
local _0x23BB = _0xFCDE(_0x6E91, { LayoutOrder = _0x0C2C })
_0x23BB.Name = _0xC8F1
_0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text = _0xC8F1,
Font = Enum.Font.GothamBold,
TextSize = 9,
TextColor3 = _0xEE3F,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(12, 9),
Size = UDim2.new(1, -24, 0, 12),
Parent = _0x23BB,
})
local _0x7295 = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(45,45),
RichText = true,
Font = Enum.Font.GothamBold,
TextSize = 19,
TextColor3 = _0x0333,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(12, 24),
Size = UDim2.new(1, -24, 0, 24),
Parent = _0x23BB,
})
return _0x23BB, _0x7295
end
local _0xBFE6, _0x1D43 = _0x6E28(string.char(79,78,32,84,72,73,83,32,83,69,82,86,69,82))
local _0xA20D, _0xDA5F = _0x6E28(string.char(80,76,65,89,69,82,83))
local _0xBFE6, _0xE989 = _0x6E28(string.char(80,73,78,71))
local _0xBFE6, _0xF847 = _0x6E28(string.char(70,80,83))
local _0x0E2E = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0, 1),
Position = UDim2.new(0, 12, 1, -9),
Size = UDim2.new(1, -24, 0, 3),
BackgroundColor3 = _0x9245,
BorderSizePixel = 0,
Parent = _0xA20D,
})
_0x1692(_0x0E2E)
local _0xE487 = _0x81A6(string.char(70,114,97,109,101), {
Size = UDim2.fromScale(0, 1),
BackgroundColor3 = _0x0333,
BorderSizePixel = 0,
Parent = _0x0E2E,
})
_0x1692(_0xE487)
_0x706D += 176
local _0x54FD = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(83,69,82,86,69,82,32,70,85,78,67,84,73,79,78,83),
Font = Enum.Font.GothamBold,
TextSize = 9,
TextColor3 = _0xEE3F,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(4, _0x706D),
Size = UDim2.new(1, -8, 0, 14),
Parent = _0x4783,
})
_0x706D += 24
local _0x5CC6 = _0xFCDE(_0x4783, { Position = UDim2.fromOffset(2, _0x706D), Size = UDim2.new(1, -12, 0, 56) })
_0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(74,79,66,32,73,68),
Font = Enum.Font.GothamBold,
TextSize = 9,
TextColor3 = _0xEE3F,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(12, 10),
Size = UDim2.new(1, -24, 0, 12),
Parent = _0x5CC6,
})
local _0x6E5D = game.JobId ~=""and game.JobId orstring.char(115,116,117,100,105,111,32,47,32,108,111,99,97,108,32,115,101,114,118,101,114)_0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text = _0x6E5D,
Font = Enum.Font.Code,
TextSize = 12,
TextColor3 = _0x9CF4,
TextXAlignment = Enum.TextXAlignment.Left,
TextTruncate = Enum.TextTruncate.AtEnd,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(12, 26),
Size = UDim2.new(1, -176, 0, 18),
Parent = _0x5CC6,
})
local function _0x5EFF(_0x4FEA, _0xD85E, _0xA051, _0x42FB, fn)
local _0xBB9C = _0x81A6(string.char(84,101,120,116,66,117,116,116,111,110), {
Text = _0xD85E,
Font = Enum.Font.GothamBold,
TextSize = 11,
TextColor3 = _0x9CF4,
AutoButtonColor = false,
BackgroundColor3 = _0xD583,
AnchorPoint = Vector2.new(1, 0.5),
Position = UDim2.new(1, _0xA051, 0.5, 0),
Size = UDim2.fromOffset(_0x42FB, 28),
Parent = _0x4FEA,
})
_0x46F9(_0xBB9C, 8)
local _0xCFC0 = _0x39A4(_0xBB9C)
local _0xFF4E = _0x81A6(string.char(85,73,83,99,97,108,101), { Parent = _0xBB9C })
_0xF709(_0xBB9C.MouseEnter, function()
_0x0ED9(_0xBB9C, 0.15, { BackgroundColor3 = _0x0333, TextColor3 = _0xD583 })
_0x0ED9(_0xCFC0, 0.15, { Color = _0x0333 })
end)
_0xF709(_0xBB9C.MouseLeave, function()
_0x0ED9(_0xBB9C, 0.15, { BackgroundColor3 = _0xD583, TextColor3 = _0x9CF4 })
_0x0ED9(_0xCFC0, 0.15, { Color = _0x7988 })
end)
_0xF709(_0xBB9C.MouseButton1Click, function()
_0xFF4E.Scale = 0.88
_0x0ED9(_0xFF4E, 0.3, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
fn(_0xBB9C)
end)
return _0xBB9C
end
local function _0x0873(_0xD85E, what)
if setclipboard then
setclipboard(_0xD85E)
_0xE835(string.char(67,111,112,105,101,100), what)
else
_0xE835(string.char(67,108,105,112,98,111,97,114,100),string.char(110,111,116,32,115,117,112,112,111,114,116,101,100,32,104,101,114,101))
end
end
local function _0x0EC3(_0xBB9C, _0xD85E)
local _0x6355 = _0xBB9C.Text
_0xBB9C.Text = _0xD85E
task.delay(1.2, function()
if _0xBB9C.Parent then
_0xBB9C.Text = _0x6355
end
end)
end
_0x5EFF(_0x5CC6,string.char(67,111,112,121,32,106,111,105,110), -12, 76, function(_0xBB9C)
_0x0873((string.char(103,97,109,101,58,71,101,116,83,101,114,118,105,99,101,40,34,84,101,108,101,112,111,114,116,83,101,114,118,105,99,101,34,41,58,84,101,108,101,112,111,114,116,84,111,80,108,97,99,101,73,110,115,116,97,110,99,101,40,37,100,44,32,34,37,115,34,41)):format(game.PlaceId, game.JobId),string.char(106,111,105,110,32,115,99,114,105,112,116,32,45,32,115,101,110,100,32,105,116,32,116,111,32,97,32,102,114,105,101,110,100))
_0x0EC3(_0xBB9C,string.char(67,111,112,105,101,100))
end)
_0x5EFF(_0x5CC6,string.char(67,111,112,121,32,73,68), -94, 66, function(_0xBB9C)
_0x0873(game.JobId,string.char(106,111,98,32,105,100))
_0x0EC3(_0xBB9C,string.char(67,111,112,105,101,100))
end)
_0x706D += 78
local _0x3357 = _0x81A6(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(2, _0x706D),
Size = UDim2.new(1, -12, 0, 136),
BackgroundTransparency = 1,
Parent = _0x4783,
})
_0x81A6(string.char(85,73,71,114,105,100,76,97,121,111,117,116), {
CellSize = UDim2.new(0.5, -6, 0, 62),
CellPadding = UDim2.fromOffset(8, 8),
SortOrder = Enum.SortOrder.LayoutOrder,
Parent = _0x3357,
})
local _0xFDEA = false
local _0x11AA = 0
local function _0xB850(logo3, desc, fn)
_0x11AA += 1
local _0xBB9C, _0xCFC0 = _0xFCDE(_0x3357, { Class =string.char(84,101,120,116,66,117,116,116,111,110), LayoutOrder = _0x11AA })
_0xBB9C.Text =""_0xBB9C.AutoButtonColor = false
local _0xFF4E = _0x81A6(string.char(85,73,83,99,97,108,101), { Parent = _0xBB9C })
local _0x22BD = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text = logo3,
Font = Enum.Font.GothamBold,
TextSize = 14,
TextColor3 = _0x0333,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(12, 12),
Size = UDim2.new(1, -24, 0, 18),
Parent = _0xBB9C,
})
local _0x273C = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text = desc,
Font = Enum.Font.Gotham,
TextSize = 10,
TextColor3 = _0xEE3F,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(12, 32),
Size = UDim2.new(1, -24, 0, 14),
Parent = _0xBB9C,
})
local _0x13D8 = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(1, 0),
Position = UDim2.new(1, -12, 0, 14),
Size = UDim2.fromOffset(8, 8),
BackgroundTransparency = 1,
Parent = _0xBB9C,
})
local _0x622A = _0x39BD(_0x13D8, 0, 8, 8, 0, 1.6, _0xEE3F)
local _0xCF9B = _0x39BD(_0x13D8, 2.5, 0, 8, 0, 1.6, _0xEE3F)
local _0x52D8 = _0x39BD(_0x13D8, 8, 0, 8, 5.5, 1.6, _0xEE3F)
local function _0xB3B6(_0x9B7B)
_0x0ED9(_0xBB9C, 0.18, { BackgroundColor3 = _0x9B7B and _0x0333 or _0xF8DD })
_0x0ED9(_0xCFC0, 0.18, { Transparency = _0x9B7B and 0 or 0.55 })
_0x0ED9(_0x22BD, 0.18, { TextColor3 = _0x9B7B and _0xD583 or _0x0333 })
_0x0ED9(_0x273C, 0.18, { TextColor3 = _0x9B7B and Color3.fromRGB(90, 90, 90) or _0xEE3F })
for _0xBFE6, _0xA0A4 in ipairs({ _0x622A, _0xCF9B, _0x52D8 }) do
_0x0ED9(_0xA0A4, 0.18, { BackgroundColor3 = _0x9B7B and _0xD583 or _0xEE3F })
end
_0x0ED9(_0x13D8, 0.25, { Position = UDim2.new(1, _0x9B7B and -10 or -12, 0, _0x9B7B and 12 or 14) }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
end
_0xF709(_0xBB9C.MouseEnter, function()
_0xB3B6(true)
end)
_0xF709(_0xBB9C.MouseLeave, function()
_0xB3B6(false)
end)
_0xF709(_0xBB9C.MouseButton1Click, function()
_0xFF4E.Scale = 0.94
_0x0ED9(_0xFF4E, 0.35, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
if _0xFDEA then
return
end
_0xFDEA = true
local _0x6355 = _0x273C.Text
local _0x3E35, _0x7FEF = pcall(fn, function(_0x4903)
_0x273C.Text = _0x4903
end)
if not _0x3E35 then
_0xE835(logo3, tostring(_0x7FEF):sub(1, 60))
end
task.delay(3, function()
_0xFDEA = false
if _0x273C.Parent then
_0x273C.Text = _0x6355
end
end)
end)
end_0x80D9.card.Visible = true
_0x80D9.card.Position = UDim2.fromOffset(2, _0x706D)
local _0x38BD = math.max(_0x80D9.card.Size.Y.Offset, _0x80D9.card.AbsoluteSize.Y)
_0x706D += _0x38BD + 14
_0x3357.Position = UDim2.fromOffset(2, _0x706D)
_0x706D += 146
local function _0x039A(smallest)
local _0x7AB6 = (string.char(104,116,116,112,115,58,47,47,103,97,109,101,115,46,114,111,98,108,111,120,46,99,111,109,47,118,49,47,103,97,109,101,115,47,37,100,47,115,101,114,118,101,114,115,47,80,117,98,108,105,99,63,115,111,114,116,79,114,100,101,114,61,37,115,38,101,120,99,108,117,100,101,70,117,108,108,71,97,109,101,115,61,116,114,117,101,38,108,105,109,105,116,61,49,48,48)):format(game.PlaceId, smallest andstring.char(65,115,99)orstring.char(68,101,115,99))
local _0x3E35, _0x308C = pcall(function()
return _0x9CED:JSONDecode(game:HttpGet(_0x7AB6))
end)
if not _0x3E35 or type(_0x308C) ~=string.char(116,97,98,108,101)or type(_0x308C.data) ~=string.char(116,97,98,108,101)then
return nil
end
local _0xC494 = {}
for _0xBFE6, _0xD146 in ipairs(_0x308C.data) do
if _0xD146.id ~= game.JobId and _0xD146.playing and _0xD146.maxPlayers and _0xD146.playing < _0xD146.maxPlayers then
table.insert(_0xC494, _0xD146)
end
end
if #_0xC494 == 0 then
return nil
end
if smallest then
table.sort(_0xC494, function(_0xA051, _0xD4A2)
return _0xA051.playing < _0xD4A2.playing
end)
return _0xC494[1]
end
return _0xC494[math.random(#_0xC494)]
end
local function _0xEF0E(smallest, _0x3A55)
_0x3A55(string.char(115,101,97,114,99,104,105,110,103,46,46,46))
local _0xD146 = _0x039A(smallest)
if not _0xD146 then
_0x3A55(string.char(110,111,32,115,101,114,118,101,114,115,32,102,111,117,110,100))
_0xE835(string.char(83,101,114,118,101,114),string.char(110,111,32,102,114,101,101,32,115,101,114,118,101,114,115,32,102,111,117,110,100))
return
end
_0x3A55((string.char(106,111,105,110,105,110,103,32,37,100,47,37,100,46,46,46)):format(_0xD146.playing, _0xD146.maxPlayers))
_0xE835(string.char(83,101,114,118,101,114), (string.char(116,101,108,101,112,111,114,116,105,110,103,32,194,183,32,37,100,47,37,100,32,112,108,97,121,101,114,115)):format(_0xD146.playing, _0xD146.maxPlayers))
_0x6D81:TeleportToPlaceInstance(game.PlaceId, _0xD146.id, _0xD33F)
end
_0xB850(string.char(82,101,106,111,105,110),string.char(115,97,109,101,32,115,101,114,118,101,114,32,97,103,97,105,110), function(_0x3A55)
_0x3A55(string.char(114,101,106,111,105,110,105,110,103,46,46,46))
_0xE835(string.char(83,101,114,118,101,114),string.char(114,101,106,111,105,110,105,110,103))
if #_0x9A21:GetPlayers() <= 1 then
_0x6D81:Teleport(game.PlaceId, _0xD33F)
else
_0x6D81:TeleportToPlaceInstance(game.PlaceId, game.JobId, _0xD33F)
end
end)
_0xB850(string.char(83,101,114,118,101,114,32,72,111,112),string.char(114,97,110,100,111,109,32,111,116,104,101,114,32,115,101,114,118,101,114), function(_0x3A55)
_0xEF0E(false, _0x3A55)
end)
_0xB850(string.char(83,109,97,108,108,32,83,101,114,118,101,114),string.char(102,101,119,101,115,116,32,112,108,97,121,101,114,115), function(_0x3A55)
_0xEF0E(true, _0x3A55)
end)
_0xF709(_0x6D81.TeleportInitFailed, function(_0x0D18, _0xBFE6, msg)
if _0x0D18 == _0xD33F then
_0xFDEA = false
_0xE835(string.char(84,101,108,101,112,111,114,116,32,102,97,105,108,101,100), tostring(msg):sub(1, 60))
end
end)
local _0x80E9 = _0xFCDE(_0x4783, { Class =string.char(84,101,120,116,66,117,116,116,111,110), Position = UDim2.fromOffset(2, _0x706D), Size = UDim2.new(1, -12, 0, 44) })
_0x80E9.Text =""_0x80E9.AutoButtonColor = false
_0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(65,110,116,105,32,65,70,75),
Font = Enum.Font.GothamMedium,
TextSize = 12,
TextColor3 = _0x9CF4,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(12, 7),
Size = UDim2.new(1, -80, 0, 16),
Parent = _0x80E9,
})
_0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(97,117,116,111,109,97,116,105,99,32,194,183,32,110,111,32,107,105,99,107,32,102,111,114,32,105,100,108,105,110,103,32,50,48,32,109,105,110,117,116,101,115),
Font = Enum.Font.Gotham,
TextSize = 10,
TextColor3 = _0xEE3F,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(12, 23),
Size = UDim2.new(1, -80, 0, 13),
Parent = _0x80E9,
})
local _0xB86F = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(1, 0.5),
Position = UDim2.new(1, -12, 0.5, 0),
Size = UDim2.fromOffset(34, 18),
BackgroundColor3 = _0xD583,
Parent = _0x80E9,
})
_0x1692(_0xB86F)
local _0x52CC = _0x39A4(_0xB86F)
local _0xE9A9 = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.new(0, 9, 0.5, 0),
Size = UDim2.fromOffset(12, 12),
BackgroundColor3 = _0x08BE,
ZIndex = 2,
Parent = _0xB86F,
})
_0x1692(_0xE9A9)
local _0xE083, _0xEF23 = false, nil
local function _0x7598(_0x9B7B, persist)
_0xE083 = _0x9B7B
if _0xEF23 then
_0xEF23:Disconnect()
end
_0xEF23 = nil
if _0x9B7B then
local _0x9D8E = game:GetService(string.char(86,105,114,116,117,97,108,85,115,101,114))
_0xEF23 = _0xF709(_0xD33F.Idled, function()
_0x9D8E:CaptureController()
_0x9D8E:ClickButton2(Vector2.new())
end)
end
_0xE9A9.Size = UDim2.fromOffset(18, 12)
_0x0ED9(_0xE9A9, 0.35, {
Position = UDim2.new(0, _0x9B7B and 25 or 9, 0.5, 0),
Size = UDim2.fromOffset(12, 12),
BackgroundColor3 = _0x9B7B and _0xD583 or _0x08BE,
}, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
_0x0ED9(_0xB86F, 0.25, { BackgroundColor3 = _0x9B7B and _0x0333 or _0xD583 })
_0x0ED9(_0x52CC, 0.25, { Color = _0x9B7B and _0x0333 or _0x7988 })
if persist ~= false then
_0x330E(string.char(83,101,114,118,101,114,47,85,116,105,108,105,116,105,101,115,47,65,110,116,105,32,65,70,75), _0x9B7B)
end
end_0x7598(true, false)
_0xF709(_0x80E9.MouseButton1Click, function()
_0x7598(not _0xE083)
end)
_0x64F7(string.char(83,101,114,118,101,114,47,85,116,105,108,105,116,105,101,115,47,65,110,116,105,32,65,70,75), function(_0xBE50)
if type(_0xBE50) ==string.char(98,111,111,108,101,97,110)then
_0x7598(_0xBE50)
end
end, function()
return _0xE083
end, true)
_0x4783.CanvasSize = UDim2.fromOffset(0, _0x706D + 44 + 12)
local function _0xD0D8(_0xDBF6)
_0xDBF6 = math.floor(_0xDBF6)
local _0x98C3, _0xE6E2, _0xF7CA = _0xDBF6 // 3600, _0xDBF6 // 60 % 60, _0xDBF6 % 60
if _0x98C3 > 0 then
return (string.char(37,100,60,102,111,110,116,32,99,111,108,111,114,61,34,35,55,56,55,56,55,56,34,62,104,60,47,102,111,110,116,62,32,37,48,50,100,60,102,111,110,116,32,99,111,108,111,114,61,34,35,55,56,55,56,55,56,34,62,109,60,47,102,111,110,116,62)):format(_0x98C3, _0xE6E2)
end
return (string.char(37,100,60,102,111,110,116,32,99,111,108,111,114,61,34,35,55,56,55,56,55,56,34,62,109,60,47,102,111,110,116,62,32,37,48,50,100,60,102,111,110,116,32,99,111,108,111,114,61,34,35,55,56,55,56,55,56,34,62,115,60,47,102,111,110,116,62)):format(_0xE6E2, _0xF7CA)
end
local function _0x36E8(_0xDDE9, _0xD660)
return (string.char(37,115,32,60,102,111,110,116,32,99,111,108,111,114,61,34,35,55,56,55,56,55,56,34,32,115,105,122,101,61,34,49,50,34,62,37,115,60,47,102,111,110,116,62)):format(_0xDDE9, _0xD660)
end
local _0x06E0, _0x0995, _0x5E9F = 0, os.clock(), 0
local _0xE03B = os.clock()
_0xF709(_0x7FDD.RenderStepped, function()
_0x06E0 += 1
local _0x9494 = os.clock()
if _0x4783.Visible and _0x2D1C.Visible and _0x9494 - _0x5E9F >= 1 / 30 then
_0x5E9F = _0x9494
local _0x4903 = (_0x9494 - _0xE03B) * 0.35
local _0x00C9 = _0x2F28(_0x4903)
for _0x60FA, _0x82D5 in ipairs(_0x3E6E) do
_0x82D5.Color = _0x00C9
_0x82D5.Rotation = (_0x4903 * 90 + _0x60FA * 40) % 360
end
end
if _0x9494 - _0x0995 < 0.5 then
return
end
local _0x44D1 = math.floor(_0x06E0 / (_0x9494 - _0x0995) + 0.5)
_0x06E0, _0x0995 = 0, _0x9494
if not _0x4783.Visible or not _0x2D1C.Visible then
return
end
local _0xDDE9, _0x5C27 = #_0x9A21:GetPlayers(), _0x9A21.MaxPlayers
_0x1D43.Text = _0xD0D8(time())
_0xDA5F.Text = _0x36E8(_0xDDE9,string.char(47,32).. _0x5C27)
_0x0ED9(_0xE487, 0.4, { Size = UDim2.fromScale(math.clamp(_0xDDE9 / math.max(_0x5C27, 1), 0, 1), 1) })
_0xE989.Text = _0x36E8(math.floor(_0xD855() + 0.5),string.char(109,115))
_0xF847.Text = tostring(_0x44D1)
_0x3654.Text = _0xDE79 ..string.char(32,32,194,183,32,32).. _0xDDE9 ..string.char(32,112,108,97,121,101,114,115)end)
end
do
local _0x1465 = _0x78B0(_0x01E8,string.char(73,110,116,101,114,102,97,99,101))
_0x1465:Keybind(string.char(77,101,110,117,32,107,101,121),string.char(99,108,105,99,107,32,97,110,100,32,112,114,101,115,115,32,97,110,121,32,107,101,121), function()
return _0x3CA1
end, function(_0x3FFC)
_0x3CA1 = _0x3FFC
end)
_0x1465:Slider(string.char(66,97,99,107,103,114,111,117,110,100,32,98,108,117,114), 0, 40, _0x60DD, function(_0xBE50)
_0x60DD = _0xBE50
if _0x9B26 then
_0xCF0E.Size = _0xBE50
end
end)
local _0xF79D
_0xF79D = _0x1465:Toggle(string.char(87,97,116,101,114,109,97,114,107),string.char(102,112,115,44,32,112,105,110,103,44,32,116,105,109,101,32,45,32,99,108,105,99,107,32,105,116,32,116,111,32,111,112,101,110,32,116,104,101,32,109,101,110,117), function(_0x9B7B)
if not _0x9B7B and _0x63F8.TouchEnabled and not _0x63F8.KeyboardEnabled then
_0xE835(string.char(87,97,116,101,114,109,97,114,107),string.char(110,101,101,100,101,100,32,116,111,32,111,112,101,110,32,116,104,101,32,109,101,110,117,32,111,110,32,109,111,98,105,108,101))
task.defer(_0xF79D.Set, true)
return
end
_0x71D8.setWatermark(_0x9B7B)
end)
_0xF79D.Set(true)
local _0xCBF9 = _0x78B0(_0x01E8,string.char(85,73,32,83,111,117,110,100,115))
_0xCBF9:Toggle(string.char(85,73,32,83,111,117,110,100,115),string.char(101,110,97,98,108,101,47,100,105,115,97,98,108,101,32,99,108,105,99,107,32,115,111,117,110,100,115), function(_0x9B7B)
_0x7542 = _0x9B7B
if _0x9B7B then _0x253D(true) end
end)
_0xCBF9:Dropdown(string.char(69,110,97,98,108,101,32,83,111,117,110,100),string.char(115,111,117,110,100,32,119,104,101,110,32,97,32,102,117,110,99,116,105,111,110,32,116,117,114,110,115,32,111,110), {string.char(69,110,97,98,108,101,32,49),string.char(83,112,97,114,107,108,101),string.char(76,97,115,101,114,32,67,108,105,99,107),string.char(69,110,97,98,108,101,32,50),string.char(78,111,116,105,102,121)},string.char(69,110,97,98,108,101,32,49), function(_0xBE50)
if _0x3DF5[_0xBE50] then _0x05CA = _0xBE50; _0x253D(true) end
end)
_0xCBF9:Dropdown(string.char(68,105,115,97,98,108,101,32,83,111,117,110,100),string.char(115,111,117,110,100,32,119,104,101,110,32,97,32,102,117,110,99,116,105,111,110,32,116,117,114,110,115,32,111,102,102), {string.char(69,110,97,98,108,101,32,49),string.char(83,112,97,114,107,108,101),string.char(76,97,115,101,114,32,67,108,105,99,107),string.char(69,110,97,98,108,101,32,50),string.char(78,111,116,105,102,121)},string.char(69,110,97,98,108,101,32,49), function(_0xBE50)
if _0x3DF5[_0xBE50] then _0xB4A8 = _0xBE50; _0x253D(false) end
end)
local _0xB8B4 = _0x78B0(_0x01E8,string.char(77,97,115,99,111,116))
local _0x01E5 = _0xB8B4:Toggle(string.char(67,111,111,108,82,111,99,107),string.char(115,104,111,119,32,116,104,101,32,97,110,105,109,97,116,101,100,32,109,97,115,99,111,116,32,97,98,111,118,101,32,116,104,101,32,109,101,110,117), function(_0x9B7B)
_0xFA0F.set(_0x9B7B andstring.char(67,111,111,108,82,111,99,107)orstring.char(79,102,102))
end)
_0x01E5.Set(_0xFA0F.name ~=string.char(79,102,102), true)
local _0x24FC = _0x78B0(_0x01E8,string.char(67,111,110,102,105,103,115))
local _0xF3BE = _0x24FC:Input(string.char(78,97,109,101),string.char(117,112,32,116,111,32,51,50,32,99,104,97,114,97,99,116,101,114,115),string.char(101,110,116,101,114,32,99,111,110,102,105,103,32,110,97,109,101))
local _0xF825 = _0x24FC:Input(string.char(67,111,110,102,105,103,32,73,68),string.char(112,97,115,116,101,32,97,32,115,104,97,114,101,100,32,73,68,32,104,101,114,101),string.char(67,83,67,70,71,49,58,46,46,46))
local function _0x634A()
local _0x9058 = {}
for _0xBD62, _0xC352 in pairs(_0x9B6C) do
if type(_0xBD62) ==string.char(115,116,114,105,110,103)and type(_0xC352) ==string.char(116,97,98,108,101)then
table.insert(_0x9058, _0xBD62)
end
end
table.sort(_0x9058, function(_0x7D74, _0xBB9C)
return _0x7D74:lower() < _0xBB9C:lower()
end)
return _0x9058
end
local _0x8107 = _0x24FC:Dropdown(string.char(83,97,118,101,100,32,99,111,110,102,105,103,115),string.char(99,104,111,111,115,101,32,97,32,99,111,110,102,105,103), _0x634A(),string.char(115,101,108,101,99,116,46,46,46), function(_0xBD62)
_0xF3BE.Set(_0xBD62)
end)
local function _0xF472()
_0x8107.Update(_0x634A())
end
local function _0x3C1A()
local _0xBD62, _0x7FEF = _0x9810(_0xF3BE.Get())
if not _0xBD62 then
_0xE835(string.char(67,111,110,102,105,103), _0x7FEF)
_0xF3BE.Focus()
end
return _0xBD62
end
_0x24FC:Button(string.char(67,114,101,97,116,101),string.char(115,97,118,101,32,99,117,114,114,101,110,116,32,115,101,116,116,105,110,103,115,32,97,115,32,97,32,110,101,119,32,99,111,110,102,105,103), function()
local _0xBD62 = _0x3C1A()
if not _0xBD62 then
return
end
if _0x9B6C[_0xBD62] then
_0xE835(string.char(67,111,110,102,105,103),string.char(116,104,97,116,32,110,97,109,101,32,97,108,114,101,97,100,121,32,101,120,105,115,116,115))
return
end
_0x9B6C[_0xBD62] = _0x266A()
local _0x3E35, _0x7FEF = _0x6FA0()
if not _0x3E35 then
_0x9B6C[_0xBD62] = nil
_0xE835(string.char(67,111,110,102,105,103),string.char(99,114,101,97,116,101,32,102,97,105,108,101,100,58,32).. tostring(_0x7FEF))
return
end
_0xF3BE.Set(_0xBD62)
_0xF472()
_0x8107.Set(_0xBD62, true)
_0xE835(string.char(67,111,110,102,105,103),string.char(99,114,101,97,116,101,100,32,34).. _0xBD62 ..string.char(34))
end)
_0x24FC:Button(string.char(83,97,118,101),string.char(111,118,101,114,119,114,105,116,101,32,116,104,101,32,110,97,109,101,100,32,99,111,110,102,105,103,32,119,105,116,104,32,99,117,114,114,101,110,116,32,115,101,116,116,105,110,103,115), function()
local _0xBD62 = _0x3C1A()
if not _0xBD62 then
return
end
if not _0x9B6C[_0xBD62] then
_0xE835(string.char(67,111,110,102,105,103),string.char(99,111,110,102,105,103,32,110,111,116,32,102,111,117,110,100,32,45,32,99,114,101,97,116,101,32,105,116,32,102,105,114,115,116))
return
end
local _0x0459 = _0x9B6C[_0xBD62]
_0x9B6C[_0xBD62] = _0x266A()
local _0x3E35, _0x7FEF = _0x6FA0()
if not _0x3E35 then
_0x9B6C[_0xBD62] = _0x0459
_0xE835(string.char(67,111,110,102,105,103),string.char(115,97,118,101,32,102,97,105,108,101,100,58,32).. tostring(_0x7FEF))
return
end
_0xE835(string.char(67,111,110,102,105,103),string.char(115,97,118,101,100,32,34).. _0xBD62 ..string.char(34))
end)
_0x24FC:Button(string.char(76,111,97,100),string.char(97,112,112,108,121,32,101,118,101,114,121,32,115,101,116,116,105,110,103,32,102,114,111,109,32,116,104,101,32,110,97,109,101,100,32,99,111,110,102,105,103), function()
local _0xBD62 = _0x3C1A()
if not _0xBD62 then
return
end
local _0x9C29 = _0x9B6C[_0xBD62]
if type(_0x9C29) ~=string.char(116,97,98,108,101)then
_0xE835(string.char(67,111,110,102,105,103),string.char(99,111,110,102,105,103,32,110,111,116,32,102,111,117,110,100))
return
end
_0xF791(_0x9C29)
_0xF3BE.Set(_0xBD62)
_0x8107.Set(_0xBD62, true)
_0xE835(string.char(67,111,110,102,105,103),string.char(108,111,97,100,101,100,32,34).. _0xBD62 ..string.char(34))
end)
_0x24FC:Button(string.char(67,111,112,121,32,73,68),string.char(103,101,110,101,114,97,116,101,32,97,32,115,104,97,114,101,97,98,108,101,32,73,68,32,102,111,114,32,116,104,101,32,99,117,114,114,101,110,116,32,99,111,110,102,105,103), function()
local _0xBD62 = _0x3C1A() orstring.char(83,104,97,114,101,100,32,67,111,110,102,105,103)local _0xABD9, _0x7FEF = _0xD75A(_0xBD62, _0x266A())
if not _0xABD9 then
_0xE835(string.char(67,111,110,102,105,103), _0x7FEF)
return
end
_0xF825.Set(_0xABD9)
if setclipboard then
pcall(setclipboard, _0xABD9)
_0xE835(string.char(67,111,110,102,105,103),string.char(73,68,32,99,111,112,105,101,100,32,116,111,32,99,108,105,112,98,111,97,114,100))
else
_0xE835(string.char(67,111,110,102,105,103),string.char(73,68,32,103,101,110,101,114,97,116,101,100,32,45,32,99,111,112,121,32,105,116,32,102,114,111,109,32,116,104,101,32,67,111,110,102,105,103,32,73,68,32,102,105,101,108,100))
end
end)
_0x24FC:Button(string.char(73,109,112,111,114,116,32,73,68),string.char(99,114,101,97,116,101,32,97,32,99,111,110,102,105,103,32,102,114,111,109,32,116,104,101,32,112,97,115,116,101,100,32,115,104,97,114,101,100,32,73,68), function()
local _0xA7E5, _0x7FEF = _0x4247(_0xF825.Get())
if not _0xA7E5 then
_0xE835(string.char(67,111,110,102,105,103), _0x7FEF)
_0xF825.Focus()
return
end
local _0x822E = _0x9810(_0xA7E5.name orstring.char(83,104,97,114,101,100,32,67,111,110,102,105,103)) orstring.char(83,104,97,114,101,100,32,67,111,110,102,105,103)local _0xBD62 = _0x822E
local _0xDE8D = 2
while _0x9B6C[_0xBD62] do
_0xBD62 = _0x822E:sub(1, math.max(1, 32 - (#tostring(_0xDE8D) + 1))) ..string.char(95).. tostring(_0xDE8D)
_0xDE8D += 1
end
_0x9B6C[_0xBD62] = _0x6B2B(_0xA7E5.config)
local _0x3D91, _0xA7E8 = _0x6FA0()
if not _0x3D91 then
_0x9B6C[_0xBD62] = nil
_0xE835(string.char(67,111,110,102,105,103),string.char(105,109,112,111,114,116,32,102,97,105,108,101,100,58,32).. tostring(_0xA7E8))
return
end
_0xF3BE.Set(_0xBD62)
_0xF472()
_0x8107.Set(_0xBD62, true)
_0xE835(string.char(67,111,110,102,105,103),string.char(105,109,112,111,114,116,101,100,32,34).. _0xBD62 ..string.char(34))
end)
_0x24FC:Button(string.char(68,101,108,101,116,101),string.char(112,101,114,109,97,110,101,110,116,108,121,32,114,101,109,111,118,101,32,116,104,101,32,110,97,109,101,100,32,99,111,110,102,105,103), function()
local _0xBD62 = _0x3C1A()
if not _0xBD62 then
return
end
local _0x0459 = _0x9B6C[_0xBD62]
if type(_0x0459) ~=string.char(116,97,98,108,101)then
_0xE835(string.char(67,111,110,102,105,103),string.char(99,111,110,102,105,103,32,110,111,116,32,102,111,117,110,100))
return
end
_0x9B6C[_0xBD62] = nil
local _0x3E35, _0x7FEF = _0x6FA0()
if not _0x3E35 then
_0x9B6C[_0xBD62] = _0x0459
_0xE835(string.char(67,111,110,102,105,103),string.char(100,101,108,101,116,101,32,102,97,105,108,101,100,58,32).. tostring(_0x7FEF))
return
end
_0xF3BE.Set("")
_0xF472()
_0xE835(string.char(67,111,110,102,105,103),string.char(100,101,108,101,116,101,100,32,34).. _0xBD62 ..string.char(34))
end)
_0xF472()
local _0x754A = _0x78B0(_0x01E8,string.char(83,99,114,105,112,116))
_0x754A:Button(string.char(82,101,115,101,116,32,99,111,110,102,105,103),string.char(114,101,115,116,111,114,101,32,100,101,102,97,117,108,116,115,32,102,111,114,32,116,104,101,32,97,99,116,105,118,101,32,115,101,116,116,105,110,103,115), function()
_0xF791({})
_0xE835(string.char(67,111,110,102,105,103),string.char(97,99,116,105,118,101,32,115,101,116,116,105,110,103,115,32,114,101,115,101,116))
end)
_0x754A:Button(string.char(85,110,108,111,97,100),string.char(114,101,109,111,118,101,32,116,104,101,32,109,101,110,117,32,97,110,100,32,114,101,115,101,116,32,97,108,108), function()
_G.ClumsyScriptUnload()
end)
end
do
local _0x47C6 = workspace.Terrain
local _0x949C = {
Natural = {
exposure = 2,
contrast = 12,
saturation = 10,
warmth = 6,
bloom = 30,
rays = 15,
shadows = 25,
dof = 12,
fog = 25,
vignette = 25,
time = 28,
timeMode =string.char(71,97,109,101),
},
[string.char(71,111,108,100,101,110,32,72,111,117,114)] = {
exposure = 3,
contrast = 16,
saturation = 20,
warmth = 38,
bloom = 55,
rays = 45,
shadows = 40,
dof = 20,
fog = 40,
vignette = 35,
time = 35,
timeMode =string.char(67,117,115,116,111,109),
},
Cinematic = {
exposure = 0,
contrast = 28,
saturation = -8,
warmth = -8,
bloom = 40,
rays = 12,
shadows = 45,
dof = 45,
fog = 35,
vignette = 55,
time = 30,
timeMode =string.char(71,97,109,101),
},
Moody = {
exposure = -3,
contrast = 32,
saturation = -30,
warmth = -14,
bloom = 25,
rays = 6,
shadows = 60,
dof = 30,
fog = 65,
vignette = 60,
time = 16,
timeMode =string.char(67,117,115,116,111,109),
},
Night = {
exposure = 6,
contrast = 22,
saturation = -18,
warmth = -32,
bloom = 65,
rays = 0,
shadows = 50,
dof = 20,
fog = 45,
vignette = 50,
time = 0,
timeMode =string.char(67,117,115,116,111,109),
},
}
local _0x9159 = {string.char(78,97,116,117,114,97,108),string.char(71,111,108,100,101,110,32,72,111,117,114),string.char(67,105,110,101,109,97,116,105,99),string.char(77,111,111,100,121),string.char(78,105,103,104,116)}
local _0xCFC0 = { _0x9B7B = false, preset =string.char(78,97,116,117,114,97,108), _0x95FC = true }
for _0x3FFC, _0xBE50 in pairs(_0x949C.Natural) do
_0xCFC0[_0x3FFC] = _0xBE50
end
local _0x54A5 = {string.char(66,114,105,103,104,116,110,101,115,115),string.char(69,120,112,111,115,117,114,101,67,111,109,112,101,110,115,97,116,105,111,110),string.char(71,108,111,98,97,108,83,104,97,100,111,119,115),string.char(83,104,97,100,111,119,83,111,102,116,110,101,115,115),string.char(69,110,118,105,114,111,110,109,101,110,116,68,105,102,102,117,115,101,83,99,97,108,101),string.char(69,110,118,105,114,111,110,109,101,110,116,83,112,101,99,117,108,97,114,83,99,97,108,101),string.char(65,109,98,105,101,110,116),string.char(79,117,116,100,111,111,114,65,109,98,105,101,110,116),string.char(67,108,111,99,107,84,105,109,101)}
local _0xC2D5 = {}
local _0xB985
local _0x95FClocal _0x6684 = _0xD33F:WaitForChild(string.char(80,108,97,121,101,114,71,117,105))
local _0xE0E2 = _0x81A6(string.char(83,99,114,101,101,110,71,117,105), {
Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,70,88),
IgnoreGuiInset = true,
ResetOnSpawn = false,
DisplayOrder = 999,
ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
Enabled = false,
Parent = _0x6684,
})
pcall(function()
_0xE0E2.ScreenInsets = Enum.ScreenInsets.None
_0xE0E2.ClipToDeviceSafeArea = false
end)
local _0x3A4B = {}for _0xBFE6, _0xADE9 in ipairs({ 90, -90, 0, 180 }) do
local _0x23BB = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0, 0),
Position = UDim2.fromScale(-0.5, -0.5),
Size = UDim2.fromScale(2, 2),
BackgroundColor3 = Color3.new(0, 0, 0),
BorderSizePixel = 0,
ZIndex = 1,
Parent = _0xE0E2,
})
table.insert(_0x3A4B, _0x81A6(string.char(85,73,71,114,97,100,105,101,110,116), { Rotation = _0xADE9, Parent = _0x23BB }))
end
local function _0x0237()
local _0x7D74 = 1 - _0xCFC0.vignette / 100 * 0.75
local _0x00C9 = NumberSequence.new({
NumberSequenceKeypoint.new(0, _0x7D74),
NumberSequenceKeypoint.new(0.45, 1 - (1 - _0x7D74) * 0.3),
NumberSequenceKeypoint.new(1, 1),
})
for _0xBFE6, _0x82D5 in ipairs(_0x3A4B) do
_0x82D5.Transparency = _0x00C9
end
_0xE0E2.Enabled = _0xCFC0.on and _0xCFC0.vignette > 0
end
local function _0x0F5A()
if not _0xCFC0.on then
return
end
pcall(function()
_0xE922.GlobalShadows = true
_0xE922.ShadowSoftness = _0xCFC0.shadows / 100
_0xE922.ExposureCompensation = _0xCFC0.exposure / 10
_0xE922.EnvironmentDiffuseScale = 1
_0xE922.EnvironmentSpecularScale = 1
_0xE922.Brightness = 3
_0xE922.Ambient = Color3.fromRGB(38, 40, 46)
_0xE922.OutdoorAmbient = Color3.fromRGB(118, 120, 130)
if _0xCFC0.timeMode ==string.char(67,117,115,116,111,109)then
_0xE922.ClockTime = _0xCFC0.time / 2
end
end)
end
local function _0xEFD1()
local _0xC03D = _0xCFC0.on and _0xCFC0.clouds
if _0xC03D and not _0x95FC and not _0x47C6:FindFirstChildOfClass(string.char(67,108,111,117,100,115)) then
_0x95FC = _0x81A6(string.char(67,108,111,117,100,115), { Cover = 0.55, Density = 0.7, Color = Color3.fromRGB(245, 245, 250), Parent = _0x47C6 })
elseif not _0xC03D and _0x95FC then
_0x95FC:Destroy()
_0x95FC = nil
end
end
local function _0x71E6()
if not _0xCFC0.on or not _0xC2D5.cc then
return
end
local _0x42FB = _0xCFC0.warmth / 50
local _0x6634 = _0x42FB >= 0 and Color3.new(1, 1 - 0.08 * _0x42FB, 1 - 0.24 * _0x42FB) or Color3.new(1 + 0.24 * _0x42FB, 1 + 0.07 * _0x42FB, 1)
_0xC2D5.cc.Brightness = 0.01
_0xC2D5.cc.Contrast = _0xCFC0.contrast / 100
_0xC2D5.cc.Saturation = _0xCFC0.saturation / 100
_0xC2D5.cc.TintColor = _0x6634
_0xC2D5.bloom.Enabled = _0xCFC0.bloom > 0
_0xC2D5.bloom.Intensity = _0xCFC0.bloom / 100 * 1.4
_0xC2D5.bloom.Size = 18 + _0xCFC0.bloom * 0.34
_0xC2D5.bloom.Threshold = 1.35 - _0xCFC0.bloom / 100 * 0.5
_0xC2D5.rays.Enabled = _0xCFC0.rays > 0
_0xC2D5.rays.Intensity = _0xCFC0.rays / 100 * 0.35
_0xC2D5.rays.Spread = 0.6 + _0xCFC0.rays / 100 * 0.3
_0xC2D5.dof.Enabled = _0xCFC0.dof > 0
_0xC2D5.dof.FarIntensity = _0xCFC0.dof / 100 * 0.75
_0xC2D5.dof.NearIntensity = 0
_0xC2D5.dof.FocusDistance = 30
_0xC2D5.dof.InFocusRadius = 70 - _0xCFC0.dof * 0.4
local _0x23BB = _0xCFC0.fog / 100
_0xC2D5.atmo.Density = 0.15 + _0x23BB * 0.5
_0xC2D5.atmo.Offset = 0.2
_0xC2D5.atmo.Haze = _0x23BB * 3
_0xC2D5.atmo.Glare = _0xCFC0.rays / 100 * 2
_0xC2D5.atmo.Color = Color3.fromRGB(199, 209, 222):Lerp(Color3.fromRGB(255, 212, 168), math.max(_0x42FB, 0))
_0xC2D5.atmo.Decay = Color3.fromRGB(106, 112, 125):Lerp(Color3.fromRGB(150, 96, 60), math.max(_0x42FB, 0))
_0x0F5A()
_0x0237()
_0xEFD1()
end
local function _0x545C()
_0xB985 = { _0x84FA = {}, effects = {}, atmos = {}, timeTouched = _0xCFC0.timeMode ==string.char(67,117,115,116,111,109)}
for _0xBFE6, _0x0D18 in ipairs(_0x54A5) do
pcall(function()
_0xB985.light[_0x0D18] = _0xE922[_0x0D18]
end)
end
for _0xBFE6, _0xBA21 in ipairs(_0xE922:GetChildren()) do
if _0xBA21:IsA(string.char(80,111,115,116,69,102,102,101,99,116)) and _0xBA21 ~= _0xCF0E and _0xBA21.Enabled then
_0xBA21.Enabled = false
table.insert(_0xB985.effects, _0xBA21)
elseif _0xBA21:IsA(string.char(65,116,109,111,115,112,104,101,114,101)) then
table.insert(_0xB985.atmos, _0xBA21)
_0xBA21.Parent = nil
end
end
_0xC2D5.cc = _0x81A6(string.char(67,111,108,111,114,67,111,114,114,101,99,116,105,111,110,69,102,102,101,99,116), { Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,82,101,97,108,105,115,116,105,99,67,111,108,111,114), Parent = _0xE922 })
_0xC2D5.bloom = _0x81A6(string.char(66,108,111,111,109,69,102,102,101,99,116), { Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,82,101,97,108,105,115,116,105,99,66,108,111,111,109), Parent = _0xE922 })
_0xC2D5.rays = _0x81A6(string.char(83,117,110,82,97,121,115,69,102,102,101,99,116), { Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,82,101,97,108,105,115,116,105,99,82,97,121,115), Parent = _0xE922 })
_0xC2D5.dof = _0x81A6(string.char(68,101,112,116,104,79,102,70,105,101,108,100,69,102,102,101,99,116), { Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,82,101,97,108,105,115,116,105,99,68,79,70), Parent = _0xE922 })
_0xC2D5.atmo = _0x81A6(string.char(65,116,109,111,115,112,104,101,114,101), { Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,82,101,97,108,105,115,116,105,99,65,116,109,111,115,112,104,101,114,101), Parent = _0xE922 })
_0x71E6()
end
local function _0xFAC5()
for _0xBFE6, _0xCA34 in pairs(_0xC2D5) do
_0xCA34:Destroy()
end
table.clear(_0xC2D5)
_0xEFD1()
_0xE0E2.Enabled = false
if _0xB985 then
for _0x0D18, _0xBE50 in pairs(_0xB985.light) do
if _0x0D18 ~=string.char(67,108,111,99,107,84,105,109,101)or _0xB985.timeTouched then
pcall(function()
_0xE922[_0x0D18] = _0xBE50
end)
end
end
for _0xBFE6, _0xCA34 in ipairs(_0xB985.effects) do
pcall(function()
_0xCA34.Enabled = true
end)
end
for _0xBFE6, _0xCA34 in ipairs(_0xB985.atmos) do
pcall(function()
_0xCA34.Parent = _0xE922
end)
end
_0xB985 = nil
end
end
local _0x39B6 = 0
_0xF709(_0x7FDD.Heartbeat, function(_0xF45E)
if not _0xCFC0.on then
return
end
_0x39B6 += _0xF45E
if _0x39B6 < 0.5 then
return
end
_0x39B6 = 0
_0x0F5A()
end)
local _0x4CF1 = {}
local _0x1401
local function _0xF8E8(_0xE6E2)
_0xCFC0.timeMode = _0xE6E2
if _0xE6E2 ==string.char(67,117,115,116,111,109)then
if _0xB985 then
_0xB985.timeTouched = true
end
_0x0F5A()
elseif _0xB985 and _0xB985.light.ClockTime then
pcall(function()
_0xE922.ClockTime = _0xB985.light.ClockTime
end)
end
end
local function _0xEB03(_0xBD62)
local _0x0D18 = _0x949C[_0xBD62]
if not _0x0D18 then
return
end
_0xCFC0.preset = _0xBD62
for _0x3FFC, _0xBE50 in pairs(_0x0D18) do
if _0x3FFC ==string.char(116,105,109,101,77,111,100,101)then
if _0x1401 then
_0x1401.Set(_0xBE50, true)
end
_0xF8E8(_0xBE50)
else
_0xCFC0[_0x3FFC] = _0xBE50
if _0x4CF1[_0x3FFC] then
_0x4CF1[_0x3FFC].Set(_0xBE50, true)
end
end
end
_0x71E6()
end
local function _0x5370(_0xFBB7)
return function(_0xBE50)
_0xCFC0[_0xFBB7] = _0xBE50
_0x71E6()
end
end
local function _0xFB02(_0xBE50)
return _0xBE50 ..string.char(37)end
local function _0x9369(_0xBE50)
return (_0xBE50 > 0 andstring.char(43)or"") .. _0xBE50 ..string.char(37)end
local _0xDBF6 = _0x78B0(_0x27DE,string.char(82,101,97,108,105,115,116,105,99))
_0xDBF6:Toggle(string.char(69,110,97,98,108,101),string.char(114,101,97,108,32,108,105,103,104,116,105,110,103,44,32,98,108,111,111,109,44,32,102,111,103,32,97,110,100,32,99,111,108,111,114,32,103,114,97,100,105,110,103), function(_0x9B7B)
_0xCFC0.on = _0x9B7B
if _0x9B7B then
_0x545C()
else
_0xFAC5()
end
_0xE835(string.char(82,101,97,108,105,115,116,105,99,58,32).. (_0x9B7B andstring.char(79,110)orstring.char(79,102,102)), _0x9B7B andstring.char(112,114,101,115,101,116,32).. _0xCFC0.preset orstring.char(108,105,103,104,116,105,110,103,32,114,101,115,116,111,114,101,100))
end)
_0xDBF6:Select(string.char(80,114,101,115,101,116),string.char(114,105,103,104,116,32,99,108,105,99,107,32,45,32,112,114,101,118,105,111,117,115), _0x9159, _0xCFC0.preset, function(_0xBE50)
_0xEB03(_0xBE50)
if _0xCFC0.on then
_0xE835(string.char(82,101,97,108,105,115,116,105,99),string.char(112,114,101,115,101,116,32).. _0xBE50)
end
end)
_0xDBF6:Button(string.char(82,101,115,101,116),string.char(98,97,99,107,32,116,111,32,116,104,101,32,112,114,101,115,101,116,32,118,97,108,117,101,115), function()
_0xEB03(_0xCFC0.preset)
_0xE835(string.char(82,101,97,108,105,115,116,105,99), _0xCFC0.preset ..string.char(32,114,101,115,116,111,114,101,100))
end)local _0x22F1 = _0x78B0(_0x0EC1,string.char(83,104,111,116,32,84,114,97,106,101,99,116,111,114,121))
local _0x54A1 = false
local _0xFEA9 = {}
local _0x88B1 = {}
local _0x9265 = _0xD33F:GetMouse()
local _0x398E = 3
local _0xC035 = -math.huge
local function _0xB9E1()
for _0x60FA = #_0x88B1, 1, -1 do
local _0x1592 = _0x88B1[_0x60FA]
if _0x1592 and _0x1592.Parent then pcall(function() _0x1592:Destroy() end) end
_0x88B1[_0x60FA] = nil
end
end
local function _0x6358()
for _0xBFE6, _0xD51E in ipairs(_0xFEA9) do pcall(function() _0xD51E:Disconnect() end) end
table.clear(_0xFEA9)
end
local function _0xFDCD(_0xC3A4, _0x1457)for _0xBFE6, _0xAA59 in ipairs(_0xC3A4:GetDescendants()) do
if _0xAA59:IsA(string.char(65,116,116,97,99,104,109,101,110,116)) then
local _0xDDE9 = string.lower(_0xAA59.Name)
if _0xDDE9:find(string.char(109,117,122,122,108,101)) or _0xDDE9:find(string.char(102,105,114,101,112,111,105,110,116)) or _0xDDE9:find(string.char(98,97,114,114,101,108)) then
return _0xAA59.WorldPosition
end
end
endreturn _0x1457.Position + _0x1457.CFrame.LookVector * (_0x1457.Size.Z * 0.5)
end
local function _0x101F(_0xC3A4)
if not _0x54A1 or not _0xC3A4 or _0xC3A4.Name ~=string.char(71,117,110)or _0xC3A4.Parent ~= _0xD33F.Character then return end
local _0x9494 = os.clock()
if _0x9494 - _0xC035 < _0x398E then return end
local _0x1457 = _0xC3A4:FindFirstChild(string.char(72,97,110,100,108,101))
if not _0x1457 or not _0x1457:IsA(string.char(66,97,115,101,80,97,114,116)) or not _0xD33F.Character or not workspace.CurrentCamera then return end
local _0x4804 = _0xFDCD(_0xC3A4, _0x1457)local _0xE1B1 = _0x9265.UnitRay
local _0xA213 = _0x4804 + _0xE1B1.Direction.Unit * 1000
local _0x3E35, _0xD341 = pcall(function() return _0x9265.Hit.Position end)
if _0x3E35 and typeof(_0xD341) ==string.char(86,101,99,116,111,114,51)and (_0xD341 - _0xE1B1.Origin).Magnitude > 1 then
_0xA213 = _0xD341
end
local _0xC4D6 = _0xA213 - _0x4804
if _0xC4D6.Magnitude < 0.1 then return end
_0xC035 = _0x9494local _0x6340 = Instance.new(string.char(70,111,108,100,101,114))
_0x6340.Name =string.char(67,108,117,109,115,121,83,104,111,116,84,114,97,106,101,99,116,111,114,121)_0x6340.Parent = workspace
local function _0x4CBE(_0x16A1, _0xBD62)
local _0x3066 = Instance.new(string.char(80,97,114,116))
_0x3066.Name = _0xBD62
_0x3066.Size = Vector3.new(0.05, 0.05, 0.05)
_0x3066.CFrame = CFrame.new(_0x16A1)
_0x3066.Anchored = true
_0x3066.Transparency = 1
_0x3066.CanCollide = false
_0x3066.CanTouch = false
_0x3066.CanQuery = false
_0x3066.CastShadow = false
_0x3066.Parent = _0x6340
local _0x698E = Instance.new(string.char(65,116,116,97,99,104,109,101,110,116))
_0x698E.Parent = _0x3066
return _0x698E
end
local _0x46BA = _0x4CBE(_0x4804,string.char(77,117,122,122,108,101,80,111,105,110,116))
local _0x622A = _0x4CBE(_0xA213,string.char(65,105,109,80,111,105,110,116))
local _0x9C5D = Instance.new(string.char(66,101,97,109))
_0x9C5D.Name =string.char(67,108,117,109,115,121,83,104,111,116,84,114,97,106,101,99,116,111,114,121,76,105,110,101)_0x9C5D.Attachment0 = _0x46BA
_0x9C5D.Attachment1 = _0x622A
_0x9C5D.FaceCamera = true
_0x9C5D.Width0 = 0.22
_0x9C5D.Width1 = 0.16
_0x9C5D.Color = ColorSequence.new(Color3.new(1, 1, 1))
_0x9C5D.Transparency = NumberSequence.new(0.05)
_0x9C5D.LightEmission = 1
_0x9C5D.LightInfluence = 0
_0x9C5D.Segments = 20
_0x9C5D.CurveSize0 = 0
_0x9C5D.CurveSize1 = 0
_0x9C5D.Parent = _0x6340pcall(function() _0x9C5D.AlwaysOnTop = true end)
table.insert(_0x88B1, _0x6340)
while #_0x88B1 > 24 do
local _0x6355 = table.remove(_0x88B1, 1)
if _0x6355 and _0x6355.Parent then pcall(function() _0x6355:Destroy() end) end
end
task.delay(3, function()
if _0x6340 and _0x6340.Parent then _0x6340:Destroy() end
for _0x60FA = #_0x88B1, 1, -1 do
if _0x88B1[_0x60FA] == _0x6340 then table.remove(_0x88B1, _0x60FA) end
end
end)
end
local function _0x6022(_0xC3A4)
if not _0x54A1 or not _0xC3A4 or not _0xC3A4:IsA(string.char(84,111,111,108)) or _0xC3A4.Name ~=string.char(71,117,110)or _0xC3A4:GetAttribute(string.char(67,108,117,109,115,121,84,114,97,106,101,99,116,111,114,121,72,111,111,107)) then return end
_0xC3A4:SetAttribute(string.char(67,108,117,109,115,121,84,114,97,106,101,99,116,111,114,121,72,111,111,107), true)
table.insert(_0xFEA9, _0xC3A4.Activated:Connect(function()task.defer(function()
if _0x54A1 then _0x101F(_0xC3A4) end
end)
end))
end
local function _0xB03F()
_0x6358()
local _0x8C06 = _0xD33F.Character
if _0x8C06 then
for _0xBFE6, child in ipairs(_0x8C06:GetChildren()) do _0x6022(child) end
table.insert(_0xFEA9, _0x8C06.ChildAdded:Connect(_0x6022))
end
local _0xCBAB = _0xD33F:FindFirstChildOfClass(string.char(66,97,99,107,112,97,99,107))
if _0xCBAB then table.insert(_0xFEA9, _0xCBAB.ChildAdded:Connect(_0x6022)) end
table.insert(_0xFEA9, _0xD33F.CharacterAdded:Connect(function(_0x43CE)
task.wait(0.2)
if not _0x54A1 then return end
for _0xBFE6, child in ipairs(_0x43CE:GetChildren()) do _0x6022(child) end
table.insert(_0xFEA9, _0x43CE.ChildAdded:Connect(_0x6022))
end))
end
_0x22F1:Toggle(string.char(83,104,111,116,32,84,114,97,106,101,99,116,111,114,121),string.char(116,104,105,99,107,44,32,99,117,114,115,111,114,45,100,105,114,101,99,116,101,100,32,109,117,122,122,108,101,45,116,111,45,97,105,109,32,98,101,97,109,32,116,104,114,111,117,103,104,32,119,97,108,108,115,59,32,108,97,115,116,115,32,51,32,115,101,99,111,110,100,115,44,32,111,110,101,32,108,105,110,101,32,112,101,114,32,51,45,115,101,99,111,110,100,32,99,111,111,108,100,111,119,110), function(_0x9B7B)
_0x54A1 = _0x9B7B
_0xC035 = -math.huge
if _0x9B7B then
_0xB03F()
else
_0x6358()
_0xB9E1()
local _0x8C06 = _0xD33F.Character
local _0xCBAB = _0xD33F:FindFirstChildOfClass(string.char(66,97,99,107,112,97,99,107))
for _0xBFE6, _0x1DD1 in ipairs({ _0x8C06, _0xCBAB }) do
if _0x1DD1 then
for _0xBFE6, child in ipairs(_0x1DD1:GetChildren()) do
if child:IsA(string.char(84,111,111,108)) and child.Name ==string.char(71,117,110)then pcall(function() child:SetAttribute(string.char(67,108,117,109,115,121,84,114,97,106,101,99,116,111,114,121,72,111,111,107), nil) end) end
end
end
end
end
_0xE835(string.char(83,104,111,116,32,84,114,97,106,101,99,116,111,114,121,58,32).. (_0x9B7B andstring.char(79,110)orstring.char(79,102,102)), _0x9B7B andstring.char(109,117,122,122,108,101,45,116,111,45,97,105,109,32,116,114,97,99,101,114)orstring.char(116,114,97,106,101,99,116,111,114,121,32,104,105,100,100,101,110))
end)
local _0x9C5B = _0x78B0(_0x27DE,string.char(67,111,108,111,114)):Collapsible(true)
_0x4CF1.exposure = _0x9C5B:Slider(string.char(69,120,112,111,115,117,114,101), -20, 20, _0xCFC0.exposure, _0x5370(string.char(101,120,112,111,115,117,114,101)), function(_0xBE50)
return string.format(string.char(37,43,46,49,102,32,69,86), _0xBE50 / 10)
end)
_0x4CF1.contrast = _0x9C5B:Slider(string.char(67,111,110,116,114,97,115,116), -20, 50, _0xCFC0.contrast, _0x5370(string.char(99,111,110,116,114,97,115,116)), _0x9369)
_0x4CF1.saturation = _0x9C5B:Slider(string.char(83,97,116,117,114,97,116,105,111,110), -50, 50, _0xCFC0.saturation, _0x5370(string.char(115,97,116,117,114,97,116,105,111,110)), _0x9369)
_0x4CF1.warmth = _0x9C5B:Slider(string.char(87,97,114,109,116,104), -50, 50, _0xCFC0.warmth, _0x5370(string.char(119,97,114,109,116,104)), function(_0xBE50)
if _0xBE50 == 0 then
returnstring.char(110,101,117,116,114,97,108)end
return (_0xBE50 > 0 andstring.char(119,97,114,109,32)orstring.char(99,111,108,100,32)) .. math.abs(_0xBE50)
end)
local _0x84FA = _0x78B0(_0x27DE,string.char(76,105,103,104,116)):Collapsible(true)
_0x4CF1.bloom = _0x84FA:Slider(string.char(66,108,111,111,109), 0, 100, _0xCFC0.bloom, _0x5370(string.char(98,108,111,111,109)), _0xFB02)
_0x4CF1.rays = _0x84FA:Slider(string.char(83,117,110,32,114,97,121,115), 0, 100, _0xCFC0.rays, _0x5370(string.char(114,97,121,115)), _0xFB02)
_0x4CF1.shadows = _0x84FA:Slider(string.char(83,111,102,116,32,115,104,97,100,111,119,115), 0, 100, _0xCFC0.shadows, _0x5370(string.char(115,104,97,100,111,119,115)), _0xFB02)
_0x4CF1.dof = _0x84FA:Slider(string.char(68,101,112,116,104,32,111,102,32,102,105,101,108,100), 0, 100, _0xCFC0.dof, _0x5370(string.char(100,111,102)), _0xFB02)
_0x4CF1.fog = _0x84FA:Slider(string.char(65,116,109,111,115,112,104,101,114,101), 0, 100, _0xCFC0.fog, _0x5370(string.char(102,111,103)), _0xFB02)
_0x4CF1.vignette = _0x84FA:Slider(string.char(86,105,103,110,101,116,116,101), 0, 100, _0xCFC0.vignette, _0x5370(string.char(118,105,103,110,101,116,116,101)), _0xFB02)
local _0x7E00 = _0x78B0(_0x27DE,string.char(83,107,121)):Collapsible(true)
_0x1401 = _0x7E00:Segmented(string.char(84,105,109,101), {string.char(71,97,109,101),string.char(67,117,115,116,111,109)}, _0xCFC0.timeMode, _0xF8E8)
_0x4CF1.time = _0x7E00:Slider(string.char(84,105,109,101,32,111,102,32,100,97,121), 0, 47, _0xCFC0.time, function(_0xBE50)
_0xCFC0.time = _0xBE50
if _0xCFC0.timeMode ~=string.char(67,117,115,116,111,109)then
_0x1401.Set(string.char(67,117,115,116,111,109), true)
_0xF8E8(string.char(67,117,115,116,111,109))
end
_0x0F5A()
end, function(_0xBE50)
return string.format(string.char(37,48,50,100,58,37,48,50,100), math.floor(_0xBE50 / 2), _0xBE50 % 2 * 30)
end)
local _0x50DA = _0x7E00:Toggle(string.char(67,108,111,117,100,115),string.char(115,111,102,116,32,118,111,108,117,109,101,116,114,105,99,32,99,108,111,117,100,115), function(_0x9B7B)
_0xCFC0.clouds = _0x9B7B
_0xEFD1()
end)
_0x50DA.Set(true, true)
_0x087D = function()
if _0xCFC0.on then
_0xCFC0.on = false
_0xFAC5()
end
_0xE0E2:Destroy()
end
end
do
local _0x30AA = {
_0x9B7B = false,
roles = true,
_0xEB84 = 1500,
_0x9C5B =string.char(87,104,105,116,101),
_0xA283 = true,
chams = true,
_0x0A80 = true,
boxStyle =string.char(67,111,114,110,101,114,115),
_0xBD62 = true,
_0xA81A = true,
tracers = false,
tracerFrom =string.char(66,111,116,116,111,109),
_0xE487 = 30,
_0xD85E = 12,
thick = 1,
}
local _0xFA95 = _0x81A6(string.char(83,99,114,101,101,110,71,117,105), {
Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,69,83,80),
IgnoreGuiInset = true,
ResetOnSpawn = false,
DisplayOrder = 9999,
Enabled = false,
Parent = _0x50F4,
})
pcall(function()
_0xFA95.ScreenInsets = Enum.ScreenInsets.None
_0xFA95.ClipToDeviceSafeArea = false
end)
local _0xF65B = _0x81A6(string.char(70,111,108,100,101,114), { Name =string.char(67,104,97,109,115), Parent = _0xFA95 })
local _0xD05C = Color3.new(0, 0, 0)
local _0xD980 = Color3.fromRGB(255, 58, 58)
local _0x348D = Color3.fromRGB(64, 150, 255)
local _0x244C = {}
local _0xFF20 = {}
local _0x2E92 = true
task.spawn(function()
local _0x324D
while _0x2E92 do
if _0x30AA.on and _0x30AA.roles then
if not _0x324D or not _0x324D.Parent then
_0x324D = game:GetService(string.char(82,101,112,108,105,99,97,116,101,100,83,116,111,114,97,103,101)):FindFirstChild(string.char(71,101,116,80,108,97,121,101,114,68,97,116,97), true)
end
if _0x324D and _0x324D:IsA(string.char(82,101,109,111,116,101,70,117,110,99,116,105,111,110)) then
local _0x3E35, _0xC352 = pcall(_0x324D.InvokeServer, _0x324D)
if _0x3E35 and type(_0xC352) ==string.char(116,97,98,108,101)then
local _0xE9FE = {}
for _0xBD62, _0x819A in pairs(_0xC352) do
if type(_0x819A) ==string.char(116,97,98,108,101)and type(_0x819A.Role) ==string.char(115,116,114,105,110,103)and not _0x819A.Dead and not _0x819A.Killed then
_0xE9FE[_0xBD62] = _0x819A.Role
end
end
_0xFF20 = _0xE9FE
end
end
end
task.wait(1)
end
end)
local function _0x9AE2(plr)
if _0xBF86(plr,string.char(75,110,105,102,101)) then
returnstring.char(77,117,114,100,101,114,101,114)end
if _0xBF86(plr,string.char(71,117,110)) then
returnstring.char(83,104,101,114,105,102,102)end
local _0x5ED5 = _0xFF20[plr.Name]
if _0x5ED5 ==string.char(77,117,114,100,101,114,101,114)then
returnstring.char(77,117,114,100,101,114,101,114)end
if _0x5ED5 ==string.char(83,104,101,114,105,102,102)or _0x5ED5 ==string.char(72,101,114,111)then
returnstring.char(83,104,101,114,105,102,102)end
end
local function _0x847C(_0x4FEA)
local _0x23BB = _0x81A6(string.char(70,114,97,109,101), { BackgroundColor3 = _0x0333, BorderSizePixel = 0, Parent = _0x4FEA })
_0x81A6(string.char(85,73,83,116,114,111,107,101), { Color = _0xD05C, Transparency = 0.5, Thickness = 1, Parent = _0x23BB })
return _0x23BB
end
local function _0xC8F1(_0x4FEA, ay)
return _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Font = Enum.Font.GothamBold,
TextSize = 12,
TextColor3 = _0x0333,
TextStrokeColor3 = _0xD05C,
TextStrokeTransparency = 0.45,
BackgroundTransparency = 1,
AnchorPoint = Vector2.new(0.5, ay),
Size = UDim2.fromOffset(220, 14),
Parent = _0x4FEA,
})
end
local function _0x930C(plr)
if plr == _0xD33F or _0x244C[plr] then
return
end
local _0x9B31 = { plr = plr, alpha = 0, hp = 1, _0x33A5 = math.random() }
_0x9B31.root = _0x81A6(string.char(70,114,97,109,101), { BackgroundTransparency = 1, Size = UDim2.fromOffset(0, 0), Visible = false, Parent = _0xFA95 })
_0x9B31.fill = _0x81A6(string.char(70,114,97,109,101), { BackgroundColor3 = _0x0333, BorderSizePixel = 0, Parent = _0x9B31.root })
_0x9B31.fillGrad = _0x81A6(string.char(85,73,71,114,97,100,105,101,110,116), { Rotation = 90, Transparency = NumberSequence.new(1, 0.82), Parent = _0x9B31.fill })
_0x9B31.corners = {}
for _0x60FA = 1, 8 do
_0x9B31.corners[_0x60FA] = _0x847C(_0x9B31.root)
end
_0x9B31.full = _0x81A6(string.char(70,114,97,109,101), { BackgroundTransparency = 1, Parent = _0x9B31.root })
_0x9B31.fullStroke = _0x81A6(string.char(85,73,83,116,114,111,107,101), { Color = _0x0333, Thickness = 1, Parent = _0x9B31.full })
_0x9B31.fullShadow = _0x81A6(string.char(70,114,97,109,101), { BackgroundTransparency = 1, Parent = _0x9B31.root })
_0x81A6(string.char(85,73,83,116,114,111,107,101), { Color = _0xD05C, Transparency = 0.5, Thickness = 3, Parent = _0x9B31.fullShadow })_0x9B31.avatar = _0x81A6(string.char(73,109,97,103,101,76,97,98,101,108), {
AnchorPoint = Vector2.new(0.5, 0.5),
Size = UDim2.fromOffset(24, 24),
BackgroundColor3 = _0xD05C,
BackgroundTransparency = 0.15,
BorderSizePixel = 0,
Image ="",
Visible = false,
Parent = _0x9B31.root,
})
_0x81A6(string.char(85,73,67,111,114,110,101,114), { CornerRadius = UDim.new(1, 0), Parent = _0x9B31.avatar })
_0x9B31.avatarStroke = _0x81A6(string.char(85,73,83,116,114,111,107,101), {
Color = _0x0333,
Thickness = 1.2,
Transparency = 0.1,
Parent = _0x9B31.avatar,
})
_0x9B31.name = _0xC8F1(_0x9B31.root, 1)
_0x9B31.name.Size = UDim2.fromOffset(190, 14)
_0x9B31.info = _0xC8F1(_0x9B31.root, 0)
task.spawn(function()
local _0x3E35, _0x7AB6 = pcall(function()
return _0x9A21:GetUserThumbnailAsync(
plr.UserId,
Enum.ThumbnailType.HeadShot,
Enum.ThumbnailSize.Size150x150
)
end)
if _0x3E35 and _0x7AB6 and _0x9B31.avatar and _0x9B31.avatar.Parent then
_0x9B31.avatar.Image = _0x7AB6
_0x9B31.avatarLoaded = true
end
end)
_0x9B31.info.Font = Enum.Font.GothamMedium
_0x9B31.tracer = _0x847C(_0x9B31.root)
_0x9B31.tracer.AnchorPoint = Vector2.new(0.5, 0.5)
_0x9B31.hl = _0x81A6(string.char(72,105,103,104,108,105,103,104,116), { DepthMode = Enum.HighlightDepthMode.AlwaysOnTop, Enabled = false, Parent = _0xF65B })
_0x244C[plr] = _0x9B31
end
local function _0x89BB(plr)
local _0x9B31 = _0x244C[plr]
if not _0x9B31 then
return
end
_0x9B31.root:Destroy()
_0x9B31.hl:Destroy()
_0x244C[plr] = nil
end
for _0xBFE6, plr in ipairs(_0x9A21:GetPlayers()) do
_0x930C(plr)
end
_0xF709(_0x9A21.PlayerAdded, _0x930C)
_0xF709(_0x9A21.PlayerRemoving, _0x89BB)
local function _0xEAE2(_0x5ED5)
return Color3.fromHSV(0.33 * math.clamp(_0x5ED5, 0, 1), 0.8, 1)
end
local function _0x7F9E(_0x23BB, _0xC642, _0xA331, x2, y2, _0xB6CB)
local _0x558B, _0xD132 = x2 - _0xC642, y2 - _0xA331
_0x23BB.Position = UDim2.fromOffset((_0xC642 + x2) / 2, (_0xA331 + y2) / 2)
_0x23BB.Size = UDim2.fromOffset(math.sqrt(_0x558B * _0x558B + _0xD132 * _0xD132), _0xB6CB)
_0x23BB.Rotation = math.deg(math.atan2(_0xD132, _0x558B))
end
local function _0x26F9()
for _0xBFE6, _0x9B31 in pairs(_0x244C) do
_0x9B31.alpha = 0
_0x9B31.root.Visible = false
_0x9B31.hl.Enabled = false
end
end
_0xF709(_0x7FDD.RenderStepped, function(_0xF45E)
if not _0x30AA.on then
return
end
local _0x4245 = workspace.CurrentCamera
if not _0x4245 then
return
end
local _0x56A0 = _0x4245.ViewportSize
local _0x4EDF = _0x4245.CFrame.Position
local _0x9494 = os.clock()
local _0x3FFC = math.min(_0xF45E * 10, 1)
for plr, _0x9B31 in pairs(_0x244C) do
local _0x8C06 = plr.Character
local _0xE4E7 = _0x8C06 and _0x8C06:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xBD98 = _0x8C06 and _0x8C06:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0x99E6 = false
local _0xEB84 = 0
if _0xE4E7 and _0xBD98 and _0xBD98.Health > 0 then
_0xEB84 = (_0x4EDF - _0xE4E7.Position).Magnitude
if _0xEB84 <= _0x30AA.dist thenlocal _0xC23A = _0x4245:WorldToViewportPoint(_0xE4E7.Position + Vector3.new(0, 3, 0))
local _0xC19B = _0x4245:WorldToViewportPoint(_0xE4E7.Position - Vector3.new(0, 3.4, 0))
if _0xC23A.Z > 0 and _0xC19B.Z > 0 then
local _0x98C3 = math.max(_0xC19B.Y - _0xC23A.Y, 6)
local _0x42FB = _0x98C3 * 0.6
local _0xD311 = (_0xC23A.X + _0xC19B.X) / 2
_0x99E6 = _0xD311 > -_0x42FB and _0xD311 < _0x56A0.X + _0x42FB and _0xC19B.Y > 0 and _0xC23A.Y < _0x56A0.Y
if _0x99E6 then
_0x9B31.x, _0x9B31.y, _0x9B31.w, _0x9B31.h, _0x9B31.d = _0xD311, _0xC23A.Y, _0x42FB, _0x98C3, _0xEB84
end
end
end
end
_0x9B31.alpha += ((_0x99E6 and 1 or 0) - _0x9B31.alpha) * _0x3FFC
if _0x9B31.alpha < 0.02 or not _0x9B31.x then
_0x9B31.root.Visible = false
_0x9B31.hl.Enabled = false
continue
end
_0x9B31.root.Visible = true
local _0x7D74 = _0x9B31.alpha
local _0xE5E5 = 1 - _0x7D74
if not _0x9B31.roleAt or _0x9494 - _0x9B31.roleAt > 0.25 then
_0x9B31.roleAt = _0x9494
local _0x439E = _0x30AA.roles and _0x9AE2(plr) or nil
if _0x439E and _0x439E ~= _0x9B31.role then
_0xE835(_0x439E ==string.char(77,117,114,100,101,114,101,114)andstring.char(77,117,114,100,101,114,101,114,32,102,111,117,110,100)orstring.char(83,104,101,114,105,102,102,32,102,111,117,110,100), plr.DisplayName)
end
_0x9B31.role = _0x439E
end
local _0xF3DB = _0x0333
if _0x9B31.role ==string.char(77,117,114,100,101,114,101,114)then
_0xF3DB = _0xD980
elseif _0x9B31.role ==string.char(83,104,101,114,105,102,102)then
_0xF3DB = _0x348D
elseif _0x30AA.color ==string.char(72,101,97,108,116,104)then
_0xF3DB = _0xEAE2(_0x9B31.hp)
elseif _0x30AA.color ==string.char(82,97,105,110,98,111,119)then
_0xF3DB = Color3.fromHSV((_0x9494 * 0.15 + _0x9B31.hue) % 1, 0.55, 1)
end
local _0xC299, _0xBF90 = _0x9B31.x - _0x9B31.w / 2, _0x9B31.y
local _0xC642, _0xA331 = _0x9B31.x + _0x9B31.w / 2, _0x9B31.y + _0x9B31.h
local _0xB6CB = _0x30AA.thick
_0x9B31.fill.Visible = _0x30AA.box
_0x9B31.fill.Position = UDim2.fromOffset(_0xC299, _0xBF90)
_0x9B31.fill.Size = UDim2.fromOffset(_0x9B31.w, _0x9B31.h)
_0x9B31.fill.BackgroundColor3 = _0xF3DB
_0x9B31.fill.BackgroundTransparency = _0xE5E5
local _0xE296 = _0x30AA.box and _0x30AA.boxStyle ==string.char(67,111,114,110,101,114,115)local _0x2379, _0x9AA7 = math.max(_0x9B31.w * 0.28, 4), math.max(_0x9B31.h * 0.2, 4)
local _0x611B = {
{ _0xC299, _0xBF90, _0x2379, _0xB6CB },
{ _0xC299, _0xBF90, _0xB6CB, _0x9AA7 },
{ _0xC642 - _0x2379, _0xBF90, _0x2379, _0xB6CB },
{ _0xC642 - _0xB6CB, _0xBF90, _0xB6CB, _0x9AA7 },
{ _0xC299, _0xA331 - _0xB6CB, _0x2379, _0xB6CB },
{ _0xC299, _0xA331 - _0x9AA7, _0xB6CB, _0x9AA7 },
{ _0xC642 - _0x2379, _0xA331 - _0xB6CB, _0x2379, _0xB6CB },
{ _0xC642 - _0xB6CB, _0xA331 - _0x9AA7, _0xB6CB, _0x9AA7 },
}
for _0x60FA, _0xD51E in ipairs(_0x9B31.corners) do
_0xD51E.Visible = _0xE296
if _0xE296 then
local _0x7B05 = _0x611B[_0x60FA]
_0xD51E.Position = UDim2.fromOffset(_0x7B05[1], _0x7B05[2])
_0xD51E.Size = UDim2.fromOffset(_0x7B05[3], _0x7B05[4])
_0xD51E.BackgroundColor3 = _0xF3DB
_0xD51E.BackgroundTransparency = _0xE5E5
end
end
local _0x98B8 = _0x30AA.box and _0x30AA.boxStyle ==string.char(70,117,108,108)_0x9B31.full.Visible = _0x98B8
_0x9B31.fullShadow.Visible = _0x98B8
if _0x98B8 then
_0x9B31.full.Position = UDim2.fromOffset(_0xC299, _0xBF90)
_0x9B31.full.Size = UDim2.fromOffset(_0x9B31.w, _0x9B31.h)
_0x9B31.fullShadow.Position = _0x9B31.full.Position
_0x9B31.fullShadow.Size = _0x9B31.full.Size
_0x9B31.fullStroke.Color = _0xF3DB
_0x9B31.fullStroke.Thickness = _0xB6CB
_0x9B31.fullStroke.Transparency = _0xE5E5
end
_0x9B31.name.Visible = _0x30AA.name
if _0x30AA.name then
_0x9B31.name.Text = plr.DisplayName
_0x9B31.name.TextSize = _0x30AA.text_0x9B31.name.Position = UDim2.fromOffset(_0x9B31.x + 12, _0xBF90 - 3)
_0x9B31.name.TextColor3 = _0xF3DB
_0x9B31.name.TextTransparency = _0xE5E5
_0x9B31.name.TextStrokeTransparency = 0.45 + 0.55 * _0xE5E5
end
_0x9B31.avatar.Visible = _0x30AA.avatar and _0x30AA.name and _0x9B31.avatarLoaded == true
if _0x9B31.avatar.Visible then
_0x9B31.avatar.Position = UDim2.fromOffset(_0x9B31.x - 2, _0xBF90 + 4)
_0x9B31.avatar.ImageTransparency = _0xE5E5
_0x9B31.avatar.BackgroundTransparency = 0.15 + 0.85 * _0xE5E5
_0x9B31.avatarStroke.Color = _0xF3DB
_0x9B31.avatarStroke.Transparency = 0.1 + 0.9 * _0xE5E5
end
_0x9B31.info.Visible = _0x30AA.distance
if _0x30AA.distance then
local _0xE6E2 = math.floor(_0x9B31.d + 0.5) ..string.char(109)_0x9B31.info.Text = _0x9B31.role and string.upper(_0x9B31.role) ..string.char(32,32,194,183,32,32).. _0xE6E2 or _0xE6E2
_0x9B31.info.TextSize = _0x30AA.text - 1
_0x9B31.info.Position = UDim2.fromOffset(_0x9B31.x, _0xA331 + 3)
_0x9B31.info.TextColor3 = _0x9B31.role and _0xF3DB or _0x08BE:Lerp(_0x0333, 0.5)
_0x9B31.info.TextTransparency = _0xE5E5
_0x9B31.info.TextStrokeTransparency = 0.45 + 0.55 * _0xE5E5
end
_0x9B31.tracer.Visible = _0x30AA.tracers
if _0x30AA.tracers then
local _0xED6F = _0x30AA.tracerFrom ==string.char(67,101,110,116,101,114)and _0x56A0.Y / 2 or _0x56A0.Y - 2
_0x7F9E(_0x9B31.tracer, _0x56A0.X / 2, _0xED6F, _0x9B31.x, _0xA331, _0xB6CB)
_0x9B31.tracer.BackgroundColor3 = _0xF3DB
_0x9B31.tracer.BackgroundTransparency = 0.25 + 0.75 * _0xE5E5
end
_0x9B31.hl.Enabled = _0x30AA.chams
if _0x30AA.chams then
_0x9B31.hl.Adornee = _0x8C06
_0x9B31.hl.FillColor = _0xF3DB
_0x9B31.hl.OutlineColor = _0xF3DB
_0x9B31.hl.FillTransparency = 1 - _0x30AA.fill / 100 * 0.85 * _0x7D74
_0x9B31.hl.OutlineTransparency = 1 - 0.9 * _0x7D74
end
end
end)
local function _0x6B65(_0xFBB7)
return function(_0xBE50)
_0x30AA[_0xFBB7] = _0xBE50
end
end
local _0xDBF6 = _0x78B0(_0x27DE,string.char(69,83,80),string.char(69,83,80))
_0xDBF6:Toggle(string.char(69,110,97,98,108,101),string.char(115,101,101,32,112,108,97,121,101,114,115,32,116,104,114,111,117,103,104,32,119,97,108,108,115), function(_0x9B7B)
_0x30AA.on = _0x9B7B
_0xFA95.Enabled = _0x9B7B
if not _0x9B7B then
_0x26F9()
end
_0xE835(string.char(69,83,80,58,32).. (_0x9B7B andstring.char(79,110)orstring.char(79,102,102)), _0x9B7B andstring.char(112,108,97,121,101,114,115,32,104,105,103,104,108,105,103,104,116,101,100)orstring.char(101,115,112,32,104,105,100,100,101,110))
end)
_0xDBF6:Toggle(string.char(82,111,108,101,115),string.char(109,117,114,100,101,114,101,114,32,114,101,100,44,32,115,104,101,114,105,102,102,32,98,108,117,101), function(_0xBE50)
_0x30AA.roles = _0xBE50
for _0xBFE6, _0x9B31 in pairs(_0x244C) do
_0x9B31.roleAt = nil
end
end).Set(_0x30AA.roles, true)
_0xDBF6:Select(string.char(67,111,108,111,114),string.char(102,111,114,32,101,118,101,114,121,111,110,101,32,101,108,115,101), {string.char(87,104,105,116,101),string.char(72,101,97,108,116,104),string.char(82,97,105,110,98,111,119)}, _0x30AA.color, _0x6B65(string.char(99,111,108,111,114)))
_0xDBF6:Slider(string.char(77,97,120,32,100,105,115,116,97,110,99,101), 50, 3000, _0x30AA.dist, _0x6B65(string.char(100,105,115,116)), function(_0xBE50)
return _0xBE50 ..string.char(109)end)
local _0xEE00 = _0x78B0(_0x27DE,string.char(69,108,101,109,101,110,116,115),string.char(69,83,80)):Collapsible(true)
_0xEE00:Toggle(string.char(67,104,97,109,115),string.char(103,108,111,119,105,110,103,32,98,111,100,121,32,116,104,114,111,117,103,104,32,119,97,108,108,115), _0x6B65(string.char(99,104,97,109,115))).Set(_0x30AA.chams, true)
_0xEE00:Toggle(string.char(66,111,120), nil, _0x6B65(string.char(98,111,120))).Set(_0x30AA.box, true)
_0xEE00:Segmented(string.char(66,111,120,32,115,116,121,108,101), {string.char(67,111,114,110,101,114,115),string.char(70,117,108,108)}, _0x30AA.boxStyle, _0x6B65(string.char(98,111,120,83,116,121,108,101)))
_0xEE00:Toggle(string.char(78,97,109,101), nil, _0x6B65(string.char(110,97,109,101))).Set(_0x30AA.name, true)
_0xEE00:Toggle(string.char(65,118,97,116,97,114),string.char(112,108,97,121,101,114,32,112,114,111,102,105,108,101,32,105,99,111,110,32,98,101,115,105,100,101,32,116,104,101,32,110,105,99,107,110,97,109,101), _0x6B65(string.char(97,118,97,116,97,114))).Set(_0x30AA.avatar, true)
_0xEE00:Toggle(string.char(68,105,115,116,97,110,99,101), nil, _0x6B65(string.char(100,105,115,116,97,110,99,101))).Set(_0x30AA.distance, true)
_0xEE00:Toggle(string.char(84,114,97,99,101,114,115),string.char(108,105,110,101,115,32,116,111,32,112,108,97,121,101,114,115), _0x6B65(string.char(116,114,97,99,101,114,115)))
_0xEE00:Segmented(string.char(84,114,97,99,101,114,115,32,102,114,111,109), {string.char(66,111,116,116,111,109),string.char(67,101,110,116,101,114)}, _0x30AA.tracerFrom, _0x6B65(string.char(116,114,97,99,101,114,70,114,111,109)))
local _0xA83C = _0x78B0(_0x27DE,string.char(76,111,111,107),string.char(69,83,80)):Collapsible(false)
_0xA83C:Slider(string.char(67,104,97,109,115,32,102,105,108,108), 0, 100, _0x30AA.fill, _0x6B65(string.char(102,105,108,108)), function(_0xBE50)
return _0xBE50 ..string.char(37)end)
_0xA83C:Slider(string.char(84,101,120,116,32,115,105,122,101), 9, 18, _0x30AA.text, _0x6B65(string.char(116,101,120,116)))
_0xA83C:Slider(string.char(84,104,105,99,107,110,101,115,115), 1, 3, _0x30AA.thick, _0x6B65(string.char(116,104,105,99,107)), function(_0xBE50)
return _0xBE50 ..string.char(112,120)end)
_0xDAFC = function()
_0x30AA.on = false
_0x2E92 = false
_0xFA95:Destroy()
end
end
do
local _0xAAD2 = {
{string.char(78,101,119,32,40,50,48,50,52,45,50,48,50,53,41),
{
{string.char(66,111,108,100), 16738333868, 16738334710, 16738340646, 16738337225, 16738336650, 16738333171, 16738332169, 16738339158, 16738339817 },
{string.char(82,101,97,108,105,115,116,105,99), 17172918855, 17173014241, 11600249883, 11600211410, 11600210487, 11600206437, 11600205519, 11600212676, 11600213505 },
{string.char(78,111,32,66,111,117,110,100,97,114,105,101,115), 18747067405, 18747063918, 18747074203, 18747070484, 18747069148, 18747062535, 18747060903, 18747073181, 18747071682 },
{string.char(78,70,76), 92080889861410, 74451233229259, 110358958299415, 117333533048078, 119846112151352, 129773241321032, 134630013742019, 132697394189921, 79090109939093 },
{string.char(65,100,105,100,97,115,32,65,117,114,97), 110211186840347, 114191137265065, 83842218823011, 118320322718866, 109996626521204, 95603166884636, 97824616490448, 134530128383903, 94922130551805 },
{string.char(65,100,105,100,97,115,32,83,112,111,114,116,115), 18537376492, 18537371272, 18537392113, 18537384940, 18537380791, 18537367238, 18537363391, 18537389531, 18537387180 },
{string.char(65,100,105,100,97,115,32,67,111,109,109,117,110,105,116,121), 122257458498464, 102357151005774, 122150855457006, 82598234841035, 75290611992385, 98600215928904, 88763136693023, 133308483266208, 109346520324160 },
{string.char(87,105,99,107,101,100,32,80,111,112,117,108,97,114), 118832222982049, 76049494037641, 92072849924640, 72301599441680, 104325245285198, 121152442762481, 131326830509784, 99384245425157, 113199415118199 },
{string.char(67,97,116,119,97,108,107,32,71,108,97,109), 133806214992291, 94970088341563, 109168724482748, 81024476153754, 116936326516985, 92294537340807, 119377220967554, 134591743181628, 98854111361360 },
{string.char(87,105,99,107,101,100,32,68,97,110,99,101), 92849173543269, 132238900951109, 73718308412641, 135515454877967, 78508480717326, 78147885297412, 129447497744818, 110657013921774, 129183123083281 },
{string.char(85,110,98,111,120,101,100), 98281136301627, 138183121662404, 90478085024465, 134824450619865, 121454505477205, 94788218468396, 121145883950231, 105962919001086, 129126268464847 },
},
},
{string.char(67,108,97,115,115,105,99),
{
{string.char(83,116,121,108,105,115,104), 616136790, 616138447, 616146177, 616140816, 616139451, 616134815, 616133594, 616143378, 616144772 },
{string.char(90,111,109,98,105,101), 616158929, 616160636, 616168032, 616163682, 616161997, 616157476, 616156119, 616165109, 616166655 },
{string.char(82,111,98,111,116), 616088211, 616089559, 616095330, 616091570, 616090535, 616087089, 616086039, 616092998, 616094091 },
{string.char(84,111,121), 782841498, 782845736, 782843345, 782842708, 782847020, 782846423, 782843869, 782844582, 782845186 },
{string.char(67,97,114,116,111,111,110,121), 742637544, 742638445, 742640026, 742638842, 742637942, 742637151, 742636889, 742639220, 742639812 },
{string.char(83,117,112,101,114,104,101,114,111), 616111295, 616113536, 616122287, 616117076, 616115533, 616108001, 616104706, 616119360, 616120861 },
{string.char(77,97,103,101), 707742142, 707855907, 707897309, 707861613, 707853694, 707829716, 707826056, 707876443, 707894699 },
{string.char(76,101,118,105,116,97,116,105,111,110), 616006778, 616008087, 616013216, 616010382, 616008936, 616005863, 616003713, 616011509, 616012453 },
{string.char(86,97,109,112,105,114,101), 1083445855, 1083450166, 1083473930, 1083462077, 1083455352, 1083443587, 1083439238, 1083464683, 1083467779 },
{string.char(69,108,100,101,114), 845397899, 845400520, 845403856, 845386501, 845398858, 845396048, 845392038, 845401742, 845403127 },
{string.char(87,101,114,101,119,111,108,102), 1083195517, 1083214717, 1083178339, 1083216690, 1083218792, 1083189019, 1083182000, 1083222527, 1083225406 },
{string.char(75,110,105,103,104,116), 657595757, 657568135, 657552124, 657564596, 658409194, 657600338, 658360781, 657560551, 657557095 },
{string.char(65,115,116,114,111,110,97,117,116), 891621366, 891633237, 891667138, 891636393, 891627522, 891617961, 891609353, 891639666, 891663592 },
{string.char(66,117,98,98,108,121), 910004836, 910009958, 910034870, 910025107, 910016857, 910001910, 909997997, 910028158, 910030921 },
{string.char(80,105,114,97,116,101), 750781874, 750782770, 750785693, 750783738, 750782230, 750780242, 750779899, 750784579, 750785176 },
{string.char(82,116,104,114,111), 2510196951, 2510197257, 2510202577, 2510198475, 2510197830, 2510195892, 2510192778, 2510199791, 2510201162 },
{string.char(78,105,110,106,97), 656117400, 656118341, 656121766, 656118852, 656117878, 656115606, 656114359, 656119721, 656121397 },
{string.char(79,108,100,115,99,104,111,111,108), 5319828216, 5319831086, 5319847204, 5319844329, 5319841935, 5319839762, 5319816685, 5319850266, 5319852613 },
{string.char(80,114,105,110,99,101,115,115), 941003647, 941013098, 941028902, 941015281, 941008832, 941000007, 940996062, 941018893, 941025398 },
{string.char(67,111,110,102,105,100,101,110,116), 1069977950, 1069987858, 1070017263, 1070001516, 1069984524, 1069973677, 1069946257, 1070009914, 1070012133 },
{string.char(80,111,112,115,116,97,114), 1212900985, 1150842221, 1212980338, 1212980348, 1212954642, 1212900995, 1213044953, 1212852603, 1070012133 },
{string.char(80,97,116,114,111,108), 1149612882, 1150842221, 1151231493, 1150967949, 1150944216, 1148863382, 1148811837, 1151204998, 1151221899 },
{string.char(83,110,101,97,107,121), 1132473842, 1132477671, 1132510133, 1132494274, 1132489853, 1132469004, 1132461372, 1132500520, 1132506407 },
{string.char(67,111,119,98,111,121), 1014390418, 1014398616, 1014421541, 1014401683, 1014394726, 1014384571, 1014380606, 1014406523, 1014411816 },
{string.char(83,116,121,108,105,122,101,100,32,70,101,109,97,108,101), 4708191566, 4708192150, 4708193840, 4708192705, 4708188025, 4708186162, 4708184253, 4708189360, 4708190607 },
{string.char(68,101,102,97,117,108,116,32,82,49,53), 4211217646, 4211218409, 4211223236, 4211220381, 4211219390, 4211216152, 4211214992, 4211221314, 4374694239 },
{string.char(77,111,99,97,112), 913367814, 913373430, 913402848, 913376220, 913370268, 913365531, 913362637, 913384386, 913389285 },
},
},
{string.char(83,112,101,99,105,97,108),
{
{string.char(71,104,111,115,116), 616006778, 616008087, 616013216, 616013216, 616008936, 616005863, 0, 616011509, 616012453 },
{string.char(77,101,99,104), 4417977954, 4417978624, 2510202577, 4417979645, 2510197830, 2510195892, 2510192778, 2510199791, 2510201162 },
{string.char(85,100,122,97,108), 3303162274, 3303162549, 3303162967, 3236836670, 2510197830, 2510195892, 2510192778, 2510199791, 2510201162 },
{string.char(79,105,110,97,110,32,84,104,105,99,107,104,111,111,102), 657595757, 657568135, 2510202577, 3236836670, 2510197830, 2510195892, 2510192778, 2510199791, 2510201162 },
{string.char(66,111,114,111,99,107), 3293641938, 3293642554, 2510202577, 3236836670, 2510197830, 2510195892, 2510192778, 2510199791, 2510201162 },
},
},
}
local _0xB6DD = {
{ 356,string.char(82,116,104,114,111,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107,97,103,101), 2510235063, 2510242378, 2510238627, 2510236649, 2510233257, 2510230574, 2510240941 },
{ 667,string.char(79,108,100,115,99,104,111,111,108,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 5319922112, 5319909330, 5319900634, 5319917561, 5319914476, 5319931619, 5319927054 },
{ 83,string.char(83,116,121,108,105,115,104,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 619511648, 619512767, 619512153, 619511974, 619511417, 619509955, 619512450 },
{ 82,string.char(82,111,98,111,116,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 619521748, 619522849, 619522386, 619522088, 619521521, 619521311, 619522642 },
{ 43,string.char(84,111,121,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 973771666, 973767371, 973766674, 973770652, 973768058, 973773170, 973772659 },
{ 2623795,string.char(97,100,105,100,97,115,32,67,111,109,109,117,110,105,116,121,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 126354114956642, 106810508343012, 124765145869332, 115715495289805, 93993406355955, 123695349157584, 106537993816942 },
{ 80,string.char(90,111,109,98,105,101,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 619535834, 619537468, 619536621, 619536283, 619535616, 619535091, 619537096 },
{ 63,string.char(77,97,103,101,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107,97,103,101), 754637456, 754636298, 754635032, 754637084, 754636589, 754639239, 754638471 },
{ 56,string.char(67,97,114,116,111,111,110,121,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107,97,103,101), 837011741, 837010234, 837009922, 837011171, 837010685, 837013990, 837012509 },
{ 39,string.char(66,117,98,98,108,121,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107,97,103,101), 1018553897, 1018549681, 1018548665, 1018553240, 1018552770, 1018554668, 1018554245 },
{ 75,string.char(78,105,110,106,97,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107,97,103,101), 658832408, 658831143, 658830056, 658832070, 658831500, 658833139, 658832807 },
{ 1189398,string.char(87,105,99,107,101,100,32,80,111,112,117,108,97,114,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 101839542383818, 133304526526319, 136276875045281, 130373407996664, 83937116921114, 135810009801094, 128475661806875 },
{ 427999,string.char(97,100,105,100,97,115,32,83,112,111,114,116,115,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 18538150608, 18538146480, 18538133604, 18538153691, 18538164337, 18538170170, 18538158932 },
{ 81,string.char(83,117,112,101,114,104,101,114,111,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 619528125, 619529601, 619528716, 619528412, 619527817, 619527470, 619529095 },
{ 48,string.char(69,108,100,101,114,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107,97,103,101), 892268340, 892267099, 892265784, 892267917, 892267521, 892269341, 892268710 },
{ 4294795,string.char(97,100,105,100,97,115,32,97,117,114,97,32,97,110,105,109,97,116,105,111,110,32,112,97,99,107), 73137983344853, 75183215343859, 123973978164540, 129527230938281, 99457463463495, 140398319728398, 119007025452432 },
{ 33,string.char(86,97,109,112,105,114,101,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 1113742618, 1113741192, 1113740510, 1113742359, 1113742092, 1113743239, 1113742944 },
{ 79,string.char(76,101,118,105,116,97,116,105,111,110,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 619542203, 619544080, 619543231, 619542888, 619541867, 619541458, 619543721 },
{ 32,string.char(87,101,114,101,119,111,108,102,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 1113752682, 1113751657, 1113750642, 1113752285, 1113751889, 1113754738, 1113752975 },
{ 34,string.char(65,115,116,114,111,110,97,117,116,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 1090133099, 1090131576, 1090130630, 1090132507, 1090132063, 1090134016, 1090133583 },
{ 455003,string.char(78,111,32,66,111,117,110,100,97,114,105,101,115,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107,32,98,121,32,87,97,108,109,97,114,116), 18755930927, 18755942776, 18755933883, 18755925411, 18755922352, 18755919175, 18755938274 },
{ 4164795,string.char(65,109,97,122,111,110,32,85,110,98,111,120,101,100,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 82219139681769, 128339543796138, 114998633936467, 110418911914024, 125108870423182, 117011755848398, 137392271797713 },
{ 68,string.char(75,110,105,103,104,116,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107,97,103,101), 734327140, 734326330, 734325948, 734326930, 734326679, 734329002, 734327363 },
{ 55,string.char(80,105,114,97,116,101,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107,97,103,101), 837024662, 837023892, 837023444, 837024350, 837024147, 837025325, 837025054 },
{ 122746952391276,string.char(67,117,116,101,32,75,97,119,97,105,105), 87378581612013, 134893286312907, 114496981964667, 78753669029804, 78668034869322, 114544880037945, 77472834006636 },
{ 151819968930057,string.char(86,105,99,116,111,114,105,97,32,77,111,100,101,108), 103718214826066, 116254697237169, 123079125703048, 91133124065771, 74672131231886, 72034200995655, 121980654863805 },
{ 115540548213210,string.char(74,111,108,108,121,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 121468276202179, 83096586914276, 71971990553119, 86777047181866, 83063007119941, 73563861115457, 71637541197973 },
{ 5134295,string.char(66,105,108,108,105,101,32,69,105,108,105,115,104,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 82009039247070, 74056522836252, 107895705891639, 114806832298003, 132771121298158, 95937554524959, 78340083978503 },
{ 4899847411546,string.char(69,110,100,108,101,115,115,32,65,117,114,97,32,70,108,111,97,116,105,110,103,32,80,97,99,107), 75638427965557, 131290152729043, 77610456891399, 74451563346167, 74203422263286, 116293937663140, 110044773049875 },
{ 4974195,string.char(75,65,84,83,69,89,69,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 125286451593779, 105967194765350, 140179859838109, 121868657321572, 84737112249504, 130399277423748, 87465102258861 },
{ 4128695,string.char(87,105,99,107,101,100,32,34,68,97,110,99,105,110,103,32,84,104,114,111,117,103,104,32,76,105,102,101,34,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 82682578794949, 94133616443608, 79789194522561, 111157411630082, 124742764102674, 123509187015792, 135050138303161 },
{ 44134738352110,string.char(66,105,99,121,99,108,105,115,116,32,47,32,66,105,107,101), 110301614683999, 78201729008814, 82563400820481, 107759406184171, 116348378285841, 106713991255001, 77327275394482 },
{ 13847677942977,string.char(65,110,110,111,121,105,110,103,32,77,105,110,105,32,77,101,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 118862283492023, 123499402060535, 108064018869475, 77719056586289, 81914368217933, 122736580472463, 133063333973854 },
{ 246417977128963,string.char(68,111,108,108,32,51,46,48), 109401010312897, 73488864835464, 90126309265051, 118036998124357, 99977942446739, 86104031977265, 133772806040245 },
{ 81397985471047,string.char(67,117,116,101,32,66,111,117,110,99,121), 112758171987743, 105398643971664, 81980688988481, 95845383984913, 91206221270256, 77455242814172, 137674505873151 },
{ 110693219046747,string.char(67,117,116,101), 73073438542366, 87016985886252, 103569388072604, 126765807132662, 74500938515101, 130431162972600, 112736233576006 },
{ 57393899235237,string.char(239,191,189,239,191,189,32,65,110,103,101,108,32,40,70,108,111,97,116,105,110,103,41), 138791542100078, 98178584535094, 120880326870608, 140709061221147, 98791635084597, 132683235998205, 133193009842625 },
{ 226926215014942,string.char(73,116,45,71,105,114,108,32,69,115,115,101,110,116,105,97,108,32,77,111,100,101,108,32,65,110,105,109,32,66,117,110,100,108,101), 120992094851618, 90277175857099, 111476936032056, 112646876784472, 125665759397426, 129595215811160, 114352975745413 },
{ 202303684183778,string.char(90,111,109,98,105,101,32,65,110,105,109,97,116,105,111,110,32,86,49), 99683684875874, 93573919758577, 118223426835901, 117775165215292, 126356736613041, 73917242953119, 75615514809696 },
{ 83150063434113,string.char(67,117,116,101,32,83,105,116), 110542674051174, 118167050072619, 113254670339077, 124327113511763, 99664258493491, 125102831404256, 112149520105094 },
{ 202937663223114,string.char(67,117,116,101,32,74,111,121), 106422977106635, 84929464233480, 136095340410517, 91003269917350, 99857206072384, 92360639959809, 83689554087147 },
{ 171430088634553,string.char(77,111,100,101,114,110,32,82,54,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 104406060298008, 124988819613327, 99901926147031, 116343198036897, 129580654694779, 110907985002120, 99928806802401 },
{ 130315691170614,string.char(90,111,109,98,105,101,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 72020579345676, 112308035206770, 131605772282759, 123878221388719, 138858643345164, 130045357922950, 93287488161066 },
{ 117734412711622,string.char(82,54,32,83,117,114,118,105,118,111,114,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 79575948465396, 127283838990258, 132471521372294, 137934973717401, 107615688046955, 111862482779638, 138445851536606 },
{ 94415078985878,string.char(75,97,119,97,105,105,32,67,117,116,101,32,71,105,114,108,121,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 111249376072333, 73636981266788, 131576761090801, 125116610868743, 106910927390939, 133959656651864, 104067918460960 },
{ 226897222628299,string.char(67,104,105,108,108,32,66,111,121), 79638430446468, 125935884379030, 140668178711040, 121044668035612, 90121153486837, 107026478538282, 74464049474878 },
{ 13290832259834,string.char(67,117,116,101,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 102526860241644, 129081631925429, 106225307541637, 118216190885024, 120436889637318, 83450718624718, 102260064079692 },
{ 52466328299272,string.char(99,117,116,101,115,121,32,99,104,105,98,105,32,97,110,105,109,97,116,105,111,110,32,112,97,99,107), 103179664605636, 103849563001453, 136485344017634, 85211239912050, 110743159760232, 140486275218961, 121372042956337 },
{ 89768357010362,string.char(78,111,110,99,104,97,108,97,110,116,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 107123120166007, 125611743000994, 88865794201668, 107221788639672, 118450647827858, 119095716889455, 96444605185114 },
{ 221310517641058,string.char(77,105,110,105,32,77,101,32,65,110,105,109,97,116,105,111,110,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 106089150684940, 116237551178158, 104913000423601, 133780000255900, 79041695698101, 104828442123637, 83799110138560 },
{ 102048798144595,string.char(67,111,111,108,32,69,109,111,32,65,117,114,97), 127580418054168, 91102198537347, 77210591876650, 123882301747791, 95117093930538, 131813760681065, 95685828345272 },
{ 23288783307950,string.char(68,105,122,122,121,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 137255148783720, 81054479341998, 105873418863090, 121811306911133, 78281355074909, 117513930450845, 97259493650901 },
{ 279612870347264,string.char(75,97,119,97,105,105,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 84721389105549, 79177448240579, 71632541042172, 105876388602982, 137590039087467, 76215614145945, 92467188495424 },
{ 107449487713343,string.char(82,54,32,65,110,103,101,108,32,87,105,110,103,115), 79466032234245, 138299319826930, 122722513478504, 123793358507075, 75098379256118, 96350191100381, 100038070580099 },
{ 85110921996528,string.char(73,116,45,71,105,114,108,32,68,105,118,97,32,77,111,100,101,108,32,65,110,105,109,32,66,117,110,100,108,101), 80494300854973, 82957409029972, 128240121430408, 125072972081311, 74013738186250, 81815597656897, 82440401004480 },
{ 6968492533072,string.char(67,111,109,112,101,116,101,110,116), 119086399545479, 123321628856372, 121093676807537, 97770192168063, 93095471463296, 97137023603110, 76929827202134 },
{ 111318635278464,string.char(83,112,105,100,101,114,32,72,101,114,111), 98498958085614, 89415990707521, 94788684136734, 122116140777779, 74735559532482, 81017611230610, 91804560705435 },
{ 107350693632269,string.char(239,191,189,239,191,189,32,70,97,105,114,121,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 89083151597904, 70694340291974, 121135476621722, 124909042161301, 87787512377012, 140475232307421, 117829242170557 },
{ 211258251729003,string.char(84,115,117,110,100,101,114,101,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 114875140433256, 108526601061721, 76151663022671, 83923174202568, 94236133353214, 73379865259884, 81953883148936 },
{ 155758204354290,string.char(82,101,97,108,105,115,116,105,99,32,77,97,108,101,32,48,49), 114822686413694, 139525865069063, 130062168996362, 90526784917601, 88683402647046, 94323572155517, 83944244201171 },
{ 25615747990214,string.char(69,110,100,108,101,115,115,32,65,117,114,97,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 72370291265693, 100590428856100, 123264174003256, 79652918388064, 93289495565458, 80570157540129, 88619827935968 },
{ 245160420458794,string.char(91,82,54,93,32,83,111,110,105,99,32,83,112,101,101,100,115,116,101,114,32,65,110,105,109,32,80,97,99,107), 128200188464094, 96353899184850, 83851522234030, 81618354444197, 90715718113183, 98500626075688, 128862881664678 },
{ 145077181619782,string.char(70,117,114,114,121,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 122017321744523, 124732270095091, 78822241982559, 106970102410990, 75892211224822, 101997929337327, 105993144805512 },
{ 169806000893599,string.char(67,117,116,101,32,83,104,121,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 110335965613791, 88354674253567, 108892505937356, 112598844654591, 116336440124933, 108646387674307, 105086806405008 },
{ 230396238988595,string.char(239,191,189,239,191,189,32,68,114,101,97,109,121,32,65,117,114,97,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 103821987445449, 140236552335090, 86404050564430, 122416620253122, 111655584291361, 117378264371555, 87494549118785 },
{ 276498990431337,string.char(74,111,121,102,117,108,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 115993266440776, 139313407695532, 79320869574382, 131930671650999, 131117498790057, 96747830207189, 126095360657826 },
{ 140802726445209,string.char(71,105,114,108,32,66,111,115,115), 93912644503832, 139844094650898, 117605897887039, 140026102623246, 86187846912270, 94548540472517, 122971733814893 },
{ 86270790880748,string.char(239,191,189,239,191,189,239,184,143,32,71,108,105,116,99,104,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 107245650589762, 128190163643941, 121934531969232, 115414916728373, 108245427497486, 95898854434873, 90839362430731 },
{ 113723687671765,string.char(86,105,108,116,114,117,109,105,116,101), 75641026799451, 106987123511072, 82398394563415, 134140909114564, 93363225480628, 125663362682162, 83574442579349 },
{ 164355299748180,string.char(239,191,189,239,191,189,32,68,105,118,97,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 88482554139722, 94256804666698, 79334438988956, 97808091973123, 124469782365525, 109755265573758, 87225003917447 },
{ 94426143364477,string.char(72,97,117,110,116,101,100,32,71,104,111,115,116,32,83,111,117,108), 103573927681025, 122735933423158, 100802507391931, 138692334288616, 130467240352433, 87318358377157, 81668714343553 },
{ 3209000400683,string.char(239,191,189,239,191,189,239,191,189,239,191,189,32,65,110,103,101,108,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 85043173762737, 89201769650144, 138287417917411, 106183812356921, 104600877757491, 104660563121727, 118177131718784 },
{ 79431454004759,string.char(66,111,115,115,121,32,67,111,110,102,105,100,101,110,99,101), 80237907572702, 103950002102007, 97688227121610, 88971196153642, 71037370337331, 137816596837314, 129547215527832 },
{ 238848825749740,string.char(71,104,111,117,108,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 76989014478397, 116022874958585, 112734296077543, 71865240269363, 80620104261118, 133899475603776, 130029645154775 },
{ 15910512001792,string.char(112,117,112,112,121,45,103,105,114,108,32,97,110,105,109,97,116,105,111,110,32,112,97,99,107), 111749180513057, 90443424631782, 78024865892029, 97624693542486, 119524820750332, 73719994122245, 84374727885308 },
{ 77123023523467,string.char(83,119,111,114,100,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107,32,40,82,105,103,104,116,41), 114369154163347, 132189012366468, 87770000067910, 113357698901401, 108519921701378, 112902067866259, 117331900750388 },
{ 219073071095899,string.char(83,101,99,114,101,116,32,65,103,101,110,116,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 92218190346839, 104724130283444, 86044573374946, 90413927505422, 102469518998022, 78168066364210, 120149490597139 },
{ 168323858482919,string.char(72,97,108,108,111,119,101,101,110,32,84,97,108,108,32,77,111,110,115,116,101,114), 115802980358279, 81348372408717, 93642290766073, 87768181719255, 97117757510612, 128478657986830, 86117063258438 },
{ 152581890258482,string.char(78,111,110,99,104,97,108,97,110,116), 87426496981743, 121007634567279, 127973374851693, 88365385749971, 127305386281368, 99405504747797, 72718815132793 },
{ 196159361726685,string.char(69,102,102,111,114,116,108,101,115,115,32,65,117,114,97,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 106390953994044, 111484087971615, 112515971043909, 89547925261998, 135065867268215, 116904502538281, 133821165523889 },
{ 39278497764465,string.char(69,110,100,108,101,115,115,32,76,101,118,105,116,97,116,105,110,103,32,65,117,114,97), 71962531353983, 101401670392323, 98775178030183, 81745729002991, 121128633842201, 120507931847610, 76641694464522 },
{ 244246106823662,string.char(77,111,111,110,119,97,108,107,101,114,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 92710716765283, 114763801999339, 101531926378460, 104533631513747, 70566441403811, 79306475091221, 98563274763262 },
{ 141645144245825,string.char(71,121,97,114,117,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 93285939059101, 134475730682161, 76990605488118, 77117607881594, 87497678199524, 102628481691065, 81891537510998 },
{ 3290671274997,string.char(68,117,109,98,32,68,117,109,98,32,97,110,105,109,97,116,105,111,110,32,112,97,99,107), 105004614594851, 82802187852670, 94065959215233, 95678097589635, 139471194330271, 74141666174470, 128952343229653 },
{ 103600337266099,string.char(75,105,108,108,117,97), 113784126268587, 83436079239604, 93027547767719, 139330690411409, 109287098151511, 102087233204814, 84703542966981 },
{ 210501410435903,string.char(85,110,114,105,118,97,108,101,100,32,83,119,111,114,100,115,109,97,110), 101628587972724, 94592212795048, 112472072663118, 134760817926751, 111518283525040, 140192747449146, 73916168921479 },
{ 262821442676286,string.char(67,117,116,101,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 138939410330874, 99840464746127, 73656936285475, 121638805023018, 103433308815918, 71446019452035, 106328912863928 },
{ 63728567056735,string.char(67,117,116,101,32,83,104,121,32,80,97,99,107), 98637605375705, 127754112524189, 126145942574326, 105662064099352, 121626615485133, 75396216925695, 113753688495484 },
{ 251391123581565,string.char(65,78,73,77,65,84,82,79,78,73,67,32,66,85,78,68,76,69), 101544755943444, 134168450460030, 90846537286775, 93439028227818, 103651923804354, 91870702348480, 90773108715760 },
{ 120481257024256,string.char(67,111,111,108,32,66,111,121), 130315830989545, 137785643057516, 85494649926570, 133898250810070, 121898694120755, 109255428875312, 97318831452205 },
{ 18028500709412,string.char(83,110,97,107,101), 126436582760335, 108545392217814, 135108986609280, 72385458051568, 103279744626670, 103281762091297, 123956653220362 },
{ 141664514953254,string.char(83,105,108,101,110,116,32,78,117,114,115,101), 83503720560704, 124045989288571, 135611588077870, 86489085940301, 134825190604786, 80613329641752, 135801055305466 },
{ 168696849243692,string.char(83,112,105,100,101,114,109,97,110,32,87,101,98,32,83,108,105,110,103,101,114,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 123498494711538, 109264538322789, 71399059326335, 134626738614630, 78726403425717, 97796906157079, 72914380938732 },
{ 73967670574306,string.char(239,191,189,239,191,189,239,184,143,32,77,105,108,105,116,97,114,121,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 114264441201765, 122783976375321, 117276571225301, 92738460397646, 121807925179208, 78517162186590, 104015116392523 },
{ 117879278582279,string.char(82,117,110,119,97,121,32,68,105,118,97), 132433153091310, 138178933183814, 84022133617342, 104950449133842, 105680381958805, 113498101915070, 123982847022337 },
{ 43338041964133,string.char(82,101,116,114,111,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 91334610292493, 113866237794361, 82449559205951, 81975998427267, 131265023902034, 71746696709344, 71819090103948 },
{ 129474238740939,string.char(76,105,116,116,108,101,32,70,114,105,101,110,100,32,65,110,105,109,97,116,105,111,110), 124201191757508, 100578384342496, 80482404506684, 137019482160610, 113331933689305, 76480109863921, 106028120008614 },
{ 54114110658153,string.char(239,191,189,239,191,189,32,72,97,110,100,115,116,97,110,100,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 119718678619654, 120779828540112, 74743923335305, 106738358000265, 140035581518979, 105106152978552, 93107206685726 },
{ 163017378149235,string.char(67,111,111,108,32,66,111,121,32,70,108,111,97,116,105,110,103,32,65,117,114,97), 99104946083968, 138593385056356, 138761087398466, 83805029805026, 130748737873692, 92874125671939, 106250550031017 },
{ 280320546845566,string.char(83,97,110,115,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 116495170219410, 133278416896063, 92706100850185, 111618306974792, 89136705428977, 70913664505920, 75168138059254 },
{ 63244228017921,string.char(82,54,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 107510976901968, 81418689285592, 136312347048580, 78528539300829, 75362328318455, 92902598283305, 74692454929935 },
{ 190021249320677,string.char(72,101,97,100,108,101,115,115,32,65,117,114,97), 134955376393871, 71703551981504, 99509554618141, 135798298648231, 72562819406445, 128311988778489, 84517244080655 },
{ 132004524113589,string.char(239,191,189,239,191,189,83,107,97,116,101,114,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 94910599998393, 136750898054727, 73280209872250, 72883750852520, 80566602616169, 109510347698976, 109468717300474 },
{ 148589613222341,string.char(65,110,105,109,97,108,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 99955302753648, 80777353730960, 98285202393652, 104778622992335, 101869145556635, 125737530068698, 137600244154602 },
{ 154816754181611,string.char(78,111,32,65,110,105,109,97,116,105,111,110,115,32,80,97,99,107), 125181193511446, 98277462212808, 114909951212740, 84385111200080, 123565201644193, 128704251886648, 104642998429173 },
{ 132761028326938,string.char(67,97,115,117,97,108,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 136607681838394, 88766053158819, 78209309053197, 70380397793550, 123732290752173, 88787300450271, 78871479374096 },
{ 219075592036639,string.char(83,104,121,32,68,111,108,108,32,202,154,201,158), 120409233127901, 136018973495139, 140452828857398, 96648456154700, 96027555904188, 79085398750382, 108176320752952 },
{ 165127141291580,string.char(75,97,119,97,105,105,32,66,111,117,110,99,121,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 70555112060391, 120312452429453, 107040972522394, 85980076701165, 110732584497974, 119148235349086, 136546912982911 },
{ 42247150176607,string.char(82,54,32,82,101,105,109,97,103,105,110,101,100), 113781694262261, 102878343237330, 124242847545277, 85143176135829, 82543840872740, 81130977190069, 86967055554090 },
{ 101626628473103,string.char(83,117,114,118,105,118,111,114,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 117955497432173, 84228988694177, 74391569199700, 77213702560699, 117303527707873, 90727684391435, 125001214042734 },
{ 48085018323528,string.char(66,111,117,110,99,121,32,67,117,116,101,32,75,97,119,97,105,105), 134371248846631, 91422662153285, 90921053952424, 134976602822718, 125232738686501, 101450438167306, 138313860455106 },
{ 211603209255940,string.char(239,191,189,239,191,189,32,78,111,110,99,104,97,108,97,110,116,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 120361344309821, 137080061938111, 138817543112482, 101362426464232, 137504551310868, 112352256883383, 121597417409288 },
{ 51189308475249,string.char(83,116,101,118,101,110,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 133253708125525, 84157863686470, 73636886914394, 76594222545001, 96851516499601, 72765107060955, 124364040445553 },
{ 5626295,string.char(70,73,70,65,32,70,111,111,116,98,97,108,108,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 118649383584034, 116562432475955, 85988010084587, 109764146230261, 114350110947576, 93756360672538, 96253251952462 },
{ 174234884993258,string.char(226,153,161,32,107,97,119,97,105,105,32,97,110,105,109,101,32,103,105,114,108,32,112,97,99,107), 118402733965469, 137873085101178, 130849350236070, 94640150317449, 125678285855898, 72639448259486, 78062527010701 },
{ 130256743410606,string.char(65,117,114,97,32,70,108,111,97,116,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 77944556069734, 118783698771757, 92373181998670, 128455215897480, 129911095680365, 115980070775346, 83505514580679 },
{ 112431871100891,string.char(239,191,189,239,191,189,32,83,97,115,115,121,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107,32,226,156,168), 129626196680285, 96410564425021, 75896195178885, 114840474009020, 80824008450652, 136213738352357, 124254242876616 },
{ 31650195771989,string.char(67,117,116,101,32,73,109,112,97,116,105,101,110,116,32,84,115,117,110,100,101,114,101), 79632663995121, 100069639645127, 124751284064591, 140066430486591, 95491270698008, 88059525289085, 88912476295478 },
{ 236876291974067,string.char(68,101,116,101,99,116,105,118,101,32,47,32,77,97,102,105,97,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 139109279036888, 130318375466007, 100035784099110, 130915975817889, 130448881461319, 129001808884122, 137198611187499 },
{ 67246619830311,string.char(83,112,105,100,101,114,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 112466965724680, 108424853644232, 75841551285120, 100706347195538, 75241830583351, 86343110170387, 124788696828521 },
{ 153762937122364,string.char(75,97,119,97,105,105,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107,32,86,49), 139284113672221, 122146776836501, 114307772322044, 121481289336077, 119438473051601, 98018800506974, 90908339375985 },
{ 133029085353625,string.char(68,105,118,97,32,69,102,102,111,114,116,108,101,115,115,32,65,117,114,97,32,70,108,111,97,116,32,80,97,99,107), 136462080938426, 85942415677641, 104659090959141, 80104657332873, 133638268834647, 113339705060994, 77349285629064 },
{ 103419279227461,string.char(80,114,105,110,99,101,115,115), 112247064065622, 126906500970658, 102952751730257, 104343764860688, 95402289660381, 135831725136212, 108376021237535 },
{ 36026146779603,string.char(83,111,99,105,97,108,32,65,110,120,105,101,116,121), 121663093701363, 120883274762528, 109934846900463, 94778609167745, 92704985508053, 82905220322821, 121066908207013 },
{ 155148535503082,string.char(97,110,103,101,108,105,99,32,100,97,105,110,116,121,32,102,108,111,97,116,105,110,103,32,97,110,105,109,97,116,105,111,110,32,112,97,99,107), 122087124095413, 133979848959140, 138857433670797, 130915558062129, 103456136433561, 110517842631547, 81357557460188 },
{ 142368140565439,string.char(72,97,116,115,117,110,101,32,77,105,107,117,32,86,79,67,65,76,79,73,68), 77394702918889, 115076409379509, 132703832811724, 104800719202256, 79679642704558, 124311346839421, 123121833221754 },
{ 331465,string.char(66,111,108,100,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 16744209868, 16744219182, 16744214662, 16744212581, 16744207822, 16744204409, 16744217055 },
{ 1036896,string.char(68,101,102,97,117,108,116,32,65,110,105,109,97,116,105,111,110,32,82,101,116,97,114,103,101,116,105,110,103), 97469447878281, 138584736068420, 104556634816668, 102957313714134, 112811597738377, 92204703529731, 89611570900463 },
{ 932296,string.char(78,70,76,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 101094325978637, 120071305586627, 84823630062362, 140600227095432, 123307994439772, 122757794615785, 136750772888868 },
{ 1036897,string.char(80,105,114,97,116,101,32,65,110,105,109,97,116,105,111,110,32,82,101,116,97,114,103,101,116,105,110,103), 93961142580011, 131469949729016, 129218825505545, 102669705555030, 118846833823973, 106906206764899, 92456594622012 },
}
local _0x7D6A = {
{ 346718828628,string.char(82,54,32,83,111,102,116,105,101,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 102651918060342, 92161818406039, 118095235880083, 118115709618417, 92081032014414, 118521737972592, 123622969112890 },
{ 240013541704767,string.char(66,117,114,116,111,110,101,115,113,117,101,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 121987160492958, 133859183088488, 123267566647443, 113353475841465, 136850071141658, 73109666815168, 132617060260018 },
{ 81295854326892,string.char(226,156,168,32,65,117,114,97,32,40,70,108,111,97,116,105,110,103,41), 119126902591378, 78093568415363, 127441950006817, 125716954489552, 130109078714595, 125145865285401, 72625909388144 },
{ 64359359118780,string.char(77,97,116,99,104,105,110,103,32,71,111,106,111,32,38,32,71,101,116,111,32,45,32,71,101,116,111), 74700203716777, 139575967445620, 108430565380083, 70865735021615, 89516682191923, 125706692592941, 101366581640976 },
{ 210813929860435,string.char(91,77,71,83,86,93,32,86,101,110,111,109,32,83,110,97,107,101,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 92845210569291, 110268416056059, 119407040328053, 71368900313773, 91470925932898, 118861344282603, 74485633139255 },
{ 22999254604507,string.char(67,108,101,97,110,32,71,105,114,108), 99617445188896, 98432516102509, 75417410614580, 111467153412202, 101496693975399, 71306092771466, 97617322069183 },
{ 81889112216202,string.char(70,97,105,114,121,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 126500995514436, 111347977822579, 87861850888726, 72177014322054, 83015219645885, 128525453879414, 123969942041709 },
{ 215163851706936,string.char(84,97,108,108,32,83,99,97,114,121,32,67,114,101,97,116,117,114,101), 99930491676650, 114946964023598, 112706676171803, 132823341775268, 100611329530991, 82075092072041, 140647468200484 },
{ 195619017160446,string.char(239,191,189,239,191,189,32,78,105,110,106,97,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 107377621660534, 132035242186767, 71990522773224, 118835903505201, 97302677062076, 122413280106175, 109349550251797 },
{ 69255288290150,string.char(83,105,108,118,101,114,32,83,117,114,102,101,114,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 102553531089218, 128481002419055, 73410262711109, 136907314514233, 133023549971499, 114638785955574, 81100272666954 },
{ 29854653487192,string.char(66,101,115,116,32,74,111,116,97,114,111,32,75,117,106,111,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107,32,91,74,79,74,79,93), 122303709528974, 128700191590653, 80885848966338, 131831849983542, 136236486473376, 118039419450962, 95414956629341 },
{ 100406542283134,string.char(239,191,189,239,191,189,32,77,101,110,97,99,105,110,103,32,70,108,111,97,116,105,110,103,32,86,105,108,116,114,117,109,105,116,101,32,80,97,99,107,32,40,73,110,118,105,110,99,105,98,108,101,41), 127794126361401, 140377650140124, 94357470013234, 133844541164572, 96782647421445, 120376221505068, 125432791579005 },
{ 178030229597008,string.char(70,97,107,101,32,76,97,103,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 131268753169058, 100534648341456, 128135398672253, 117761196710546, 72426380380145, 136633822449776, 116038868377383 },
{ 168780946552846,string.char(68,111,103,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 86568145958023, 82759748724300, 90568510415059, 103791706490551, 82477993292508, 139728378883263, 75585586350309 },
{ 90233089251471,string.char(72,97,108,108,111,119,101,101,110,32,67,117,116,101,32,83,108,101,101,112,121,32,90,111,109,98,105,101), 110042753242042, 121957019198248, 91802592336625, 130302717838156, 133552486102001, 120615385853156, 92975795432744 },
{ 130512117821725,string.char(67,117,116,101,32,83,104,121,32,68,111,108,108,32,84,119,105,114,108,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 126232044071474, 110114682207503, 139881581082270, 118205975863094, 102359751134377, 103564718944086, 122682073438591 },
{ 103654832647918,string.char(65,108,109,111,110,100,32,69,121,101,32,45,32,85,109,97,32,77,117,115,117,109,101), 123563916862517, 128069645009648, 74477024273867, 88963980305022, 136243234419016, 88871017266742, 128869981832315 },
{ 58114753443214,string.char(80,105,114,97,116,101,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 105097357784138, 101907866742265, 71523544324648, 137650189926028, 120311358635815, 75782889213241, 86531929072722 },
{ 50557425118268,string.char(82,54,32,67,114,101,101,112,101,114,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 75523909326842, 77120301846359, 139352162278905, 95617922141272, 87252677843032, 83248820150680, 116164306507083 },
{ 76869663076404,string.char(72,105,100,105,110,103,32,73,110,32,65,32,84,114,97,115,104,99,97,110,32,87,105,116,104,32,65,99,99,101,115,115,111,114,121,33), 122563566229229, 102709129046892, 127605149031726, 77362821791514, 96308087510226, 120616719984435, 100462230823521 },
{ 72788764355691,string.char(99,117,116,101,32,97,110,105,109,101,32,103,105,114,108,32,115,119,97,121,32,107,97,119,97,105,105,32,112,97,99,107), 119037038589162, 83858445465753, 121242824693191, 87446875569105, 76718103382741, 83829747186223, 101814079044625 },
{ 203884520960460,string.char(71,111,111,102,98,97,108,108,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 71882784891671, 70634869984615, 105939529889727, 78011340545782, 105416600557424, 80428760844405, 75820848971233 },
{ 7458997449692,string.char(239,191,189,239,191,189,32,78,111,110,99,104,97,108,97,110,116,32,76,97,105,100,32,66,97,99,107,32,65,117,114,97,32,80,97,99,107,32,40,70,108,111,97,116,105,110,103,41), 100151586261686, 137425296181056, 110577583842277, 113235349732772, 111696172442428, 92757030112663, 88307134494773 },
{ 6535623688584,string.char(226,156,168,32,67,117,116,101,32,80,111,115,101,32,76,97,121,105,110,103,32,65,117,114,97,32,80,97,99,107,32,40,70,108,111,97,116,105,110,103,41), 117197173691073, 71706288099375, 97216931005942, 83712976418916, 71969867726175, 132522733385827, 98935053237666 },
{ 77892115233294,string.char(71,84,65,32,67,74,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107,32,226,173,144,79,82,73,71,73,78,65,76,226,173,144), 118623886392486, 95860024032857, 93323445795978, 97713278193617, 93770439278759, 75379729668530, 118916799762866 },
{ 252484030352496,string.char(239,191,189,239,191,189,239,191,189,239,191,189,32,75,97,119,97,105,105,32,83,97,105,108,111,114,32,77,111,111,110,32,70,108,121,105,110,103,32,65,117,114,97,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 136522740838112, 81542090561099, 97885968384749, 95712834264331, 123275625279184, 93450667546879, 123847253229797 },
{ 28201483276338,string.char(69,109,111,32,65,117,114,97,32,70,108,111,97,116,105,110,103,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 78645276679006, 77299242052377, 101636604008106, 86676316711548, 114787855055183, 110849943940175, 96406779847899 },
{ 103135883866153,string.char(67,108,97,115,115,105,99,32,86,97,109,112,105,114,101,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 127499925377464, 72670516117084, 136172783186593, 110718836088108, 100009506792121, 130847482819362, 87911754624645 },
{ 25704340036948,string.char(67,104,105,108,108,32,71,117,121,32,65,117,114,97,32,70,97,114,109,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 85525896071224, 100625294782222, 121498618544582, 106575367964532, 122778307875305, 89618474667266, 130944785287900 },
{ 96298932601360,string.char(67,117,116,101,32,65,117,114,97,32,70,108,121,105,110,103,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107,32,239,191,189,239,191,189,239,191,189,239,191,189), 85025973989178, 121193171893051, 76246333533136, 122673407386115, 127146126385914, 127693718415398, 93706778297407 },
{ 192543446110579,string.char(67,114,97,119,108,105,110,103,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 137806631269292, 91057479836882, 128895867740513, 131780669588937, 89162380786728, 78148016528629, 130058926615484 },
{ 214466134093264,string.char(67,111,111,108,32,71,117,121,32,65,117,114,97,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 85267879188594, 83255863654928, 114493563888145, 73988126833546, 118740348379850, 110479971524890, 118130030155282 },
{ 33141150609984,string.char(67,104,101,101,114,102,117,108,32,67,97,114,116,111,111,110,121,32,65,110,105,109,97,116,105,111,110,32,66,117,110,100,108,101,32,239,191,189,239,191,189), 101375057394281, 103397623981092, 124122866075020, 91193753828092, 110370932833569, 73610349065218, 114846464401954 },
{ 170780990658194,string.char(76,97,122,121,32,70,108,111,97,116,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 93999503659421, 105561835903946, 97910588621921, 83480876088136, 107196905208347, 95678919217249, 106777676300109 },
{ 121974117115613,string.char(84,104,101,32,78,117,114,115,101,32,45,32,68,101,97,100,32,98,121,32,68,97,121,108,105,103,104,116), 73071046669341, 138823968011219, 113549159019291, 99010959763319, 102327644380473, 107897900282867, 104621075264639 },
{ 100631627459825,string.char(71,104,111,115,116,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 135055120827684, 76189697399044, 115080665168960, 133991032899590, 78097327112928, 97551824780414, 117191731184382 },
{ 219242833772205,string.char(77,105,110,105,32,84,97,110,107,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 96055421212453, 122057768211563, 85666217062452, 92501402738820, 87930704892851, 133227304522459, 90968985949634 },
{ 3740276104199,string.char(83,104,121,32,67,117,116,101,32,91,51,46,48,93), 138297485420191, 89464681685474, 82350105174729, 130652682437363, 128173484101534, 112338515646914, 133557217215546 },
{ 96822070451129,string.char(91,77,71,83,51,32,68,69,76,84,65,93,32,78,32,83,110,97,107,101,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 116373240353239, 137212837402810, 124985168992629, 108946478789549, 96340226362936, 109624688326490, 125815766800638 },
{ 130712556441073,string.char(91,77,71,83,51,93,32,78,32,83,110,97,107,101,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 90287538630017, 101101594771970, 130026853919102, 83384706262856, 105237567714590, 126529248768011, 124826489378334 },
{ 244495263660190,string.char(77,111,116,111,114,32,98,105,107,101), 98953261541373, 86749265272940, 127216367675398, 94724585321015, 119146909757244, 109312692839021, 125458328923962 },
{ 2554700661078,string.char(71,111,100,32,69,110,100,108,101,115,115,32,65,117,114,97), 140257972350930, 75803431179392, 124643432505022, 87901598630163, 119550784755766, 105949776856550, 110409614440547 },
{ 260460749130860,string.char(67,117,116,101,32,66,97,98,121,32,71,105,114,108), 131228697811112, 108442900101114, 80641134642012, 85859964219434, 86652090148766, 105154513381753, 113175498589951 },
{ 29541990297544,string.char(67,117,116,101,32,90,111,109,98,105,101,32,71,105,114,108), 95875054425935, 82250217733202, 101261501159015, 81094043127936, 74503562351686, 129503832468030, 112045237330625 },
{ 139980616397340,string.char(67,117,116,101,32,65,110,105,109,101,32,65,99,99,117,114,97,116,101,32,71,105,114,108,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 123361993725314, 98900851613800, 134514296943852, 77105092795234, 126426621974829, 106501993251536, 103199218311663 },
{ 237142673233282,string.char(84,101,120,97,115,32,67,111,119,98,111,121), 137530343766636, 133034402843265, 112949286915127, 119966406173769, 136130690287220, 93710047260909, 108804864887472 },
{ 223992941593945,string.char(65,117,114,97,32,72,101,97,100,108,101,115,115,32,72,111,118,101,114,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107,32,239,191,189,239,191,189,239,191,189,239,191,189), 119883817735679, 107877258428987, 95263315997959, 139442111541178, 113624742007635, 73222487330469, 101229651249319 },
{ 109854023066610,string.char(67,97,116,45,98,111,121,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 85163331300454, 72342918281987, 93765468680106, 79926571638154, 133759466033378, 128774319815820, 81206256359713 },
{ 101809116064067,string.char(74,111,108,108,121,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 86822978607368, 137660640858861, 77536436651913, 97437126647537, 110413287038667, 87882735676493, 88596944586212 },
{ 152306106818054,string.char(67,97,116,45,71,105,114,108,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 97317100261517, 116870418497306, 119510100333782, 122910742742130, 118747804995604, 92496064469025, 81309395375420 },
{ 269761199979151,string.char(89,117,106,105,32,74,117,109,112,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107,32,86,50), 90096455782289, 74405958592823, 135224407517123, 73912943159582, 132179141594611, 75527654293493, 120027590582238 },
{ 167942519332380,string.char(67,117,116,101,32,70,114,111,103,32,239,191,189,239,191,189), 107853639072984, 110447391478976, 94204782170994, 139391685278077, 110454726325518, 78952577481681, 107955532457303 },
{ 206275572257570,string.char(54,55,32,65,117,114,97,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 130271944198901, 118085427171298, 73723415834655, 100467691343122, 78316555374950, 78747622689419, 89061332430573 },
{ 274284729014181,string.char(73,110,106,117,114,101,100,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 104477657447895, 96419109016980, 78542544704586, 136958917667806, 98056993478207, 76271441572688, 134467497229442 },
{ 207559180464658,string.char(67,117,116,101,32,80,108,97,121,105,110,103,32,65,114,111,117,110,100), 89432596623410, 118070195741831, 131511660973957, 84633211136675, 70669548271771, 118444670723715, 101476083423992 },
{ 62852628400321,string.char(67,117,116,101,32,78,101,101,100,121,32,66,111,117,110,99,105,110,103), 72067797659191, 124972111409414, 92079481922699, 92736583114162, 115301125593866, 96488436493859, 125098596917753 },
{ 194237466511735,string.char(84,104,101,32,83,104,97,112,101,32,77,105,99,104,97,101,108,32,77,101,121,101,114,115,32,45,32,68,101,97,100,32,98,121,32,68,97,121,108,105,103,104,116), 70860596388375, 90130092120122, 98148572059842, 126969703678648, 77839379096699, 131025886592960, 78589734666595 },
{ 260331541590062,string.char(67,111,111,108,32,66,111,121,32,80,97,99,107), 80171866305021, 139930443270979, 94305659214661, 111286671182613, 117689288459932, 82679823117260, 122623311785376 },
{ 249705331606154,string.char(72,101,97,100,108,101,115,115,32,72,111,114,115,101,32,82,105,100,101,114,32,72,97,108,108,111,119,101,101,110,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 106989230981555, 140075290450368, 88613046132234, 105644717957223, 125992853799091, 103555796630005, 99792641790749 },
{ 219196833552012,string.char(70,108,111,97,116,105,110,103,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 113858313416489, 88471654472148, 132857529438108, 83578339581624, 71535051799354, 93321075431546, 87949112447276 },
{ 96218112462687,string.char(73,110,106,117,114,101,100,32,115,117,114,118,105,118,111,114,32,97,110,105,109,97,116,105,111,110,32,112,97,99,107), 91004093524361, 121424887124246, 90081077563840, 90522226340402, 88359527582669, 109698092826334, 139551965568218 },
{ 157068024753326,string.char(67,117,116,101,32,75,97,119,97,105,105,32,71,105,114,108), 78294398529281, 132502249513547, 109496577835577, 123630463152824, 127822567000511, 130676104756900, 76274836988148 },
{ 78316657350968,string.char(67,117,116,101,32,75,97,119,97,105,105,32,68,111,108,108), 95933625306405, 96186536617838, 129394133110246, 94830488207575, 137395179912796, 91497237628692, 79756759306847 },
{ 149879406785473,string.char(82,54,32,83,104,121,32,89,97,110,100,101,114,101,32,68,111,108,108), 139749857583281, 138029921045597, 102476724311834, 89272416526830, 87921948176693, 137165561932341, 127088533535788 },
{ 148489958236762,string.char(72,101,97,118,121,32,71,111,108,101,109,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 135701630284804, 84428266027481, 121135597921003, 109986699026128, 90414753106749, 118065750275214, 80661069027206 },
{ 210039970254554,string.char(66,97,108,108,101,114,105,110,97,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 125515675842892, 132953626083118, 124895093738174, 128128077709320, 120945680003606, 85938558644551, 80258459486435 },
{ 219272004092971,string.char(83,119,105,109,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 82965462235821, 100542085819897, 122994413708703, 136041073174325, 99526810377092, 75690732146878, 125896604636794 },
{ 78201426027104,string.char(77,105,99,104,97,101,108,32,74,97,99,107,115,111,110,32,80,97,99,107), 139737257808318, 119261195846349, 103928836905414, 97498268058458, 70794549833186, 129875830849484, 104184039162344 },
{ 215390157024702,string.char(83,112,105,110,110,105,110,103,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 88578995084665, 75526479927182, 88715943305890, 93766625689040, 134679252211114, 87460654630692, 71204360453355 },
{ 45181992921284,string.char(77,65,71,69,32,65,78,73,77,65,84,73,79,78), 95412524556432, 135715316604799, 86843251007732, 94267079287244, 114202488937962, 77815115545843, 83803952450950 },
{ 235864691929345,string.char(115,108,101,101,112,121,32,99,117,116,101,32,107,97,119,97,105,105,32,97,110,105,109,97,116,105,111,110,32,112,97,99,107), 99885596122948, 137750032328715, 136224663594149, 127451227519129, 107326540977737, 84170363870797, 98317063179329 },
{ 279287319590676,string.char(67,111,111,108,32,66,111,121,32,65,117,114,97,32,70,108,111,97,116,105,110,103,32,83,105,116,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 127452678420147, 135999443549171, 112986026358295, 118964234540904, 90136671427215, 118123216253768, 70589650329218 },
{ 59336316790104,string.char(67,117,116,101,32,77,111,100,101,108,32,71,105,114,108), 72763656715596, 103577782244832, 79717533616833, 92838424262999, 118885163492445, 74812525561245, 81640929232810 },
{ 191308001565914,string.char(67,117,116,101,32,71,121,97,114,117,32,74,111,121,111,117,115,32,71,105,114,108), 116970330059411, 133645960318815, 128053582126246, 103447792656149, 91886663967396, 90659398203981, 101563830896712 },
{ 144390297632617,string.char(67,117,116,101,32,74,111,121,111,117,115,32,68,111,108,108), 100901492270582, 105293968086403, 125208376396180, 84330494327869, 84709100954434, 129177004292851, 123971090817524 },
{ 240545187485207,string.char(67,117,116,101,32,74,111,121,111,117,115,32,83,119,97,121,105,110,103,32,71,105,114,108,32,51,46,48), 102879169205038, 102113239789768, 110270849715256, 121922639458716, 70417725551265, 72625186253766, 115627618692151 },
{ 235748691244472,string.char(82,101,97,108,105,115,116,105,99,32,90,111,109,98,105,101,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 97271539683055, 121977418368927, 118240305404123, 111580617219204, 102808826006248, 140656058165576, 95786068741018 },
{ 271750463772104,string.char(67,117,116,101,32,66,97,98,121), 73421603134927, 104701560759467, 139802219099705, 123234370489036, 118651607358840, 92478876494158, 136541591428167 },
{ 167555137794755,string.char(67,117,116,101,32,83,105,116,32,70,108,111,97,116,105,110,103), 104336043212491, 108763749289460, 75398364567441, 83964382908600, 81002225217932, 140167547508427, 111234293122503 },
{ 238434413254101,string.char(67,117,116,101,32,83,104,121,32,68,111,108,108), 81132802911146, 121942336973643, 71528806562821, 92645236363717, 129254372210059, 84246439515369, 120612365648651 },
{ 105197486240045,string.char(83,110,101,97,107,121,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 74577925898509, 94737333218733, 97913326476428, 82775460888591, 100054440300149, 123355070533168, 119231509302601 },
{ 107535279657732,string.char(67,111,110,102,105,100,101,110,116,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 80338861930712, 122564973169214, 133724458565522, 112164600756795, 80626819732131, 130442757525478, 77641535635641 },
{ 4645180709379,string.char(70,117,108,108,32,79,102,32,74,111,121,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 112697198445949, 120412109522349, 121696438773017, 80146665499399, 71067597691974, 74279421611048, 105330739520152 },
{ 8793479539641,string.char(77,77,50,32,70,97,107,101,32,68,101,97,100,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 136230440471372, 138424891541704, 138958313587847, 140621572670253, 105500230417230, 112337412231852, 81567621205747 },
{ 106044231344969,string.char(67,117,116,101,32,83,104,121,32,71,105,114,108,32,80,97,99,107), 106705278836440, 101760042345605, 138053854205135, 78059067540085, 99363563273607, 119452852001390, 119004313922987 },
{ 54843787624853,string.char(83,117,112,101,114,104,101,114,111,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 133885837245735, 100903067741657, 89150861190550, 90526719969682, 135808067855041, 100819872682736, 133510432675559 },
{ 238021101976189,string.char(66,111,114,101,100,65,110,105,109,97,116,105,111,110,80,97,99,107), 81108258054128, 118225959186464, 106303901972505, 96584218892392, 133997591845887, 131852032155353, 77738785476558 },
{ 104270348457345,string.char(84,104,101,32,69,97,114,116,104,98,111,117,110,100,32,72,101,114,111), 115586654010215, 99630725572520, 105937528135441, 127499818514448, 84042957473345, 127674878647760, 93967450827531 },
{ 194092575833989,string.char(77,97,116,99,104,105,110,103,32,71,111,106,111,32,38,32,71,101,116,111,32,45,32,71,111,106,111), 116143264571425, 113393685850920, 100348565164106, 122942170308359, 110411574657654, 88370911565785, 126439838561769 },
{ 80518893637907,string.char(239,191,189,239,191,189,32,90,69,78,32,70,76,79,65,84,32,77,79,84,73,79,78,32,80,65,67,75), 137462958179305, 78531395021175, 135436716455054, 82322037475595, 78124909364784, 116668243662787, 100963601832351 },
{ 264763278477816,string.char(99,111,109,112,108,101,116,101,108,121,32,115,116,105,102,102), 110531944855263, 137403770390683, 97869145096827, 118667339556946, 113995959639869, 81593934396367, 106780688408107 },
{ 169012738981402,string.char(67,117,116,101,32,67,104,105,98,105,32,83,97,115,115,121), 77314984584545, 82006175599281, 137302467139344, 101006398429994, 114824427236668, 117239002744710, 132658936694612 },
{ 261672699599456,string.char(72,97,108,108,111,119,101,101,110,32,67,117,116,101,32,90,111,109,98,105,101,32,78,117,114,115,101), 109341777923994, 108334209793925, 118686861288812, 90345010338893, 120665590312864, 71676809013968, 106417050771200 },
{ 128523558594849,string.char(72,111,111,100,32,87,97,108,107,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 122506696113672, 104741391551671, 128584977482633, 81740095053841, 126990651625080, 97132076459823, 103913105635251 },
{ 40188790057873,string.char(80,111,115,115,101,115,115,101,100,32,67,114,97,119,108,105,110,103,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 116915241391805, 128750743583051, 125166469849476, 108253402973768, 78298842551143, 122303538944449, 135737244509911 },
{ 145338216183705,string.char(70,108,121,105,110,103,32,65,117,114,97,32,70,97,114,109,101,114,32,65,110,105,109,97,116,105,111,110,32,66,117,110,100,108,101), 77791651089479, 129363373168599, 123081436536094, 96068867309714, 134008951696821, 125651485178519, 133878107477099 },
{ 8937001401294,string.char(86,97,109,112,105,114,101,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107,32,239,191,189,239,191,189,239,191,189,239,191,189,239,191,189,239,191,189), 84752569530713, 80337281422433, 90507664248957, 111715484252761, 135515490952874, 71447775349973, 118575291063270 },
{ 259113896317680,string.char(69,109,111,32,70,108,121,105,110,103,32,65,117,114,97,32,70,97,114,109,105,110,103,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 91230300801706, 127037824940169, 116668725669697, 71015392129909, 127080802411319, 101828605672931, 134726585265124 },
{ 58008550856515,string.char(239,191,189,239,191,189,32,77,77,50,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107,32,239,191,189,239,191,189,239,191,189,239,191,189), 96385977083778, 72197041576015, 94964320083399, 101861348010348, 109522809200301, 100577223872149, 108766346107869 },
{ 218363945814573,string.char(77,111,111,110,119,97,108,107,101,114,32,70,105,108,109,32,80,97,99,107), 114502908879897, 109402978501307, 77965013441865, 83819464193193, 119645343410403, 84734891638618, 95817832098000 },
{ 37942358904819,string.char(83,117,114,118,105,118,111,114,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 135674002690538, 127484714354536, 82854940462817, 75244591963793, 77043813788444, 123518287072605, 139982966829837 },
{ 226333114683103,string.char(75,97,119,97,105,105,32,66,111,117,110,99,121,32,78,101,114,100,121,32,83,99,104,111,111,108,32,71,105,114,108), 135942776905421, 84995896833734, 74139952254854, 73526026144499, 118035587107014, 75788386725132, 126762092773955 },
{ 15279952972706,string.char(75,97,119,97,105,105,32,67,117,116,101,32,87,104,105,109,115,121,32,71,105,114,108), 108149127341810, 128484963183463, 79118538240281, 93238127126247, 82280767407792, 113077878759887, 108679620828890 },
{ 196670956226483,string.char(67,117,116,101,32,83,104,121,32,80,111,117,116,121,32,71,105,114,108), 119528600250052, 109185231917244, 112662974444844, 127781842059460, 133015054391336, 92908919868974, 97958948335858 },
{ 45823831309697,string.char(67,117,116,101,32,83,108,101,101,112,121,32,84,105,114,101,100,32,84,115,117,110,100,101,114,101), 85415795044178, 108933493223197, 79389984856904, 132060352425993, 135293602487463, 81929470367318, 130923042546110 },
{ 183415039546818,string.char(67,117,116,101,32,83,116,121,108,105,115,104,32,71,105,114,108,121,32,68,105,118,97), 113865042653446, 106692867109053, 104749767253371, 99672303381341, 94154759028013, 107613417092267, 119119951845178 },
{ 129980707435676,string.char(66,111,114,101,100,32,83,97,115,115,121,32,77,101,97,110,32,71,105,114,108), 136601483414758, 95607213703404, 79760282991190, 124394717662756, 94041168358558, 81900172692959, 124662363089270 },
{ 165106603811960,string.char(91,82,54,93,32,68,97,121,100,114,101,97,109,101,114,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 111948164040561, 124344951085066, 75303574652811, 93312341190716, 76151318810184, 113834028623165, 135303950851589 },
{ 122125716415607,string.char(84,97,108,108,32,83,108,101,110,100,101,114,109,97,110,32,65,110,105,109,97,116,105,111,110,115), 122806859329839, 99448802469406, 126104026007446, 122286127706042, 115783359270546, 91449271168772, 93488770319183 },
{ 254454190905327,string.char(70,97,117,115,116,32,45,32,76,105,109,98,117,115,32,67,111,109,112,97,110,121), 102377305607045, 73259516607307, 113349182721150, 139840357507302, 85307926752778, 139997270770450, 136836770486718 },
{ 231583091863184,string.char(82,105,118,97,108,105,110,103,32,83,112,105,100,101,114,32,72,101,114,111,32,118,50), 136668077102077, 123024274599820, 118367736336496, 103208327885734, 107304583269426, 93325873731329, 110194681731643 },
{ 266825133703741,string.char(86,49,32,67,108,97,115,104,32,77,111,100,101,32,85,76,84,82,65,75,73,76,76,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 84967279390950, 103883079468882, 93337492116743, 118554613342071, 89075107205983, 86307584737703, 121602442665611 },
{ 64842196438423,string.char(80,115,121,99,104,111), 118086017761082, 131337854476238, 109585056712932, 125432016616771, 138142200761786, 89172105619917, 97897452540515 },
{ 237887942496224,string.char(67,117,116,101,32,75,97,119,97,105,105,32,67,97,116,32,71,105,114,108), 86892423945466, 119692089648088, 95411795354662, 77106544942843, 96707673993441, 116536110277892, 118383577362271 },
{ 281213457343854,string.char(67,117,116,101,32,80,117,112,112,121,32,71,105,114,108,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 81200193729952, 140090954970456, 124282040126811, 102754820468722, 78237372835821, 115908996311928, 83850064158159 },
{ 146631584295776,string.char(78,105,110,106,97,32,65,110,105,109,97,116,105,111,110,32,80,97,99,107), 139025265615945, 120181245834586, 119341465624661, 115984803005019, 111085341389942, 120861164738915, 109470126430376 },
{ 149613246755627,string.char(239,191,189,239,191,189,32,84,104,101,114,105,97,110,32,70,117,114,114,121), 94925478547755, 111277037711705, 113440665495248, 117902437286612, 80010379317159, 81758690520669, 105439957980795 },
{ 5692212788525,string.char(78,80,67,32,65,118,97,116,97,114,32,65,110,105,109,97,116,105,111,110,32,66,117,110,100,108,101), 105434767037086, 114420021859694, 113750415532506, 88350251537308, 126339090911461, 87133513702806, 104737387655624 },
{ 164628585885005,string.char(82,54,32,76,101,103,111,32,40,70,97,107,101,32,107,110,101,101,41), 127140437889594, 129170298227145, 125539089354894, 71683361004944, 88374714784532, 99106880992526, 100194596945796 },
{ 200493094373809,string.char(83,105,116,116,105,110,103,32,82,54,32,65,110,105,109,97,116,105,111,110), 99590209409204, 127441052413544, 103026531476968, 132911004994525, 122966638146164, 114159194482746, 112571093788907 },
}
local _0x21BD = {
{ 3360689775,string.char(83,97,108,117,116,101), false },
{ 3360692915,string.char(84,105,108,116), false },
{ 5915779043,string.char(65,112,112,108,97,117,100), false },
{ 3576968026,string.char(83,104,114,117,103), false },
{ 3360686498,string.char(83,116,97,100,105,117,109), false },
{ 3576686446,string.char(72,101,108,108,111), false },
{ 3576823880,string.char(80,111,105,110,116,50), false },
{ 3716636630,string.char(77,111,110,107,101,121), false },
{ 4646306583,string.char(67,117,114,116,115,121), false },
{ 4849499887,string.char(72,97,112,112,121), false },
{ 3823158750,string.char(71,111,100,108,105,107,101), false },
{ 14353423348,string.char(66,97,98,121,32,81,117,101,101,110,32,45,32,66,111,117,110,99,121,32,84,119,105,114,108), false },
{ 4689362868,string.char(83,108,101,101,112), false },
{ 3576717965,string.char(83,104,121), false },
{ 14353421343,string.char(66,97,98,121,32,81,117,101,101,110,32,45,32,70,97,99,101,32,70,114,97,109,101), false },
{ 5917570207,string.char(70,108,111,115,115,32,68,97,110,99,101), false },
{ 5104377791,string.char(72,101,114,111,32,76,97,110,100,105,110,103), false },
{ 15610015346,string.char(89,117,110,103,98,108,117,100,32,72,97,112,112,105,101,114,32,74,117,109,112), false },
{ 7466046574,string.char(81,117,105,101,116,32,87,97,118,101,115), false },
{ 5230661597,string.char(66,111,114,101,100), false },
{ 14353425085,string.char(66,97,98,121,32,81,117,101,101,110,32,45,32,83,116,114,117,116), false },
{ 5915776835,string.char(72,105,103,104,32,87,97,118,101), false },
{ 12507097350,string.char(65,108,111,32,89,111,103,97,32,80,111,115,101,32,45,32,76,111,116,117,115,32,80,111,115,105,116,105,111,110), false },
{ 4940597758,string.char(67,111,119,101,114), false },
{ 4272484885,string.char(66,97,98,121,32,68,97,110,99,101), false },
{ 101573394483995,string.char(69,102,102,111,114,116,108,101,115,115,32,65,117,114,97,32,80,111,115,101), false },
{ 76361248833307,string.char(71,111,100,108,121,32,65,117,114,97,32,102,108,121,32,112,111,115,101,32,105,100,108,101), false },
{ 3994127840,string.char(67,101,108,101,98,114,97,116,101), false },
{ 132384701706046,string.char(239,191,189,239,191,189,77,77,50,32,70,97,107,101,32,68,101,97,100), false },
{ 10214418283,string.char(86,32,80,111,115,101,32,45,32,84,111,109,109,121,32,72,105,108,102,105,103,101,114), false },
{ 104131847054135,string.char(74,97,109,97,108,32,66,114,97,122,105,108,32,71,114,111,111,118,101), true },
{ 16553249658,string.char(77,97,101,32,83,116,101,112,104,101,110,115,32,45,32,80,105,97,110,111,32,72,97,110,100,115), false },
{ 10214406616,string.char(70,114,111,115,116,121,32,70,108,97,105,114,32,45,32,84,111,109,109,121,32,72,105,108,102,105,103,101,114), false },
{ 139021427684680,string.char(75,65,84,83,69,89,69,32,45,32,84,111,117,99,104), false },
{ 4849502101,string.char(83,97,100), false },
{ 4102315500,string.char(72,97,104,97), false },
{ 15698511500,string.char(67,117,99,111,32,45,32,76,101,118,105,116,97,116,101), false },
{ 106708015414624,string.char(69,110,100,108,101,115,115,32,65,117,114,97,32,70,108,111,97,116,105,110,103), false },
{ 3762654854,string.char(71,114,101,97,116,101,115,116), false },
{ 98603994713783,string.char(82,97,116,32,68,97,110,99,101), false },
{ 15554010118,string.char(79,108,105,118,105,97,32,82,111,100,114,105,103,111,32,72,101,97,100,32,66,111,112), false },
{ 93511411593120,string.char(47,101,32,102,108,121), false },
{ 105381637724646,string.char(239,191,189,239,191,189,80,117,109,112,107,105,110,32,75,105,110,103,239,191,189,239,191,189), false },
{ 71302743123422,string.char(80,111,112,117,108,97,114), false },
{ 88425531063616,string.char(83,116,121,108,105,115,104,32,70,108,111,97,116,105,110,103), false },
{ 104142334418357,string.char(91,66,69,83,84,93,32,73,116,39,115,32,71,97,110,103,110,97,109,32,83,116,121,108,101,33), false },
{ 4049646104,string.char(76,105,110,101,32,68,97,110,99,101), false },
{ 120642514156293,string.char(83,101,99,114,101,116,32,72,97,110,100,115,104,97,107,101,32,68,97,110,99,101), false },
{ 111378664166805,string.char(77,111,111,110,119,97,108,107), true },
{ 80963950541052,string.char(104,105,112,32,115,119,97,121), false },
{ 7202898984,string.char(83,104,111,119,32,68,101,109,32,87,114,105,115,116,115,32,45,32,75,83,73), false },
{ 5938394742,string.char(79,108,100,32,84,111,119,110,32,82,111,97,100,32,68,97,110,99,101,32,45,32,76,105,108,32,78,97,115,32,88,32,40,76,78,88,41), false },
{ 74716792202343,string.char(239,191,189,239,191,189,239,184,143,32,72,111,114,110,101,116,39,115,32,83,112,105,100,101,114,32,68,97,110,99,101,32,239,191,189,239,191,189,239,184,143), false },
{ 4940592718,string.char(67,111,110,102,117,115,101,100), false },
{ 15679955281,string.char(70,101,115,116,105,118,101,32,68,97,110,99,101), false },
{ 115203580644128,string.char(226,154,161,32,82,97,105,100,101,110,32,80,117,110,99,104,105,110,103,32,65,114,109,115,116,114,111,110,103,32,76,111,111,112), false },
{ 79312439851071,string.char(67,104,97,112,112,101,108,108,32,82,111,97,110,32,72,79,84,32,84,79,32,71,79,33), false },
{ 3762641826,string.char(83,105,100,101,32,116,111,32,83,105,100,101), false },
{ 5230615437,string.char(66,101,99,107,111,110), false },
{ 130371895389423,string.char(91,66,69,83,84,93,32,73,110,118,105,115,105,98,108,105,116,121), false },
{ 107282826166809,string.char(66,97,115,107,101,116,98,97,108,108,32,72,101,97,100), false },
{ 79017619155911,string.char(87,97,108,108,32,80,104,97,115,101,32,40,71,76,73,84,67,72,41), true },
{ 125328720114284,string.char(78,101,114,118,121,32,68,97,110,99,101), true },
{ 113702736944973,string.char(89,117,106,105,32,74,117,109,112,105,110,103,32,69,100,105,116), true },
{ 4272351660,string.char(70,97,115,116,32,72,97,110,100,115), false },
{ 97164262994588,string.char(70,108,111,97,116,105,110,103,32,105,110,32,76,111,118,101,32,239,191,189,239,191,189), false },
{ 16572756230,string.char(72,73,80,77,79,84,73,79,78,32,45,32,65,109,97,97,114,97,101), false },
{ 78224683906191,string.char(67,117,116,101,32,70,101,101,116,32,75,105,99,107,105,110,103), false },
{ 82727664018494,string.char(76,117,115,104,32,76,105,102,101), false },
{ 5938365243,string.char(68,111,108,112,104,105,110,32,68,97,110,99,101), false },
{ 70919402339484,string.char(83,99,117,98,97,32,78,105,99,107,32,87,105,108,100,101), true },
{ 95325218641213,string.char(80,115,121,99,104,111,32,84,101,100,100,121), true },
{ 15506503658,string.char(86,105,99,116,111,114,121,32,68,97,110,99,101), false },
{ 4940602656,string.char(74,117,109,112,105,110,103,32,87,97,118,101), false },
{ 108635834286627,string.char(83,112,105,100,101,114,109,97,110,32,72,97,110,103), false },
{ 5915773992,string.char(66,114,101,97,107,32,68,97,110,99,101), false },
{ 3934986896,string.char(68,105,122,122,121), false },
{ 136648387080677,string.char(68,65,82,69,32,45,32,71,111,114,105,108,108,97,122), false },
{ 111426928948833,string.char(70,108,111,97,116,105,110,103,32,111,110,32,99,108,111,117,100,115), false },
{ 127764273000599,string.char(68,114,111,112,107,105,99,107), false },
{ 137234266130963,string.char(77,74,32,45,32,80,46,89,46,84,46,32,80,114,101,116,116,121,32,89,111,117,110,103,32,84,104,105,110,103), false },
{ 17746270218,string.char(83,116,117,114,100,121,32,68,97,110,99,101,32,45,32,73,99,101,32,83,112,105,99,101), false },
{ 3716633898,string.char(84,119,105,114,108), false },
{ 129149402922241,string.char(103,114,105,100,100,121), false },
{ 94064805002669,string.char(67,117,116,101,32,75,97,119,97,105,105,32,80,111,115,105,110,103,32,62,45,60), false },
{ 139058906415119,string.char(70,108,111,97,116,105,110,103), false },
{ 94292601332790,string.char(59,105,110,118,105,115,105,98,108,101,32,109,101), false },
{ 4212496830,string.char(90,111,109,98,105,101), false },
{ 75911227509248,string.char(71,104,111,115,116,32,70,108,111,97,116,105,110,103), false },
{ 79127989560307,string.char(77,111,111,110,32,87,97,108,107), false },
{ 89157328525577,string.char(115,105,108,108,121,32,106,117,109,112,105,110,103,32,115,112,105,100,101,114,32,100,97,110,99,101), false },
{ 5938396308,string.char(72,79,76,73,68,65,89,32,68,97,110,99,101,32,45,32,76,105,108,32,78,97,115,32,88,32,40,76,78,88,41), false },
{ 120904242187887,string.char(239,191,189,239,191,189,32,71,79,79,70,89,32,70,76,65,80,32,70,76,89,32,65,78,73,77,69,32,45,32,70,85,78,78,89,32,77,69,77,69), true },
{ 107708114415320,string.char(66,105,103,32,71,117,121,32,45,32,239,191,189,239,191,189,32,73,99,101,32,83,112,105,99,101,32,120,32,83,112,111,110,103,101,98,111,98), false },
{ 132367660388476,string.char(83,72,65,75,69), false },
{ 14353417553,string.char(66,97,98,121,32,81,117,101,101,110,32,45,32,65,105,114,32,71,117,105,116,97,114,32,38,32,75,110,101,101,32,83,108,105,100,101), false },
{ 138515241510970,string.char(67,117,116,101,32,107,97,119,97,105,105,32,103,105,114,108,121,32,105,100,108,101,32,80,114,111,102,105,108,101,32,112,111,115,101), false },
{ 76261461321661,string.char(226,152,133,32,99,117,114,105,111,117,115,108,121,32,99,117,116,101,32,115,105,116,116,105,110,103,32,112,111,115,101), false },
{ 4391208058,string.char(83,104,117,102,102,108,101), false },
{ 88859617281337,string.char(87,79,79,70,32,66,65,82,75,32,87,79,79,70), false },
{ 10370922566,string.char(83,105,100,101,107,105,99,107,115,32,45,32,71,101,111,114,103,101,32,69,122,114,97), false },
{ 103040723950430,string.char(71,111,106,111,32,70,108,111,97,116,105,110,103,32,74,74,75,47,32,84,104,101,32,72,111,110,111,114,101,100,32,79,110,101), false },
{ 82995540773684,string.char(84,111,114,110,97,100,111), false },
{ 3994130516,string.char(66,111,100,121,98,117,105,108,100,101,114), false },
{ 13823339506,string.char(84,111,109,109,121,32,45,32,65,114,99,104,101,114), false },
{ 4849487550,string.char(65,103,114,101,101), false },
{ 79216795769647,string.char(84,97,108,108,32,83,99,97,114,121,32,67,114,101,97,116,117,114,101), false },
{ 83917238288783,string.char(99,117,116,101,32,100,97,110,99,121,32,100,97,110,99,101), true },
{ 122147154162464,string.char(72,97,107,97,114,105,32,68,97,110,99,101), false },
{ 118853736905967,string.char(87,97,108,108,32,65,117,114,97,32,70,97,114,109,32,80,111,115,101), false },
{ 4849497510,string.char(80,111,119,101,114,32,66,108,97,115,116), false },
{ 15123050663,string.char(66,111,110,101,32,67,104,105,108,108,105,110,39,32,66,111,112), false },
{ 103102322875221,string.char(83,107,105,98,105,100,105,32,84,111,105,108,101,116,32,45,32,84,105,116,97,110,32,83,112,101,97,107,101,114,109,97,110,32,76,97,115,101,114,32,83,112,105,110), false },
{ 133685484220846,string.char(75,65,84,83,69,89,69,32,45,32,71,78,65,82,76,89), false },
{ 117119421748582,string.char(74,97,109,97,108,32,66,114,97,122,105,108,32,71,114,111,111,118,101), true },
{ 111539333518905,string.char(78,101,101,100,121,32,86,32,115,105,116,32,83,112,108,105,116,32,68,114,111,112,32,40,79,71,41,32,239,191,189,239,191,189), true },
{ 72947568152049,string.char(67,117,116,101,32,83,105,116), false },
{ 14353419229,string.char(66,97,98,121,32,81,117,101,101,110,32,45,32,68,114,97,109,97,116,105,99,32,66,111,119), false },
{ 3576745472,string.char(70,97,115,104,105,111,110,97,98,108,101), false },
{ 106370760824973,string.char(80,111,115,115,101,115,115,101,100,32,71,108,105,116,99,104,101,114), false },
{ 98388724133440,string.char(91,79,71,93,32,105,32,103,111,116,32,116,104,97,116,32,102,101,101,108,105,110,103,32,239,191,189,239,191,189), true },
{ 122740406985544,string.char(70,108,121,32,65,117,114,97,32,112,111,115,101), true },
{ 80573839869810,string.char(75,110,101,101,108,105,110,103,32,83,105,116), true },
{ 89360359553814,string.char(83,117,110,102,108,111,119,101,114), true },
{ 73181508272121,string.char(80,97,114,116,121,32,70,117,110,107), true },
{ 73049975726252,string.char(89,101,97,104,44,32,73,109,32,76,105,115,116,101,110,105,110,103,46,46,46), true },
{ 121621458064078,string.char(87,105,115,104,32,78,108,101,32,67,104,111,112,112,97), true },
{ 123838228516868,string.char(91,76,105,109,105,116,101,100,93,32,67,117,116,101,32,67,114,121,105,110,103,32,66,101,103,32,75,110,101,101,108,105,110,103), true },
{ 126941778232900,string.char(226,153,161,32,107,97,119,97,105,105,32,115,105,116,32,101,109,111,116,101,32,119,105,116,104,32,99,97,116,32,112,97,119,115), true },
{ 116416944161215,string.char(226,153,161,32,107,97,119,97,105,105,32,115,99,104,111,111,108,103,105,114,108,32,115,105,116,116,105,110,103,32,112,111,115,101), true },
{ 76598468338330,string.char(70,97,108,108,32,70,114,111,109,32,84,104,101,32,83,107,121), true },
{ 88456688900525,string.char(82,101,97,110,105,109,97,116,101,100,32,239,191,189,239,191,189), true },
{ 77080714986256,string.char(77,111,118,105,110,103,32,76,105,107,101,32,66,101,114,110,101,121), true },
{ 77016426916262,string.char(82,105,99,104,32,71,105,114,108,32,70,108,111,119,115,105,100,101), true },
{ 108039409530319,string.char(82,117,110,119,97,121,32,86,105,99,116,111,114,105,97,32,70,97,115,104,105,111,110,32,77,111,100,101,108), true },
{ 137636136946673,string.char(84,117,98,111,32,68,97,110,99,101), true },
{ 87433588393157,string.char(67,117,116,101,32,66,111,117,110,99,121,32,83,105,100,101,32,83,119,97,121), true },
{ 131145074585836,string.char(86,105,108,116,114,117,109,32,72,111,118,101,114,105,110,103,32,65,117,114,97,32,70,97,114,109,32,40,73,110,118,105,110,99,105,98,108,101,41), true },
{ 82831170082875,string.char(83,116,111,112,102,114,97,109,101,58,32,80,117,112,112,101,116,32,80,97,110,105,99), true },
{ 98094482524931,string.char(77,101,116,32,109,121,32,109,97,116,99,104,32,91,83,97,121,32,78,111,119,93), true },
{ 96059912242002,string.char(84,104,101,109,32,72,105,112,115), true },
{ 79087653980931,string.char(77,97,115,116,101,114,32,76,111,114,100,32,86,101,114,105,116,121,32,83,101,116,97,108,99,105,120), true },
{ 73710784930636,string.char(67,114,121,32,102,111,114,32,77,101,32,45,32,91,84,82,69,78,68,93,32,73,114,111,110,77,111,117,115,101), true },
{ 121132556900708,string.char(70,108,111,97,116,105,110,103,32,65,117,114,97), true },
{ 99246819283563,string.char(71,111,111,102,98,97,108,108,32,71,114,105,100,100,121,32,91,77,79,67,65,80,93), true },
{ 128814921948602,string.char(83,117,112,101,114,32,70,117,110,107,32,68,97,110,99,101), true },
{ 104751376138396,string.char(87,111,114,109,32,73,110,102,105,110,105,116,101,32,82,111,108,108), true },
{ 87636335269696,string.char(67,111,110,115,101,103,117,101,32,100,97,110,195,167,97,114,32,105,103,117,97,108,32,63), true },
{ 121793928888678,string.char(99,117,116,101,32,98,114,97,116,116,121,32,119,104,105,110,121,32,97,100,111,114,97,98,108,101,32,103,105,114,108,32,115,105,116,32,112,111,115,101), true },
{ 83161594745131,string.char(226,143,179,91,66,69,83,84,93,32,73,39,77,32,65,32,68,69,77,79,78,32,87,73,84,72,32,84,72,73,83,32,239,191,189,239,191,189), true },
{ 90418129403506,string.char(82,101,108,97,120,101,100,32,67,108,111,117,100,32,70,108,111,97,116,105,110,103), true },
{ 86938925857615,string.char(83,117,112,101,114,104,101,114,111,32,80,111,115,101), true },
{ 90923883214225,string.char(77,97,115,116,101,114,32,79,102,32,72,117,109,97,110,105,116,121,33), true },
{ 122249198697121,string.char(78,97,109,101,108,101,115,115,32,109,111,110,115,116,101,114,32,100,97,110,99,101), true },
{ 140461713742908,string.char(72,101,32,80,101,100,97,108,115,32,70,117,110,107,32,69,109,111,116,101), true },
{ 76618267763261,string.char(239,191,189,239,191,189,32,75,73,83,83,32,78,32,84,69,76,76,32,45,32,65,69,83,80,65), true },
{ 93647110985355,string.char(83,99,117,98,97,32,91,70,85,76,76,32,86,69,82,83,73,79,78,93), true },
{ 73148982402007,string.char(70,97,107,101,32,82,117,110,110,105,110,103,32,68,105,115,99,111,110,110,101,99,116,32,108,97,103), true },
{ 82966937735800,string.char(73,32,103,111,116,32,116,104,97,116,32,102,101,101,108,105,110,103,32,116,114,101,110,100), true },
{ 90121297911534,string.char(74,101,121,107,101,32,70,117,110,107), true },
{ 98840627727488,string.char(80,101,97,99,104,101,115,32,45,32,74,117,115,116,105,110,32,66,105,101,98,101,114), true },
{ 126178027638785,string.char(84,105,110,97,115,104,101,32,45,32,78,97,115,116,121,32,71,105,114,108), true },
{ 98049374819131,string.char(68,105,101,103,111,32,45,32,74,111,106,111,32,65,110,105,109,101,32,80,111,115,101), true },
{ 114800420888775,string.char(80,101,110,110,121,119,105,115,101,32,68,97,110,99,101,32,239,191,189,239,191,189,239,191,189,239,191,189), true },
{ 135157485603506,string.char(91,226,173,144,93,32,83,99,117,98,97,97,32,83,99,117,98,97,97), true },
{ 105765738022096,string.char(226,153,161,32,58,32,67,117,116,101,115,121,32,115,116,97,110,100,105,110,103,32,100,111,108,108,32,112,111,115,101), true },
{ 131171992525098,string.char(79,110,101,32,65,114,109,32,80,117,115,104,32,85,112,115), true },
{ 101582120044688,string.char(115,119,101,101,116,32,112,117,112,112,121,32,103,105,114,108,32,107,105,99,107,105,110,103,32,108,101,103,32,112,114,111,102,105,108,101,32,112,111,115,101), true },
{ 81708325562195,string.char(67,117,116,101,32,78,101,101,100,121,32,72,97,112,112,121,32,83,104,97,107,101,32,68,97,110,99,101), true },
{ 105201400407575,string.char(67,117,116,101,32,72,97,112,112,121,32,66,111,117,110,99,121,32,74,117,109,112,115,32,68,97,110,99,101), true },
{ 81346143283632,string.char(110,101,101,100,121,32,107,97,119,97,105,105,32,112,117,112,112,121,32,115,105,116,116,105,110,103,32,112,114,111,102,105,108,101,32,112,111,115,101), true },
{ 71819053016074,string.char(91,66,69,83,84,93,32,105,32,103,111,116,32,116,104,97,116,32,102,101,101,108,105,110,103,32,77,77,50), true },
{ 116521788694479,string.char(239,191,189,239,191,189,32,84,104,101,32,66,97,115,115,32,84,114,101,110,100), true },
{ 73757246494324,string.char(87,101,114,101,119,111,108,102,32,65,108,112,104,97,32,84,114,97,110,115,102,111,114,109,97,116,105,111,110,32,45,32,72,97,108,108,111,119,101,101,110), true },
{ 126498185656790,string.char(72,97,112,112,121,32,66,111,117,110,99,101), true },
{ 78623311762574,string.char(87,101,115,116,80,111,108,101,32,69,109,111,116,101,32,91,79,71,93), true },
{ 97926971484337,string.char(49,50,32,116,111,32,49,50,32,91,80,69,82,70,69,67,84,93), true },
{ 96403455275692,string.char(84,114,101,110,100,32,68,97,110,99,101,32,111,102,32,76,111,114,100,32,86,101,114,105,116,121), true },
{ 94724645460262,string.char(84,104,101,32,119,111,114,109,32,109,111,118,101), true },
{ 128779345795509,string.char(65,108,105,101,110,32,103,111,111,102,121,32,119,97,118,101,226,156,168), true },
{ 97052459488169,string.char(70,101,101,108,105,110,103,32,109,121,115,101,108,102,32,101,109,111,116,101), true },
{ 120918501233808,string.char(70,117,110,121,32,116,117,98,111,32,100,97,110,99,101), true },
{ 134942500171655,string.char(80,97,116,104,101,116,105,99,32,67,97,116,32,40,70,117,114,114,121,41), true },
{ 129965107667269,string.char(76,97,103,117,105,32,112,111,115,101), true },
{ 93072647185531,string.char(239,191,189,239,191,189,32,68,111,114,111,98,111,32,68,97,110,99,101,32,91,86,50,93), true },
{ 103722701410933,string.char(66,114,97,122,105,108,105,97,110,32,68,97,110,99,101,32,86,105,114,97,108,32,84,114,101,110,100), true },
{ 110569633730333,string.char(76,111,114,100,32,86,101,114,105,116,121,32,100,97,110,99,101,33,32,40,69,109,111,116,101,41), true },
{ 88160454118928,string.char(91,66,69,83,84,93,32,83,97,108,115,97), true },
{ 123604753182408,string.char(65,68,69,76,65,32,45,32,78,105,99,111,108,101,32,75,105,100,109,97,110), true },
{ 110059706944899,string.char(105,109,32,97,32,100,101,109,111,110,32,119,105,116,104,32,116,104,105,115,32,110,104,32,40,98,97,108,101,110,99,105,32,98,97,108,101,110,99,105,41,32,68,97,110,99,101), true },
{ 140594655288573,string.char(77,97,110,103,97,114,97,112,32,68,97,110,99,101), true },
{ 91914407217006,string.char(84,104,101,32,66,97,115,115,32,84,114,101,110,100,32,86,50), true },
{ 90960483742655,string.char(77,77,50,32,102,97,107,101,32,100,101,97,116,104,32,112,111,115,101,32,40,117,110,105,113,117,101,41), true },
{ 139324301384120,string.char(67,117,116,101,32,97,110,105,109,101,32,103,105,114,108,32,112,111,115,101,32,40,99,117,116,101,41), true },
{ 117343790961625,string.char(66,76,65,67,75,80,73,78,75,32,82,79,83,195,137,32,45,32,79,110,32,84,104,101,32,71,114,111,117,110,100), true },
{ 128860586829249,string.char(97,110,105,109,101,32,100,97,110,99,101), true },
{ 119998025796052,string.char(83,117,112,101,114,32,78,101,101,100,121,32,74,105,103,103,108,121,32,83,104,97,107,101,32,68,97,110,99,101), true },
{ 89733893354683,string.char(67,117,116,101,32,66,111,117,110,99,121,32,83,104,97,107,101,32,68,97,110,99,101), true },
{ 102174264026632,string.char(71,71,32,65,110,105,109,97,116,105,111,110), true },
{ 86375122997153,string.char(115,116,105,108,108,32,105,100,108,101), true },
{ 112654855034352,string.char(71,114,101,101,110,32,76,97,110,116,101,114,110,32,65,117,114,97,32,80,111,115,101), true },
{ 132600795042399,string.char(66,98,121,32,87,111,119,32,116,114,101,110,100), true },
{ 73193222304259,string.char(74,97,109,97,108,32,68,97,110,99,101,32,51,46,48), true },
{ 87663078346140,string.char(72,97,108,108,111,119,101,101,110,32,86,97,109,112,105,114,101,32,194,180,224,189,128,96,32,90,111,109,98,105,101,32,210,130,32,67,111,102,102,105,110,32,67,114,97,119,108,32,80,111,115,101), true },
{ 99311131968819,string.char(83,116,111,112,102,114,97,109,101,58,32,83,110,101,97,107,121,32,83,104,117,102,102,108,101), true },
{ 138127306398554,string.char(67,111,110,102,105,100,101,110,116,32,70,108,121,105,110,103,32,65,117,114,97,32,70,97,114,109,105,110,103), true },
{ 106724593413222,string.char(67,117,116,115,101,121,32,70,108,121,105,110,103,32,65,117,114,97,32,239,191,189,239,191,189), true },
{ 122901201145982,string.char(69,109,111,32,70,108,111,97,116,105,110,103,32,65,117,114,97), true },
{ 132697034165623,string.char(239,191,189,239,191,189,239,191,189,239,191,189,32,77,117,114,100,101,114,32,77,121,115,116,101,114,121,32,50,32,79,79,70,32,239,191,189,239,191,189,239,191,189,239,191,189), true },
{ 108435804337942,string.char(77,117,114,100,101,114,32,77,121,115,116,101,114,121,32,50,32,239,191,189,239,191,189,239,191,189,239,191,189,239,191,189,239,191,189,239,191,189,239,191,189), true },
{ 109436261994235,string.char(83,104,121,32,86,97,109,112,105,114,101), true },
{ 100120361806075,string.char(77,77,50,32,239,191,189,239,191,189,239,191,189,239,191,189), true },
{ 94897348118820,string.char(77,77,50,32,239,191,189,239,191,189,239,191,189,239,191,189,239,191,189,239,191,189,239,191,189,239,191,189), true },
{ 104120919345158,string.char(226,153,161,32,99,117,116,101,32,104,97,108,108,111,119,101,101,110,32,104,101,97,100,108,101,115,115,32,104,111,108,100,105,110,103,32,121,111,117,114,32,104,101,97,100,32,112,111,115,101), true },
{ 96021230764442,string.char(91,79,71,93,32,77,105,108,119,97,117,107,101,101,32,66,111,117,110,99,101), true },
{ 116215733070133,string.char(74,117,115,116,32,87,97,110,110,97,32,82,111,99,107,32,40,76,105,108,32,85,122,105,32,86,101,114,116,41), true },
{ 125450302010193,string.char(239,191,189,239,191,189,32,76,32,68,97,110,99,101), true },
{ 108395206588249,string.char(239,191,189,239,191,189,109,109,50,32,102,97,107,101,32,115,105,100,101,32,108,97,121), true },
{ 91339094607949,string.char(66,97,108,108,101,114,105,110,97,32,83,112,105,110), true },
{ 91341416163208,string.char(67,117,116,101,32,83,105,116,116,105,110,103), true },
{ 82555721533394,string.char(67,104,111,111,32,67,104,111,111,32,84,82,65,73,78), true },
{ 117498793976482,string.char(83,110,111,119,109,97,110,32,68,97,110,99,101,32,45,32,76,101,102,116), true },
{ 123032739590624,string.char(83,110,111,119,109,97,110,32,68,97,110,99,101,32,45,32,82,105,103,104,116), true },
{ 83190195248548,string.char(66,111,114,101,100,111,109), true },
{ 106393319667237,string.char(34,68,111,110,39,116,32,83,116,111,112,32,84,105,108,39,32,89,111,117,32,71,101,116,32,69,110,111,117,103,104,34,32,77,117,115,105,99,32,86,105,100,101,111,32,73,110,116,114,111), true },
{ 79729995051649,string.char(67,104,101,100,100,101,114,32,66,98,113,32,87,97,118,121,32,83,111,117,114,32,67,114,101,97,109,32,97,110,100,32,79,110,105,111,110,32,47,84,114,101,110,100,32,68,97,110,99,101), true },
{ 111937410622410,string.char(66,97,108,97,110,99,101,32,98,97,108,97,110,99,101), true },
{ 126198554443561,string.char(73,32,104,97,100,32,97,32,104,117,110,99,104), true },
{ 110870173502552,string.char(103,104,111,115,116,108,121,32,112,111,115,115,101,115,115,105,111,110,44,32,112,111,115,101,44,32,97,117,114,97), true },
{ 133537618008799,string.char(84,111,120,105,99,32,76,97,117,103,104), true },
{ 71555837867329,string.char(78,80,67,32,71,114,101,101,116,105,110,103), true },
{ 80160023079097,string.char(91,77,105,110,105,32,77,101,93,32,71,97,110,103,110,97,109,32,83,116,121,108,101), true },
{ 80069514148007,string.char(86,101,122,110,97,32,73,100,108,101,32,65,110,105,109,97,116,105,111,110), true },
{ 113267287854914,string.char(99,117,116,101,32,107,97,119,97,105,105,32,115,105,116), true },
{ 119535274797446,string.char(80,114,101,115,115,32,70,32,116,111,32,105,110,115,112,101,99,116), true },
{ 76934438548184,string.char(75,97,110,103,97,114,111,111,32,68,97,110,99,101,32,75,105,110,103,32,65,117,114,97), true },
{ 138032573559043,string.char(79,114,97,110,103,101,32,67,97,114,97,109,101,108,32,67,104,97,101,119,111,110,32,67,97,116,97,108,108,101,110,97,32,68,97,110,99,101), true },
{ 95654893473488,string.char(80,97,115,115,105,110,104,111,32,100,111,32,74,97,109,97,108,32,239,191,189,239,191,189,239,191,189,239,191,189,32,77,97,110,100,114,97,107,101), true },
{ 99399545142101,string.char(72,101,97,100,108,101,115,115,32,83,119,97,112), true },
{ 99576158170768,string.char(69,118,101,114,121,98,111,100,121,32,45,32,66,97,99,107,115,116,114,101,101,116,32,66,111,121,115), true },
}
local _0x9CED = game:GetService(string.char(72,116,116,112,83,101,114,118,105,99,101))
local _0x81C9 = game:GetService(string.char(65,118,97,116,97,114,69,100,105,116,111,114,83,101,114,118,105,99,101))
local _0x9AFC = Color3.fromRGB(104, 222, 92)
local _0xF8DD = Color3.fromRGB(36, 36, 38)
local _0x353D = Color3.fromRGB(48, 48, 52)
local _0x70CF = Color3.fromRGB(17, 17, 19)
local _0xAD47 = {string.char(105,100,108,101),string.char(119,97,108,107),string.char(114,117,110),string.char(106,117,109,112),string.char(102,97,108,108),string.char(99,108,105,109,98),string.char(115,119,105,109)}
local _0x56EE = {
idle = true,
walk = true,
run = true,
jump = true,
fall = true,
climb = true,
swim = true,
swimidle = true,
}
local _0x60D3 = {
IdleAnimation = 1,
WalkAnimation = 2,
RunAnimation = 3,
JumpAnimation = 4,
FallAnimation = 5,
ClimbAnimation = 6,
SwimAnimation = 7,
}
local function _0x732C(_0xABD9)
return string.format(string.char(37,46,48,102), _0xABD9)
end
local function _0xB091(_0x334A)
_0x334A = _0x334A:lower():gsub(string.char(97,110,105,109,97,116,105,111,110,115,63),""):gsub(string.char(112,97,99,107,97,103,101),""):gsub(string.char(112,97,99,107),""):gsub(string.char(91,94,37,119,93),"")
return _0x334A
end
local _0x8AF1 = {}
for _0xBFE6, cat in ipairs(_0xAAD2) do
for _0xBFE6, _0x0D18 in ipairs(cat[2]) do
_0x8AF1[_0xB091(_0x0D18[1])] = _0x0D18
end
end
local function _0x039F(_0x0D18)
local function _0xE207(_0xBE50)
return _0xBE50 and _0xBE50 ~= 0 and {string.char(114,98,120,97,115,115,101,116,105,100,58,47,47).. _0x732C(_0xBE50) } or nil
end
local _0x2E2C = _0x0D18[3] and _0x0D18[3] ~= 0 and _0x0D18[3] or _0x0D18[2]
return {
idle = {string.char(114,98,120,97,115,115,101,116,105,100,58,47,47).. _0x732C(_0x0D18[2]),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47).. _0x732C(_0x2E2C) },
walk = _0xE207(_0x0D18[4]),
run = _0xE207(_0x0D18[5]),
jump = _0xE207(_0x0D18[6]),
fall = _0xE207(_0x0D18[7]),
climb = _0xE207(_0x0D18[8]),
swim = _0xE207(_0x0D18[9]),
swimidle = _0xE207(_0x0D18[10]),
}
end
local function _0xEDFA(_0x280C)
local _0x7D74 = { 0, 0, 0, 0, 0, 0, 0 }
for _0xBFE6, _0x1592 in ipairs(_0x280C or {}) do
local _0x3FFC = _0x60D3[tostring(_0x1592.AssetType or"")]
if not _0x3FFC and _0x1592.Name then
local _0xDDE9 = _0x1592.Name:lower()
for _0x60FA, _0x334A in ipairs(_0xAD47) do
if _0xDDE9:find(_0x334A, 1, true) then
_0x3FFC = _0x60FA
break
end
end
end
if _0x3FFC and (_0x1592.Type == nil or _0x1592.Type ==string.char(65,115,115,101,116)) then
_0x7D74[_0x3FFC] = _0x1592.Id
end
end
return _0x7D74
end
local _0x6545, _0x545A = {}, {}
local function _0x402B(_0xABD9, _0xBD62, _0x752D, isNew, _0x0995)
local _0xBB9C = _0x545A[_0xABD9]
if _0xBB9C then
if isNew then
_0xBB9C.new = true
end
return _0xBB9C, false
end
_0xBB9C = { _0xABD9 = _0xABD9, _0xBD62 = _0xBD62, assets = _0x752D, new = isNew, _0x8442 =string.char(98)}
_0x545A[_0xABD9] = _0xBB9C
if _0x0995 then
table.insert(_0x6545, _0x0995, _0xBB9C)
else
table.insert(_0x6545, _0xBB9C)
end
return _0xBB9C, true
end
for _0xBFE6, _0x5ED5 in ipairs(_0xB6DD) do
_0x402B(_0x5ED5[1], _0x5ED5[2], { _0x5ED5[3], _0x5ED5[4], _0x5ED5[5], _0x5ED5[6], _0x5ED5[7], _0x5ED5[8], _0x5ED5[9] }, false)
end
for _0xBFE6, _0x5ED5 in ipairs(_0x7D6A) do
_0x402B(_0x5ED5[1], _0x5ED5[2], { _0x5ED5[3], _0x5ED5[4], _0x5ED5[5], _0x5ED5[6], _0x5ED5[7], _0x5ED5[8], _0x5ED5[9] }, true)
end
local _0x86A3, _0x2F01 = {}, {}
for _0xBFE6, _0x5ED5 in ipairs(_0x21BD) do
local _0x9B31 = { _0xABD9 = _0x5ED5[1], _0xBD62 = _0x5ED5[2], new = _0x5ED5[3], _0x8442 =string.char(101)}
table.insert(_0x86A3, _0x9B31)
_0x2F01[_0x5ED5[1]] = _0x9B31
end
local _0x34CB = {}
local function _0x60AF(_0x1592)
return _0x1592.kind .. _0x732C(_0x1592.id)
end
pcall(function()
if isfile and readfile and isfile(string.char(99,108,117,109,115,121,115,99,114,105,112,116,95,102,97,118,115,46,106,115,111,110)) then
for _0xBFE6, _0x23BB in ipairs(_0x9CED:JSONDecode(readfile(string.char(99,108,117,109,115,121,115,99,114,105,112,116,95,102,97,118,115,46,106,115,111,110)))) do
local _0x1592 = { _0x8442 = _0x23BB.kind, _0xABD9 = tonumber(_0x23BB.id), _0xBD62 = _0x23BB.name }
if _0x23BB.assets then
_0x1592.assets = {}
for _0x60FA, _0xBE50 in ipairs(_0x23BB.assets) do
_0x1592.assets[_0x60FA] = tonumber(_0xBE50) or 0
end
end
if _0x1592.id then
_0x34CB[_0x60AF(_0x1592)] = _0x1592
end
end
end
end)
local function _0x7FC0()
if not writefile then
return
end
local _0x8038 = {}
for _0xBFE6, _0x1592 in pairs(_0x34CB) do
local _0x23BB = { _0x8442 = _0x1592.kind, _0xABD9 = _0x732C(_0x1592.id), _0xBD62 = _0x1592.name }
if _0x1592.assets then
_0x23BB.assets = {}
for _0x60FA, _0xBE50 in ipairs(_0x1592.assets) do
_0x23BB.assets[_0x60FA] = _0x732C(_0xBE50)
end
end
table.insert(_0x8038, _0x23BB)
end
pcall(writefile,string.char(99,108,117,109,115,121,115,99,114,105,112,116,95,102,97,118,115,46,106,115,111,110), _0x9CED:JSONEncode(_0x8038))
end
local function _0xEF28()
local _0xB1B3 = {}
for _0xBFE6, _0x23BB in pairs(_0x34CB) do
local _0x1592 = _0x23BB.kind ==string.char(98)and _0x545A[_0x23BB.id] or _0x23BB.kind ==string.char(101)and _0x2F01[_0x23BB.id] or _0x23BB
table.insert(_0xB1B3, _0x1592)
end
table.sort(_0xB1B3, function(_0x7D74, _0xBB9C)
return _0x7D74.name:lower() < _0xBB9C.name:lower()
end)
return _0xB1B3
end
local _0x73FB = {}
local function _0x12D2(assetId)
if _0x73FB[assetId] then
return _0x73FB[assetId]
end
local _0x3E35, _0xC66A = pcall(function()
return game:GetObjects(string.char(114,98,120,97,115,115,101,116,105,100,58,47,47).. _0x732C(assetId))
end)
if not _0x3E35 or type(_0xC66A) ~=string.char(116,97,98,108,101)then
return {}
end
local _0x7BA2 = {}
for _0xBFE6, _0xCA34 in ipairs(_0xC66A) do
local _0xC494 = _0xCA34:GetDescendants()
table.insert(_0xC494, 1, _0xCA34)
for _0xBFE6, _0x7D74 in ipairs(_0xC494) do
if _0x7D74:IsA(string.char(65,110,105,109,97,116,105,111,110)) and _0x7D74.AnimationId ~=""then
table.insert(_0x7BA2, { slot = _0x7D74.Parent and _0x7D74.Parent.Name:lower() or"", _0xBD62 = _0x7D74.Name, _0xABD9 = _0x7D74.AnimationId })
end
end
end
table.sort(_0x7BA2, function(_0xA051, _0xD4A2)
return _0xA051.name < _0xD4A2.name
end)
_0x73FB[assetId] = _0x7BA2
return _0x7BA2
end
local _0xD7EA = {}
local function _0xD1C8(_0xBB9C)
if _0xD7EA[_0xBB9C.id] then
return _0xD7EA[_0xBB9C.id]
end
local _0x3FFC = _0x8AF1[_0xB091(_0xBB9C.name)]
if _0x3FFC then
_0xD7EA[_0xBB9C.id] = _0x039F(_0x3FFC)
return _0xD7EA[_0xBB9C.id]
end
local _0x83A4, _0x36C8 = {}, false
for _0x60FA, _0x54A2 in ipairs(_0xBB9C.assets or {}) do
if _0x54A2 and _0x54A2 ~= 0 then
for _0xBFE6, _0x7D74 in ipairs(_0x12D2(_0x54A2)) do
local _0x334A = _0x56EE[_0x7D74.slot] and _0x7D74.slot or _0xAD47[_0x60FA]
_0x83A4[_0x334A] = _0x83A4[_0x334A] or {}
table.insert(_0x83A4[_0x334A], _0x7D74.id)
_0x36C8 = true
end
end
end
if _0x36C8 then
_0xD7EA[_0xBB9C.id] = _0x83A4
return _0x83A4
end
end
local _0xAEE3, _0xE7D0 = nil, nil
local function _0xC69C() end
local function _0x0A9B()
local _0xD51E = _0xD33F.Character
return _0xD51E and _0xD51E:FindFirstChild(string.char(65,110,105,109,97,116,101))
end
local function _0xA302(_0x6340)
local _0x4903 = {}
for _0xBFE6, _0x7D74 in ipairs(_0x6340:GetChildren()) do
if _0x7D74:IsA(string.char(65,110,105,109,97,116,105,111,110)) then
table.insert(_0x4903, _0x7D74)
end
end
table.sort(_0x4903, function(_0xA051, _0xD4A2)
return _0xA051.Name < _0xD4A2.Name
end)
return _0x4903
end
local function _0xF2DC(_0x93FA)
if _0xAEE3 then
return
end
_0xAEE3 = {}
for _0xBFE6, _0x6340 in ipairs(_0x93FA:GetChildren()) do
if _0x56EE[_0x6340.Name:lower()] then
for _0xBFE6, _0x7D74 in ipairs(_0xA302(_0x6340)) do
_0xAEE3[_0x7D74] = _0x7D74.AnimationId
end
end
end
end
local function _0x3FF9()
local _0x93FA, _0xBD98 = _0x0A9B(), _0xA6D4()
if not _0x93FA or not _0xBD98 then
return
end
_0x93FA.Disabled = true
for _0xBFE6, _0x2984 in ipairs(_0xBD98:GetPlayingAnimationTracks()) do
_0x2984:Stop(0)
end
_0x93FA.Disabled = false
end
local function _0xA429(_0x83A4)
local _0x93FA = _0x0A9B()
if not _0x93FA then
return false
end
_0xF2DC(_0x93FA)
for _0xBFE6, _0x6340 in ipairs(_0x93FA:GetChildren()) do
local _0x7459 = _0x83A4[_0x6340.Name:lower()]
if _0x7459 and #_0x7459 > 0 then
for _0x60FA, _0x7D74 in ipairs(_0xA302(_0x6340)) do
_0x7D74.AnimationId = _0x7459[_0x60FA] or _0x7459[1]
end
end
end
_0x3FF9()
return true
end
local function _0x990A(_0xBB9C)
_0x4FF7[string.char(70,114,101,101,32,97,110,105,109,115,47,112,97,99,107)] = _0xBB9C and { _0x8442 =string.char(98), _0xABD9 = _0xBB9C.id, _0xBD62 = _0xBB9C.name, assets = _0xBB9C.assets } or nil
_0x82A4, _0xCB95 = true, os.clock()
end
local function _0x0D87()
_0xE7D0 = nil
_0x990A(nil)
if _0xAEE3 then
for _0x7D74, _0xABD9 in pairs(_0xAEE3) do
if _0x7D74.Parent then
_0x7D74.AnimationId = _0xABD9
end
end
_0x3FF9()
end
_0xC69C()
end
local _0xFDEA = false
local function _0x8C0E(_0xBB9C)
if _0xFDEA then
return
end
_0xFDEA = true
task.spawn(function()
if not _0xD7EA[_0xBB9C.id] and not _0x8AF1[_0xB091(_0xBB9C.name)] then
_0xE835(string.char(76,111,97,100,105,110,103), _0xBB9C.name)
end
local _0x83A4 = _0xD1C8(_0xBB9C)
_0xFDEA = false
if not _0x83A4 then
_0xE835(string.char(70,114,101,101,32,97,110,105,109,115),string.char(99,97,110,39,116,32,108,111,97,100,32,112,97,99,107,32,40,110,111,32,71,101,116,79,98,106,101,99,116,115,32,105,110,32,101,120,101,99,117,116,111,114,41))
return
end
local _0xBD98 = _0xA6D4()
if _0xBD98 and _0xBD98.RigType == Enum.HumanoidRigType.R6 and not _0xBB9C.name:find(string.char(82,54)) then
_0xE835(string.char(82,54,32,97,118,97,116,97,114),string.char(109,111,115,116,32,112,97,99,107,115,32,97,114,101,32,109,97,100,101,32,102,111,114,32,82,49,53))
end
if _0xA429(_0x83A4) then
_0xE7D0 = { _0xABD9 = _0xBB9C.id, _0x83A4 = _0x83A4 }
_0x990A(_0xBB9C)
_0xE835(string.char(65,110,105,109,97,116,105,111,110,32,112,97,99,107), _0xBB9C.name)
_0xC69C()
end
end)
end
local _0x3CDD
local _0x9F4D = {}
local function _0xFDF8()
if _0x3CDD then
pcall(function()
_0x3CDD:Stop(0.2)
end)
_0x3CDD = nil
end
end
local function _0x762B(_0x9B31)
local _0xBD98 = _0xA6D4()
if not _0xBD98 then
return
end
task.spawn(function()
local _0xA8A1 = _0x9F4D[_0x9B31.id]
if not _0xA8A1 then
local _0xC494 = _0x12D2(_0x9B31.id)
_0xA8A1 = _0xC494[1] and _0xC494[1].id
_0x9F4D[_0x9B31.id] = _0xA8A1
end
_0xFDF8()
if _0xA8A1 then
local _0x92FF = Instance.new(string.char(65,110,105,109,97,116,105,111,110))
_0x92FF.AnimationId = _0xA8A1
local _0x85B8 = _0xBD98:FindFirstChildOfClass(string.char(65,110,105,109,97,116,111,114)) or _0xBD98
local _0x3E35, _0x2984 = pcall(function()
return _0x85B8:LoadAnimation(_0x92FF)
end)
if _0x3E35 and _0x2984 then
_0x2984.Priority = Enum.AnimationPriority.Action
_0x2984.Looped = true
_0x2984:Play(0.2)
_0x3CDD = _0x2984
_0xE835(string.char(69,109,111,116,101), _0x9B31.name)
return
end
end
local _0x3E35, _0xBFE6, _0x2984 = pcall(function()
return _0xBD98:PlayEmoteAndGetAnimTrackById(_0x9B31.id)
end)
if _0x3E35 and _0x2984 then
_0x3CDD = _0x2984
_0xE835(string.char(69,109,111,116,101), _0x9B31.name)
else
_0xE835(string.char(70,114,101,101,32,97,110,105,109,115),string.char(99,97,110,39,116,32,112,108,97,121,58,32).. _0x9B31.name)
end
end)
end
_0xF709(_0x7FDD.Heartbeat, function()
if _0x3CDD then
local _0xBD98 = _0xA6D4()
if _0xBD98 and _0xBD98.MoveDirection.Magnitude > 0.1 then
_0xFDF8()
end
end
end)
_0xF5BA = function()
_0xFDF8()
_0x0D87()
end
_0x64F7(string.char(70,114,101,101,32,97,110,105,109,115,47,112,97,99,107), function(_0xBE50)
if type(_0xBE50) ==string.char(116,97,98,108,101)and _0xBE50.id then
task.spawn(function()
local _0x8C06 = _0xD33F.Character or _0xD33F.CharacterAdded:Wait()
_0x8C06:WaitForChild(string.char(65,110,105,109,97,116,101), 10)
task.wait(0.5)
if _0x4FF7[string.char(70,114,101,101,32,97,110,105,109,115,47,112,97,99,107)] == _0xBE50 and not _0xE7D0 then
_0x8C0E(_0xBE50)
end
end)
elseif _0xBE50 == false then
_0x0D87()
end
end, function()
return _0x4FF7[string.char(70,114,101,101,32,97,110,105,109,115,47,112,97,99,107)] or false
end, false)
_0xF709(_0xD33F.CharacterAdded, function(_0x8C06)
_0xAEE3 = nil
_0x3CDD = nil
if not _0xE7D0 then
return
end
_0x8C06:WaitForChild(string.char(65,110,105,109,97,116,101), 10)
task.wait(0.3)
_0xA429(_0xE7D0.slots)
end)
local _0x4783 = _0x8E61.page
_0x8E61.custom = true
_0x8E61.title.Visible = false
_0x8E61.desc.Visible = false
_0x4783.ScrollingEnabled = false
_0x4783.Active = false
_0x4783.ScrollBarThickness = 0
_0x4783.CanvasSize = UDim2.new()
local _0xE692 =string.char(66,117,110,100,108,101,115)local _0x2EF6 =string.char(65,108,108)local _0xE730 =""local _0x5F9C
local _0x6097
local _0x88B3 = _0x81A6(string.char(70,114,97,109,101), { Size = UDim2.new(1, 0, 0, 30), BackgroundTransparency = 1, ZIndex = 3, Parent = _0x4783 })
local _0xBEB7, _0x73C7 = {}, 0
for _0xBFE6, sub in ipairs({string.char(66,117,110,100,108,101,115),string.char(69,109,111,116,101,115),string.char(70,97,118,115)}) do
local _0x9B7B = sub == _0xE692
local _0x42FB = _0x83FE:GetTextSize(sub, 13, Enum.Font.GothamMedium, Vector2.new(200, 40)).X + 34
local _0xBB9C = _0x81A6(string.char(84,101,120,116,66,117,116,116,111,110), {
Text ="",
AutoButtonColor = false,
BackgroundColor3 = Color3.fromRGB(90, 90, 90),
BackgroundTransparency = _0x9B7B and 0.35 or 0.85,
Position = UDim2.fromOffset(_0x73C7, 0),
Size = UDim2.fromOffset(_0x42FB, 30),
ZIndex = 3,
Parent = _0x88B3,
})
_0x46F9(_0xBB9C, 9)
local _0x819A = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.new(0, 13, 0.5, 0),
Size = UDim2.fromOffset(_0x9B7B and 6 or 0, _0x9B7B and 6 or 0),
BackgroundColor3 = _0x0333,
BorderSizePixel = 0,
ZIndex = 4,
Parent = _0xBB9C,
})
_0x1692(_0x819A)
local _0xA0A4 = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text = sub,
Font = Enum.Font.GothamMedium,
TextSize = 13,
TextColor3 = _0x9B7B and _0x0333 or _0x08BE,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(_0x9B7B and 22 or 17, 0),
Size = UDim2.new(1, -22, 1, 0),
ZIndex = 4,
Parent = _0xBB9C,
})
_0xBEB7[sub] = { _0xBB9C = _0xBB9C, _0x93F4 = _0x819A, _0x4AFF = _0xA0A4 }
_0x73C7 += _0x42FB + 4
end
local function _0xDC2E(_0x4FEA, _0x16A1, _0x52F8, placeholder, withIcon)
local _0x23BB = _0x81A6(string.char(70,114,97,109,101), {
Position = _0x16A1,
Size = _0x52F8,
BackgroundColor3 = Color3.fromRGB(22, 22, 22),
ZIndex = 3,
Parent = _0x4FEA,
})
_0x46F9(_0x23BB, 9)
local _0xCFC0 = _0x39A4(_0x23BB)
local _0x2700 = 12
if withIcon then
local _0x0D93 = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0, 0.5),
Position = UDim2.new(0, 10, 0.5, 0),
Size = UDim2.fromOffset(12, 12),
BackgroundTransparency = 1,
ZIndex = 4,
Parent = _0x23BB,
})
local _0x4527 = _0x81A6(string.char(70,114,97,109,101), { Size = UDim2.fromOffset(8, 8), BackgroundTransparency = 1, ZIndex = 4, Parent = _0x0D93 })
_0x1692(_0x4527)
_0x81A6(string.char(85,73,83,116,114,111,107,101), { Color = _0x08BE, Thickness = 1.6, Parent = _0x4527 })
_0x39BD(_0x0D93, 7, 7, 11, 11, 1.6).ZIndex = 4
_0x2700 = 30
end
local _0x0A80 = _0x81A6(string.char(84,101,120,116,66,111,120), {
Text ="",
PlaceholderText = placeholder,
PlaceholderColor3 = _0xEE3F,
Font = Enum.Font.Gotham,
TextSize = 12,
TextColor3 = _0x0333,
TextXAlignment = Enum.TextXAlignment.Left,
TextTruncate = Enum.TextTruncate.AtEnd,
ClearTextOnFocus = false,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(_0x2700, 0),
Size = UDim2.new(1, -_0x2700 - 8, 1, 0),
ZIndex = 4,
Parent = _0x23BB,
})
_0xF709(_0x0A80.Focused, function()
_0x0ED9(_0xCFC0, 0.2, { Color = Color3.fromRGB(120, 120, 120) })
end)
_0xF709(_0x0A80.FocusLost, function()
_0x0ED9(_0xCFC0, 0.2, { Color = _0x7988 })
end)
return _0x0A80
end
local _0x725F = _0xDC2E(_0x88B3, UDim2.fromOffset(_0x73C7 + 6, 0), UDim2.new(1, -(_0x73C7 + 6), 0, 30),string.char(83,101,97,114,99,104,46,46,46), true)
local _0xA308 = _0xDC2E(_0x4783, UDim2.fromOffset(0, 38), UDim2.new(1, -72, 0, 34),string.char(83,101,97,114,99,104,32,112,97,99,107,115,32,111,114,32,112,97,115,116,101,32,98,117,110,100,108,101,32,73,68,32,47,32,108,105,110,107), false)
local _0x70D8 = _0x81A6(string.char(84,101,120,116,66,117,116,116,111,110), {
Text =string.char(71,111),
Font = Enum.Font.GothamMedium,
TextSize = 13,
TextColor3 = Color3.fromRGB(20, 60, 16),
BackgroundColor3 = _0x9AFC,
AutoButtonColor = false,
AnchorPoint = Vector2.new(1, 0),
Position = UDim2.new(1, 0, 0, 38),
Size = UDim2.fromOffset(64, 34),
ZIndex = 3,
Parent = _0x4783,
})
_0x46F9(_0x70D8, 9)
_0xF709(_0x70D8.MouseEnter, function()
_0x0ED9(_0x70D8, 0.15, { BackgroundColor3 = Color3.fromRGB(130, 240, 118) })
end)
_0xF709(_0x70D8.MouseLeave, function()
_0x0ED9(_0x70D8, 0.15, { BackgroundColor3 = _0x9AFC })
end)
local _0xD38E = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text ="",
Font = Enum.Font.Gotham,
TextSize = 12,
TextColor3 = _0x08BE,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(2, 80),
Size = UDim2.new(0.45, 0, 0, 18),
ZIndex = 3,
Parent = _0x4783,
})
local _0xA804 = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(1, 0),
Position = UDim2.new(1, 0, 0, 79),
Size = UDim2.new(0.62, 0, 0, 20),
BackgroundTransparency = 1,
ZIndex = 3,
Parent = _0x4783,
})
_0x81A6(string.char(85,73,76,105,115,116,76,97,121,111,117,116), {
FillDirection = Enum.FillDirection.Horizontal,
HorizontalAlignment = Enum.HorizontalAlignment.Right,
VerticalAlignment = Enum.VerticalAlignment.Center,
Padding = UDim.new(0, 4),
SortOrder = Enum.SortOrder.LayoutOrder,
Parent = _0xA804,
})
local function _0xA253(_0xD85E, _0x02E3, _0x9B7B, _0xB850, _0x171F)
local _0x42FB = _0x83FE:GetTextSize(_0xD85E, 11, Enum.Font.GothamMedium, Vector2.new(200, 40)).X + 16
local _0xBB9C = _0x81A6(string.char(84,101,120,116,66,117,116,116,111,110), {
Text = _0xD85E,
Font = Enum.Font.GothamMedium,
TextSize = 11,
TextColor3 = (_0x9B7B or _0xB850) and _0x0333 or _0x08BE,
BackgroundColor3 = _0xB850 and _0x3922 or Color3.fromRGB(90, 90, 90),
BackgroundTransparency = _0xB850 and 0 or (_0x9B7B and 0.35 or 1),
AutoButtonColor = false,
Size = UDim2.fromOffset(_0x42FB, 20),
LayoutOrder = _0x02E3,
ZIndex = 4,
Parent = _0xA804,
})
_0x46F9(_0xBB9C, 6)
if _0xB850 then
_0x39A4(_0xBB9C)
end
_0xF709(_0xBB9C.MouseEnter, function()
if not _0x9B7B then
_0x0ED9(_0xBB9C, 0.15, { TextColor3 = _0x0333 })
end
end)
_0xF709(_0xBB9C.MouseLeave, function()
if not _0x9B7B and not _0xB850 then
_0x0ED9(_0xBB9C, 0.15, { TextColor3 = _0x08BE })
end
end)
_0xF709(_0xBB9C.MouseButton1Click, _0x171F)
end
local function _0xA523()
for _0xBFE6, _0xD51E in ipairs(_0xA804:GetChildren()) do
if _0xD51E:IsA(string.char(71,117,105,66,117,116,116,111,110)) then
_0xD51E:Destroy()
end
end
local _0xDDE9 = 0
if _0x5F9C then
_0xDDE9 += 1
_0xA253(string.char(66,97,99,107), _0xDDE9, false, true, function()
_0x5F9C = nil
_0xA308.Text =""_0x6097()
end)
elseif _0xE692 ~=string.char(70,97,118,115)then
for _0xBFE6, _0x23BB in ipairs({string.char(65,108,108),string.char(78,101,119,32,50,48,50,54),string.char(80,111,112,117,108,97,114)}) do
_0xDDE9 += 1
_0xA253(_0x23BB, _0xDDE9, _0x2EF6 == _0x23BB, false, function()
_0x2EF6 = _0x23BB
_0x6097()
end)
end
end
if _0xE692 ~=string.char(69,109,111,116,101,115)then
_0xDDE9 += 1
_0xA253(string.char(82,101,115,101,116), _0xDDE9, false, true, function()
_0x0D87()
_0xE835(string.char(70,114,101,101,32,97,110,105,109,115),string.char(100,101,102,97,117,108,116,32,97,110,105,109,97,116,105,111,110,115))
end)
end
if _0xE692 ~=string.char(66,117,110,100,108,101,115)then
_0xDDE9 += 1
_0xA253(string.char(83,116,111,112), _0xDDE9, false, true, function()
_0xFDF8()
end)
end
end
local _0x7476 = _0x81A6(string.char(83,99,114,111,108,108,105,110,103,70,114,97,109,101), {
Position = UDim2.fromOffset(0, 104),
Size = UDim2.new(1, 0, 1, -104),
Active = true,
ScrollingEnabled = false,
AutomaticCanvasSize = Enum.AutomaticSize.Y,
BackgroundTransparency = 1,
BorderSizePixel = 0,
ScrollBarThickness = 3,
ScrollBarImageColor3 = _0x08BE,
ScrollBarImageTransparency = 0.3,
VerticalScrollBarInset = Enum.ScrollBarInset.Always,
ScrollingDirection = Enum.ScrollingDirection.Y,
ElasticBehavior = Enum.ElasticBehavior.Never,
ClipsDescendants = true,
CanvasSize = UDim2.new(),
ZIndex = 2,
Parent = _0x4783,
})
_0x81A6(string.char(85,73,80,97,100,100,105,110,103), {
PaddingTop = UDim.new(0, 1),
PaddingLeft = UDim.new(0, 1),
PaddingRight = UDim.new(0, 4),
PaddingBottom = UDim.new(0, 140),
Parent = _0x7476,
})
local _0x595B = _0x81A6(string.char(85,73,71,114,105,100,76,97,121,111,117,116), {
CellSize = UDim2.new(0.3333333333333333, -6, 0, 160),
CellPadding = UDim2.fromOffset(8, 8),
SortOrder = Enum.SortOrder.LayoutOrder,
Parent = _0x7476,
})
local _0x60BA = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text ="",
Font = Enum.Font.GothamMedium,
TextSize = 12,
TextColor3 = _0xEE3F,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(0, 144),
Size = UDim2.new(1, 0, 0, 20),
ZIndex = 3,
Parent = _0x4783,
})
local function _0xDCB3(scroller)
local _0x9EA9, _0x1BD4, _0x4694 = false, nil, 0
local _0xDD0A = false
local function _0x5BA0(_0x16A1)
local _0x0D18, _0x36DB = scroller.AbsolutePosition, scroller.AbsoluteSize
return _0x16A1.X >= _0x0D18.X and _0x16A1.X <= _0x0D18.X + _0x36DB.X and _0x16A1.Y >= _0x0D18.Y and _0x16A1.Y <= _0x0D18.Y + _0x36DB.Y
end
local function _0x5E49()
return math.max(0, scroller.AbsoluteCanvasSize.Y - scroller.AbsoluteWindowSize.Y)
end
local function _0x5F77(_0x16A1, input)
if not _0x5BA0(_0x16A1) or _0x5E49() <= 0 then return end
_0x9EA9, _0x1BD4, _0x4694, _0xDD0A = true, input, _0x16A1.Y, false
end
_0xF709(_0x63F8.TouchStarted, function(input)
_0x5F77(input.Position, input)
end)
_0xF709(_0x63F8.TouchMoved, function(input)
if not _0x9EA9 or _0x1BD4 ~= input then return end
local _0xD132 = input.Position.Y - _0x4694
if math.abs(_0xD132) > 0.1 then
_0xDD0A = true
_0x4694 = input.Position.Y
scroller.CanvasPosition = Vector2.new(0, math.clamp(scroller.CanvasPosition.Y - _0xD132, 0, _0x5E49()))
end
end)
_0xF709(_0x63F8.TouchEnded, function(input)
if input == _0x1BD4 then
_0x9EA9, _0x1BD4 = false, nil
end
end)_0xF709(scroller.InputBegan, function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
_0x5F77(input.Position, input)
end
end)
_0xF709(_0x63F8.InputChanged, function(input)
if not _0x9EA9 or _0x1BD4 == nil or input.UserInputType ~= Enum.UserInputType.MouseMovement then return end
local _0xD132 = input.Position.Y - _0x4694
if math.abs(_0xD132) > 0.1 then
_0xDD0A = true
_0x4694 = input.Position.Y
scroller.CanvasPosition = Vector2.new(0, math.clamp(scroller.CanvasPosition.Y - _0xD132, 0, _0x5E49()))
end
end)
_0xF709(_0x63F8.InputEnded, function(input)
if input == _0x1BD4 then _0x9EA9, _0x1BD4 = false, nil end
end)
end
local function _0x62BD()
_0x7476.CanvasSize = UDim2.fromOffset(0, math.max(_0x595B.AbsoluteContentSize.Y + 140, _0x7476.AbsoluteWindowSize.Y + 2))
end
_0xDCB3(_0x7476)
_0xF709(_0x595B:GetPropertyChangedSignal(string.char(65,98,115,111,108,117,116,101,67,111,110,116,101,110,116,83,105,122,101)), _0x62BD)
_0xF709(_0x7476:GetPropertyChangedSignal(string.char(65,98,115,111,108,117,116,101,87,105,110,100,111,119,83,105,122,101)), _0x62BD)
_0x62BD()
local _0x178B, _0xFD0B = {}, {}
_0xC69C = function()
for _0x1592, _0xCFC0 in pairs(_0xFD0B) do
local _0x9B7B = _0xE7D0 and _0x1592.kind ==string.char(98)and _0xE7D0.id == _0x1592.id
_0xCFC0.Color = _0x9B7B and _0x0333 or _0x7988
_0xCFC0.Transparency = _0x9B7B and 0.1 or 0
end
end
local function _0x96EC(_0x1592, _0x02E3)
local _0xFCDE = _0x81A6(string.char(84,101,120,116,66,117,116,116,111,110), {
Text ="",
AutoButtonColor = false,
BackgroundTransparency = 1,
LayoutOrder = _0x02E3,
ZIndex = 2,
Parent = _0x7476,
})
table.insert(_0x178B, _0xFCDE)
local _0x1823 = _0x81A6(string.char(70,114,97,109,101), { Size = UDim2.new(1, 0, 0, 102), BackgroundColor3 = _0xF8DD, ZIndex = 2, Parent = _0xFCDE })
_0x46F9(_0x1823, 8)
_0xFD0B[_0x1592] = _0x39A4(_0x1823)
_0x81A6(string.char(73,109,97,103,101,76,97,98,101,108), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.new(0.5, 0, 0.5, 4),
Size = UDim2.fromOffset(84, 84),
BackgroundTransparency = 1,
ScaleType = Enum.ScaleType.Fit,
Image = (string.char(114,98,120,116,104,117,109,98,58,47,47,116,121,112,101,61,37,115,38,105,100,61,37,115,38,119,61,49,53,48,38,104,61,49,53,48)):format(_0x1592.kind ==string.char(98)andstring.char(66,117,110,100,108,101,84,104,117,109,98,110,97,105,108)orstring.char(65,115,115,101,116), _0x732C(_0x1592.id)),
ZIndex = 3,
Parent = _0x1823,
})
if _0x1592.new then
local _0x8404 = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(78,69,87,32,50,48,50,54),
Font = Enum.Font.GothamBold,
TextSize = 9,
TextColor3 = Color3.fromRGB(10, 10, 10),
BackgroundColor3 = _0x0333,
Position = UDim2.fromOffset(6, 6),
Size = UDim2.fromOffset(52, 15),
ZIndex = 4,
Parent = _0x1823,
})
_0x46F9(_0x8404, 5)
end
local _0x838D = _0x81A6(string.char(84,101,120,116,66,117,116,116,111,110), {
Text =string.char(73,68),
Font = Enum.Font.GothamBold,
TextSize = 11,
TextColor3 = _0x9CF4,
BackgroundTransparency = 1,
AnchorPoint = Vector2.new(1, 0),
Position = UDim2.new(1, -26, 0, 4),
Size = UDim2.fromOffset(20, 18),
ZIndex = 5,
Parent = _0x1823,
})
_0xF709(_0x838D.MouseButton1Click, function()
if setclipboard then
setclipboard(_0x732C(_0x1592.id))
_0xE835(string.char(67,111,112,105,101,100),string.char(73,68,32).. _0x732C(_0x1592.id))
else
_0xE835(string.char(73,68), _0x732C(_0x1592.id))
end
end)
local _0xF986 = _0x81A6(string.char(84,101,120,116,66,117,116,116,111,110), {
Text = _0x34CB[_0x60AF(_0x1592)] andstring.char(226,152,133)orstring.char(226,152,134),
Font = Enum.Font.GothamBold,
TextSize = 14,
TextColor3 = _0x34CB[_0x60AF(_0x1592)] and _0x0333 or _0x08BE,
BackgroundTransparency = 1,
AnchorPoint = Vector2.new(1, 0),
Position = UDim2.new(1, -4, 0, 3),
Size = UDim2.fromOffset(20, 20),
ZIndex = 5,
Parent = _0x1823,
})
_0xF709(_0xF986.MouseButton1Click, function()
local _0xFBB7 = _0x60AF(_0x1592)
if _0x34CB[_0xFBB7] then
_0x34CB[_0xFBB7] = nil
_0xE835(string.char(70,97,118,115),string.char(114,101,109,111,118,101,100,32).. _0x1592.name)
else
_0x34CB[_0xFBB7] = { _0x8442 = _0x1592.kind, _0xABD9 = _0x1592.id, _0xBD62 = _0x1592.name, assets = _0x1592.assets }
_0xE835(string.char(70,97,118,115),string.char(97,100,100,101,100,32).. _0x1592.name)
end
_0x7FC0()
_0xF986.Text = _0x34CB[_0xFBB7] andstring.char(226,152,133)orstring.char(226,152,134)_0xF986.TextColor3 = _0x34CB[_0xFBB7] and _0x0333 or _0x08BE
if _0xE692 ==string.char(70,97,118,115)then
_0x6097()
end
end)
local _0x6161 = _0x81A6(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(0, 108),
Size = UDim2.new(1, 0, 1, -108),
BackgroundColor3 = _0x70CF,
ZIndex = 2,
Parent = _0xFCDE,
})
_0x46F9(_0x6161, 8)
_0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text = _0x1592.name:upper(),
Font = Enum.Font.GothamBold,
TextSize = 11,
TextColor3 = _0x0333,
TextWrapped = true,
TextTruncate = Enum.TextTruncate.AtEnd,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(6, 0),
Size = UDim2.new(1, -12, 1, 0),
ZIndex = 3,
Parent = _0x6161,
})
_0xF709(_0xFCDE.MouseEnter, function()
_0x0ED9(_0x1823, 0.15, { BackgroundColor3 = _0x353D })
end)
_0xF709(_0xFCDE.MouseLeave, function()
_0x0ED9(_0x1823, 0.15, { BackgroundColor3 = _0xF8DD })
end)
_0xF709(_0xFCDE.MouseButton1Click, function()
if _0x1592.kind ==string.char(98)then
_0x8C0E(_0x1592)
else
_0x762B(_0x1592)
end
end)
end
local _0xC494, _0x93A1 = {}, 0
local function _0xFDDE()
local _0x64B6 = math.min(#_0xC494, _0x93A1 + 30)
for _0x60FA = _0x93A1 + 1, _0x64B6 do
_0x96EC(_0xC494[_0x60FA], _0x60FA)
end
_0x93A1 = _0x64B6
_0xC69C()
_0x62BD()
end
_0xF709(_0x7476:GetPropertyChangedSignal(string.char(67,97,110,118,97,115,80,111,115,105,116,105,111,110)), function()
if _0x93A1 < #_0xC494 and _0x7476.CanvasPosition.Y + _0x7476.AbsoluteWindowSize.Y >= math.max(0, _0x7476.CanvasSize.Y.Offset - 350) then
_0xFDDE()
end
end)
local function _0x0CB9()
local _0x9DCF
if _0x5F9C and _0x5F9C.mode == _0xE692 then
_0x9DCF = _0x5F9C.items
elseif _0xE692 ==string.char(66,117,110,100,108,101,115)then
_0x9DCF = _0x6545
elseif _0xE692 ==string.char(69,109,111,116,101,115)then
_0x9DCF = _0x86A3
else
_0x9DCF = _0xEF28()
end
local _0xB1B3 = {}
for _0xBFE6, _0x1592 in ipairs(_0x9DCF) do
local _0xC941 = _0x5F9C or _0xE692 ==string.char(70,97,118,115)or _0x2EF6 ==string.char(65,108,108)or _0x2EF6 ==string.char(78,101,119,32,50,48,50,54)and _0x1592.new or _0x2EF6 ==string.char(80,111,112,117,108,97,114)and not _0x1592.new
if _0xC941 and (_0xE730 ==""or _0x1592.name:lower():find(_0xE730, 1, true)) then
table.insert(_0xB1B3, _0x1592)
end
end
return _0xB1B3
end
_0x6097 = function()
for _0xBFE6, _0xD51E in ipairs(_0x178B) do
_0xD51E:Destroy()
end
table.clear(_0x178B)
table.clear(_0xFD0B)
_0xC494 = _0x0CB9()
_0x93A1 = 0
_0x7476.CanvasPosition = Vector2.zero
_0xFDDE()
if _0x5F9C and _0x5F9C.mode == _0xE692 then
_0xD38E.Text =string.char(82,101,115,117,108,116,115,58,32).. #_0xC494
elseif _0xE692 ==string.char(66,117,110,100,108,101,115)then
_0xD38E.Text =string.char(66,117,110,100,108,101,115,32,108,111,97,100,101,100,58,32).. #_0x6545
elseif _0xE692 ==string.char(69,109,111,116,101,115)then
_0xD38E.Text =string.char(69,109,111,116,101,115,32,108,111,97,100,101,100,58,32).. #_0x86A3
else
_0xD38E.Text =string.char(70,97,118,111,114,105,116,101,115,58,32).. #_0xC494
end
_0x60BA.Text = #_0xC494 == 0 and (_0xE692 ==string.char(70,97,118,115)andstring.char(116,97,112,32,226,152,134,32,111,110,32,97,110,121,32,99,97,114,100,32,116,111,32,97,100,100,32,105,116,32,104,101,114,101)orstring.char(110,111,116,104,105,110,103,32,102,111,117,110,100)) or""_0xA523()
end
local function _0xF8E8(_0xE6E2)
if _0xE6E2 == _0xE692 then
return
end
local _0x6355 = _0xBEB7[_0xE692]
_0x0ED9(_0x6355.b, 0.25, { BackgroundTransparency = 0.85 })
_0x0ED9(_0x6355.dot, 0.25, { Size = UDim2.fromOffset(0, 0) })
_0x0ED9(_0x6355.lbl, 0.25, { TextColor3 = _0x08BE, Position = UDim2.fromOffset(17, 0) })
_0xE692 = _0xE6E2
local _0x0D18 = _0xBEB7[_0xE6E2]
_0x0ED9(_0x0D18.b, 0.25, { BackgroundTransparency = 0.35 })
_0x0ED9(_0x0D18.dot, 0.25, { Size = UDim2.fromOffset(6, 6) }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
_0x0ED9(_0x0D18.lbl, 0.25, { TextColor3 = _0x0333, Position = UDim2.fromOffset(22, 0) })
_0x5F9C = nil
_0xA308.Text =""_0xA308.PlaceholderText = _0xE6E2 ==string.char(69,109,111,116,101,115)andstring.char(83,101,97,114,99,104,32,101,109,111,116,101,115,32,111,114,32,112,97,115,116,101,32,101,109,111,116,101,32,73,68,32,47,32,108,105,110,107)orstring.char(83,101,97,114,99,104,32,112,97,99,107,115,32,111,114,32,112,97,115,116,101,32,98,117,110,100,108,101,32,73,68,32,47,32,108,105,110,107)_0x6097()
end
for sub, _0x0D18 in pairs(_0xBEB7) do
_0xF709(_0x0D18.b.MouseButton1Click, function()
_0xF8E8(sub)
end)
end
_0xF709(_0x725F:GetPropertyChangedSignal(string.char(84,101,120,116)), function()
_0xE730 = _0x725F.Text:lower():gsub(string.char(94,37,115,43),""):gsub(string.char(37,115,43,36),"")
_0x6097()
end)
local function _0xD66F(_0x2049)
if _0x545A[_0x2049] then
return _0x545A[_0x2049]
end
local _0x3E35, _0x819A = pcall(function()
return _0x81C9:GetItemDetailsAsync(_0x2049, Enum.AvatarItemType.Bundle)
end)
return if _0x3E35 and _0x819A and _0x819A.BundledItems then {
_0xABD9 = _0x2049,
_0xBD62 = _0x819A.Name orstring.char(66,117,110,100,108,101,32).. _0x732C(_0x2049),
assets = _0xEDFA(_0x819A.BundledItems),
new = false,
_0x8442 =string.char(98),
} else if _0x3E35 and _0x819A and _0x819A.Items then {
_0xABD9 = _0x2049,
_0xBD62 = _0x819A.Name orstring.char(66,117,110,100,108,101,32).. _0x732C(_0x2049),
assets = _0xEDFA(_0x819A.Items),
new = false,
_0x8442 =string.char(98),
} else nil
end
local _0xEF29 = false
local function _0x9BBA()
local _0xD85E = _0xA308.Text:gsub(string.char(94,37,115,43),""):gsub(string.char(37,115,43,36),"")
if _0xD85E ==""then
_0x5F9C = nil
_0x6097()
return
end
if _0xEF29 then
return
end
_0xEF29 = true
local _0xE6E2 = _0xE692 ==string.char(70,97,118,115)andstring.char(66,117,110,100,108,101,115)or _0xE692
task.spawn(function()
local _0x2049 = tonumber(_0xD85E:match(string.char(40,37,100,37,100,37,100,37,100,37,100,43,41)))
if _0x2049 then
if _0xE6E2 ==string.char(66,117,110,100,108,101,115)then
local _0xBB9C = _0xD66F(_0x2049)
if _0xBB9C then
_0x545A[_0x2049] = _0x545A[_0x2049] or _0xBB9C
_0x5F9C = { _0xE692 =string.char(66,117,110,100,108,101,115), _0x280C = { _0xBB9C } }
if _0xE692 ~=string.char(66,117,110,100,108,101,115)then
_0xF8E8(string.char(66,117,110,100,108,101,115))
end
_0x6097()
_0x8C0E(_0xBB9C)
else
_0xE835(string.char(70,114,101,101,32,97,110,105,109,115),string.char(98,117,110,100,108,101,32).. _0x732C(_0x2049) ..string.char(32,110,111,116,32,102,111,117,110,100))
end
else
local _0x9B31 = _0x2F01[_0x2049] or { _0xABD9 = _0x2049, _0xBD62 =string.char(69,109,111,116,101,32).. _0x732C(_0x2049), _0x8442 =string.char(101)}
_0x5F9C = { _0xE692 =string.char(69,109,111,116,101,115), _0x280C = { _0x9B31 } }
_0x6097()
_0x762B(_0x9B31)
end
else
_0xD38E.Text =string.char(83,101,97,114,99,104,105,110,103,46,46,46)local _0x2671 = CatalogSearchParams.new()
_0x2671.SearchKeyword = _0xD85E
_0x2671.Limit = 60
_0x2671.IncludeOffSale = true
if _0xE6E2 ==string.char(69,109,111,116,101,115)then
_0x2671.AssetTypes = { Enum.AvatarAssetType.EmoteAnimation }
else
_0x2671.BundleTypes = { Enum.BundleType.Animations }
end
local _0x3E35, _0x0E62 = pcall(function()
return _0x81C9:SearchCatalogAsync(_0x2671)
end)
if _0x3E35 and _0x0E62 then
local _0x280C = {}
for _0xBFE6, _0x5ED5 in ipairs(_0x0E62:GetCurrentPage()) do
if _0xE6E2 ==string.char(69,109,111,116,101,115)then
table.insert(_0x280C, _0x2F01[_0x5ED5.Id] or { _0xABD9 = _0x5ED5.Id, _0xBD62 = _0x5ED5.Name, _0x8442 =string.char(101)})
else
local _0xBB9C = _0x545A[_0x5ED5.Id]
if not _0xBB9C then
_0xBB9C = { _0xABD9 = _0x5ED5.Id, _0xBD62 = _0x5ED5.Name, assets = _0xEDFA(_0x5ED5.BundledItems), new = false, _0x8442 =string.char(98)}
_0x545A[_0x5ED5.Id] = _0xBB9C
end
table.insert(_0x280C, _0xBB9C)
end
end
_0x5F9C = { _0xE692 = _0xE6E2, _0x280C = _0x280C }
if _0xE692 ~= _0xE6E2 then
_0xF8E8(_0xE6E2)
end
_0x6097()
else
_0x5F9C = nil
_0x725F.Text = _0xD85E
_0xE835(string.char(83,101,97,114,99,104),string.char(99,97,116,97,108,111,103,32,111,102,102,108,105,110,101,44,32,102,105,108,116,101,114,101,100,32,108,111,99,97,108,32,108,105,115,116))
end
end
_0xEF29 = false
end)
end
_0xF709(_0x70D8.MouseButton1Click, _0x9BBA)
_0xF709(_0xA308.FocusLost, function(enter)
if enter then
_0x9BBA()
end
end)
_0x6097()
task.spawn(function()
local function _0xBEEF(_0x815E)
local _0x2671 = CatalogSearchParams.new()
_0x2671.SortType = Enum.CatalogSortType.RecentlyCreated
_0x2671.Limit = 120
_0x815E(_0x2671)
local _0x3E35, _0x0E62 = pcall(function()
return _0x81C9:SearchCatalogAsync(_0x2671)
end)
return _0x3E35 and _0x0E62 and _0x0E62:GetCurrentPage() or {}
end
local _0x0995
for _0x60FA, _0xBB9C in ipairs(_0x6545) do
if _0xBB9C.new then
_0x0995 = _0x60FA
break
end
end
_0x0995 = _0x0995 or #_0x6545 + 1
local _0xE04F = 0
for _0xBFE6, _0x5ED5 in ipairs(_0xBEEF(function(_0x0D18)
_0x0D18.BundleTypes = { Enum.BundleType.Animations }
end)) do
local _0xBFE6, _0x96DF = _0x402B(_0x5ED5.Id, _0x5ED5.Name, _0xEDFA(_0x5ED5.BundledItems), true, _0x0995)
if _0x96DF then
_0x0995 += 1
_0xE04F += 1
end
end
local _0x1E3C, _0x16A1 = 0, 1
for _0xBFE6, _0x5ED5 in ipairs(_0xBEEF(function(_0x0D18)
_0x0D18.AssetTypes = { Enum.AvatarAssetType.EmoteAnimation }
end)) do
if not _0x2F01[_0x5ED5.Id] then
local _0x9B31 = { _0xABD9 = _0x5ED5.Id, _0xBD62 = _0x5ED5.Name, new = true, _0x8442 =string.char(101)}
_0x2F01[_0x5ED5.Id] = _0x9B31
table.insert(_0x86A3, _0x16A1, _0x9B31)
_0x16A1 += 1
_0x1E3C += 1
end
end
if _0xE04F + _0x1E3C > 0 then
if not _0x5F9C and _0x7476.CanvasPosition.Y < 5 then
_0x6097()
else
_0xD38E.Text = _0xE692 ==string.char(69,109,111,116,101,115)andstring.char(69,109,111,116,101,115,32,108,111,97,100,101,100,58,32).. #_0x86A3 or _0xE692 ==string.char(66,117,110,100,108,101,115)andstring.char(66,117,110,100,108,101,115,32,108,111,97,100,101,100,58,32).. #_0x6545 or _0xD38E.Text
end
end
end)
end
do
local _0x1AF9 = {
_0x9B7B = false,
_0xA213 =string.char(79,116,104,101,114,115),
_0x04A9 =string.char(71,104,111,115,116),
_0x9C5B =string.char(83,104,105,109,109,101,114),
custom = Color3.fromHSV(0.999, 0.746, 0.737),
material =string.char(70,111,114,99,101,70,105,101,108,100),
_0x5B47 = true,
_0x99C9 = true,
delay = 400,
_0x5AC5 = 4,
_0xEB84 = 150,
opacity = 70,
}
local _0xAAF6 = { ForceField = Enum.Material.ForceField, Neon = Enum.Material.Neon, Glass = Enum.Material.Glass }
local _0xD980 = Color3.fromRGB(255, 58, 58)
local _0x348D = Color3.fromRGB(64, 150, 255)
local _0x801D = CFrame.new(0, -50000, 0)
local _0x8489 = {
Aqua = { Color3.fromRGB(90, 230, 255), Color3.fromRGB(150, 95, 255) },
Sunset = { Color3.fromRGB(255, 170, 80), Color3.fromRGB(255, 60, 150) },
}
local _0x6340
local _0xC352 = {}
local _0x2E84 = 0
local function _0xE1C1(_0x0D18)
local _0x819A = _0xC352[_0x0D18]
if _0x819A then
if _0x819A.folder then
_0x819A.folder:Destroy()
end
for _0xBFE6, _0xCA34 in ipairs(_0x819A.extra or {}) do
_0xCA34:Destroy()
end
end
_0xC352[_0x0D18] = nil
end
local function _0xE60C()
for _0x0D18 in pairs(_0xC352) do
_0xE1C1(_0x0D18)
end
if _0x6340 then
_0x6340:Destroy()
end
_0x6340 = nil
end
local function _0x0D04(_0x0D18)
if _0x1AF9.target ==string.char(83,101,108,102)then
return _0x0D18 == _0xD33F
end
if _0x1AF9.target ==string.char(79,116,104,101,114,115)then
return _0x0D18 ~= _0xD33F
end
return true
end
local function _0x815E(_0x82D5, mat)
_0x82D5.Anchored = true
_0x82D5.CanCollide = false
_0x82D5.CanTouch = false
_0x82D5.CanQuery = false
_0x82D5.CastShadow = false
_0x82D5.Material = mat or _0xAAF6[_0x1AF9.material] or Enum.Material.ForceField
_0x82D5.Transparency = 1
_0x82D5.CFrame = _0x801D
return _0x82D5
end
local function _0xDB84(_0x9DCF, _0x4FEA)
local _0x3E35, _0x82D5 = pcall(function()
return _0x9DCF:Clone()
end)
if not _0x3E35 or not _0x82D5 then
_0x82D5 = Instance.new(string.char(80,97,114,116))
_0x82D5.Size = _0x9DCF.Size
end
for _0xBFE6, _0xD51E in ipairs(_0x82D5:GetChildren()) do
if not _0xD51E:IsA(string.char(68,97,116,97,77,111,100,101,108,77,101,115,104)) then
_0xD51E:Destroy()
end
end
pcall(function()
_0x82D5.TextureID =""end)
_0x815E(_0x82D5)
_0x82D5.Parent = _0x4FEA
return _0x82D5
end
local function _0xF1DD(_0x0D18)
local _0x8C06, _0xCBAB = _0x0D18.Character, _0x0D18:FindFirstChildOfClass(string.char(66,97,99,107,112,97,99,107))
local function _0x700E(_0xDDE9)
return _0x8C06 and _0x8C06:FindFirstChild(_0xDDE9) or _0xCBAB and _0xCBAB:FindFirstChild(_0xDDE9)
end
if _0x700E(string.char(75,110,105,102,101)) then
return _0xD980
end
if _0x700E(string.char(71,117,110)) then
return _0x348D
end
end
local function _0x928B(_0x819A, _0x23BB, _0x4903)
local _0x1C9F = if _0x1AF9.color ==string.char(82,97,105,110,98,111,119)then 46109 else if _0x1AF9.color ==string.char(87,104,105,116,101)then 39828 else if _0x1AF9.color ==string.char(82,111,108,101)then 5129 else if _0x1AF9.color ==string.char(67,117,115,116,111,109)then 11958 else 31519
if _0x1C9F == 11958 then
local _0x0340 = 0.5 + 0.5 * math.sin(_0x4903 * 3 - _0x23BB * 5)
return _0x1AF9.custom:Lerp(Color3.new(0, 0, 0), _0x23BB * 0.45):Lerp(_0x0333, _0x0340 * 0.18)
elseif _0x1C9F == 39828 then
return _0x0333
elseif _0x1C9F == 46109 then
return Color3.fromHSV((_0x4903 * 0.25 + _0x23BB * 0.6) % 1, 0.6, 1)
elseif _0x1C9F == 5129 then
return _0x819A.role or _0x0333
end
local _0x3A05 = _0x8489[_0x1AF9.color]
if _0x3A05 then
local _0x3FFC = math.clamp(_0x23BB + 0.15 * math.sin(_0x4903 * 2.5 - _0x23BB * 4), 0, 1)
return _0x3A05[1]:Lerp(_0x3A05[2], _0x3FFC)
end
local _0xBE50 = 0.5 + 0.5 * math.sin(_0x4903 * 3 - _0x23BB * 5)
local _0xD51E = math.floor(90 + _0xBE50 * 165)
return Color3.fromRGB(_0xD51E, _0xD51E, _0xD51E)
end
local function _0xFBB7()
return _0x1AF9.style .. _0x1AF9.count .. _0x1AF9.material .. tostring(_0x1AF9.outline) .. tostring(_0x1AF9.marker)
end
local function _0x559C(_0x0D18, _0x8C06)
local _0x819A = {
_0x8C06 = _0x8C06,
_0xFBB7 = _0xFBB7(),
_0x579B = {},
ghosts = {},
_0xEE00 = {},
extra = {},
_0xD172 = 0,
_0x6340 = _0x81A6(string.char(77,111,100,101,108), { Name = _0x0D18.Name, Parent = _0x6340 }),
}
for _0xBFE6, _0x3066 in ipairs(_0x8C06:GetChildren()) do
if _0x3066:IsA(string.char(66,97,115,101,80,97,114,116)) and _0x3066.Name ~=string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)then
table.insert(_0x819A.parts, _0x3066)
end
end
for _0x60FA = 1, _0x1AF9.count do
local _0x82D5 = { _0xD172 = 0 }
if _0x1AF9.style ==string.char(71,104,111,115,116)then
_0x82D5.map = {}
for _0xBFE6, _0x9DCF in ipairs(_0x819A.parts) do
_0x82D5.map[_0x9DCF] = _0xDB84(_0x9DCF, _0x819A.folder)
end
else
_0x82D5.dot = _0x815E(Instance.new(string.char(80,97,114,116)))
_0x82D5.dot.Shape = Enum.PartType.Ball
_0x82D5.dot.Parent = _0x819A.folder
_0x82D5.link = _0x815E(Instance.new(string.char(80,97,114,116)))
_0x82D5.link.Parent = _0x819A.folder
end
_0x819A.ghosts[_0x60FA] = _0x82D5
end
if _0x1AF9.outline then
_0x819A.hl = _0x81A6(string.char(72,105,103,104,108,105,103,104,116), {
Adornee = _0x819A.folder,
DepthMode = Enum.HighlightDepthMode.Occluded,
FillTransparency = 1,
OutlineTransparency = 1,
Parent = _0x819A.folder,
})
end
if _0x1AF9.marker then
_0x819A.ring = _0x815E(Instance.new(string.char(80,97,114,116)), Enum.Material.Neon)
_0x819A.ring.Shape = Enum.PartType.Cylinder
_0x819A.ring.Size = Vector3.new(0.06, 3.6, 3.6)
_0x819A.ring.Parent = _0x6340
table.insert(_0x819A.extra, _0x819A.ring)
_0x819A.disc = _0x815E(Instance.new(string.char(80,97,114,116)), Enum.Material.ForceField)
_0x819A.disc.Shape = Enum.PartType.Cylinder
_0x819A.disc.Size = Vector3.new(0.1, 3.2, 3.2)
_0x819A.disc.Parent = _0x6340
table.insert(_0x819A.extra, _0x819A.disc)
end
_0xC352[_0x0D18] = _0x819A
return _0x819A
end
local function _0xB980(_0x579B, _0xC03D)
local _0xDDE9 = #_0x579B
if _0xDDE9 == 0 then
return
end
if _0xC03D <= _0x579B[1].t then
return _0x579B[1], _0x579B[1], 0
end
for _0x60FA = _0xDDE9, 2, -1 do
local _0x7D74, _0xBB9C = _0x579B[_0x60FA - 1], _0x579B[_0x60FA]
if _0x7D74.t <= _0xC03D then
local _0x3FFC = math.clamp((_0xC03D - _0x7D74.t) / math.max(_0xBB9C.t - _0x7D74.t, 0.001), 0, 1)
return _0x7D74, _0xBB9C, _0x3FFC
end
end
return _0x579B[_0xDDE9], _0x579B[_0xDDE9], 0
end
local _0xAF98 = RaycastParams.new()
_0xAF98.FilterType = Enum.RaycastFilterType.Exclude
_0xF709(_0x7FDD.Heartbeat, function(_0xF45E)
if not _0x1AF9.on then
return
end
local _0x9494 = os.clock()
local _0x4245 = workspace.CurrentCamera
if not _0x4245 then
return
end
if not _0x6340 or not _0x6340.Parent then
_0x6340 = _0x81A6(string.char(70,111,108,100,101,114), { Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,66,97,99,107,84,114,97,99,107), Parent = _0x4245 })
end
local _0x92B5 = _0x9494 - _0x2E84 >= 0.03
if _0x92B5 then
_0x2E84 = _0x9494
end
local _0xD1BE = _0x1AF9.delay / 1000
local _0x4EDF = _0x4245.CFrame.Position
local _0x161C = math.min(_0xF45E * 8, 1)
local _0x89F8 = 1 - _0x1AF9.opacity / 100
for _0xBFE6, _0x0D18 in ipairs(_0x9A21:GetPlayers()) do
local _0x8C06 = _0x0D18.Character
local _0xE4E7 = _0x8C06 and _0x8C06:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xBD98 = _0x8C06 and _0x8C06:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0x819A = _0xC352[_0x0D18]
if not _0x0D04(_0x0D18) or not _0xE4E7 or not _0xBD98 or _0xBD98.Health <= 0 then
if _0x819A then
_0xE1C1(_0x0D18)
end
continue
end
if not _0x819A or _0x819A.char ~= _0x8C06 or _0x819A.key ~= _0xFBB7() then
_0xE1C1(_0x0D18)
_0x819A = _0x559C(_0x0D18, _0x8C06)
end
if _0x92B5 then
local _0xBF51 = { _0x4903 = _0x9494, _0xB7F6 = _0xE4E7.CFrame }
if _0x1AF9.style ==string.char(71,104,111,115,116)then
_0xBF51.cf = {}
for _0xBFE6, _0x9DCF in ipairs(_0x819A.parts) do
if _0x9DCF.Parent then
_0xBF51.cf[_0x9DCF] = _0x9DCF.CFrame
end
end
end
table.insert(_0x819A.hist, _0xBF51)
local _0xC648 = _0x9494 - _0xD1BE - 0.2
while #_0x819A.hist > 2 and _0x819A.hist[1].t < _0xC648 do
table.remove(_0x819A.hist, 1)
end
if _0x1AF9.color ==string.char(82,111,108,101)then
_0x819A.role = _0xF1DD(_0x0D18)
end
end
local _0x24E0 = _0x0D18 == _0xD33F or (_0x4EDF - _0xE4E7.Position).Magnitude <= _0x1AF9.dist
_0x819A.vis += ((_0x24E0 and 1 or 0) - _0x819A.vis) * _0x161C
local _0xACE6, _0xE115, _0x3E35 = _0xB980(_0x819A.hist, _0x9494 - _0xD1BE)
local _0xF176 = _0xACE6 and _0xACE6.root:Lerp(_0xE115.root, _0x3E35)
local _0x9427 = _0xF176 and (_0xF176.Position - _0xE4E7.Position).Magnitude > 0.35
if _0x819A.trail then
local _0x963F = {}
for j = 0, 4 do
_0x963F[#_0x963F + 1] = ColorSequenceKeypoint.new(j / 4, _0x928B(_0x819A, j / 4, _0x9494))
end
local _0x00C9 = ColorSequence.new(_0x963F)
local _0xD172 = _0x819A.vis
local function _0xA793(_0x46BA, _0x622A)
return NumberSequence.new({
NumberSequenceKeypoint.new(0, 1 - (1 - _0x46BA) * _0xD172),
NumberSequenceKeypoint.new(0.6, 1 - (1 - (_0x46BA + (_0x622A - _0x46BA) * 0.6)) * _0xD172),
NumberSequenceKeypoint.new(1, 1),
})
end
_0x819A.trail.Color = _0x00C9
_0x819A.trail.Lifetime = _0xD1BE
_0x819A.trail.Transparency = _0xA793(math.min(_0x89F8 + 0.35, 0.98), 1)
_0x819A.core.Color = _0x00C9
_0x819A.core.Lifetime = _0xD1BE
_0x819A.core.Transparency = _0xA793(_0x89F8 * 0.6, 1)
end
local _0xC22D = _0xE4E7.Position
local _0x93A1 = false
for _0x60FA, _0x82D5 in ipairs(_0x819A.ghosts) do
local _0x7D74, _0xBB9C, _0x3FFC = _0xB980(_0x819A.hist, _0x9494 - _0xD1BE * _0x60FA / _0x1AF9.count)
local _0x2682 = _0x7D74 and _0x7D74.root:Lerp(_0xBB9C.root, _0x3FFC)
local _0xDD0A = _0x2682 and (_0x2682.Position - _0xE4E7.Position).Magnitude > 0.35
_0x82D5.vis += ((_0xDD0A and _0x819A.vis > 0.02 and 1 or 0) - _0x82D5.vis) * _0x161C
local _0x109E = (_0x60FA - 1) / math.max(_0x1AF9.count - 1, 1)
local _0x2984 = 1 - (1 - (_0x89F8 + (1 - _0x89F8) * 0.75 * _0x109E)) * _0x82D5.vis * _0x819A.vis
local _0xF3DB = _0x928B(_0x819A, _0x109E, _0x9494)
if _0x2984 < 0.99 then
_0x93A1 = true
end
if _0x82D5.map then
for _0x9DCF, _0x60D8 in pairs(_0x82D5.map) do
local _0x22DF, _0x171F = _0x7D74 and _0x7D74.cf and _0x7D74.cf[_0x9DCF], _0xBB9C and _0xBB9C.cf and _0xBB9C.cf[_0x9DCF]
if _0x22DF and _0x2984 < 0.99 then
_0x60D8.CFrame = _0x171F and _0x22DF:Lerp(_0x171F, _0x3FFC) or _0x22DF
_0x60D8.Color = _0xF3DB
_0x60D8.Transparency = _0x2984
elseif _0x60D8.Transparency < 1 then
_0x60D8.Transparency = 1
_0x60D8.CFrame = _0x801D
end
end
elseif _0x82D5.dot then
if _0x2682 and _0x2984 < 0.99 then
local _0x16A1 = _0x2682.Position
local _0x9CB7 = 0.9 - 0.5 * _0x109E
_0x82D5.dot.Size = Vector3.one * _0x9CB7
_0x82D5.dot.CFrame = CFrame.new(_0x16A1)
_0x82D5.dot.Color = _0xF3DB
_0x82D5.dot.Transparency = _0x2984
local _0xEB84 = (_0x16A1 - _0xC22D).Magnitude
if _0xEB84 > 0.05 then
_0x82D5.link.Size = Vector3.new(0.12, 0.12, _0xEB84)
_0x82D5.link.CFrame = CFrame.lookAt((_0x16A1 + _0xC22D) / 2, _0x16A1)
_0x82D5.link.Color = _0xF3DB
_0x82D5.link.Transparency = math.min(_0x2984 + 0.15, 1)
else
_0x82D5.link.Transparency = 1
end
_0xC22D = _0x16A1
elseif _0x82D5.dot.Transparency < 1 then
_0x82D5.dot.Transparency = 1
_0x82D5.link.Transparency = 1
_0x82D5.dot.CFrame, _0x82D5.link.CFrame = _0x801D, _0x801D
end
end
end
if _0x819A.hl then
local _0x9B7B = _0x93A1 and _0x819A.vis > 0.05
_0x819A.hl.Enabled = _0x9B7B
if _0x9B7B then
_0x819A.hl.OutlineColor = _0x928B(_0x819A, 0, _0x9494)
_0x819A.hl.OutlineTransparency = math.clamp(_0x89F8 + 0.1, 0, 0.9)
end
end
if _0x819A.ring then
local _0xD172 = (_0x9427 and 1 or 0) * _0x819A.vis
_0x819A.ringVis = (_0x819A.ringVis or 0) + (_0xD172 - (_0x819A.ringVis or 0)) * _0x161C
if _0xF176 and _0x819A.ringVis > 0.02 then
_0xAF98.FilterDescendantsInstances = { _0x6340, _0x8C06 }
local _0x6F00 = workspace:Raycast(_0xF176.Position, Vector3.new(0, -8, 0), _0xAF98)
local _0xD4A2 = _0x6F00 and _0x6F00.Position.Y + 0.05 or _0xF176.Position.Y - 3
local _0xD10F = CFrame.new(_0xF176.Position.X, _0xD4A2, _0xF176.Position.Z) * CFrame.Angles(0, 0, math.rad(90))
local _0xB723 = 0.5 + 0.5 * math.sin(_0x9494 * 4)
local _0xF3DB = _0x928B(_0x819A, 1, _0x9494)
local _0x334A = 3.2 + _0xB723 * 0.6
_0x819A.ring.Size = Vector3.new(0.05, _0x334A, _0x334A)
_0x819A.ring.CFrame = _0xD10F
_0x819A.ring.Color = _0xF3DB
_0x819A.ring.Transparency = 1 - (1 - (0.55 + _0xB723 * 0.25)) * _0x819A.ringVis
_0x819A.disc.CFrame = _0xD10F * CFrame.new(0.02, 0, 0)
_0x819A.disc.Color = _0xF3DB
_0x819A.disc.Transparency = 1 - (1 - _0x89F8 * 0.5) * _0x819A.ringVis
elseif _0x819A.ring.Transparency < 1 then
_0x819A.ring.Transparency, _0x819A.disc.Transparency = 1, 1
_0x819A.ring.CFrame, _0x819A.disc.CFrame = _0x801D, _0x801D
end
end
end
for _0x0D18 in pairs(_0xC352) do
if not _0x0D18.Parent then
_0xE1C1(_0x0D18)
end
end
end)
local function _0x6B65(_0x3FFC)
return function(_0xBE50)
_0x1AF9[_0x3FFC] = _0xBE50
end
end
local _0xDBF6 = _0x78B0(_0x27DE,string.char(66,97,99,107,84,114,97,99,107),string.char(66,97,99,107,84,114,97,99,107))
_0xDBF6:Toggle(string.char(69,110,97,98,108,101),string.char(103,104,111,115,116,115,32,111,102,32,112,97,115,116,32,112,111,115,105,116,105,111,110,115), function(_0x9B7B)
_0x1AF9.on = _0x9B7B
if not _0x9B7B then
_0xE60C()
end
_0xE835(string.char(66,97,99,107,84,114,97,99,107,58,32).. (_0x9B7B andstring.char(79,110)orstring.char(79,102,102)), _0x9B7B andstring.char(115,104,111,119,105,110,103,32,112,97,115,116,32,112,111,115,105,116,105,111,110,115)orstring.char(103,104,111,115,116,115,32,114,101,109,111,118,101,100))
end)
_0xDBF6:Segmented(string.char(84,97,114,103,101,116), {string.char(83,101,108,102),string.char(79,116,104,101,114,115),string.char(65,108,108)}, _0x1AF9.target, _0x6B65(string.char(116,97,114,103,101,116)))
_0xDBF6:Segmented(string.char(83,116,121,108,101), {string.char(71,104,111,115,116),string.char(68,111,116,115)}, _0x1AF9.style ==string.char(84,114,97,105,108)andstring.char(71,104,111,115,116)or _0x1AF9.style, function(_0xBE50)
_0x1AF9.style = _0xBE50
end)
local _0x0C06 = _0xDBF6:Select(string.char(67,111,108,111,114),string.char(82,111,108,101,32,61,32,109,117,114,100,101,114,101,114,32,114,101,100,44,32,115,104,101,114,105,102,102,32,98,108,117,101), {string.char(83,104,105,109,109,101,114),string.char(82,97,105,110,98,111,119),string.char(65,113,117,97),string.char(83,117,110,115,101,116),string.char(87,104,105,116,101),string.char(82,111,108,101),string.char(67,117,115,116,111,109)}, _0x1AF9.color, _0x6B65(string.char(99,111,108,111,114)))
_0xDBF6:ColorPicker(string.char(67,117,115,116,111,109,32,99,111,108,111,114),string.char(112,105,99,107,32,97,32,99,111,108,111,114,32,45,32,67,111,108,111,114,32,115,119,105,116,99,104,101,115,32,116,111,32,67,117,115,116,111,109), _0x1AF9.custom, function(_0xD51E)
_0x1AF9.custom = _0xD51E
if not _0xF810 and _0x0C06.Get() ~=string.char(67,117,115,116,111,109)then
_0x0C06.Set(string.char(67,117,115,116,111,109))
end
end)
_0xDBF6:Select(string.char(77,97,116,101,114,105,97,108),string.char(102,111,114,32,71,104,111,115,116,32,97,110,100,32,68,111,116,115), {string.char(70,111,114,99,101,70,105,101,108,100),string.char(78,101,111,110),string.char(71,108,97,115,115)}, _0x1AF9.material, _0x6B65(string.char(109,97,116,101,114,105,97,108)))
local _0xC2D5 = _0x78B0(_0x27DE,string.char(69,102,102,101,99,116,115),string.char(66,97,99,107,84,114,97,99,107))
local _0xF832 = _0xC2D5:Toggle(string.char(79,117,116,108,105,110,101),string.char(103,108,111,119,105,110,103,32,101,100,103,101,32,97,114,111,117,110,100,32,116,104,101,32,103,104,111,115,116,115), _0x6B65(string.char(111,117,116,108,105,110,101)))
local _0xCFE8 = _0xC2D5:Toggle(string.char(77,97,114,107,101,114),string.char(112,117,108,115,105,110,103,32,100,105,115,99,32,97,116,32,116,104,101,32,111,108,100,101,115,116,32,112,111,115,105,116,105,111,110), _0x6B65(string.char(109,97,114,107,101,114)))
_0xF832.Set(true, true)
_0xCFE8.Set(true, true)
local _0x1B1A = _0x78B0(_0x27DE,string.char(84,117,110,105,110,103),string.char(66,97,99,107,84,114,97,99,107)):Collapsible(true)
_0x1B1A:Slider(string.char(68,101,108,97,121), 100, 1000, _0x1AF9.delay, _0x6B65(string.char(100,101,108,97,121)), function(_0xBE50)
return _0xBE50 ..string.char(109,115)end)
_0x1B1A:Slider(string.char(71,104,111,115,116,115), 1, 8, _0x1AF9.count, _0x6B65(string.char(99,111,117,110,116)))
_0x1B1A:Slider(string.char(79,112,97,99,105,116,121), 10, 100, _0x1AF9.opacity, _0x6B65(string.char(111,112,97,99,105,116,121)), function(_0xBE50)
return _0xBE50 ..string.char(37)end)
_0x1B1A:Slider(string.char(77,97,120,32,100,105,115,116,97,110,99,101), 25, 500, _0x1AF9.dist, _0x6B65(string.char(100,105,115,116)), function(_0xBE50)
return _0xBE50 ..string.char(109)end)
_0xF2E7 = function()
_0x1AF9.on = false
_0xE60C()
end
end
do
local _0x26CB = {
_0x9B7B = false,
_0xA213 =string.char(83,101,108,102),
model =string.char(84,111,121),
_0x2454 = 0,
fur = Color3.fromRGB(250, 248, 245),
bow = Color3.fromRGB(255, 92, 138),
}
local _0x0FAD = { Toy = 6132351260, Sugar = 13856439988, Real = 110128375015584, [string.char(84,117,110,103,32,84,117,110,103,32,83,97,104,117,114)] = 138151705692565 }
local _0x752D, _0xCC55 = {}, {}
local _0xED94 = {}
local function _0xB6F4(_0x0D18)
if _0x0D18 == _0xD33F then
return _0x26CB.on and _0x26CB.model or nil
end
if _0x26CB.on and _0x26CB.target ==string.char(65,108,108)then
return _0x26CB.model
end
return nil
end
local function _0xEBB8(_0x0D18)
local _0x819A = _0xED94[_0x0D18]
if not _0x819A then
return
end
if _0x819A.folder then
_0x819A.folder:Destroy()
end
if _0x819A.char and _0x819A.char.Parent then
for _0xBFE6, _0xA051 in ipairs(_0x819A.char:GetDescendants()) do
if (_0xA051:IsA(string.char(66,97,115,101,80,97,114,116)) or _0xA051:IsA(string.char(68,101,99,97,108))) and not _0xA051:FindFirstAncestorOfClass(string.char(84,111,111,108)) then
_0xA051.LocalTransparencyModifier = 0
end
end
end
_0xED94[_0x0D18] = nil
end
local function _0x9A0F(_0xBD62)
if _0x752D[_0xBD62] ~= nil then
return _0x752D[_0xBD62] or nil
end
if _0xCC55[_0xBD62] then
return nil
end
_0xCC55[_0xBD62] = true
task.spawn(function()
local _0x3E35, _0xC66A = pcall(function()
return game:GetObjects(string.char(114,98,120,97,115,115,101,116,105,100,58,47,47).. _0x0FAD[_0xBD62])
end)
local _0xB7F6 = _0x3E35 and _0xC66A and _0xC66A[1]
if _0xB7F6 and not _0xB7F6:IsA(string.char(77,111,100,101,108)) then
local _0xE6E2 = Instance.new(string.char(77,111,100,101,108))
for _0xBFE6, _0xCA34 in ipairs(_0xC66A) do
_0xCA34.Parent = _0xE6E2
end
_0xB7F6 = _0xE6E2
end
if _0xB7F6 then
for _0xBFE6, _0xA051 in ipairs(_0xB7F6:GetDescendants()) do
if _0xA051:IsA(string.char(76,117,97,83,111,117,114,99,101,67,111,110,116,97,105,110,101,114)) or _0xA051:IsA(string.char(83,111,117,110,100)) or _0xA051:IsA(string.char(67,108,105,99,107,68,101,116,101,99,116,111,114)) or _0xA051:IsA(string.char(80,114,111,120,105,109,105,116,121,80,114,111,109,112,116)) or _0xA051:IsA(string.char(72,117,109,97,110,111,105,100)) or _0xA051:IsA(string.char(74,111,105,110,116,73,110,115,116,97,110,99,101)) or _0xA051:IsA(string.char(87,101,108,100,67,111,110,115,116,114,97,105,110,116)) or _0xA051:IsA(string.char(66,105,108,108,98,111,97,114,100,71,117,105)) then
_0xA051:Destroy()
end
end
if not _0xB7F6:FindFirstChildWhichIsA(string.char(66,97,115,101,80,97,114,116), true) then
_0xB7F6 = nil
end
end
_0x752D[_0xBD62] = _0xB7F6 or false
_0xCC55[_0xBD62] = nil
if not _0xB7F6 then
_0xE835(string.char(67,117,115,116,111,109,32,77,111,100,101,108,115), _0xBD62 ..string.char(32,102,97,105,108,101,100,32,116,111,32,108,111,97,100))
end
end)
return nil
end
local function _0x2E97(_0x0D18, _0x8C06, _0x37D7)
local _0xE4E7 = _0x8C06:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xBD98 = _0x8C06:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if not _0xE4E7 or not _0xBD98 then
return
end
local _0x819A = { _0x8C06 = _0x8C06, _0xEE00 = {}, ears = {}, seed = math.random() * 10, _0x8442 =string.char(97,115,115,101,116)}
_0x819A.folder = _0x81A6(string.char(70,111,108,100,101,114), { Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,67,117,115,116,111,109,77,111,100,101,108), Parent = _0x8C06 })
local _0xE6E2 = _0x37D7:Clone()
local _0xEE00 = {}
for _0xBFE6, _0xA051 in ipairs(_0xE6E2:GetDescendants()) do
if _0xA051:IsA(string.char(66,97,115,101,80,97,114,116)) then
_0xA051.Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,66,117,110,110,121)_0xA051.Anchored = false
_0xA051.CanCollide = false
_0xA051.CanQuery = false
_0xA051.CanTouch = false
_0xA051.Massless = true
table.insert(_0xEE00, _0xA051)
end
end
local _0xBFE6, _0x52F8 = _0xE6E2:GetBoundingBox()
local _0x1BC5 = _0xBD98.HipHeight + _0xE4E7.Size.Y / 2 + 2.6
pcall(function()
_0xE6E2:ScaleTo(_0xE6E2:GetScale() * _0x1BC5 / math.max(_0x52F8.Y, 0.1))
end)
local _0x396A, _0xC520 = _0xE6E2:GetBoundingBox()
_0xE6E2.WorldPivot = CFrame.new(_0x396A.Position) * (_0xE6E2.WorldPivot - _0xE6E2.WorldPivot.Position)
local _0x2660 = _0xBD98.HipHeight + _0xE4E7.Size.Y / 2
local _0xD10F = CFrame.new(0, -_0x2660 + _0xC520.Y / 2, 0) * CFrame.Angles(0, math.rad(_0x26CB.turn), 0)
_0xE6E2:PivotTo(_0xE4E7.CFrame * _0xD10F)
table.sort(_0xEE00, function(_0x7D74, _0xBB9C)
return _0x7D74.Size.Magnitude > _0xBB9C.Size.Magnitude
end)
local _0xBEB3 = _0xEE00[1]
for _0x60FA = 2, #_0xEE00 do
local _0x2E4F = Instance.new(string.char(87,101,108,100,67,111,110,115,116,114,97,105,110,116))
local _0x525A = _0x2E4F
local _0x3288 = {}
_0x3288[23771] = {string.char(80,97,114,116,48),
function()
return _0xBEB3
end,
}
_0x3288[20038] = {string.char(80,97,114,101,110,116),
function()
return _0xEE00[_0x60FA]
end,
}
_0x3288[1541] = {string.char(80,97,114,116,49),
function()
return _0xEE00[_0x60FA]
end,
}
local _0x5E7A = { 23771, 1541, 20038 }
for wcIdx = 1, #_0x5E7A do
local _0x2688 = _0x3288[_0x5E7A[wcIdx]]
_0x525A[_0x2688[1]] = _0x2688[2]()
end
end
local _0x42FB = Instance.new(string.char(87,101,108,100))
do
local _0xA95E = _0x42FB
local _0x6763 = {}
_0x6763[57596] = {string.char(80,97,114,116,48),
function()
return _0xE4E7
end,
}
_0x6763[41635] = {string.char(67,48),
function()
return (_0xE4E7.CFrame:ToObjectSpace(_0xBEB3.CFrame))
end,
}
_0x6763[47751] = {string.char(80,97,114,116,49),
function()
return _0xBEB3
end,
}
_0x6763[60997] = {string.char(80,97,114,101,110,116),
function()
return _0xBEB3
end,
}
local _0x672D = { 57596, 47751, 41635, 60997 }
for hopIdx = 1, #_0x672D do
local _0x64B1 = _0x6763[_0x672D[hopIdx]]
_0xA95E[_0x64B1[1]] = _0x64B1[2]()
end
end
_0x819A.hop, _0x819A.hopBase = _0x42FB, _0x42FB.C0
_0xE6E2.Parent = _0x819A.folder
_0xED94[_0x0D18] = _0x819A
return _0x819A
end
local function _0xE60C()
for _0x0D18 in pairs(_0xED94) do
_0xEBB8(_0x0D18)
end
end
_0xF709(_0x7FDD.Heartbeat, function()
if not _0x26CB.on and next(_0xED94) == nil then
return
end
local _0x4903 = os.clock()
for _0xBFE6, _0x0D18 in ipairs(_0x9A21:GetPlayers()) do
local _0x8C06 = _0x0D18.Character
local _0xBD98 = _0x8C06 and _0x8C06:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0x819A = _0xED94[_0x0D18]
local _0xBD62 = _0xB6F4(_0x0D18)
if not _0xBD62 or not _0x8C06 or not _0xBD98 or _0xBD98.Health <= 0 then
if _0x819A then
_0xEBB8(_0x0D18)
end
else
if not _0x819A or _0x819A.char ~= _0x8C06 or not _0x819A.folder.Parent or _0x819A.model ~= _0xBD62 or _0x819A.turn ~= _0x26CB.turn then
local _0x37D7 = _0x9A0F(_0xBD62)
if _0x37D7 then
_0xEBB8(_0x0D18)
_0x819A = _0x2E97(_0x0D18, _0x8C06, _0x37D7)
if _0x819A then
_0x819A.model, _0x819A.turn = _0xBD62, _0x26CB.turn
end
end
end
if _0x819A then
for _0xBFE6, _0xA051 in ipairs(_0x8C06:GetDescendants()) do
if (_0xA051:IsA(string.char(66,97,115,101,80,97,114,116)) or _0xA051:IsA(string.char(68,101,99,97,108))) and _0xA051.Name ~=string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)and not _0xA051:IsDescendantOf(_0x819A.folder) and not _0xA051:FindFirstAncestorOfClass(string.char(84,111,111,108)) and _0xA051.LocalTransparencyModifier < 1 then
_0xA051.LocalTransparencyModifier = 1
end
end
local _0xB2D1 = math.clamp(_0xBD98.MoveDirection.Magnitude, 0, 1)
for _0xBFE6, _0x9B31 in ipairs(_0x819A.ears) do
local _0x3E89 = math.sin(_0x4903 * 2.2 + _0x819A.seed + _0x9B31.side) * 0.07
local _0xD95C = math.sin(_0x4903 * 11 + _0x819A.seed) * 0.22 * _0xB2D1
_0x9B31.weld.C0 = _0x9B31.pivot * CFrame.Angles(0.12 * _0xB2D1 + _0xD95C, 0, (-0.2 + _0x3E89) * _0x9B31.side) * CFrame.new(0, 0.95, 0)
end
if _0x819A.tail then
local _0x5D9E = math.abs(math.sin(_0x4903 * (_0xB2D1 > 0 and 11 or 3) + _0x819A.seed)) * (0.08 + 0.12 * _0xB2D1)
_0x819A.tail.C0 = _0x819A.tailBase * CFrame.new(0, _0x5D9E, 0)
end
if _0x819A.hop then
local _0xEF0E = _0xB2D1 > 0 and math.abs(math.sin(_0x4903 * 9 + _0x819A.seed)) * 0.9 * _0xB2D1 or math.sin(_0x4903 * 2 + _0x819A.seed) * 0.05
local _0xA888 = _0xB2D1 > 0 and -0.12 * _0xB2D1 or 0
_0x819A.hop.C0 = CFrame.new(0, _0xEF0E, 0) * _0x819A.hopBase * CFrame.Angles(_0xA888, 0, 0)
end
end
end
end
for _0x0D18 in pairs(_0xED94) do
if not _0x0D18.Parent then
_0xEBB8(_0x0D18)
end
end
end)
local _0xDBF6 = _0x78B0(_0x27DE,string.char(67,117,115,116,111,109,32,77,111,100,101,108,115),string.char(77,111,100,101,108,115))
_0xDBF6:Toggle(string.char(67,117,115,116,111,109,32,77,111,100,101,108),string.char(114,101,112,108,97,99,101,32,121,111,117,114,32,99,104,97,114,97,99,116,101,114,32,119,105,116,104,32,116,104,101,32,115,101,108,101,99,116,101,100,32,109,111,100,101,108), function(_0x9B7B)
_0x26CB.on = _0x9B7B
if not _0x9B7B then
_0xE60C()
end
_0xE835(string.char(67,117,115,116,111,109,32,77,111,100,101,108,58,32).. (_0x9B7B andstring.char(79,110)orstring.char(79,102,102)), _0x9B7B and _0x26CB.model orstring.char(98,97,99,107,32,116,111,32,104,117,109,97,110))
end)
_0xDBF6:Select(string.char(77,111,100,101,108),string.char(99,117,115,116,111,109,32,109,111,100,101,108), {string.char(84,111,121),string.char(83,117,103,97,114),string.char(82,101,97,108),string.char(84,117,110,103,32,84,117,110,103,32,83,97,104,117,114)}, _0x26CB.model, function(_0xBE50)
_0x26CB.model = _0xBE50
end)
_0xDBF6:Segmented(string.char(84,97,114,103,101,116), {string.char(83,101,108,102),string.char(65,108,108)}, _0x26CB.target, function(_0xBE50)
_0x26CB.target = _0xBE50
_0xE60C()
end)
local _0x297E = _0x4FF7[string.char(67,117,115,116,111,109,32,77,111,100,101,108,115,47,116,117,114,110)]
if type(_0x297E) ==string.char(110,117,109,98,101,114)then
_0x26CB.turn = _0x297E
end
_0xDBF6:Button(string.char(82,111,116,97,116,101,32,109,111,100,101,108),string.char(105,102,32,105,116,32,102,97,99,101,115,32,116,104,101,32,119,114,111,110,103,32,119,97,121), function()
_0x26CB.turn = (_0x26CB.turn + 90) % 360
_0x330E(string.char(67,117,115,116,111,109,32,77,111,100,101,108,115,47,116,117,114,110), _0x26CB.turn)
end)
_0x64F7(string.char(67,117,115,116,111,109,32,77,111,100,101,108,115,47,116,117,114,110), function(_0xBE50)
if type(_0xBE50) ==string.char(110,117,109,98,101,114)then
_0x26CB.turn = _0xBE50 % 360
end
end, function()
return _0x26CB.turn
end, 0)
_0x7202 = _0xE60C
end
do
local _0x9F37 = { headless = false, korblox = false }
local _0x522F = { _0x8C06 = nil, orig = nil, extra = {} }
local function _0xBE9E()
local _0xCA34 = _0x522F.orig
if _0xCA34 and _0xCA34.part and _0xCA34.part.Parent then
pcall(function()
_0xCA34.part.MeshId = _0xCA34.mesh
_0xCA34.part.TextureID = _0xCA34.tex
end)
end
for _0xBFE6, _0xA051 in ipairs(_0x522F.extra) do
_0xA051:Destroy()
end
table.clear(_0x522F.extra)
_0x522F.orig = nil
if _0x522F.char then
for _0xBFE6, _0xDDE9 in ipairs({string.char(82,105,103,104,116,85,112,112,101,114,76,101,103),string.char(82,105,103,104,116,76,111,119,101,114,76,101,103),string.char(82,105,103,104,116,70,111,111,116)}) do
local _0xA85E = _0x522F.char:FindFirstChild(_0xDDE9)
if _0xA85E then
_0xA85E.LocalTransparencyModifier = 0
end
end
end
_0x522F.hide = nil
end
local function _0x0866(_0x8C06)
_0xBE9E()
_0x522F.char = _0x8C06
local _0xCBB5 = _0x8C06:FindFirstChild(string.char(82,105,103,104,116,85,112,112,101,114,76,101,103))
if _0xCBB5 then
_0x522F.hide = {string.char(82,105,103,104,116,76,111,119,101,114,76,101,103),string.char(82,105,103,104,116,70,111,111,116)}
local _0xCA34 = { _0x3066 = _0xCBB5, mesh = _0xCBB5.MeshId, _0x0E85 = _0xCBB5.TextureID }
local _0x3E35 = pcall(function()
_0xCBB5.MeshId =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,57,48,50,57,52,50,48,57,54)_0xCBB5.TextureID =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,57,48,50,56,52,51,51,57,56)end)
if _0x3E35 then
_0x522F.orig = _0xCA34
else
table.insert(_0x522F.hide,string.char(82,105,103,104,116,85,112,112,101,114,76,101,103))
local _0xD1AA = Instance.new(string.char(80,97,114,116))
_0xD1AA.Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,75,111,114,98,108,111,120)_0xD1AA.CanCollide, _0xD1AA.CanQuery, _0xD1AA.CanTouch, _0xD1AA.Massless = false, false, false, true
_0xD1AA.Size = _0xCBB5.Size
_0xD1AA.CFrame = _0xCBB5.CFrame
local _0xE6E2 = Instance.new(string.char(83,112,101,99,105,97,108,77,101,115,104))
_0xE6E2.MeshType = Enum.MeshType.FileMesh
_0xE6E2.MeshId, _0xE6E2.TextureId =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,57,48,50,57,52,50,48,57,54),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,57,48,50,56,52,51,51,57,56)_0xE6E2.Parent = _0xD1AA
local _0x42FB = Instance.new(string.char(87,101,108,100,67,111,110,115,116,114,97,105,110,116))
_0x42FB.Part0, _0x42FB.Part1 = _0xCBB5, _0xD1AA
_0x42FB.Parent = _0xD1AA
_0xD1AA.Parent = _0x8C06
table.insert(_0x522F.extra, _0xD1AA)
end
return
end
local _0x500D = _0x8C06:FindFirstChild(string.char(82,105,103,104,116,32,76,101,103))
if _0x500D then
for _0xBFE6, _0x26CB in ipairs(_0x8C06:GetChildren()) do
if _0x26CB:IsA(string.char(67,104,97,114,97,99,116,101,114,77,101,115,104)) and _0x26CB.BodyPart == Enum.BodyPart.RightLeg then
_0x26CB.Parent = nil
table.insert(_0x522F.extra, {
Destroy = function()
_0x26CB.Parent = _0x8C06
end,
})
end
end
local _0xE6E2 = Instance.new(string.char(83,112,101,99,105,97,108,77,101,115,104))
do
local _0xDF6C = _0xE6E2
local _0x680F = {}
_0x680F[42163] = {string.char(77,101,115,104,84,121,112,101),
function()
return Enum.MeshType.FileMesh
end,
}
_0x680F[42155] = {string.char(78,97,109,101),
function()
returnstring.char(67,108,117,109,115,121,83,99,114,105,112,116,75,111,114,98,108,111,120)end,
}
local _0x9271 = { 42155, 42163 }
for meshIdx = 1, #_0x9271 do
local _0xEEE4 = _0x680F[_0x9271[meshIdx]]
_0xDF6C[_0xEEE4[1]] = _0xEEE4[2]()
end
end
_0xE6E2.MeshId, _0xE6E2.TextureId =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,48,49,56,53,49,54,57,54),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,48,49,56,53,49,50,53,52)_0xE6E2.Parent = _0x500D
table.insert(_0x522F.extra, _0xE6E2)
end
end
local function _0x4B23(_0x8C06, _0x9219)
local _0x210D = _0x8C06 and _0x8C06:FindFirstChild(string.char(72,101,97,100))
if not _0x210D then
return
end
_0x210D.LocalTransparencyModifier = _0x9219 and 1 or 0
for _0xBFE6, _0x819A in ipairs(_0x210D:GetChildren()) do
if _0x819A:IsA(string.char(68,101,99,97,108)) then
_0x819A.LocalTransparencyModifier = _0x9219 and 1 or 0
end
end
end
local function _0xC098(_0x8C06)
if _0x522F.char ~= _0x8C06 then
return false
end
local _0xCBB5 = _0x8C06:FindFirstChild(string.char(82,105,103,104,116,85,112,112,101,114,76,101,103))
if _0xCBB5 then
if _0x522F.orig then
return _0x522F.orig.part == _0xCBB5 and _0xCBB5.MeshId ==string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,57,48,50,57,52,50,48,57,54)end
for _0xBFE6, _0xA051 in ipairs(_0x522F.extra) do
if typeof(_0xA051) ==string.char(73,110,115,116,97,110,99,101)and _0xA051.Name ==string.char(67,108,117,109,115,121,83,99,114,105,112,116,75,111,114,98,108,111,120)and _0xA051.Parent == _0x8C06 then
local _0x42FB = _0xA051:FindFirstChildOfClass(string.char(87,101,108,100,67,111,110,115,116,114,97,105,110,116))
return _0x42FB ~= nil and _0x42FB.Part0 == _0xCBB5
end
end
return false
end
local _0x500D = _0x8C06:FindFirstChild(string.char(82,105,103,104,116,32,76,101,103))
return _0x500D ~= nil and _0x500D:FindFirstChild(string.char(67,108,117,109,115,121,83,99,114,105,112,116,75,111,114,98,108,111,120)) ~= nil
end
local _0xFBBF
local _0xEEDF = 0
_0xF709(_0x7FDD.RenderStepped, function()
local _0x8C06 = _0xD33F.Character
if not _0x8C06 then
return
end
if _0x9F37.headless then
_0x4B23(_0x8C06, true)
end
if _0x9F37.korblox then
local _0x9494 = os.clock()
if _0xFBBF ~= _0x8C06 or _0x9494 >= _0xEEDF and not _0xC098(_0x8C06) then
_0xFBBF = _0x8C06
_0xEEDF = _0x9494 + 0.3
_0x0866(_0x8C06)
elseif _0x9494 >= _0xEEDF then
_0xEEDF = _0x9494 + 0.3
end
for _0xBFE6, _0xDDE9 in ipairs(_0x522F.hide or {}) do
local _0xA85E = _0x8C06:FindFirstChild(_0xDDE9)
if _0xA85E then
_0xA85E.LocalTransparencyModifier = 1
end
end
end
end)
local _0xDBF6 = _0x78B0(_0x27DE,string.char(65,118,97,116,97,114),string.char(77,111,100,101,108,115))
_0xDBF6:Toggle(string.char(72,101,97,100,108,101,115,115),string.char(110,111,32,104,101,97,100,32,40,111,110,108,121,32,121,111,117,32,115,101,101,32,105,116,41), function(_0x9B7B)
_0x9F37.headless = _0x9B7B
if not _0x9B7B then
_0x4B23(_0xD33F.Character, false)
end
end)
_0xDBF6:Toggle(string.char(75,111,114,98,108,111,120),string.char(75,111,114,98,108,111,120,32,68,101,97,116,104,115,112,101,97,107,101,114,32,108,101,103,32,40,111,110,108,121,32,121,111,117,32,115,101,101,32,105,116,41), function(_0x9B7B)
_0x9F37.korblox = _0x9B7B
_0xFBBF = nil
if not _0x9B7B then
_0xBE9E()
end
end)
_0xC90D = function()
_0x9F37.headless, _0x9F37.korblox = false, false
_0x4B23(_0xD33F.Character, false)
_0xBE9E()
end
end
do
local _0x7BC4 = {
_0x9B7B = false,
_0x04A9 =string.char(69,110,101,114,103,121),
custom = Color3.fromRGB(105, 205, 255),
intensity = 55,
_0x52F8 = 100,
}
local _0xD49B
local _0x43F8 = {}
local _0x2C5A = {}
local _0x9A72
local _0x4CF8
local _0xBA62 = 0
local function _0xB86F(_0xBA21)
table.insert(_0x43F8, _0xBA21)
return _0xBA21
end
local function _0xEBB8()
for _0xBFE6, _0xBA21 in ipairs(_0x43F8) do
if _0xBA21.Parent then
_0xBA21:Destroy()
end
end
table.clear(_0x43F8)
table.clear(_0x2C5A)
_0xD49B, _0x9A72, _0x4CF8 = nil, nil, nil
end
local function _0xCE2F()
if _0x7BC4.style ==string.char(70,108,97,109,101)then
return Color3.fromRGB(255, 92, 34)
elseif _0x7BC4.style ==string.char(70,114,111,115,116)then
return Color3.fromRGB(125, 225, 255)
elseif _0x7BC4.style ==string.char(86,111,105,100)then
return Color3.fromRGB(145, 65, 255)
elseif _0x7BC4.style ==string.char(82,97,105,110,98,111,119)then
return Color3.fromHSV(os.clock() * 0.15 % 1, 0.85, 1)
elseif _0x7BC4.style ==string.char(67,117,115,116,111,109)then
return _0x7BC4.custom
end
return Color3.fromRGB(105, 205, 255)
end
local function _0x8C16(_0x4FEA, secondary)
local _0xFF4E = _0x7BC4.size / 100
local _0xCE50 = _0x7BC4.intensity * (secondary and 0.18 or 0.42)
local _0xDC5C =string.char(114,98,120,97,115,115,101,116,58,47,47,116,101,120,116,117,114,101,115,47,112,97,114,116,105,99,108,101,115,47,115,112,97,114,107,108,101,115,95,109,97,105,110,46,100,100,115)local _0xB07F = NumberRange.new(0.45, 1.5)
local _0x9593 = Vector3.new(0, 1.2, 0)
local _0x1C4E = NumberRange.new(0.65, 1.25)
local _0x52F8
if _0x7BC4.style ==string.char(70,108,97,109,101)and not secondary then
_0xDC5C =string.char(114,98,120,97,115,115,101,116,58,47,47,116,101,120,116,117,114,101,115,47,112,97,114,116,105,99,108,101,115,47,102,105,114,101,95,109,97,105,110,46,100,100,115)_0xB07F = NumberRange.new(1.2, 2.8)
_0x9593 = Vector3.new(0, 3.5, 0)
_0x52F8 = NumberSequence.new({
NumberSequenceKeypoint.new(0, 0.7 * _0xFF4E),
NumberSequenceKeypoint.new(0.55, 1.5 * _0xFF4E),
NumberSequenceKeypoint.new(1, 0),
})
elseif _0x7BC4.style ==string.char(86,111,105,100)and not secondary then
_0xDC5C =string.char(114,98,120,97,115,115,101,116,58,47,47,116,101,120,116,117,114,101,115,47,112,97,114,116,105,99,108,101,115,47,115,109,111,107,101,95,109,97,105,110,46,100,100,115)_0xB07F = NumberRange.new(0.2, 0.8)
_0x9593 = Vector3.new(0, 1.8, 0)
_0x1C4E = NumberRange.new(1, 1.8)
_0x52F8 = NumberSequence.new({
NumberSequenceKeypoint.new(0, 1.1 * _0xFF4E),
NumberSequenceKeypoint.new(0.65, 2.1 * _0xFF4E),
NumberSequenceKeypoint.new(1, 0),
})
elseif _0x7BC4.style ==string.char(70,114,111,115,116)and not secondary then
_0xDC5C =string.char(114,98,120,97,115,115,101,116,58,47,47,116,101,120,116,117,114,101,115,47,112,97,114,116,105,99,108,101,115,47,115,109,111,107,101,95,109,97,105,110,46,100,100,115)_0xB07F = NumberRange.new(0.15, 0.65)
_0x9593 = Vector3.new(0, -0.7, 0)
_0x1C4E = NumberRange.new(0.9, 1.6)
_0x52F8 = NumberSequence.new({
NumberSequenceKeypoint.new(0, 0.65 * _0xFF4E),
NumberSequenceKeypoint.new(0.7, 1.35 * _0xFF4E),
NumberSequenceKeypoint.new(1, 0),
})
else
_0x52F8 = NumberSequence.new({
NumberSequenceKeypoint.new(0, (secondary and 0.22 or 0.42) * _0xFF4E),
NumberSequenceKeypoint.new(0.5, (secondary and 0.13 or 0.7) * _0xFF4E),
NumberSequenceKeypoint.new(1, 0),
})
end
local _0x9C5B = _0xCE2F()
local _0x0623 = _0xB86F(_0x81A6(string.char(80,97,114,116,105,99,108,101,69,109,105,116,116,101,114), {
Name = secondary andstring.char(67,108,117,109,115,121,83,99,114,105,112,116,65,117,114,97,83,112,97,114,107,115)orstring.char(67,108,117,109,115,121,83,99,114,105,112,116,65,117,114,97,67,111,114,101),
Texture = _0xDC5C,
Rate = _0xCE50,
Lifetime = _0x1C4E,
Speed = _0xB07F,
Acceleration = _0x9593,
SpreadAngle = Vector2.new(180, 180),
Rotation = NumberRange.new(0, 360),
RotSpeed = NumberRange.new(-100, 100),
LightEmission = _0x7BC4.style ==string.char(86,111,105,100)and 0.15 or 0.85,
LightInfluence = 0,
Size = _0x52F8,
Transparency = NumberSequence.new({
NumberSequenceKeypoint.new(0, secondary and 0.05 or 0.2),
NumberSequenceKeypoint.new(0.75, 0.45),
NumberSequenceKeypoint.new(1, 1),
}),
Color = ColorSequence.new(_0x9C5B),
Parent = _0x4FEA,
}))
table.insert(_0x2C5A, _0x0623)
end
local function _0x559C()
_0xEBB8()
if not _0x7BC4.on then
return
end
local _0x8C06 = _0xD33F.Character
local _0xB7F6 = _0x8C06 and _0x8C06:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xBD98 = _0x8C06 and _0x8C06:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if not _0xB7F6 or not _0xBD98 or _0xBD98.Health <= 0 then
return
end
_0xD49B = _0xB7F6
local _0xC19B = _0xB86F(_0x81A6(string.char(65,116,116,97,99,104,109,101,110,116), { Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,65,117,114,97,66,111,116,116,111,109), Position = Vector3.new(0, -1.5, 0), Parent = _0xB7F6 }))
local _0xF89E = _0xB86F(_0x81A6(string.char(65,116,116,97,99,104,109,101,110,116), { Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,65,117,114,97,67,101,110,116,101,114), Position = Vector3.new(0, 0.45, 0), Parent = _0xB7F6 }))
_0x8C16(_0xC19B, false)
_0x8C16(_0xF89E, true)
local _0x9C5B = _0xCE2F()
_0x9A72 = _0xB86F(_0x81A6(string.char(80,111,105,110,116,76,105,103,104,116), {
Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,65,117,114,97,76,105,103,104,116),
Color = _0x9C5B,
Brightness = 0.8 + _0x7BC4.intensity / 45,
Range = 7 + _0x7BC4.size / 30,
Shadows = false,
Parent = _0xB7F6,
}))
_0x4CF8 = _0xB86F(_0x81A6(string.char(72,105,103,104,108,105,103,104,116), {
Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,65,117,114,97,72,105,103,104,108,105,103,104,116),
Adornee = _0x8C06,
DepthMode = Enum.HighlightDepthMode.Occluded,
FillColor = _0x9C5B,
FillTransparency = 0.92,
OutlineColor = _0x9C5B,
OutlineTransparency = 0.35,
Parent = _0x8C06,
}))
end
_0xF709(_0xD33F.CharacterAdded, function()
if _0x7BC4.on then
task.delay(0.4, _0x559C)
end
end)
_0xF709(_0x7FDD.Heartbeat, function()
if not _0x7BC4.on then
return
end
local _0xB7F6 = _0xD33F.Character and _0xD33F.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0xB7F6 then
if _0xD49B then
_0xEBB8()
end
return
end
if _0xD49B ~= _0xB7F6 or not _0xD49B.Parent then
_0x559C()
return
end
local _0x9494 = os.clock()
if _0x7BC4.style ~=string.char(82,97,105,110,98,111,119)or _0x9494 - _0xBA62 < 0.06 then
return
end
_0xBA62 = _0x9494
local _0x33A5 = _0x9494 * 0.16 % 1
local _0xEE2E = Color3.fromHSV(_0x33A5, 0.9, 1)
local _0x51AF = Color3.fromHSV((_0x33A5 + 0.16) % 1, 0.9, 1)
local _0x0535 = ColorSequence.new(_0xEE2E, _0x51AF)
for _0xBFE6, _0x0623 in ipairs(_0x2C5A) do
_0x0623.Color = _0x0535
end
_0x9A72.Color = _0xEE2E
_0x4CF8.FillColor = _0xEE2E
_0x4CF8.OutlineColor = _0x51AF
end)
local _0xDBF6 = _0x78B0(_0x27DE,string.char(65,117,114,97,115),string.char(77,111,100,101,108,115))
_0xDBF6:Toggle(string.char(65,117,114,97),string.char(112,97,114,116,105,99,108,101,115,32,97,110,100,32,103,108,111,119,32,97,114,111,117,110,100,32,121,111,117,114,32,99,104,97,114,97,99,116,101,114), function(_0x9B7B)
_0x7BC4.on = _0x9B7B
_0x559C()
_0xE835(string.char(65,117,114,97,58,32).. (_0x9B7B andstring.char(79,110)orstring.char(79,102,102)), _0x9B7B and _0x7BC4.style orstring.char(101,102,102,101,99,116,32,114,101,109,111,118,101,100))
end)
_0xDBF6:Select(string.char(83,116,121,108,101),string.char(114,105,103,104,116,32,99,108,105,99,107,32,45,32,112,114,101,118,105,111,117,115), {string.char(69,110,101,114,103,121),string.char(70,108,97,109,101),string.char(70,114,111,115,116),string.char(86,111,105,100),string.char(82,97,105,110,98,111,119),string.char(67,117,115,116,111,109)}, _0x7BC4.style, function(_0xBE50)
_0x7BC4.style = _0xBE50
if _0x7BC4.on then
_0x559C()
end
end)
_0xDBF6:ColorPicker(string.char(65,117,114,97,32,99,111,108,111,114),string.char(117,115,101,100,32,119,104,101,110,32,83,116,121,108,101,32,61,32,67,117,115,116,111,109), _0x7BC4.custom, function(_0xD51E)
_0x7BC4.custom = _0xD51E
if not _0xF810 then
_0x7BC4.style =string.char(67,117,115,116,111,109)end
if _0x7BC4.on then
_0x559C()
end
end)
_0xDBF6:Slider(string.char(73,110,116,101,110,115,105,116,121), 10, 100, _0x7BC4.intensity, function(_0xBE50)
_0x7BC4.intensity = _0xBE50
if _0x7BC4.on then
_0x559C()
end
end, function(_0xBE50)
return _0xBE50 ..string.char(37)end)
_0xDBF6:Slider(string.char(83,105,122,101), 50, 200, _0x7BC4.size, function(_0xBE50)
_0x7BC4.size = _0xBE50
if _0x7BC4.on then
_0x559C()
end
end, function(_0xBE50)
return _0xBE50 ..string.char(37)end)
_0xDF0F = function()
_0x7BC4.on = false
_0xEBB8()
end
end
do
local _0xE115 = {
_0x9B7B = false,
_0x04A9 =string.char(73,110,118,111,107,101,114),
_0x5AC5 = 3,
_0xB07F = 100,
_0xEFFE = 100,
custom = Color3.fromRGB(120, 200, 255),
}
local _0x3707 = { Color3.fromRGB(90, 200, 255), Color3.fromRGB(190, 90, 255), Color3.fromRGB(255, 150, 50) }
local _0x6340
local _0x15C1 = {}
local function _0x74E4(_0x60FA, _0x4903)
if _0xE115.style ==string.char(73,110,118,111,107,101,114)then
return _0x3707[(_0x60FA - 1) % #_0x3707 + 1]
elseif _0xE115.style ==string.char(77,111,110,111)then
local _0xBE50 = 0.5 + 0.5 * math.sin(_0x4903 * 2.5 + _0x60FA * 1.3)
local _0xD51E = math.floor(120 + _0xBE50 * 135)
return Color3.fromRGB(_0xD51E, _0xD51E, _0xD51E)
end
return _0xE115.custom
end
local function _0x3066(_0x52F8, mat, _0x9C5B, transp, shape)
local _0x0D18 = Instance.new(string.char(80,97,114,116))
do
local _0x1B76 = _0x0D18
local _0xC084 = {}
_0xC084[60693] = {string.char(67,111,108,111,114),
function()
return _0x9C5B
end,
}
_0xC084[30322] = {string.char(83,105,122,101),
function()
return _0x52F8
end,
}
_0xC084[52597] = {string.char(84,114,97,110,115,112,97,114,101,110,99,121),
function()
return transp or 0
end,
}
_0xC084[25263] = {string.char(77,97,116,101,114,105,97,108),
function()
return mat
end,
}
_0xC084[29939] = {string.char(83,104,97,112,101),
function()
return shape or Enum.PartType.Ball
end,
}
local _0x9F8D = { 29939, 30322, 25263, 60693, 52597 }
for partIdx = 1, #_0x9F8D do
local _0xCC7F = _0xC084[_0x9F8D[partIdx]]
_0x1B76[_0xCC7F[1]] = _0xCC7F[2]()
end
end
_0x0D18.Anchored, _0x0D18.CanCollide, _0x0D18.CanQuery, _0x0D18.CanTouch, _0x0D18.CastShadow = true, false, false, false, false
_0x0D18.Parent = _0x6340
return _0x0D18
end
local function _0xEBB8()
if _0x6340 then
_0x6340:Destroy()
end
_0x6340 = nil
table.clear(_0x15C1)
end
local function _0x559C()
_0xEBB8()
_0x6340 = _0x81A6(string.char(70,111,108,100,101,114), { Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,79,114,98,115), Parent = workspace.CurrentCamera })
for _0x60FA = 1, _0xE115.count do
local _0xD51E = _0x74E4(_0x60FA, 0)
local _0x0446 = _0x3066(Vector3.one * 0.62, Enum.Material.Neon, _0xD51E, 0.35)
local _0xFD2C = _0x3066(Vector3.one * 0.3, Enum.Material.SmoothPlastic, Color3.new(1, 1, 1), 0.2)
local _0x8190 = _0x3066(Vector3.one * 1.15, Enum.Material.ForceField, _0xD51E, 0.55)
local _0x84FA = { Color = _0xD51E }
local _0x46BA = _0x81A6(string.char(65,116,116,97,99,104,109,101,110,116), { Position = Vector3.new(0, 0.22, 0), Parent = _0x0446 })
local _0x622A = _0x81A6(string.char(65,116,116,97,99,104,109,101,110,116), { Position = Vector3.new(0, -0.22, 0), Parent = _0x0446 })
local _0x61C5 = _0x81A6(string.char(84,114,97,105,108), {
Attachment0 = _0x46BA,
Attachment1 = _0x622A,
Lifetime = 0.35,
LightEmission = 0.3,
LightInfluence = 0.5,
FaceCamera = true,
MinLength = 0.02,
Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0.45), NumberSequenceKeypoint.new(1, 1) }),
WidthScale = NumberSequence.new({ NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 0) }),
Color = ColorSequence.new(_0xD51E),
Parent = _0x0446,
})
local _0x7710 = _0x81A6(string.char(80,97,114,116,105,99,108,101,69,109,105,116,116,101,114), {
Texture =string.char(114,98,120,97,115,115,101,116,58,47,47,116,101,120,116,117,114,101,115,47,112,97,114,116,105,99,108,101,115,47,115,112,97,114,107,108,101,115,95,109,97,105,110,46,100,100,115),
Rate = 5,
Lifetime = NumberRange.new(0.4, 0.8),
Speed = NumberRange.new(0.3, 1),
SpreadAngle = Vector2.new(180, 180),
LightEmission = 0.3,
LightInfluence = 0.5,
Size = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0.18), NumberSequenceKeypoint.new(1, 0) }),
Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0.1), NumberSequenceKeypoint.new(1, 1) }),
Color = ColorSequence.new(_0xD51E),
Parent = _0x0446,
})
_0x15C1[_0x60FA] = {
core = _0x0446,
_0xFD2C = _0xFD2C,
_0x8190 = _0x8190,
_0x84FA = _0x84FA,
_0x61C5 = _0x61C5,
_0x7710 = _0x7710,
_0x16A1 = nil,
_0x9C5B = _0xD51E,
}
end
end
local _0x8F96 = os.clock()
_0xF709(_0x7FDD.RenderStepped, function(_0xF45E)
if not _0xE115.on then
return
end
local _0x8C06 = _0xD33F.Character
local _0xE4E7 = _0x8C06 and _0x8C06:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0xE4E7 then
if _0x6340 then
_0xEBB8()
end
return
end
if not _0x6340 or not _0x6340.Parent or #_0x15C1 ~= _0xE115.count then
_0x559C()
end
local _0x4903 = os.clock() - _0x8F96
local _0xB4E8 = 1.6 * _0xE115.speed / 100
local _0x5ED5 = 1.35 * _0xE115.radius / 100
local _0xF89E = _0xE4E7.CFrame * CFrame.new(0, 1.7, 1.25) * CFrame.Angles(math.rad(-25), 0, 0)
local _0x3FFC = 1 - math.exp(-_0xF45E * 10)
for _0x60FA, _0xCA34 in ipairs(_0x15C1) do
local _0x7D74 = _0x4903 * _0xB4E8 + (_0x60FA - 1) * (math.pi * 2 / #_0x15C1)
local _0x5D9E = math.sin(_0x4903 * 2.2 + _0x60FA * 1.7) * 0.18
local _0xA213 = (_0xF89E * CFrame.new(math.cos(_0x7D74) * _0x5ED5, _0x5D9E, math.sin(_0x7D74) * _0x5ED5 * 0.55)).Position
_0xCA34.pos = _0xCA34.pos and _0xCA34.pos:Lerp(_0xA213, _0x3FFC) or _0xA213
local _0xB723 = 1 + math.sin(_0x4903 * 4 + _0x60FA) * 0.06
local _0x7800 = CFrame.new(_0xCA34.pos)
_0xCA34.core.CFrame = _0x7800
_0xCA34.heart.CFrame = _0x7800
_0xCA34.halo.CFrame = _0x7800
_0xCA34.core.Size = Vector3.one * 0.62 * _0xB723
_0xCA34.halo.Size = Vector3.one * 1.15 * (2 - _0xB723)
local _0xD51E = _0x74E4(_0x60FA, _0x4903)
if _0xD51E ~= _0xCA34.color then
_0xCA34.color = _0xD51E
_0xCA34.core.Color, _0xCA34.halo.Color, _0xCA34.light.Color = _0xD51E, _0xD51E, _0xD51E
_0xCA34.trail.Color = ColorSequence.new(_0xD51E)
_0xCA34.sparks.Color = ColorSequence.new(_0xD51E)
end
end
end)
local _0xDBF6 = _0x78B0(_0x27DE,string.char(79,114,98,115),string.char(77,111,100,101,108,115))
_0xDBF6:Toggle(string.char(79,114,98,115),string.char(103,108,111,119,105,110,103,32,111,114,98,115,32,98,101,104,105,110,100,32,121,111,117,114,32,98,97,99,107,32,40,111,110,108,121,32,121,111,117,32,115,101,101,32,116,104,101,109,41), function(_0x9B7B)
_0xE115.on = _0x9B7B
if not _0x9B7B then
_0xEBB8()
end
_0xE835(string.char(79,114,98,115,58,32).. (_0x9B7B andstring.char(79,110)orstring.char(79,102,102)), _0x9B7B andstring.char(113,117,97,115,32,119,101,120,32,101,120,111,114,116)orstring.char(111,114,98,115,32,103,111,110,101))
end)
_0xDBF6:Segmented(string.char(83,116,121,108,101), {string.char(73,110,118,111,107,101,114),string.char(77,111,110,111),string.char(67,117,115,116,111,109)}, _0xE115.style, function(_0xBE50)
_0xE115.style = _0xBE50
end)
_0xDBF6:ColorPicker(string.char(79,114,98,32,99,111,108,111,114),string.char(117,115,101,100,32,119,104,101,110,32,83,116,121,108,101,32,61,32,67,117,115,116,111,109), _0xE115.custom, function(_0xD51E)
_0xE115.custom = _0xD51E
if not _0xF810 then
_0xE115.style =string.char(67,117,115,116,111,109)end
end)
_0xDBF6:Slider(string.char(67,111,117,110,116), 1, 6, _0xE115.count, function(_0xBE50)
_0xE115.count = _0xBE50
end)
_0xDBF6:Slider(string.char(83,112,101,101,100), 20, 300, _0xE115.speed, function(_0xBE50)
_0xE115.speed = _0xBE50
end, function(_0xBE50)
return _0xBE50 ..string.char(37)end)
_0xDBF6:Slider(string.char(82,97,100,105,117,115), 50, 250, _0xE115.radius, function(_0xBE50)
_0xE115.radius = _0xBE50
end, function(_0xBE50)
return _0xBE50 ..string.char(37)end)
_0xB1DA = function()
_0xE115.on = false
_0xEBB8()
end
end
do
local _0x6E3C = { _0x9B7B = false, _0x5AC5 = 30, _0xB07F = 100 }
local _0xAF8D = {
Vector3.new(1, 0, 0),
Vector3.new(-1, 0, 0),
Vector3.new(0, 0, 1),
Vector3.new(0, 0, -1),
Vector3.new(0, 1, 0),
Vector3.new(0, -1, 0),
}
local _0x9E9C = Color3.new(1, 1, 1)
local _0x6634 = Color3.fromRGB(170, 215, 255)
local _0x6340
local _0xAB58 = {}
local _0xCE5C = Random.new()
local function _0xEBB8()
if _0x6340 then
_0x6340:Destroy()
end
_0x6340 = nil
table.clear(_0xAB58)
end
local function _0x12EC()
local _0x210D = Instance.new(string.char(80,97,114,116))
do
local _0x0EFD = _0x210D
local _0x8080 = {}
_0x8080[61142] = {string.char(83,105,122,101),
function()
return Vector3.one * 0.22
end,
}
_0x8080[18088] = {string.char(77,97,116,101,114,105,97,108),
function()
return Enum.Material.Neon
end,
}
_0x8080[17496] = {string.char(67,111,108,111,114),
function()
return _0x9E9C
end,
}
_0x8080[56633] = {string.char(83,104,97,112,101),
function()
return Enum.PartType.Ball
end,
}
local _0xFE8E = { 56633, 61142, 18088, 17496 }
for headIdx = 1, #_0xFE8E do
local _0xB771 = _0x8080[_0xFE8E[headIdx]]
_0x0EFD[_0xB771[1]] = _0xB771[2]()
end
end
_0x210D.Anchored, _0x210D.CanCollide, _0x210D.CanQuery, _0x210D.CanTouch, _0x210D.CastShadow = true, false, false, false, false
_0x210D.Parent = _0x6340
return { _0x210D = _0x210D, _0x16A1 = nil, _0x2D51 = _0xAF8D[1], _0x2700 = 0, _0xB4E8 = _0xCE5C:NextNumber(22, 42) }
end
local function _0x559C()
_0xEBB8()
_0x6340 = _0x81A6(string.char(70,111,108,100,101,114), { Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,107,121,87,111,114,109,115), Parent = workspace.CurrentCamera })
for _0x60FA = 1, _0x6E3C.count do
_0xAB58[_0x60FA] = _0x12EC()
end
end
local function _0x2454(_0x42FB, _0xF89E, _0x18FF)
local _0x18EF = _0x42FB.pos - _0xF89E
local _0x0796 = {}
for _0xBFE6, _0x819A in ipairs(_0xAF8D) do
if _0x819A:Dot(_0x42FB.dir) == 0 then
local _0x3E35 = true
if _0x819A.X ~= 0 and math.abs(_0x18EF.X) > 96 and _0x819A.X * _0x18EF.X > 0 then
_0x3E35 = false
end
if _0x819A.Z ~= 0 and math.abs(_0x18EF.Z) > 96 and _0x819A.Z * _0x18EF.Z > 0 then
_0x3E35 = false
end
if _0x819A.Y > 0 and _0x42FB.pos.Y > _0x18FF + 40 then
_0x3E35 = false
end
if _0x819A.Y < 0 and _0x42FB.pos.Y < _0x18FF + 2 then
_0x3E35 = false
end
if _0x3E35 then
table.insert(_0x0796, _0x819A)
if _0x819A.Y == 0 then
table.insert(_0x0796, _0x819A)
end
end
end
end
_0x42FB.dir = #_0x0796 > 0 and _0x0796[_0xCE5C:NextInteger(1, #_0x0796)] or -_0x42FB.dir
_0x42FB.left = _0xCE5C:NextNumber(4, 22)
end
local function _0x82B8(_0x42FB, _0xF89E, _0x18FF)
_0x42FB.pos = _0xF89E + Vector3.new(_0xCE5C:NextNumber(-120, 120), 0, _0xCE5C:NextNumber(-120, 120))
_0x42FB.pos = Vector3.new(_0x42FB.pos.X, _0x18FF + _0xCE5C:NextNumber(2, 40), _0x42FB.pos.Z)
_0x42FB.dir = _0xAF8D[_0xCE5C:NextInteger(1, 4)]
_0x42FB.left = _0xCE5C:NextNumber(4, 22)
end
_0xF709(_0x7FDD.RenderStepped, function(_0xF45E)
if not _0x6E3C.on then
return
end
local _0x8C06 = _0xD33F.Character
local _0xE4E7 = _0x8C06 and _0x8C06:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0xE4E7 then
return
end
if not _0x6340 or not _0x6340.Parent or #_0xAB58 ~= _0x6E3C.count then
_0x559C()
end
local _0xF89E = _0xE4E7.Position
local _0x18FF = _0xF89E.Y - 3
_0xF45E = math.min(_0xF45E, 0.1)
for _0xBFE6, _0x42FB in ipairs(_0xAB58) do
if not _0x42FB.pos or (_0x42FB.pos - _0xF89E).Magnitude > 216 then
_0x82B8(_0x42FB, _0xF89E, _0x18FF)
end
local _0x98EA = _0x42FB.spd * _0x6E3C.speed / 100 * _0xF45E
while _0x98EA > 0 do
local _0x334A = math.min(_0x98EA, _0x42FB.left)
_0x42FB.pos += _0x42FB.dir * _0x334A
_0x42FB.left -= _0x334A
_0x98EA -= _0x334A
if _0x42FB.left <= 0 then
_0x2454(_0x42FB, _0xF89E, _0x18FF)
end
end
_0x42FB.head.CFrame = CFrame.new(_0x42FB.pos)
end
end)
local _0xDBF6 = _0x78B0(_0x27DE,string.char(83,107,121,32,87,111,114,109,115),string.char(77,111,100,101,108,115))
_0xDBF6:Toggle(string.char(83,107,121,32,87,111,114,109,115),string.char(67,108,117,109,115,121,83,99,114,105,112,116,32,101,120,99,108,117,115,105,118,101,32,45,32,119,104,105,116,101,32,115,105,103,110,97,108,115,32,114,117,110,32,97,99,114,111,115,115,32,116,104,101,32,109,97,112,32,40,111,110,108,121,32,121,111,117,32,115,101,101,32,116,104,101,109,41), function(_0x9B7B)
_0x6E3C.on = _0x9B7B
if not _0x9B7B then
_0xEBB8()
end
_0xE835(string.char(83,107,121,32,87,111,114,109,115,58,32).. (_0x9B7B andstring.char(79,110)orstring.char(79,102,102)), _0x9B7B andstring.char(116,104,101,32,109,97,112,32,105,115,32,111,110,108,105,110,101)orstring.char(115,105,103,110,97,108,32,108,111,115,116))
end)
_0xDBF6:Slider(string.char(67,111,117,110,116), 10, 60, _0x6E3C.count, function(_0xBE50)
_0x6E3C.count = _0xBE50
end)
_0xDBF6:Slider(string.char(83,112,101,101,100), 20, 300, _0x6E3C.speed, function(_0xBE50)
_0x6E3C.speed = _0xBE50
end, function(_0xBE50)
return _0xBE50 ..string.char(37)end)
_0xB9AB = function()
_0x6E3C.on = false
_0xEBB8()
end
end
do
local _0xBD92 = { _0x9B7B = false, connection = nil, _0x289D = nil, _0x61C5 = nil, length = 0.8, _0x9C5B = Color3.fromRGB(255, 255, 255) }
local function _0xD38D()
if _0xBD92.connection then
pcall(function() _0xBD92.connection:Disconnect() end)
_0xBD92.connection = nil
end
if _0xBD92.character and _0xBD92.character.Parent then
local _0x6355 = _0xBD92.character:FindFirstChild(string.char(65,69,82,79,95,87,104,105,116,101,70,111,111,116,84,114,97,105,108))
if _0x6355 then _0x6355:Destroy() end
local _0x46BA = _0xBD92.character:FindFirstChild(string.char(65,69,82,79,95,70,111,111,116,84,114,97,105,108,95,65,48), true)
local _0x622A = _0xBD92.character:FindFirstChild(string.char(65,69,82,79,95,70,111,111,116,84,114,97,105,108,95,65,49), true)
if _0x46BA then _0x46BA:Destroy() end
if _0x622A then _0x622A:Destroy() end
end
_0xBD92.character = nil
_0xBD92.trail = nil
end
local function _0xE194(_0x289D)
if not _0x289D or not _0x289D.Parent then return end
local _0x6355 = _0x289D:FindFirstChild(string.char(65,69,82,79,95,87,104,105,116,101,70,111,111,116,84,114,97,105,108))
if _0x6355 then _0x6355:Destroy() end
local _0xB7F6 = _0x289D:WaitForChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116), 5)
if not _0xB7F6 or not _0xB7F6.Parent then return end
local _0xFB31 = _0xB7F6:FindFirstChild(string.char(65,69,82,79,95,70,111,111,116,84,114,97,105,108,95,65,48))
local _0xAB1E = _0xB7F6:FindFirstChild(string.char(65,69,82,79,95,70,111,111,116,84,114,97,105,108,95,65,49))
if _0xFB31 then _0xFB31:Destroy() end
if _0xAB1E then _0xAB1E:Destroy() end
local _0x46BA = Instance.new(string.char(65,116,116,97,99,104,109,101,110,116))
_0x46BA.Name =string.char(65,69,82,79,95,70,111,111,116,84,114,97,105,108,95,65,48)_0x46BA.Position = Vector3.new(-0.65, -2.35, 0.15)
_0x46BA.Parent = _0xB7F6
local _0x622A = Instance.new(string.char(65,116,116,97,99,104,109,101,110,116))
_0x622A.Name =string.char(65,69,82,79,95,70,111,111,116,84,114,97,105,108,95,65,49)_0x622A.Position = Vector3.new(0.65, -2.35, 0.15)
_0x622A.Parent = _0xB7F6
local _0x61C5 = Instance.new(string.char(84,114,97,105,108))
_0x61C5.Name =string.char(65,69,82,79,95,87,104,105,116,101,70,111,111,116,84,114,97,105,108)_0x61C5.Attachment0 = _0x46BA
_0x61C5.Attachment1 = _0x622A
_0x61C5.Color = ColorSequence.new(_0xBD92.color)
_0x61C5.Transparency = NumberSequence.new({
NumberSequenceKeypoint.new(0, 0),
NumberSequenceKeypoint.new(0.7, 0.35),
NumberSequenceKeypoint.new(1, 1),
})
_0x61C5.WidthScale = NumberSequence.new({
NumberSequenceKeypoint.new(0, 0.055),
NumberSequenceKeypoint.new(1, 0),
})
_0x61C5.Lifetime = _0xBD92.length
_0x61C5.MinLength = 0.05
_0x61C5.LightEmission = 1
_0x61C5.FaceCamera = true
_0x61C5.Enabled = false
_0x61C5.Parent = _0xB7F6
_0xBD92.character = _0x289D
_0xBD92.trail = _0x61C5
_0xBD92.connection = _0x7FDD.Heartbeat:Connect(function()
if not _0xBD92.on or not _0x289D.Parent or not _0xB7F6.Parent then
if _0x61C5.Parent then _0x61C5.Enabled = false end
return
end
local _0xB215 = _0xB7F6.AssemblyLinearVelocity
local _0x7E60 = Vector3.new(_0xB215.X, 0, _0xB215.Z).Magnitude
local _0x8C8F = _0x289D:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0xA111 = _0x8C8F and _0x8C8F.FloorMaterial ~= Enum.Material.Air
_0x61C5.Enabled = _0x7E60 > 2 and _0xA111 or false
end)
end
local function _0xD0D1()
if _0xBD92.trail and _0xBD92.trail.Parent then
_0xBD92.trail.Color = ColorSequence.new(_0xBD92.color)
_0xBD92.trail.Lifetime = _0xBD92.length
_0xBD92.trail.WidthScale = NumberSequence.new({
NumberSequenceKeypoint.new(0, 0.055),
NumberSequenceKeypoint.new(1, 0),
})
end
end
local function _0xFBCA(_0x9B7B)
_0xBD92.on = _0x9B7B
_0xD38D()
if not _0x9B7B then return end
local _0x289D = _0xD33F.Character
if _0x289D then
task.spawn(function() _0xE194(_0x289D) end)
end
end
_0xF709(_0xD33F.CharacterAdded, function(_0x289D)
if not _0xBD92.on then return end
_0xD38D()
task.spawn(function() _0xE194(_0x289D) end)
end)
local _0xDBF6 = _0x78B0(_0x27DE,string.char(70,111,111,116,32,84,114,97,105,108),string.char(77,111,100,101,108,115))
_0xDBF6:Toggle(string.char(87,104,105,116,101,32,70,111,111,116,32,84,114,97,105,108),string.char(116,104,105,110,32,119,104,105,116,101,32,108,105,110,101,32,117,110,100,101,114,32,121,111,117,114,32,102,101,101,116,32,119,104,105,108,101,32,109,111,118,105,110,103,32,111,110,32,116,104,101,32,103,114,111,117,110,100), function(_0x9B7B)
_0xFBCA(_0x9B7B)
_0x330E(string.char(70,111,111,116,32,84,114,97,105,108,47,69,110,97,98,108,101,100), _0x9B7B)
_0xE835(string.char(87,104,105,116,101,32,70,111,111,116,32,84,114,97,105,108,58,32).. (_0x9B7B andstring.char(79,110)orstring.char(79,102,102)), _0x9B7B andstring.char(108,105,110,101,32,101,110,97,98,108,101,100)orstring.char(116,114,97,105,108,32,114,101,109,111,118,101,100))
end)
_0xDBF6:Slider(string.char(76,105,110,101,32,76,101,110,103,116,104), 0.2, 3, 0.8, function(_0xBE50)
_0xBD92.length = _0xBE50
_0x330E(string.char(70,111,111,116,32,84,114,97,105,108,47,76,101,110,103,116,104), _0xBE50)
_0xD0D1()
end)
_0xDBF6:ColorPicker(string.char(76,105,110,101,32,67,111,108,111,114),string.char(99,111,108,111,114,32,111,102,32,116,104,101,32,102,111,111,116,32,116,114,97,105,108), _0xBD92.color, function(_0xD51E)
_0xBD92.color = _0xD51E
_0x330E(string.char(70,111,111,116,32,84,114,97,105,108,47,67,111,108,111,114), _0xD51E:ToHex())
_0xD0D1()
end)
_0x64F7(string.char(70,111,111,116,32,84,114,97,105,108,47,69,110,97,98,108,101,100), function(_0xBE50)
_0xFBCA(_0xBE50 == true)
end, function()
return _0xBD92.on
end, false)
_0x64F7(string.char(70,111,111,116,32,84,114,97,105,108,47,76,101,110,103,116,104), function(_0xBE50)
if type(_0xBE50) ==string.char(110,117,109,98,101,114)then
_0xBD92.length = math.clamp(_0xBE50, 0.2, 3)
_0xD0D1()
end
end, function() return _0xBD92.length end, false)
_0x64F7(string.char(70,111,111,116,32,84,114,97,105,108,47,67,111,108,111,114), function(_0xBE50)
if type(_0xBE50) ==string.char(115,116,114,105,110,103)then
local _0x740C = _0xBE50:gsub(string.char(35),"")
if #_0x740C == 6 then
local _0x3E35, _0xD51E = pcall(function()
return Color3.fromRGB(tonumber(_0x740C:sub(1,2), 16), tonumber(_0x740C:sub(3,4), 16), tonumber(_0x740C:sub(5,6), 16))
end)
if _0x3E35 and _0xD51E then _0xBD92.color = _0xD51E; _0xD0D1() end
end
end
end, function() return _0xBD92.color:ToHex() end, false)
_0xF49D = function()
_0xBD92.on = false
_0xD38D()
end
end
do
local _0xC7C9 = {
{ 11726322365,string.char(80,105,110,107,32,72,101,97,114,116)},
{ 11754490336,string.char(72,101,97,114,116,32,83,99,111,112,101)},
{ 12094859168,string.char(87,104,105,116,101,32,72,101,97,114,116)},
{ 12094860445,string.char(77,105,110,116,32,72,101,97,114,116)},
{ 11747999974,string.char(82,101,100,32,72,101,97,114,116)},
{ 12909937176,string.char(65,110,103,101,108,32,72,101,97,114,116)},
{ 11767039760,string.char(72,101,97,114,116,32,76,105,110,101)},
{ 84069910734738,string.char(72,101,97,114,116,32,83,105,103,104,116)},
{ 14128309111,string.char(72,101,97,114,116,32,67,114,111,115,115)},
{ 11739569706,string.char(80,105,120,101,108,32,72,101,97,114,116)},
{ 12323570810,string.char(71,108,111,119,32,72,101,97,114,116)},
{ 12146777431,string.char(83,111,102,116,32,72,101,97,114,116)},
{ 11254520798,string.char(78,101,111,110,32,80,105,110,107)},
{ 81102279303918,string.char(78,101,111,110,32,82,111,115,101)},
{ 11716577756,string.char(80,105,110,107,32,77,101,100,105,99)},
{ 12439641494,string.char(80,105,110,107,32,83,99,111,112,101)},
{ 91638190237682,string.char(78,101,111,110,32,71,114,101,101,110)},
{ 1458996342,string.char(73,99,101,32,88)},
{ 942455758,string.char(67,121,97,110,32,84,114,105)},
{ 5159914167,string.char(67,108,97,115,115,105,99)},
{ 29066471,string.char(82,101,100,32,68,111,116)},
{ 10891594364,string.char(71,108,111,119,32,79,114,98)},
{ 13613212658,string.char(82,97,105,110,98,111,119,32,83,116,97,114)},
{ 13944218938,string.char(80,105,110,107,32,83,116,97,114)},
{ 13944215054,string.char(87,104,105,116,101,32,83,116,97,114)},
{ 130225909042821,string.char(80,117,114,112,108,101,32,83,116,97,114)},
{ 84232095638395,string.char(83,116,97,114,32,76,105,110,101)},
{ 11893991373,string.char(75,117,114,111,109,105)},
{ 12030244945,string.char(72,101,108,108,111,32,75,105,116,116,121)},
{ 11768101227,string.char(71,101,110,103,97,114)},
{ 130973865039213,string.char(75,105,116,116,121,32,80,111,105,110,116,101,114)},
{ 108267553252298,string.char(80,105,110,107,32,80,111,105,110,116,101,114)},
{ 12818611757,string.char(66,108,117,101,32,80,111,105,110,116,101,114)},
}
local _0x090C = { _0xA686 = 28, M = 40, L = 56 }
local _0x012B = { _0x9B7B = false, _0xABD9 = nil, _0xE692 =string.char(65,108,119,97,121,115), _0x52F8 =string.char(77)}
local function _0x95B5(_0xABD9)
return (string.char(114,98,120,116,104,117,109,98,58,47,47,116,121,112,101,61,65,115,115,101,116,38,105,100,61,37,100,38,119,61,49,53,48,38,104,61,49,53,48)):format(_0xABD9)
end
local _0x5547 = _0x81A6(string.char(83,99,114,101,101,110,71,117,105), { Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,67,117,114,115,111,114), ResetOnSpawn = false, IgnoreGuiInset = true, DisplayOrder = 2000 })
pcall(function()
_0x5547.Parent = _0x4696.Parent
end)
local _0x0D93 = _0x81A6(string.char(73,109,97,103,101,76,97,98,101,108), {
AnchorPoint = Vector2.new(0.5, 0.5),
BackgroundTransparency = 1,
Size = UDim2.fromOffset(_0x090C.M, _0x090C.M),
ScaleType = Enum.ScaleType.Fit,
Visible = false,
ZIndex = 10,
Parent = _0x5547,
})
local _0xFF4E = _0x81A6(string.char(85,73,83,99,97,108,101), { Parent = _0x0D93 })
local _0x9219 = false
local function _0x1714()
local _0x8C06 = _0xD33F.Character
local _0x2395 = _0x012B.on and _0x012B.id ~= nil and (_0x012B.mode ==string.char(65,108,119,97,121,115)or _0x8C06 and _0x8C06:FindFirstChild(string.char(71,117,110)) ~= nil)
if _0x2395 then
_0x63F8.MouseIconEnabled = false
_0x9219 = true
local _0xE6E2 = _0x63F8:GetMouseLocation()
_0x0D93.Position = UDim2.fromOffset(_0xE6E2.X, _0xE6E2.Y)
_0x0D93.Visible = true
elseif _0x9219 then
_0x9219 = false
_0x63F8.MouseIconEnabled = true
_0x0D93.Visible = false
end
end
pcall(function()
_0x7FDD:UnbindFromRenderStep(string.char(67,108,117,109,115,121,83,99,114,105,112,116,67,117,114,115,111,114))
end)
_0x7FDD:BindToRenderStep(string.char(67,108,117,109,115,121,83,99,114,105,112,116,67,117,114,115,111,114), Enum.RenderPriority.Last.Value + 10, _0x1714)
_0xF709(_0x63F8:GetPropertyChangedSignal(string.char(77,111,117,115,101,73,99,111,110,69,110,97,98,108,101,100)), function()
if _0x9219 and _0x63F8.MouseIconEnabled then
_0x63F8.MouseIconEnabled = false
end
end)
_0xF709(_0x63F8.InputBegan, function(input)
if _0x0D93.Visible and input.UserInputType == Enum.UserInputType.MouseButton1 then
_0xFF4E.Scale = 0.75
_0x0ED9(_0xFF4E, 0.25, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
end
end)
local _0x4783 = _0x048A.page
_0x048A.custom = true
_0x048A.title.Visible = false
_0x048A.desc.Visible = false_0x4783.ScrollingEnabled = false
_0x4783.ScrollBarThickness = 0
_0x4783.CanvasSize = UDim2.new()
local _0xF8DD = Color3.fromRGB(36, 36, 38)
local _0x353D = Color3.fromRGB(48, 48, 52)
local _0x70CF = Color3.fromRGB(17, 17, 19)
local _0x88B3 = _0x81A6(string.char(70,114,97,109,101), { Size = UDim2.new(1, 0, 0, 30), BackgroundTransparency = 1, ZIndex = 3, Parent = _0x4783 })
_0x81A6(string.char(85,73,76,105,115,116,76,97,121,111,117,116), {
FillDirection = Enum.FillDirection.Horizontal,
VerticalAlignment = Enum.VerticalAlignment.Center,
Padding = UDim.new(0, 6),
SortOrder = Enum.SortOrder.LayoutOrder,
Parent = _0x88B3,
})
local function _0xD268(_0xD85E, _0x02E3, _0x171F)
local _0x42FB = _0x83FE:GetTextSize(_0xD85E, 13, Enum.Font.GothamMedium, Vector2.new(300, 40)).X + 26
local _0xBB9C = _0x81A6(string.char(84,101,120,116,66,117,116,116,111,110), {
Text = _0xD85E,
Font = Enum.Font.GothamMedium,
TextSize = 13,
TextColor3 = _0x08BE,
AutoButtonColor = false,
BackgroundColor3 = Color3.fromRGB(90, 90, 90),
BackgroundTransparency = 0.85,
Size = UDim2.fromOffset(_0x42FB, 30),
LayoutOrder = _0x02E3,
ZIndex = 4,
Parent = _0x88B3,
})
_0x46F9(_0xBB9C, 9)
_0xF709(_0xBB9C.MouseButton1Click, _0x171F)
return function(_0x9B7B)
_0x0ED9(_0xBB9C, 0.2, { BackgroundTransparency = _0x9B7B and 0.35 or 0.85, TextColor3 = _0x9B7B and _0x0333 or _0x08BE })
end
end
local _0x6097
local _0xA982 = _0xD268(string.char(67,117,114,115,111,114,58,32,79,102,102), 1, function()
_0x012B.on = not _0x012B.on
_0x330E(string.char(99,117,114,115,111,114,115,46,111,110), _0x012B.on)
_0x6097()
_0xE835(string.char(67,117,114,115,111,114,58,32).. (_0x012B.on andstring.char(79,110)orstring.char(79,102,102)), _0x012B.on and (_0x012B.id and (_0x012B.mode ==string.char(71,117,110)andstring.char(116,97,107,101,32,116,104,101,32,103,117,110)orstring.char(101,110,106,111,121)) orstring.char(112,105,99,107,32,97,32,99,117,114,115,111,114,32,98,101,108,111,119)) orstring.char(100,101,102,97,117,108,116,32,99,117,114,115,111,114))
end)
local _0xA60A, _0x4167 = {}, {}
for _0x60FA, _0xE6E2 in ipairs({string.char(65,108,119,97,121,115),string.char(71,117,110)}) do
_0xA60A[_0xE6E2] = _0xD268(_0xE6E2, 1 + _0x60FA, function()
_0x012B.mode = _0xE6E2
_0x330E(string.char(99,117,114,115,111,114,115,46,109,111,100,101), _0xE6E2)
_0x6097()
end)
end
for _0x60FA, _0x334A in ipairs({string.char(83),string.char(77),string.char(76)}) do
_0x4167[_0x334A] = _0xD268(_0x334A, 10 + _0x60FA, function()
_0x012B.size = _0x334A
_0x330E(string.char(99,117,114,115,111,114,115,46,115,105,122,101), _0x334A)
_0x6097()
end)
end
local _0xDF01
for _0xBFE6, _0xD51E in ipairs(_0x88B3:GetChildren()) do
if _0xD51E:IsA(string.char(84,101,120,116,66,117,116,116,111,110)) and _0xD51E.LayoutOrder == 1 then
_0xDF01 = _0xD51E
end
end
local _0x7476 = _0x81A6(string.char(83,99,114,111,108,108,105,110,103,70,114,97,109,101), {
Position = UDim2.fromOffset(0, 42),
Size = UDim2.new(1, 0, 1, -42),
BackgroundTransparency = 1,
BorderSizePixel = 0,
ScrollBarThickness = 3,
ScrollBarImageColor3 = _0x08BE,
ScrollBarImageTransparency = 0.3,
VerticalScrollBarInset = Enum.ScrollBarInset.Always,
ScrollingDirection = Enum.ScrollingDirection.Y,
CanvasSize = UDim2.new(),
ZIndex = 2,
Parent = _0x4783,
})
_0x81A6(string.char(85,73,80,97,100,100,105,110,103), {
PaddingTop = UDim.new(0, 1),
PaddingLeft = UDim.new(0, 1),
PaddingRight = UDim.new(0, 4),
PaddingBottom = UDim.new(0, 140),
Parent = _0x7476,
})
local _0x595B = _0x81A6(string.char(85,73,71,114,105,100,76,97,121,111,117,116), {
CellSize = UDim2.new(0.25, -6, 0, 118),
CellPadding = UDim2.fromOffset(8, 8),
SortOrder = Enum.SortOrder.LayoutOrder,
Parent = _0x7476,
})
_0xF709(_0x595B:GetPropertyChangedSignal(string.char(65,98,115,111,108,117,116,101,67,111,110,116,101,110,116,83,105,122,101)), function()
_0x7476.CanvasSize = UDim2.fromOffset(0, math.max(_0x595B.AbsoluteContentSize.Y + 140, _0x7476.AbsoluteWindowSize.Y + 2))
end)
_0xF709(_0x7476:GetPropertyChangedSignal(string.char(65,98,115,111,108,117,116,101,87,105,110,100,111,119,83,105,122,101)), function()
_0x7476.CanvasSize = UDim2.fromOffset(0, math.max(_0x595B.AbsoluteContentSize.Y + 140, _0x7476.AbsoluteWindowSize.Y + 2))
end)local _0xDA69, _0x9BFA, _0x2744, _0x5F7C = false, nil, 0, false
local function _0x5579(_0x16A1)
local _0x60D8, _0x2481 = _0x7476.AbsolutePosition, _0x7476.AbsoluteSize
return _0x16A1.X >= _0x60D8.X and _0x16A1.X <= _0x60D8.X + _0x2481.X and _0x16A1.Y >= _0x60D8.Y and _0x16A1.Y <= _0x60D8.Y + _0x2481.Y
end
local function _0xE978()
return math.max(0, _0x7476.AbsoluteCanvasSize.Y - _0x7476.AbsoluteWindowSize.Y)
end
_0xF709(_0x63F8.TouchStarted, function(input)
if not _0x4783.Visible or not _0x5579(input.Position) or _0xE978() <= 0 then return end
_0xDA69, _0x9BFA, _0x2744, _0x5F7C = true, input, input.Position.Y, false
end)
_0xF709(_0x63F8.TouchMoved, function(input)
if not _0xDA69 or input ~= _0x9BFA then return end
local _0xD132 = input.Position.Y - _0x2744
if math.abs(_0xD132) >= 0.1 then
_0x5F7C = true
_0x2744 = input.Position.Y
_0x7476.CanvasPosition = Vector2.new(0, math.clamp(_0x7476.CanvasPosition.Y - _0xD132, 0, _0xE978()))
end
end)
_0xF709(_0x63F8.TouchEnded, function(input)
if input == _0x9BFA then _0xDA69, _0x9BFA = false, nil end
end)
_0xF709(_0x7476.InputBegan, function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
local _0x16A1 = input.Position
if _0x5579(_0x16A1) and _0xE978() > 0 then
_0xDA69, _0x9BFA, _0x2744, _0x5F7C = true, input, _0x16A1.Y, false
end
end
end)
_0xF709(_0x63F8.InputChanged, function(input)
if not _0xDA69 or not _0x9BFA or input.UserInputType ~= Enum.UserInputType.MouseMovement then return end
local _0xD132 = input.Position.Y - _0x2744
if math.abs(_0xD132) >= 0.1 then
_0x5F7C = true
_0x2744 = input.Position.Y
_0x7476.CanvasPosition = Vector2.new(0, math.clamp(_0x7476.CanvasPosition.Y - _0xD132, 0, _0xE978()))
end
end)
_0xF709(_0x63F8.InputEnded, function(input)
if input == _0x9BFA then _0xDA69, _0x9BFA = false, nil end
end)
local _0xFD0B = {}
for _0x60FA, _0xD51E in ipairs(_0xC7C9) do
local _0xABD9, _0xBD62 = _0xD51E[1], _0xD51E[2]
local _0xFCDE = _0x81A6(string.char(84,101,120,116,66,117,116,116,111,110), {
Text ="",
AutoButtonColor = false,
BackgroundTransparency = 1,
LayoutOrder = _0x60FA,
ZIndex = 2,
Parent = _0x7476,
})
local _0x1823 = _0x81A6(string.char(70,114,97,109,101), { Size = UDim2.new(1, 0, 0, 88), BackgroundColor3 = _0xF8DD, ZIndex = 2, Parent = _0xFCDE })
_0x46F9(_0x1823, 8)
_0xFD0B[_0xABD9] = _0x39A4(_0x1823)
local _0x4CC3 = _0x81A6(string.char(73,109,97,103,101,76,97,98,101,108), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromScale(0.5, 0.5),
Size = UDim2.fromOffset(62, 62),
BackgroundTransparency = 1,
ScaleType = Enum.ScaleType.Fit,
Image = _0x95B5(_0xABD9),
ZIndex = 3,
Parent = _0x1823,
})
local _0x6161 = _0x81A6(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(0, 93),
Size = UDim2.new(1, 0, 1, -93),
BackgroundColor3 = _0x70CF,
ZIndex = 2,
Parent = _0xFCDE,
})
_0x46F9(_0x6161, 8)
_0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text = _0xBD62:upper(),
Font = Enum.Font.GothamBold,
TextSize = 10,
TextColor3 = _0x0333,
TextTruncate = Enum.TextTruncate.AtEnd,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(4, 0),
Size = UDim2.new(1, -8, 1, 0),
ZIndex = 3,
Parent = _0x6161,
})
_0xF709(_0xFCDE.MouseEnter, function()
_0x0ED9(_0x1823, 0.15, { BackgroundColor3 = _0x353D })
_0x0ED9(_0x4CC3, 0.2, { Size = UDim2.fromOffset(72, 72) }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
end)
_0xF709(_0xFCDE.MouseLeave, function()
_0x0ED9(_0x1823, 0.15, { BackgroundColor3 = _0xF8DD })
_0x0ED9(_0x4CC3, 0.2, { Size = UDim2.fromOffset(62, 62) })
end)
_0xF709(_0xFCDE.MouseButton1Click, function()
_0x012B.id = _0xABD9
_0x012B.on = true
_0x330E(string.char(99,117,114,115,111,114,115,46,105,100), _0xABD9)
_0x330E(string.char(99,117,114,115,111,114,115,46,111,110), true)
_0x6097()
_0xE835(string.char(67,117,114,115,111,114), _0xBD62 .. (_0x012B.mode ==string.char(71,117,110)andstring.char(32,45,32,116,97,107,101,32,116,104,101,32,103,117,110)or""))
end)
end
_0x6097 = function()
_0xA982(_0x012B.on)
if _0xDF01 then
_0xDF01.Text =string.char(67,117,114,115,111,114,58,32).. (_0x012B.on andstring.char(79,110)orstring.char(79,102,102))
end
for _0xE6E2, _0x23BB in pairs(_0xA60A) do
_0x23BB(_0x012B.mode == _0xE6E2)
end
for _0x334A, _0x23BB in pairs(_0x4167) do
_0x23BB(_0x012B.size == _0x334A)
end
for _0xABD9, _0xCFC0 in pairs(_0xFD0B) do
local _0x9B7B = _0x012B.id == _0xABD9
_0xCFC0.Color = _0x9B7B and _0x0333 or _0x7988
_0xCFC0.Transparency = _0x9B7B and 0.1 or 0
end
if _0x012B.id then
_0x0D93.Image = _0x95B5(_0x012B.id)
end
_0x0D93.Size = UDim2.fromOffset(_0x090C[_0x012B.size] or 40, _0x090C[_0x012B.size] or 40)
end
_0x6097()
_0x64F7(string.char(99,117,114,115,111,114,115,46,111,110), function(_0xBE50)
if type(_0xBE50) ==string.char(98,111,111,108,101,97,110)then
_0x012B.on = _0xBE50
_0x6097()
end
end, function()
return _0x012B.on
end, false)
_0x64F7(string.char(99,117,114,115,111,114,115,46,105,100), function(_0xBE50)
if type(_0xBE50) ==string.char(110,117,109,98,101,114)then
_0x012B.id = _0xBE50
_0x6097()
end
end, function()
return _0x012B.id
end)
_0x64F7(string.char(99,117,114,115,111,114,115,46,109,111,100,101), function(_0xBE50)
if _0xBE50 ==string.char(71,117,110)or _0xBE50 ==string.char(65,108,119,97,121,115)then
_0x012B.mode = _0xBE50
_0x6097()
end
end, function()
return _0x012B.mode
end,string.char(65,108,119,97,121,115))
_0x64F7(string.char(99,117,114,115,111,114,115,46,115,105,122,101), function(_0xBE50)
if _0x090C[_0xBE50] then
_0x012B.size = _0xBE50
_0x6097()
end
end, function()
return _0x012B.size
end,string.char(77))
_0x5DCB = function()
pcall(function()
_0x7FDD:UnbindFromRenderStep(string.char(67,108,117,109,115,121,83,99,114,105,112,116,67,117,114,115,111,114))
end)
_0x012B.on = false
if _0x9219 then
_0x63F8.MouseIconEnabled = true
end
_0x9219 = false
_0x5547:Destroy()
end
end
do
local _0x2FCD = { _0x9B7B = false, model =string.char(71,114,101,101,110), _0x52F8 = 100, _0x2454 = 1, _0xCC86 = 35, offsetX = 0, offsetY = 0 }
local _0x0FAD = { Green = 17437147124, Black = 9341070001, Classic = 13324755498 }
local _0x752D, _0xCC55 = {}, {}
local _0x012B
local function _0x9A0F(_0xBD62)
if _0x752D[_0xBD62] ~= nil then
return _0x752D[_0xBD62] or nil
end
if _0xCC55[_0xBD62] then
return nil
end
_0xCC55[_0xBD62] = true
task.spawn(function()
local _0x3E35, _0xC66A = pcall(function()
return game:GetObjects(string.char(114,98,120,97,115,115,101,116,105,100,58,47,47).. _0x0FAD[_0xBD62])
end)
local _0xB7F6 = _0x3E35 and _0xC66A and _0xC66A[1]
if _0xB7F6 and not _0xB7F6:IsA(string.char(77,111,100,101,108)) then
local _0xE6E2 = Instance.new(string.char(77,111,100,101,108))
for _0xBFE6, _0xCA34 in ipairs(_0xC66A) do
_0xCA34.Parent = _0xE6E2
end
_0xB7F6 = _0xE6E2
end
if _0xB7F6 then
for _0xBFE6, _0xA051 in ipairs(_0xB7F6:GetDescendants()) do
if _0xA051:IsA(string.char(66,97,99,107,112,97,99,107,73,116,101,109)) then
local _0xE6E2 = Instance.new(string.char(77,111,100,101,108))
_0xE6E2.Name = _0xA051.Name
for _0xBFE6, _0xD51E in ipairs(_0xA051:GetChildren()) do
_0xD51E.Parent = _0xE6E2
end
_0xE6E2.Parent = _0xA051.Parent
_0xA051:Destroy()
end
end
for _0xBFE6, _0xA051 in ipairs(_0xB7F6:GetDescendants()) do
if _0xA051:IsA(string.char(76,117,97,83,111,117,114,99,101,67,111,110,116,97,105,110,101,114)) or _0xA051:IsA(string.char(83,111,117,110,100)) or _0xA051:IsA(string.char(74,111,105,110,116,73,110,115,116,97,110,99,101)) or _0xA051:IsA(string.char(87,101,108,100,67,111,110,115,116,114,97,105,110,116)) or _0xA051:IsA(string.char(67,108,105,99,107,68,101,116,101,99,116,111,114)) or _0xA051:IsA(string.char(80,114,111,120,105,109,105,116,121,80,114,111,109,112,116)) or _0xA051:IsA(string.char(72,117,109,97,110,111,105,100)) then
_0xA051:Destroy()
end
end
if not _0xB7F6:FindFirstChildWhichIsA(string.char(66,97,115,101,80,97,114,116), true) then
_0xB7F6 = nil
end
end
_0x752D[_0xBD62] = _0xB7F6 or false
_0xCC55[_0xBD62] = nil
if not _0xB7F6 then
_0xE835(string.char(71,117,110,32,83,107,105,110), _0xBD62 ..string.char(32,102,97,105,108,101,100,32,116,111,32,108,111,97,100))
end
end)
return nil
end
local function _0xEBB8()
if _0x012B then
if _0x012B.model then
_0x012B.model:Destroy()
end
for _0x0D18 in pairs(_0x012B.hidden) do
if _0x0D18.Parent then
_0x0D18.LocalTransparencyModifier = 0
end
end
end
_0x012B = nil
end
local _0x9A97 = { Vector3.xAxis, Vector3.yAxis, Vector3.zAxis }
local function _0x1AF7(_0x52F8)
local _0xC494 = { { 1, _0x52F8.X }, { 2, _0x52F8.Y }, { 3, _0x52F8.Z } }
table.sort(_0xC494, function(_0x7D74, _0xBB9C)
return _0x7D74[2] > _0xBB9C[2]
end)
return _0x9A97[_0xC494[1][1]], _0x9A97[_0xC494[2][1]], _0xC494[1][2]
end
local function _0xEF1C(_0x16A1, _0xA83C, _0x926F)
local _0x0AA5 = _0xA83C:Cross(_0x926F).Unit
_0x926F = _0x0AA5:Cross(_0xA83C).Unit
return CFrame.fromMatrix(_0x16A1, _0x0AA5, _0x926F, -_0xA83C)
end
local function _0x559C(_0xC3A4, _0x1457, _0x37D7)
_0xEBB8()
local _0xE6E2 = _0x37D7:Clone()
local _0xEE00 = {}
for _0xBFE6, _0xA051 in ipairs(_0xE6E2:GetDescendants()) do
if _0xA051:IsA(string.char(66,97,115,101,80,97,114,116)) then
_0xA051.Anchored, _0xA051.CanCollide, _0xA051.CanQuery, _0xA051.CanTouch, _0xA051.Massless, _0xA051.CastShadow = true, false, false, false, true, false
table.insert(_0xEE00, _0xA051)
end
end
local _0xBFE6, _0x52F8 = _0xE6E2:GetBoundingBox()
local _0xBFE6, _0xBFE6, _0xCAFA = _0x1AF7(_0x52F8)
pcall(function()
_0xE6E2:ScaleTo(_0xE6E2:GetScale() * (4.5 * _0x2FCD.size / 100) / math.max(_0xCAFA, 0.1))
end)
local _0x396A, _0xC520 = _0xE6E2:GetBoundingBox()
local _0x2CF5, _0x29E3 = _0x1AF7(_0xC520)
_0xE6E2.WorldPivot = _0xEF1C(_0x396A.Position, _0x396A:VectorToWorldSpace(_0x2CF5), _0x396A:VectorToWorldSpace(_0x29E3))
local _0x11B6, _0x2FCB = _0x1AF7(_0x1457.Size)local _0xE84A = _0xD33F.Character and _0xD33F.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xA83C = _0xE84A and _0xE84A.CFrame.LookVector or _0x1457.CFrame.LookVector
_0xA83C = Vector3.new(_0xA83C.X, 0, _0xA83C.Z)
if _0xA83C.Magnitude < 0.001 then
_0xA83C = Vector3.new(0, 0, -1)
else
_0xA83C = _0xA83C.Unit
end
local _0x926F = Vector3.yAxis
local _0xBFE6, _0xBFE6, _0x13B0 = _0x1AF7(_0xC520)local _0xFE7C = _0xEF1C(_0x1457.Position + _0xA83C * _0x13B0 * 0.25, _0xA83C, _0x926F)
_0xFE7C = _0xFE7C * CFrame.new(_0x2FCD.offsetX, _0x2FCD.offsetY, 0)
_0xFE7C = _0xFE7C * CFrame.Angles(math.rad(-_0x2FCD.pitch), 0, 0)
_0xE6E2:PivotTo(_0xFE7C)
local _0x2C7E = {}
for _0xBFE6, _0xA85E in ipairs(_0xEE00) do
_0x2C7E[_0xA85E] = _0x1457.CFrame:ToObjectSpace(_0xA85E.CFrame)
end
_0xE6E2.Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,71,117,110,83,107,105,110)_0xE6E2.Parent = workspace.CurrentCamera
_0x012B = {
_0xC3A4 = _0xC3A4,
_0x1457 = _0x1457,
model = _0xE6E2,
_0x2C7E = _0x2C7E,
_0x9219 = {},
_0xFBB7 = table.concat({ _0x2FCD.model, _0x2FCD.size, _0x2FCD.turn, _0x2FCD.pitch, _0x2FCD.offsetX, _0x2FCD.offsetY },string.char(58)),
}
end
_0xF709(_0x7FDD.RenderStepped, function()
if not _0x2FCD.on then
return
end
local _0x8C06 = _0xD33F.Character
local _0xC3A4 = _0x8C06 and _0x8C06:FindFirstChild(string.char(71,117,110))
local _0x1457 = _0xC3A4 and _0xC3A4:FindFirstChild(string.char(72,97,110,100,108,101))
if not _0x1457 then
if _0x012B then
_0xEBB8()
end
return
end
local _0xFBB7 = table.concat({ _0x2FCD.model, _0x2FCD.size, _0x2FCD.turn, _0x2FCD.pitch, _0x2FCD.offsetX, _0x2FCD.offsetY },string.char(58))
if not _0x012B or _0x012B.tool ~= _0xC3A4 or _0x012B.key ~= _0xFBB7 or not _0x012B.model.Parent then
local _0x37D7 = _0x9A0F(_0x2FCD.model)
if not _0x37D7 then
return
end
_0x559C(_0xC3A4, _0x1457, _0x37D7)
end
local _0x0988 = _0x1457.CFrame
for _0xA85E, _0x18EF in pairs(_0x012B.offsets) do
_0xA85E.CFrame = _0x0988 * _0x18EF
end
for _0xBFE6, _0xA051 in ipairs(_0xC3A4:GetDescendants()) do
if _0xA051:IsA(string.char(66,97,115,101,80,97,114,116)) and _0xA051.LocalTransparencyModifier < 1 then
_0xA051.LocalTransparencyModifier = 1
_0x012B.hidden[_0xA051] = true
end
end
end)
local _0xDBF6 = _0x78B0(_0x27DE,string.char(71,117,110,32,83,107,105,110),string.char(77,111,100,101,108,115))
_0xDBF6:Toggle(string.char(65,87,77),string.char(115,110,105,112,101,114,32,114,105,102,108,101,32,105,110,115,116,101,97,100,32,111,102,32,116,104,101,32,115,104,101,114,105,102,102,32,103,117,110,32,40,111,110,108,121,32,121,111,117,32,115,101,101,32,105,116,41), function(_0x9B7B)
_0x2FCD.on = _0x9B7B
if not _0x9B7B then
_0xEBB8()
end
if _0x9B7B and not _0xF810 then
_0x2E58(string.char(83,104,101,114,105,102,102,32,111,110,108,121),string.char(84,104,105,115,32,102,101,97,116,117,114,101,32,111,110,108,121,32,119,111,114,107,115,32,119,104,101,110,32,121,111,117,32,97,114,101,32,116,104,101,32,83,104,101,114,105,102,102,32,97,110,100,32,104,111,108,100,32,116,104,101,32,103,117,110,46),string.char(68,111,110,101))
end
_0xE835(string.char(65,87,77,58,32).. (_0x9B7B andstring.char(79,110)orstring.char(79,102,102)), _0x9B7B andstring.char(116,97,107,101,32,111,117,116,32,116,104,101,32,103,117,110)orstring.char(110,111,114,109,97,108,32,103,117,110))
end)
_0xDBF6:Select(string.char(77,111,100,101,108),string.char(65,87,77,32,108,111,111,107), {string.char(71,114,101,101,110),string.char(66,108,97,99,107),string.char(67,108,97,115,115,105,99)}, _0x2FCD.model, function(_0xBE50)
_0x2FCD.model = _0xBE50
end)
local _0x400A = _0x78B0(_0x27DE,string.char(71,117,110,32,80,111,115,101),string.char(77,111,100,101,108,115))
_0x400A:Slider(string.char(83,105,122,101), 50, 200, _0x2FCD.size, function(_0xBE50)
_0x2FCD.size = _0xBE50
end, function(_0xBE50)
return _0xBE50 ..string.char(37)end)
_0x400A:Slider(string.char(84,105,108,116,32,68,111,119,110,32,47,32,85,112), -90, 90, _0x2FCD.pitch, function(_0xBE50)
_0x2FCD.pitch = _0xBE50
end, function(_0xBE50)
return (_0xBE50 > 0 andstring.char(43)or"") .. _0xBE50 ..string.char(194,176)end)
_0x400A:Slider(string.char(76,101,102,116,32,47,32,82,105,103,104,116), -20, 20, _0x2FCD.offsetX * 10, function(_0xBE50)
_0x2FCD.offsetX = _0xBE50 / 10
end, function(_0xBE50)
return string.format(string.char(37,46,49,102), _0xBE50 / 10)
end)
_0x400A:Slider(string.char(68,111,119,110,32,47,32,85,112), -20, 20, _0x2FCD.offsetY * 10, function(_0xBE50)
_0x2FCD.offsetY = _0xBE50 / 10
end, function(_0xBE50)
return string.format(string.char(37,46,49,102), _0xBE50 / 10)
end)
local _0x297E = _0x4FF7[string.char(71,117,110,32,83,107,105,110,47,116,117,114,110)]
if type(_0x297E) ==string.char(110,117,109,98,101,114)then_0x2FCD.turn = (_0x297E == 0) and 1 or (_0x297E % 4)
end
_0xDBF6:Button(string.char(82,111,116,97,116,101),string.char(105,102,32,116,104,101,32,98,97,114,114,101,108,32,112,111,105,110,116,115,32,116,104,101,32,119,114,111,110,103,32,119,97,121), function()
_0x2FCD.turn = (_0x2FCD.turn + 1) % 4
_0x330E(string.char(71,117,110,32,83,107,105,110,47,116,117,114,110), _0x2FCD.turn)
end)
_0x64F7(string.char(71,117,110,32,83,107,105,110,47,116,117,114,110), function(_0xBE50)
if type(_0xBE50) ==string.char(110,117,109,98,101,114)then
_0x2FCD.turn = _0xBE50 % 4
end
end, function()
return _0x2FCD.turn
end, 0)
_0x422B = function()
_0x2FCD.on = false
_0xEBB8()
end
end
do
local _0xEC88 = {
sel = { Knife = nil, Gun = nil },
listType =string.char(75,110,105,102,101),
_0x52F8 = 100,
_0xBD06 = false,
sparkles = false,
_0x61C5 = false,
_0x84FA = 60,
enabled = true,
}
local _0x4267 = {
{string.char(71,104,111,115,116,75,50,48,49,56),string.char(71,104,111,115,116,32,50,48,49,56),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 121944778, 2514800940, 1, 1, 1, 2513732969, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(66,105,111,103,117,110),string.char(66,105,111,103,117,110),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 4659589763, 1.5, 1.5, 1.5, 4659627458, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,107,117,108,108,115,95,75,95,50,48,50,49),string.char(83,107,117,108,108,115,32,50,48,50,49),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 7756610618, 1, 1, 1, 7800220325, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(65,109,101,114,105,99,97,71,117,110),string.char(65,109,101,114,105,99,97),string.char(71),string.char(67,108,97,115,115,105,99), 25298496, 164669251, 1.5, 1.5, 1.5, 164676043, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(70,114,111,122,101,110,95,75,95,50,48,50,50),string.char(70,114,111,122,101,110,32,50,48,50,50),string.char(75),string.char(67,111,109,109,111,110), 121944778, 4528568803, 1, 1, 1, 11834404402, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,105,110,103,101,114,115,99,121,116,104,101),string.char(71,105,110,103,101,114,115,99,121,116,104,101,32,40,82,97,114,101,41),string.char(75),string.char(82,97,114,101), 15397894467, 15397714781, 0.9733, 0.9733, 0.9733, 15683138101, 0, -0.9894, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,105,110,103,101,114,115,99,121,116,104,101,95,76,101,103,101,110,100,97,114,121),string.char(71,105,110,103,101,114,115,99,121,116,104,101,32,40,76,101,103,101,110,100,97,114,121,41),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 15397894467, 15397484015, 0.9733, 0.9733, 0.9733, 15683140564, 0, -0.9894, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(74,97,99,107),string.char(74,97,99,107),string.char(75),string.char(82,97,114,101), 121944778, 315094945, 1.0005, 1, 1, 315099010, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,112,97,99,101),string.char(83,112,97,99,101),string.char(75),string.char(82,97,114,101), 957726558, 3183404232, 1, 1, 1, 3183607442, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,112,108,97,115,104),string.char(83,112,108,97,115,104),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 121944778, 235343795, 1, 1, 1, 235371439, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,105,102,116,115,95,75,95,50,48,49,57),string.char(71,105,102,116,115,32,50,48,49,57),string.char(75),string.char(67,111,109,109,111,110), 957726558, 4534828383, 1, 1, 1, 4534856285, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(66,111,110,101,115,95,75,95,50,48,50,52),string.char(66,111,110,101,115,32,50,48,50,52),string.char(75),string.char(85,110,99,111,109,109,111,110), 6600901997, 89105172362040, 1, 1, 1, 0, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(82,97,110,100,76,117,103,101,114),string.char(71,108,105,116,99,104,50),string.char(75),string.char(67,111,109,109,111,110), 121944778, 191784815, 1, 1, 1, 196751515, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(75,111,111,108),string.char(89,101,108,108,111,119),string.char(75),string.char(67,111,109,109,111,110), 121944778, 473621021, 1, 1, 1, 473625906, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(87,101,98,98,101,100,75),string.char(87,101,98,98,101,100),string.char(75),string.char(67,111,109,109,111,110), 957726558, 4210410097, 1, 1, 1, 4210949599, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(87,105,116,99,104,95,75,95,50,48,50,50),string.char(87,105,116,99,104,98,114,101,119),string.char(75),string.char(85,110,99,111,109,109,111,110), 957726558, 11245959206, 1, 1, 1, 11254115609, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(80,114,101,100,97,116,111,114,75,110,105,102,101),string.char(80,114,101,100,97,116,111,114),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 121944778, 199611278, 1, 1, 1, 235372015, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(69,121,101,98,97,108,108,95,75,95,50,48,50,50),string.char(69,121,101,98,97,108,108),string.char(75),string.char(67,111,109,109,111,110), 121944778, 11217645677, 1, 1, 1, 11254065007, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(72,101,97,114,116,95,75,95,50,48,50,51),string.char(72,101,97,114,116),string.char(75),string.char(82,97,114,101), 10855586895, 12248435132, 1, 1, 1, 12339327069, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(66,117,116,116,101,114,102,108,105,101,115,95,71,95,50,48,50,53),string.char(66,117,116,116,101,114,102,108,105,101,115),string.char(71),string.char(82,97,114,101), 79401392, 124763121225655, 1.6, 1.6, 1.6, 135662872427976, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(84,117,108,105,112),string.char(84,117,108,105,112),string.char(75),string.char(67,111,109,109,111,110), 121944778, 387468258, 1, 1, 1, 387874661, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,104,97,114,107,121,95,75,95,50,48,50,52),string.char(83,104,97,114,107,121),string.char(75),string.char(82,97,114,101), 6600901997, 18321899067, 1, 1, 1, 0, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,99,114,97,116,99,104,66,108,117,101),string.char(83,99,114,97,116,99,104,32,194,183,32,83,99,114,97,116,99,104,66,108,117,101),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 121944778, 1311186323, 1, 1, 1, 1133316381, 0, -0.9885, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(77,76,71),string.char(83,104,105,110,121),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 121944778, 473623765, 1, 1, 1, 473626979, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,108,97,116,101),string.char(83,108,97,116,101),string.char(75),string.char(67,111,109,109,111,110), 121944778, 161577504, 1, 1, 1, 198453556, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,104,101,114,114,121),string.char(67,104,101,114,114,121),string.char(75),string.char(67,111,109,109,111,110), 121944778, 155195316, 1, 1, 1, 6711852603, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(76,111,118,101),string.char(76,111,118,101),string.char(75),string.char(67,111,109,109,111,110), 121944778, 192527236, 1, 1, 1, 196750845, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,110,111,111,112),string.char(82,101,100),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 473621136, 1, 1, 1, 473626150, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(76,105,110,107,101,100),string.char(76,105,110,107,101,100),string.char(75),string.char(67,111,109,109,111,110), 121944778, 172762850, 1, 1, 1, 198453528, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(69,108,105,116,101),string.char(69,108,105,116,101),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 121944778, 241077941, 1, 1, 1, 241095344, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(90,111,109,98,105,101,75,50,48,49,56),string.char(90,111,109,98,105,101,32,50,48,49,56),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 103728247210594, 1, 1, 1, 2513734908, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(69,121,101,115,95,75,95,50,48,50,48),string.char(87,97,116,99,104,101,114,32,50,48,50,48),string.char(75),string.char(67,111,109,109,111,110), 957726558, 5866358413, 1, 1, 1, 5866438542, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(65,117,114,111,114,97,95,75,95,50,48,49,57),string.char(65,117,114,111,114,97,32,50,48,49,57),string.char(75),string.char(82,97,114,101), 957726558, 4534823003, 1, 1, 1, 4534860689, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,105,110,103,101,114,98,114,101,97,100,95,75,95,50,48,50,50),string.char(71,105,110,103,101,114,98,114,101,97,100,32,50,48,50,50),string.char(75),string.char(82,97,114,101), 121944778, 11802560347, 1, 1, 1, 11834399071, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,108,105,109,121,75),string.char(83,108,105,109,121),string.char(75),string.char(67,111,109,109,111,110), 957726558, 4210874138, 1, 1, 1, 4210932676, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(87,105,116,99,104,101,100),string.char(87,105,116,99,104,101,100),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 957726558, 4210410129, 1, 1, 1, 4210938270, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(77,111,108,116,101,110,75,110,105,102,101),string.char(77,111,108,116,101,110),string.char(75),string.char(82,97,114,101), 121944778, 472483450, 1, 1, 1, 235371809, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,116,105,99,107,101,114,115,88,95,75,95,50,48,50,50),string.char(83,116,105,99,107,101,114,115,32,50,48,50,50,32,194,183,32,83,116,105,99,107,101,114,115,88,95,75,95,50,48,50,50),string.char(75),string.char(67,111,109,109,111,110), 957726558, 11823434191, 1, 1, 1, 11834387858, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(77,111,111,110,115),string.char(77,111,111,110,115),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 531835087, 1, 1, 1, 531873154, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(86,97,109,112,105,114,101,75,50,48,49,56),string.char(86,97,109,112,105,114,101,32,50,48,49,56),string.char(75),string.char(82,97,114,101), 121944778, 2513708625, 1, 1, 1, 2513734708, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(74,68),string.char(74,68),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 121944778, 559676009, 1, 1, 1, 566867312, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(80,117,109,112,107,105,110,95,75,95,50,48,50,48),string.char(80,117,109,112,107,105,110,32,50,48,50,48),string.char(75),string.char(85,110,99,111,109,109,111,110), 957726558, 5872477622, 1, 1, 1, 5872490600, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,104,111,115,116,115,95,75,95,50,48,50,51),string.char(71,104,111,115,116,115,32,50,48,50,51),string.char(75),string.char(67,111,109,109,111,110), 121944778, 15037729398, 1, 1, 1, 15091326116, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(70,105,114,101,112,108,97,99,101,95,75,95,50,48,50,51),string.char(70,105,114,101,112,108,97,99,101),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 15382624195, 1, 1, 1, 15635558021, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,105,102,116,95,75,95,50,48,50,48),string.char(87,114,97,112),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 6121854102, 1, 1, 1, 6121854816, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,117,114,118,105,118,111,114,115,95,75,95,50,48,50,50),string.char(77,97,107,101,115,104,105,102,116),string.char(75),string.char(82,97,114,101), 121944778, 11218956882, 1, 1, 1, 11254180750, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(76,111,118,101,95,75,95,50,48,50,51),string.char(76,111,118,101,32,50,48,50,51),string.char(75),string.char(67,111,109,109,111,110), 10855586895, 12248652835, 1, 1, 1, 12339328595, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(70,97,100,101),string.char(70,97,100,101),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 121944778, 288136894, 1, 1, 1, 315501640, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(66,114,97,110,99,104,101,115),string.char(66,114,97,110,99,104,101,115),string.char(75),string.char(85,110,99,111,109,109,111,110), 957726558, 4210409800, 1, 1, 1, 4210943691, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,119,105,114,108,121,65,120,101,66,108,117,101),string.char(66,108,117,101,32,83,119,105,114,108,121),string.char(75),string.char(85,110,105,113,117,101), 8293463844, 74192567120797, 0.0579, 0.0579, 0.0579, 9552048857, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,97,110,100,108,101,95,75,95,50,48,50,48),string.char(67,97,110,100,108,101),string.char(75),string.char(67,111,109,109,111,110), 957726558, 5872478022, 1, 1, 1, 5872491708, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(87,97,118,121,95,75,95,50,48,50,52),string.char(87,97,118,121),string.char(75),string.char(67,111,109,109,111,110), 6600901997, 16846003250, 1, 1, 1, 0, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(70,114,111,115,116,102,108,97,109,101,95,75,95,50,48,50,52),string.char(70,114,111,115,116,102,108,97,109,101),string.char(75),string.char(82,97,114,101), 6600901997, 121019096457803, 1, 1, 1, 104988218477551, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(76,101,97,118,101,115,95,75,95,50,48,50,51),string.char(76,101,97,118,101,115),string.char(75),string.char(67,111,109,109,111,110), 6600901997, 15081802321, 1, 1, 1, 15091400883, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,116,105,99,107,101,114,115,95,88,95,75,95,50,48,50,52),string.char(83,116,105,99,107,101,114,115,32,50,48,50,52,32,194,183,32,83,116,105,99,107,101,114,115,95,88,95,75,95,50,48,50,52),string.char(75),string.char(67,111,109,109,111,110), 6600901997, 109835260607049, 1, 1, 1, 83843575465564, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,112,97,114,107,108,101,52),string.char(83,112,97,114,107,108,101,52),string.char(75),string.char(67,111,109,109,111,110), 121944778, 306917565, 1, 1, 1, 310712788, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(87,111,108,102),string.char(87,111,108,102),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 531835092, 1, 1, 1, 531873487, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(84,97,105,108,115,108,105,100,101),string.char(84,97,105,108,115,108,105,100,101),string.char(75),string.char(67,111,109,109,111,110), 121944778, 240942385, 1, 1, 1, 305506822, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,113,117,105,114,101),string.char(83,113,117,105,114,101),string.char(75),string.char(82,97,114,101), 121944778, 243372276, 1, 1, 1, 315501560, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,108,97,110),string.char(67,108,97,110),string.char(75),string.char(67,111,109,109,111,110), 121944778, 161495171, 1, 1, 1, 235366460, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,104,111,115,116,115,95,75,95,50,48,50,48),string.char(71,104,111,115,116,115,32,50,48,50,48),string.char(75),string.char(85,110,99,111,109,109,111,110), 957726558, 5866362606, 1, 1, 1, 5866442790, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,111,110,115,116,101,108,108,97,116,105,111,110),string.char(67,111,110,115,116,101,108,108,97,116,105,111,110,32,194,183,32,67,111,110,115,116,101,108,108,97,116,105,111,110),string.char(71),string.char(71,111,100,108,121), 124598402927958, 79010754957272, 0.1007, 0.1007, 0.1007, 114197436469014, 0, -0.2701, 0.7265, 1, 0, 0, 0, 0.9999, 0.0125, 0, -0.0125, 0.9999 },
{string.char(79,114,110,97,109,101,110,116,115,95,75,95,50,48,50,48),string.char(79,114,110,97,109,101,110,116,115,32,50,48,50,48),string.char(75),string.char(67,111,109,109,111,110), 957726558, 6121852598, 1, 1, 1, 6121853160, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(66,97,116,115),string.char(66,97,116,115,32,40,82,97,114,101,41),string.char(75),string.char(82,97,114,101), 121944778, 531836446, 1, 1, 1, 531873625, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,116,111,99,107,105,110,103,115,95,75,95,50,48,50,50),string.char(83,116,111,99,107,105,110,103,115,32,50,48,50,50),string.char(75),string.char(85,110,99,111,109,109,111,110), 957726558, 11824212997, 1, 1, 1, 11834392930, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,104,97,115,116,108,121,95,75,95,50,48,50,51),string.char(71,104,97,115,116,108,121),string.char(75),string.char(82,97,114,101), 121944778, 15029785979, 1, 1, 1, 15091407068, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,111,111,107,105,101,95,75,95,50,48,50,49),string.char(67,111,111,107,105,101),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 8275035982, 1, 1, 1, 8304752586, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(87,101,98),string.char(87,101,98),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 121944778, 315110729, 1, 1, 1, 315104004, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,97,110,116,97,95,75,95,50,48,49,56),string.char(83,97,110,116,97,32,50,48,49,56),string.char(75),string.char(67,111,109,109,111,110), 121944778, 2659488082, 1, 1, 1, 2669637780, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,97,110,100,121,83,119,105,114,108,95,75,95,50,48,49,57),string.char(67,97,110,100,121,32,83,119,105,114,108),string.char(75),string.char(82,97,114,101), 957726558, 4534829449, 1, 1, 1, 4534860226, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,97,110,101,95,75,95,50,48,49,56),string.char(67,97,110,101,32,50,48,49,56),string.char(75),string.char(82,97,114,101), 121944778, 2659489980, 1, 1, 1, 2669638508, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(77,101,108,116,100,111,119,110,95,75,95,50,48,50,51),string.char(77,101,108,116,100,111,119,110),string.char(75),string.char(85,110,99,111,109,109,111,110), 957726558, 15035536803, 1, 1, 1, 15091340751, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,110,111,119,121,50,48,49,55),string.char(83,110,111,119,121,32,50,48,49,55),string.char(75),string.char(82,97,114,101), 121944778, 1268287181, 1, 1, 1, 1268705947, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,108,97,115,104,101,100,95,75,95,50,48,50,48),string.char(83,108,97,115,104,101,100),string.char(75),string.char(67,111,109,109,111,110), 957726558, 5929316036, 1, 1, 1, 5929317433, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,114,101,101,110,70,105,114,101),string.char(71,114,101,101,110,32,70,105,114,101),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 121944778, 1268253789, 1, 1, 1, 1268706374, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,110,111,119,102,108,97,107,101,115,95,75,95,50,48,49,57),string.char(83,110,111,119,102,108,97,107,101,115,32,50,48,49,57),string.char(75),string.char(67,111,109,109,111,110), 121944778, 4534831727, 1, 1, 1, 4534855045, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,104,97,100,101,100),string.char(83,104,97,100,101,100),string.char(75),string.char(67,111,109,109,111,110), 957726558, 4659587929, 1, 1, 1, 4659636085, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(90,111,109,98,105,102,105,101,100,75),string.char(90,111,109,98,105,102,105,101,100),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 114781782298919, 1, 1, 1, 4210928053, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,105,110,103,101,114,115,99,121,116,104,101,95,65,110,99,105,101,110,116),string.char(71,105,110,103,101,114,115,99,121,116,104,101,32,40,65,110,99,105,101,110,116,41),string.char(75),string.char(65,110,99,105,101,110,116), 15395668244, 15409195246, 0.0638, 0.0638, 0.0638, 15683188776, 0, -0.22, 0.944, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(82,101,97,118,101,114,95,71,111,100,108,121),string.char(82,101,97,118,101,114,32,40,71,111,100,108,121,41),string.char(75),string.char(71,111,100,108,121), 7774174974, 7774175135, 0.25, 0.2499, 0.25, 7791511648, 0, -0.9987, -0.0037, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,97,110,101,115,95,75,95,50,48,50,51),string.char(67,97,110,101,115),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 15381447325, 1, 1, 1, 15635574962, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,97,109,111,75,110,105,102,101),string.char(67,97,109,111),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 3183403069, 1, 1, 1, 3183606225, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,107,101,116,99,104,89,84),string.char(83,107,101,116,99,104,121),string.char(75),string.char(67,111,109,109,111,110), 121944778, 539831264, 1, 1, 1, 546161470, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(72,117,110,116,101,114,95,75,95,50,48,50,50),string.char(72,117,110,116,101,114),string.char(75),string.char(67,111,109,109,111,110), 121944778, 11246309889, 1, 1, 1, 11254154978, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(79,118,101,114,115,101,101,114,75,110,105,102,101),string.char(79,118,101,114,115,101,101,114),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 121944778, 198299790, 1, 1, 1, 198458910, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,105,108,101,110,116,78,105,103,104,116,95,75,95,50,48,50,48),string.char(83,105,108,101,110,116,32,78,105,103,104,116),string.char(75),string.char(82,97,114,101), 957726558, 6121850778, 1, 1, 1, 6121851313, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(66,101,97,99,104,95,75,95,50,48,50,51),string.char(66,101,97,99,104),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 6600901997, 13894391232, 1, 1, 1, 13944136198, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,108,111,119,110,102,105,115,104,95,75,95,50,48,50,52),string.char(67,108,111,119,110,102,105,115,104),string.char(75),string.char(67,111,109,109,111,110), 6600901997, 18321899540, 1, 1, 1, 0, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(77,111,111,110,95,75,95,50,48,50,49),string.char(77,111,111,110),string.char(75),string.char(67,111,109,109,111,110), 121944778, 7756612294, 1, 1, 1, 7800224197, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,107,117,108,108,115),string.char(83,107,117,108,108,115),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 957726558, 4210409968, 1, 1, 1, 4210915060, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,119,101,101,116,104,101,97,114,116),string.char(83,119,101,101,116,104,101,97,114,116),string.char(75),string.char(67,111,109,109,111,110), 121944778, 363142139, 1, 1, 1, 363150761, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(90,111,109,98,105,102,105,101,100,95,75,95,50,48,50,50),string.char(90,111,109,98,105,102,105,101,100,32,50,48,50,50),string.char(75),string.char(82,97,114,101), 121944778, 11218741536, 1, 1, 1, 11254182560, 0, -1.0087, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,110,97,107,101,98,105,116,101,75),string.char(83,110,97,107,101,98,105,116,101),string.char(75),string.char(82,97,114,101), 957726558, 4210409981, 1, 1, 1, 4210939388, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(87,97,118,101,115,95,75,95,50,48,50,52),string.char(87,97,118,101,115,32,50,48,50,52),string.char(75),string.char(82,97,114,101), 6600901997, 18321898887, 1, 1, 1, 0, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,97,110,100,121,67,111,114,110,95,75,95,50,48,50,50),string.char(67,97,110,100,121,32,67,111,114,110,32,50,48,50,50),string.char(75),string.char(67,111,109,109,111,110), 121944778, 11217550170, 1, 1, 1, 11254057417, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,111,116,116,111,110,67,97,110,100,121),string.char(67,111,116,116,111,110,32,67,97,110,100,121),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 121944778, 435754345, 1, 1, 1, 435933179, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,116,97,116,105,99),string.char(83,116,97,116,105,99),string.char(75),string.char(67,111,109,109,111,110), 121944778, 365566391, 1, 1, 1, 365568163, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(66,97,116,115,95,75,95,50,48,50,48),string.char(66,97,116,115,32,50,48,50,48),string.char(75),string.char(67,111,109,109,111,110), 957726558, 5930584000, 1, 1, 1, 5930729222, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(80,111,114,116,97,108,95,75,95,50,48,50,48),string.char(80,111,114,116,97,108),string.char(75),string.char(82,97,114,101), 957726558, 5866364902, 1, 1, 1, 5866444722, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,105,110,103,101,114,98,114,101,97,100,95,75,95,50,48,49,57),string.char(71,105,110,103,101,114,98,114,101,97,100,32,50,48,49,57),string.char(75),string.char(85,110,99,111,109,109,111,110), 957726558, 4534824961, 1, 1, 1, 4534856940, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,104,111,115,116,82,98,120,95,75,95,50,48,50,50),string.char(71,104,111,115,116,108,121),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 11117362816, 1, 1, 1, 11117375743, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(82,111,115,101,95,75,95,50,48,50,51),string.char(82,111,115,101),string.char(75),string.char(85,110,99,111,109,109,111,110), 10855586895, 12238708500, 1, 1, 1, 12339325736, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(76,77,70,65,79),string.char(80,105,110,107),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 473621215, 1, 1, 1, 473626473, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,119,105,114,108,95,75,95,50,48,50,49),string.char(83,119,105,114,108),string.char(75),string.char(82,97,114,101), 121944778, 8294015413, 1, 1, 1, 8304757110, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(68,101,119),string.char(66,108,97,99,107),string.char(75),string.char(82,97,114,101), 121944778, 473621267, 1, 1, 1, 473626646, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(72,111,108,108,121,95,75,95,50,48,49,56),string.char(72,111,108,108,121),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 2664997532, 1, 1, 1, 2669638990, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(82,105,98,98,111,110,95,75,95,50,48,50,51),string.char(82,105,98,98,111,110),string.char(75),string.char(67,111,109,109,111,110), 957726558, 15332484220, 1, 1, 1, 15635552019, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,104,105,112,115),string.char(66,108,117,101),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 473621164, 1, 1, 1, 473626317, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,97,110,100,108,101,115,95,75,95,50,48,50,52),string.char(67,97,110,100,108,101,115),string.char(75),string.char(67,111,109,109,111,110), 6600901997, 137012419503995, 1, 1, 1, 0, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(87,114,101,97,116,104,115,95,75,95,50,48,50,52),string.char(87,114,101,97,116,104,115),string.char(75),string.char(85,110,99,111,109,109,111,110), 6600901997, 100835235112831, 1, 1, 1, 78432760615312, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(87,114,97,112,112,101,100,95,75,95,50,48,50,52),string.char(87,114,97,112,112,101,100,32,50,48,50,52),string.char(75),string.char(85,110,99,111,109,109,111,110), 6600901997, 73121682334065, 1, 1, 1, 72638846676083, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,104,111,115,116,115,95,75,95,50,48,50,52),string.char(71,104,111,115,116,115,32,50,48,50,52),string.char(75),string.char(67,111,109,109,111,110), 6600901997, 128247285156176, 1, 1, 1, 0, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,105,110,103,101,114,98,114,101,97,100,50,48,49,55),string.char(71,105,110,103,101,114,98,114,101,97,100,32,50,48,49,55),string.char(75),string.char(82,97,114,101), 121944778, 1268295971, 1, 1, 1, 1268705527, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(72,101,97,114,116,115),string.char(72,101,97,114,116,115),string.char(75),string.char(67,111,109,109,111,110), 121944778, 363311795, 1, 1, 1, 363362737, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,119,101,97,116,101,114,95,75,95,50,48,49,56),string.char(83,119,101,97,116,101,114,32,50,48,49,56),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 2664997385, 1, 1, 1, 2669640567, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,97,110,100,105,101,100,95,75,95,50,48,50,50),string.char(67,97,110,100,105,101,100),string.char(75),string.char(67,111,109,109,111,110), 121944778, 11802560748, 1, 1, 1, 11834384755, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,114,97,99,107,115,95,75,95,50,48,50,49),string.char(67,114,97,99,107,115),string.char(75),string.char(67,111,109,109,111,110), 121944778, 7756612787, 1, 1, 1, 7800224981, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(65,117,114,111,114,97,95,75,95,50,48,50,49),string.char(65,117,114,111,114,97,32,50,48,50,49),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 121944778, 8275036346, 1, 1, 1, 8304750877, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(77,117,109,109,121,75,50,48,49,56),string.char(77,117,109,109,121,32,50,48,49,56),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 2513648136, 1, 1, 1, 2513733542, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,112,97,114,107,108,101,50),string.char(83,112,97,114,107,108,101,50),string.char(75),string.char(67,111,109,109,111,110), 121944778, 306914370, 1, 1, 1, 310710191, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(80,117,109,112,107,105,110,80,105,101,95,75,95,50,48,50,51),string.char(80,117,109,112,107,105,110,32,80,105,101),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 15320084464, 1, 1, 1, 15413117611, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,112,97,114,107,108,101,57),string.char(83,112,97,114,107,108,101,57),string.char(75),string.char(67,111,109,109,111,110), 121944778, 306919809, 1, 1, 1, 310715104, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(73,103,108,111,111,95,75,95,50,48,50,52),string.char(73,103,108,111,111),string.char(75),string.char(67,111,109,109,111,110), 6600901997, 126697433046307, 1, 1, 1, 73203940450745, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(73,99,101,72,97,109,109,101,114,95,65,110,99,105,101,110,116),string.char(73,99,101,99,114,117,115,104,101,114,32,40,65,110,99,105,101,110,116,41),string.char(75),string.char(65,110,99,105,101,110,116), 11848711686, 11850483027, 0.07, 0.07, 0.07, 11855274019, -0.0075, -1.0949, 0.0014, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(68,111,114,105,116,111,115),string.char(80,117,114,112,108,101),string.char(75),string.char(82,97,114,101), 121944778, 473621310, 1, 1, 1, 473626740, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(70,114,111,115,116,102,108,97,109,101,95,71,95,50,48,50,52),string.char(70,114,111,115,116,102,108,97,109,101),string.char(71),string.char(82,97,114,101), 79401392, 76059118984667, 1.6, 1.6, 1.6, 114781759936576, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(71,114,105,110,100),string.char(71,114,105,110,100),string.char(75),string.char(67,111,109,109,111,110), 121944778, 240937041, 1, 1, 1, 305503942, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(66,108,111,115,115,111,109),string.char(66,108,111,115,115,111,109),string.char(75),string.char(67,111,109,109,111,110), 121944778, 363138170, 1, 1, 1, 363150561, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,97,110,101,95,75,95,50,48,50,49),string.char(67,97,110,101,32,50,48,50,49),string.char(75),string.char(67,111,109,109,111,110), 121944778, 8293557762, 1, 1, 1, 8304750295, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,97,110,100,121),string.char(83,97,110,100,121),string.char(75),string.char(67,111,109,109,111,110), 121944778, 365566396, 1, 1, 1, 365568056, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,116,97,105,110,108,101,115,115),string.char(83,116,97,105,110,108,101,115,115),string.char(75),string.char(67,111,109,109,111,110), 121944778, 91790701, 1, 1, 1, 235366771, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(84,105,103,101,114),string.char(84,105,103,101,114),string.char(75),string.char(85,110,99,111,109,109,111,110), 957726558, 3183403283, 1, 1, 1, 3183606579, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(75,114,97,107,101,110,95,75,95,50,48,50,52),string.char(75,114,97,107,101,110),string.char(75),string.char(82,97,114,101), 6600901997, 127474140762204, 1, 1, 1, 0, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(77,101,97,100,111,119,95,71,95,50,48,50,53),string.char(77,101,97,100,111,119),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 107182071164823, 1.6, 1.6, 1.6, 107321881182350, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(80,117,109,112,107,105,110,80,97,116,99,104),string.char(80,117,109,112,107,105,110),string.char(75),string.char(67,111,109,109,111,110), 957726558, 4210409792, 1, 1, 1, 4210931354, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(70,117,115,105,111,110),string.char(70,117,115,105,111,110),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 121944778, 365566399, 1, 1, 1, 365569686, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(70,117,116,117,114,101),string.char(70,117,116,117,114,101),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 163926951, 1, 1, 1, 197639041, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(79,108,108,105,101),string.char(79,108,108,105,101),string.char(75),string.char(67,111,109,109,111,110), 121944778, 240941633, 1, 1, 1, 305504399, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(84,111,120,105,99,75),string.char(84,111,120,105,99),string.char(75),string.char(82,97,114,101), 121944778, 2513648163, 1, 1, 1, 2513734535, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(68,97,114,107,95,75,95,50,48,50,51),string.char(68,97,114,107,107,110,105,102,101),string.char(75),string.char(82,97,114,101), 121944778, 15081468336, 1, 1, 1, 15091343579, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,104,114,111,109,97,116,105,99,95,75,95,50,48,50,51),string.char(67,104,114,111,109,97,116,105,99),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 6600901997, 12927939898, 1, 1, 1, 12965304445, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(70,114,111,115,116,102,97,100,101,95,75,95,50,48,50,51),string.char(70,114,111,115,116,102,97,100,101),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 6600901997, 15344578184, 1, 1, 1, 15635565488, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,117,98),string.char(83,117,98),string.char(75),string.char(67,111,109,109,111,110), 121944778, 545569636, 1, 1, 1, 546159250, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,116,105,99,107,101,114,115,95,75,95,50,48,50,49),string.char(83,116,105,99,107,101,114,115,32,50,48,50,49,32,194,183,32,83,116,105,99,107,101,114,115,95,75,95,50,48,50,49),string.char(75),string.char(67,111,109,109,111,110), 121944778, 7757619418, 1, 1, 1, 7800229084, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(72,97,114,100,101,110,101,100),string.char(72,97,114,100,101,110,101,100),string.char(75),string.char(67,111,109,109,111,110), 957726558, 3183401814, 1, 1, 1, 3183605810, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(82,111,98,111,116,95,75,95,50,48,50,52),string.char(82,111,98,111,116),string.char(75),string.char(82,97,114,101), 6600901997, 16833551908, 1, 1, 1, 0, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,112,105,100,101,114,95,75,95,50,48,50,51),string.char(83,112,105,100,101,114,32,50,48,50,51),string.char(75),string.char(67,111,109,109,111,110), 957726558, 15091217506, 1, 1, 1, 15091399982, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(74,101,108,108,121,102,105,115,104,95,75,95,50,48,50,52),string.char(74,101,108,108,121,102,105,115,104),string.char(75),string.char(85,110,99,111,109,109,111,110), 6600901997, 18321899333, 1, 1, 1, 0, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,105,114,99,117,105,116),string.char(67,105,114,99,117,105,116),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 155356565, 1, 1, 1, 235366945, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(73,110,102,101,99,116,101,100,95,75,95,50,48,50,50),string.char(73,110,102,101,99,116,101,100,32,50,48,50,50),string.char(75),string.char(67,111,109,109,111,110), 121944778, 11217988441, 1, 1, 1, 11254175272, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(72,111,116,67,104,111,99,111,108,97,116,101,95,75,95,50,48,50,52),string.char(72,111,116,32,67,104,111,99,111,108,97,116,101),string.char(75),string.char(67,111,109,109,111,110), 6600901997, 105940775587606, 1, 1, 1, 133307062463653, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(72,97,117,110,116,101,100,75),string.char(72,97,117,110,116,101,100),string.char(75),string.char(67,111,109,109,111,110), 121944778, 2513648134, 1, 1, 1, 2513733741, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,119,101,97,116,101,114),string.char(83,119,101,97,116,101,114),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 1268293368, 1, 1, 1, 1268704902, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(77,105,115,115,105,110,103),string.char(77,105,115,115,105,110,103),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 163625649, 1, 1, 1, 198455936, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,117,110,110,121,95,71,95,50,48,50,53),string.char(83,117,110,110,121),string.char(71),string.char(82,97,114,101), 79401392, 105937622090347, 1.6, 1.6, 1.6, 93906279038399, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(76,111,103,99,117,116,116,101,114,95,75,95,50,48,50,52),string.char(76,111,103,99,117,116,116,101,114),string.char(75),string.char(82,97,114,101), 6600901997, 73375064666195, 1, 1, 1, 71088901904009, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(87,101,98,115),string.char(87,101,98,115),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 1133322612, 1, 1, 1, 1133325465, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(82,101,105,110,100,101,101,114,95,75,95,50,48,50,52),string.char(82,101,105,110,100,101,101,114),string.char(75),string.char(67,111,109,109,111,110), 6600901997, 121109734938655, 1, 1, 1, 109101361674956, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(68,101,101,112,83,101,97),string.char(68,101,101,112,32,83,101,97),string.char(75),string.char(82,97,114,101), 957726558, 4659571247, 1, 1, 1, 4659634072, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(78,111,111,100,108,101,95,75,95,50,48,50,51),string.char(80,111,111,108,32,78,111,111,100,108,101),string.char(75),string.char(85,110,99,111,109,109,111,110), 6600901997, 13895318303, 1, 1, 1, 13944133313, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,97,108,97,120,121),string.char(71,97,108,97,120,121),string.char(75),string.char(82,97,114,101), 121944778, 192367012, 1, 1, 1, 192480941, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,112,114,105,110,103,95,75,95,50,48,50,52),string.char(83,112,114,105,110,103),string.char(75),string.char(82,97,114,101), 957726558, 16830850572, 1, 1, 1, 0, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,111,97,108,95,75,95,50,48,50,50),string.char(67,111,97,108,32,50,48,50,50),string.char(75),string.char(67,111,109,109,111,110), 121944778, 11802560508, 1, 1, 1, 11834390120, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(76,101,97,102),string.char(76,101,97,102),string.char(75),string.char(67,111,109,109,111,110), 957726558, 4659588788, 1, 1, 1, 4659636452, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(69,109,101,114,97,108,100),string.char(69,109,101,114,97,108,100),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 121944778, 173946596, 1, 1, 1, 198461276, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,116,97,114,114,121,95,75,95,50,48,50,49),string.char(83,116,97,114,114,121,32,50,48,50,49),string.char(75),string.char(82,97,114,101), 121944778, 8303534347, 1, 1, 1, 8304757707, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,116,111,99,107,105,110,103,115,95,71,95,50,48,50,52),string.char(83,116,111,99,107,105,110,103,115,32,50,48,50,52),string.char(71),string.char(67,111,109,109,111,110), 6600918074, 75065116268922, 0.0384, 0.0388, 0.0369, 76288270695961, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(71,105,110,103,101,114,95,75,95,50,48,49,56),string.char(71,105,110,103,101,114,32,50,48,49,56),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 121944778, 2659488706, 1, 1, 1, 2669638742, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,110,111,119,102,97,108,108,95,75,95,50,48,50,51),string.char(83,110,111,119,102,97,108,108),string.char(75),string.char(67,111,109,109,111,110), 957726558, 15381549802, 1, 1, 1, 15635568751, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(66,114,97,105,110,115),string.char(66,114,97,105,110,115),string.char(75),string.char(67,111,109,109,111,110), 121944778, 531864479, 1, 1, 1, 531873956, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,107,111,111,108),string.char(83,107,111,111,108),string.char(75),string.char(67,111,109,109,111,110), 121944778, 178200933, 1, 1, 1, 295269977, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(86,97,108,101,110,116,105,110,101),string.char(86,97,108,101,110,116,105,110,101),string.char(75),string.char(67,111,109,109,111,110), 121944778, 363139123, 1, 1, 1, 363362726, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(70,114,111,115,116,121),string.char(70,114,111,115,116,121),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 1268375270, 1, 1, 1, 1268704507, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,105,102,116,98,97,103,95,75,95,50,48,50,48),string.char(71,105,102,116,32,66,97,103),string.char(75),string.char(67,111,109,109,111,110), 957726558, 6121846201, 1, 1, 1, 6121847170, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,97,110,100,121,67,111,114,110,95,75,95,50,48,50,48),string.char(67,97,110,100,121,32,67,111,114,110,32,50,48,50,48),string.char(75),string.char(67,111,109,109,111,110), 957726558, 5866354929, 1, 1, 1, 5866435364, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(70,114,111,122,101,110,95,75,95,50,48,49,57),string.char(70,114,111,122,101,110,32,50,48,49,57),string.char(75),string.char(85,110,99,111,109,109,111,110), 957726558, 4528568803, 1, 1, 1, 4534857523, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(79,114,97,110,103,101,77,97,114,98,108,101),string.char(79,114,97,110,103,101,32,77,97,114,98,108,101),string.char(75),string.char(82,97,114,101), 121944778, 531653125, 1, 1, 1, 531873011, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,105,102,116,101,100),string.char(71,105,102,116,101,100),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 190131936, 1, 1, 1, 197627734, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(68,117,110,103,101,111,110),string.char(68,117,110,103,101,111,110),string.char(75),string.char(82,97,114,101), 957726558, 4210409814, 1, 1, 1, 4210920512, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,112,97,114,107,108,101,53),string.char(83,112,97,114,107,108,101,53),string.char(75),string.char(67,111,109,109,111,110), 121944778, 306909649, 1, 1, 1, 310713235, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,105,110,103,101,114,115,99,121,116,104,101,95,71,111,100,108,121),string.char(71,105,110,103,101,114,115,99,121,116,104,101,32,40,71,111,100,108,121,41),string.char(75),string.char(71,111,100,108,121), 15397282571, 15409017869, 0.0696, 0.0696, 0.0697, 15683175970, 0, -0.94, -0.063, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(82,97,105,110,98,111,119),string.char(82,97,105,110,98,111,119,32,40,82,97,114,101,41),string.char(75),string.char(82,97,114,101), 121944778, 157019835, 1, 1, 1, 159747377, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,97,114,100,98,111,97,114,100),string.char(67,97,114,100,98,111,97,114,100),string.char(75),string.char(67,111,109,109,111,110), 121944778, 159435782, 1, 1, 1, 235366729, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(80,97,115,115,105,111,110),string.char(80,97,115,115,105,111,110),string.char(75),string.char(67,111,109,109,111,110), 121944778, 363139004, 1, 1, 1, 363150334, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(82,117,110,101),string.char(82,117,110,101),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 121944778, 3183404423, 1, 1, 1, 3183607894, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(66,108,101,97,99,104,101,100),string.char(66,108,101,97,99,104,101,100),string.char(75),string.char(67,111,109,109,111,110), 121944778, 311711104, 1, 1, 1, 315500879, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(84,114,97,118,101,108,101,114,65,120,101,82,101,100),string.char(82,101,100,32,84,114,97,118,101,108,101,114,39,115),string.char(75),string.char(85,110,105,113,117,101), 15057341638, 129174189928841, 0.0681, 0.0681, 0.0681, 15695405379, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(86,105,110,101,115,95,75,95,50,48,50,51),string.char(86,105,110,101,115),string.char(75),string.char(67,111,109,109,111,110), 957726558, 15037307112, 1, 1, 1, 15091325210, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,110,111,119,109,97,110,95,75,95,50,48,50,49),string.char(83,110,111,119,109,97,110,32,50,48,50,49),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 8275035798, 1, 1, 1, 8304753468, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,104,111,115,116,115,95,75,95,50,48,50,49),string.char(87,114,97,105,116,104,115),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 7808358755, 1, 1, 1, 7808362279, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(75,114,121,112,116,111),string.char(75,114,121,112,116,111),string.char(75),string.char(82,97,114,101), 121944778, 155572642, 1, 1, 1, 198458841, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(69,108,100,101,114,119,111,111,100,75,110,105,102,101),string.char(69,108,100,101,114,119,111,111,100,32,66,108,97,100,101),string.char(75),string.char(71,111,100,108,121), 11238166013, 11238176757, 0.07, 0.07, 0.07, 11254879631, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(82,101,112,116,105,108,101),string.char(82,101,112,116,105,108,101),string.char(75),string.char(67,111,109,109,111,110), 121944778, 162671092, 1, 1, 1, 162672131, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,110,111,119,102,108,97,107,101,95,75,95,50,48,50,50),string.char(83,110,111,119,102,108,97,107,101,32,50,48,50,50),string.char(75),string.char(85,110,99,111,109,109,111,110), 957726558, 11823783274, 1, 1, 1, 11834397133, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(69,99,108,105,112,115,101,95,75,95,50,48,50,51),string.char(69,99,108,105,112,115,101),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 15081587332, 1, 1, 1, 15091404278, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,116,111,114,109,95,75,95,50,48,50,52),string.char(83,116,111,114,109),string.char(75),string.char(82,97,114,101), 6600901997, 124972846638078, 1, 1, 1, 0, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,99,114,97,116,99,104),string.char(83,99,114,97,116,99,104,32,194,183,32,83,99,114,97,116,99,104),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 121944778, 531835091, 1, 1, 1, 531873371, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,97,110,116,97,115,77,97,103,105,99),string.char(83,97,110,116,97,39,115,32,77,97,103,105,99),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 957726558, 4535479726, 1, 1, 1, 4535483042, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(80,97,108,109,115,95,75,95,50,48,50,52),string.char(80,97,108,109,115),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 6600901997, 18351264716, 1, 1, 1, 0, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(68,97,114,107,110,101,115,115,95,75,95,50,48,50,50),string.char(68,97,114,107,110,101,115,115),string.char(75),string.char(67,111,109,109,111,110), 121944778, 11217282454, 1, 1, 1, 11254081561, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,111,110,115,116,101,108,108,97,116,105,111,110,95,75,95,50,48,50,52),string.char(78,105,103,104,116,115,116,97,114),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 6600901997, 125699146017319, 1, 1, 1, 113979322866878, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(65,100,117,114,105,116,101),string.char(65,100,117,114,105,116,101),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 192482160, 1, 1, 1, 192492943, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(80,114,105,115,109),string.char(80,114,105,115,109),string.char(75),string.char(67,111,109,109,111,110), 121944778, 297795989, 1, 1, 1, 306046703, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(77,117,109,109,121,75),string.char(77,117,109,109,121),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 91472505507923, 1, 1, 1, 1133352032, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(77,97,114,98,108,101,95,75,95,50,48,50,51),string.char(77,97,114,98,108,101),string.char(75),string.char(85,110,99,111,109,109,111,110), 6600901997, 12926768989, 1, 1, 1, 12965302237, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,116,101,101,108,95,75,95,50,48,50,51),string.char(83,116,101,101,108),string.char(75),string.char(85,110,99,111,109,109,111,110), 957726558, 15028885294, 1, 1, 1, 15091405483, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,97,110,116,97,115,83,112,105,114,105,116),string.char(83,97,110,116,97,39,115,32,83,112,105,114,105,116),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 957726558, 6123356424, 1, 1, 1, 6123357775, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(68,111,103,101),string.char(68,111,103,101),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 159758190, 1, 1, 1, 235371276, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(69,108,105,116,101,66,108,117,101),string.char(66,108,117,101,32,69,108,105,116,101),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 121944778, 1269369946, 1, 1, 1, 1269374321, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(87,105,116,99,104,66,114,101,119,95,75,95,50,48,50,52),string.char(87,105,116,99,104,39,115,32,66,114,101,119),string.char(75),string.char(85,110,99,111,109,109,111,110), 6600901997, 101625224396969, 1, 1, 1, 0, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(76,111,103),string.char(76,111,103),string.char(75),string.char(67,111,109,109,111,110), 121944778, 365566383, 1, 1, 1, 365567962, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(66,117,110,110,121),string.char(66,117,110,110,121),string.char(75),string.char(67,111,109,109,111,110), 121944778, 387366668, 1, 1, 1, 387874365, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,111,109,98,97,116),string.char(67,111,109,98,97,116),string.char(75),string.char(67,111,109,109,111,110), 121944778, 3183532466, 1, 1, 1, 3183604570, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(77,105,115,116,108,101,116,111,101,95,75,95,50,48,50,50),string.char(77,105,115,116,108,101,116,111,101),string.char(75),string.char(85,110,99,111,109,109,111,110), 957726558, 11823994753, 1, 1, 1, 11834394793, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(78,101,116,104,101,114),string.char(78,101,116,104,101,114),string.char(75),string.char(82,97,114,101), 121944778, 166089996, 1, 1, 1, 197657098, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,116,97,114,102,105,115,104,95,75,95,50,48,50,52),string.char(83,116,97,114,102,105,115,104),string.char(75),string.char(67,111,109,109,111,110), 6600901997, 18321898656, 1, 1, 1, 0, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(66,114,117,115,104),string.char(66,114,117,115,104),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 5435976404, 1, 1, 1, 365568602, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(88,109,97,115,83,116,105,99,107,101,114,115,95,75,95,50,48,50,49),string.char(83,116,105,99,107,101,114,115,32,50,48,50,49,32,194,183,32,88,109,97,115,83,116,105,99,107,101,114,115,95,75,95,50,48,50,49),string.char(75),string.char(67,111,109,109,111,110), 121944778, 8275034832, 1, 1, 1, 8304755417, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(77,111,110,115,116,101,114,95,75,95,50,48,50,52),string.char(77,111,110,115,116,101,114),string.char(75),string.char(85,110,99,111,109,109,111,110), 6600901997, 136318121608837, 1, 1, 1, 0, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(70,114,97,103,105,108,101,95,75,95,50,48,50,51),string.char(70,114,97,103,105,108,101),string.char(75),string.char(67,111,109,109,111,110), 6600901997, 12936083164, 1, 1, 1, 12965294432, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(82,101,100,70,105,114,101),string.char(82,101,100,32,70,105,114,101),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 121944778, 1269255990, 1, 1, 1, 1269256860, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,114,101,101,110,77,97,114,98,108,101),string.char(71,114,101,101,110,32,77,97,114,98,108,101),string.char(75),string.char(82,97,114,101), 121944778, 110469751488021, 1, 1, 1, 1133366830, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,105,110,103,101,114,104,101,97,114,116,95,75,95,50,48,50,52),string.char(71,105,110,103,101,114,104,101,97,114,116),string.char(75),string.char(85,110,99,111,109,109,111,110), 6600901997, 77403934219171, 1, 1, 1, 115273559455814, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,110,111,119,103,108,111,98,101,95,75,95,50,48,50,51),string.char(83,110,111,119,103,108,111,98,101),string.char(75),string.char(82,97,114,101), 121944778, 15382647009, 1, 1, 1, 15635576863, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(76,97,116,116,101,95,75,95,50,48,50,51),string.char(76,97,116,116,101),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 121944778, 15319905553, 1, 1, 1, 15413114703, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(87,111,111,100,95,75,95,50,48,50,51),string.char(87,111,111,100),string.char(75),string.char(67,111,109,109,111,110), 957726558, 15036170420, 1, 1, 1, 15091401811, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(77,97,103,109,97,95,75,95,50,48,50,49),string.char(77,97,103,109,97,32,50,48,50,49),string.char(75),string.char(82,97,114,101), 121944778, 7756613022, 1, 1, 1, 7800225996, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,111,111),string.char(71,111,111),string.char(75),string.char(67,111,109,109,111,110), 121944778, 178402851, 1, 1, 1, 237336076, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(87,97,110,119,111,111,100),string.char(87,97,110,119,111,111,100),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 159653725, 1, 1, 1, 192132094, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(84,114,101,101,115,95,75,95,50,48,50,48),string.char(84,114,101,101,115),string.char(75),string.char(67,111,109,109,111,110), 957726558, 75614417738235, 1, 1, 1, 6123336879, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,105,102,116,115,95,75,95,50,48,50,52),string.char(71,105,102,116,115,32,50,48,50,52),string.char(75),string.char(67,111,109,109,111,110), 6600901997, 80884642545249, 1, 1, 1, 129290011017110, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(76,105,103,104,116,115,95,75,95,50,48,49,57),string.char(76,105,103,104,116,115,32,50,48,49,57),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 4534825993, 1, 1, 1, 4534858185, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(84,78,76),string.char(84,78,76),string.char(75),string.char(67,111,109,109,111,110), 121944778, 201480146, 1, 1, 1, 201542790, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(69,108,102,50,48,49,55),string.char(69,108,102,32,50,48,49,55),string.char(75),string.char(67,111,109,109,111,110), 121944778, 1268702375, 1, 1, 1, 1268703023, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,111,116,104,105,99,95,75,95,50,48,50,49),string.char(71,111,116,104,105,99),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 7756611289, 1, 1, 1, 7800221141, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,110,111,119,102,108,97,107,101,95,75,95,50,48,49,56),string.char(83,110,111,119,102,108,97,107,101,32,50,48,49,56),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 2659487731, 1, 1, 1, 2669639913, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,116,97,108,107,101,114),string.char(83,116,97,108,107,101,114),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 155313728, 1, 1, 1, 198455980, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(72,97,122,97,114,100,95,75,95,50,48,50,50),string.char(72,97,122,97,114,100),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 11217121434, 1, 1, 1, 11254083234, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(80,111,116,105,111,110,75,50,48,49,56),string.char(80,111,116,105,111,110,32,50,48,49,56),string.char(75),string.char(85,110,99,111,109,109,111,110), 957726558, 2513648150, 1, 1, 1, 2513733987, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(77,97,114,108,101,121),string.char(71,114,101,101,110),string.char(75),string.char(67,111,109,109,111,110), 121944778, 473620972, 1, 1, 1, 473625785, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(66,101,108,108,115,95,75,95,50,48,50,51),string.char(66,101,108,108,115),string.char(75),string.char(67,111,109,109,111,110), 121944778, 15382279697, 1, 1, 1, 15635570486, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(76,111,118,101,108,121),string.char(76,111,118,101,108,121),string.char(75),string.char(67,111,109,109,111,110), 957726558, 4659572197, 1, 1, 1, 4659635584, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,116,97,114,115,95,75,95,50,48,50,51),string.char(83,116,97,114,115),string.char(75),string.char(85,110,99,111,109,109,111,110), 957726558, 15381316403, 1, 1, 1, 15635559978, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(80,114,101,115,101,110,116),string.char(80,114,101,115,101,110,116),string.char(75),string.char(67,111,109,109,111,110), 121944778, 1268314631, 1, 1, 1, 1268699212, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(90,111,109,98,105,101,95,75,95,50,48,50,51),string.char(90,111,109,98,105,101,32,50,48,50,51),string.char(75),string.char(85,110,99,111,109,109,111,110), 957726558, 11218741536, 1, 1, 1, 15091339932, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,111,112,112,101,114),string.char(67,111,112,112,101,114),string.char(75),string.char(67,111,109,109,111,110), 121944778, 3183401534, 1, 1, 1, 3183605392, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(86,97,109,112,105,114,101,95,75,95,50,48,50,50),string.char(86,97,109,112,105,114,101,32,50,48,50,50),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 121944778, 11215450234, 1, 1, 1, 11254125546, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(65,98,115,116,114,97,99,116),string.char(65,98,115,116,114,97,99,116),string.char(75),string.char(82,97,114,101), 121944778, 5437299417, 1, 1, 1, 365569428, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(79,114,110,97,109,101,110,116,50),string.char(79,114,110,97,109,101,110,116,50),string.char(75),string.char(67,111,109,109,111,110), 121944778, 331744472, 1, 1, 1, 331745341, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(65,114,99,116,105,99,95,75,95,50,48,50,50),string.char(65,114,99,116,105,99),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 121944778, 11802561076, 1, 1, 1, 11834401547, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(80,105,110,101,95,75,95,50,48,49,57),string.char(80,105,110,101),string.char(75),string.char(67,111,109,109,111,110), 957726558, 4534830880, 1, 1, 1, 4534855710, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(74,105,103,115,97,119),string.char(74,105,103,115,97,119),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 365566397, 1, 1, 1, 365569126, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(78,111,118,97),string.char(78,111,118,97),string.char(75),string.char(82,97,114,101), 121944778, 198766824, 1, 1, 1, 235371686, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(88,98,111,120),string.char(88,98,111,120),string.char(75),string.char(67,111,109,109,111,110), 121944778, 450680781, 1, 1, 1, 439325100, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(90,111,109,98,105,101),string.char(90,111,109,98,105,101),string.char(75),string.char(67,111,109,109,111,110), 121944778, 1782551901, 1, 1, 1, 1133331875, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(77,117,115,105,99,97,108),string.char(77,117,115,105,99,97,108),string.char(75),string.char(82,97,114,101), 121944778, 365566387, 1, 1, 1, 365569566, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,105,100,101,119,105,110,100,101,114),string.char(83,105,100,101,119,105,110,100,101,114),string.char(75),string.char(67,111,109,109,111,110), 121944778, 295302778, 1, 1, 1, 305503783, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,116,111,99,107,105,110,103,115,95,75,95,50,48,50,48),string.char(83,116,111,99,107,105,110,103,115,32,50,48,50,48),string.char(75),string.char(67,111,109,109,111,110), 957726558, 6123161536, 1, 1, 1, 6123335682, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,104,111,99,111),string.char(67,104,111,99,111),string.char(75),string.char(67,111,109,109,111,110), 121944778, 386204101, 1, 1, 1, 387874991, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,112,97,114,107,108,101,49,48),string.char(83,112,97,114,107,108,101,49,48),string.char(75),string.char(67,111,109,109,111,110), 121944778, 306921666, 1, 1, 1, 310715768, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,112,97,114,107,108,101,56),string.char(83,112,97,114,107,108,101,56),string.char(75),string.char(67,111,109,109,111,110), 121944778, 306913268, 1, 1, 1, 310714407, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(75,111,114,98,108,111,120),string.char(75,111,114,98,108,111,120),string.char(75),string.char(82,97,114,101), 121944778, 313561541, 1, 1, 1, 315501501, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(65,113,117,97),string.char(65,113,117,97),string.char(75),string.char(67,111,109,109,111,110), 121944778, 250006854, 1, 1, 1, 315501208, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(68,111,110,117,116),string.char(68,111,110,117,116),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 161529618, 1, 1, 1, 235366815, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,112,101,99,116,114,117,109),string.char(83,112,101,99,116,114,117,109),string.char(75),string.char(82,97,114,101), 121944778, 162718300, 1, 1, 1, 198458862, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,107,117,108,108,95,75,95,50,48,50,51),string.char(69,116,99,104,101,100),string.char(75),string.char(67,111,109,109,111,110), 957726558, 15029874889, 1, 1, 1, 15091321393, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,108,105,109,101,75),string.char(83,108,105,109,101),string.char(75),string.char(67,111,109,109,111,110), 121944778, 2513648162, 1, 1, 1, 2513734227, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,110,111,119,109,97,110,95,75,95,50,48,49,56),string.char(83,110,111,119,109,97,110,32,50,48,49,56),string.char(75),string.char(67,111,109,109,111,110), 121944778, 2659487396, 1, 1, 1, 2669640152, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,114,97,118,101,75),string.char(71,114,97,118,101),string.char(75),string.char(67,111,109,109,111,110), 2514683594, 2513648160, 1, 1, 1, 2513728474, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,111,97,108,95,75,95,50,48,50,49),string.char(67,111,97,108,32,50,48,50,49),string.char(75),string.char(67,111,109,109,111,110), 121944778, 8275036203, 1, 1, 1, 8304751659, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,108,101,105,103,104,95,75,95,50,48,50,52),string.char(83,108,101,105,103,104),string.char(75),string.char(82,97,114,101), 6600901997, 85646229893233, 1, 1, 1, 74917318027165, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(84,114,101,101,95,75,95,50,48,50,49),string.char(84,114,101,101,32,50,48,50,49),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 8275034131, 1, 1, 1, 8304756423, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(77,117,109,109,121,95,75,95,50,48,50,48),string.char(77,117,109,109,121,32,50,48,50,48),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 5866365511, 1, 1, 1, 5866447521, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,97,114,118,101,100,95,75,95,50,48,50,48),string.char(67,97,114,118,101,100),string.char(75),string.char(67,111,109,109,111,110), 957726558, 5866356691, 1, 1, 1, 5866436906, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(68,97,109,112),string.char(68,97,109,112),string.char(75),string.char(82,97,114,101), 121944778, 161673042, 1, 1, 1, 198461253, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(70,114,111,115,116,101,100,95,75,95,50,48,49,57),string.char(70,114,111,115,116,101,100),string.char(75),string.char(67,111,109,109,111,110), 957726558, 4534831933, 1, 1, 1, 4534853444, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,110,111,119,109,97,110),string.char(83,110,111,119,109,97,110),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 5538532923, 1, 1, 1, 331745799, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(80,104,97,110,116,111,109),string.char(80,104,97,110,116,111,109),string.char(75),string.char(67,111,109,109,111,110), 121944778, 1132701173, 1, 1, 1, 1133332075, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(66,105,111,95,75,95,50,48,50,51),string.char(66,105,111),string.char(75),string.char(82,97,114,101), 6600901997, 12926766355, 1, 1, 1, 12965298174, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(73,99,101),string.char(73,99,101),string.char(75),string.char(67,111,109,109,111,110), 121944778, 161313071, 1, 1, 1, 191976710, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,97,110,100,121,67,111,114,110,50,48,49,57),string.char(67,97,110,100,121,32,67,111,114,110,32,50,48,49,57),string.char(75),string.char(67,111,109,109,111,110), 121944778, 4210409803, 1, 1, 1, 4210934082, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(68,101,110,105,115),string.char(68,101,110,105,115),string.char(75),string.char(67,111,109,109,111,110), 121944778, 539825831, 1, 1, 1, 546161062, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(66,114,111,107,101,110,95,75,95,50,48,50,51),string.char(66,114,111,107,101,110),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 10855586895, 12237805628, 1, 1, 1, 12339323856, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(66,97,116,115,75),string.char(66,97,116,115,32,40,67,111,109,109,111,110,41),string.char(75),string.char(67,111,109,109,111,110), 121944778, 2513648113, 1, 1, 1, 2513732731, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,111,97,108),string.char(67,111,97,108),string.char(75),string.char(67,111,109,109,111,110), 121944778, 1268280806, 1, 1, 1, 1268699677, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(80,114,101,115,101,110,116,95,75,95,50,48,50,51),string.char(80,114,101,115,101,110,116,32,50,48,50,51),string.char(75),string.char(67,111,109,109,111,110), 121944778, 15382053242, 1, 1, 1, 15635553149, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(72,105,118,101),string.char(72,105,118,101),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 314921929, 1, 1, 1, 315501434, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(69,117,114,111),string.char(69,117,114,111),string.char(75),string.char(67,111,109,109,111,110), 121944778, 240940193, 1, 1, 1, 305504173, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(66,111,110,101,115,95,75,95,50,48,50,48),string.char(66,111,110,101,115,32,50,48,50,48),string.char(75),string.char(82,97,114,101), 957726558, 5872477763, 1, 1, 1, 5872492951, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(73,99,101,99,114,97,99,107,101,114,95,75,95,50,48,50,48),string.char(73,99,101,99,114,97,99,107,101,114),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 957726558, 6121847917, 1, 1, 1, 6121848805, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,112,97,114,107,108,101,55),string.char(83,112,97,114,107,108,101,55),string.char(75),string.char(67,111,109,109,111,110), 121944778, 306913560, 1, 1, 1, 310714089, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,111,114,108),string.char(67,111,114,108),string.char(75),string.char(67,111,109,109,111,110), 121944778, 545392975, 1, 1, 1, 546161858, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,112,97,114,107,108,101,51),string.char(83,112,97,114,107,108,101,51),string.char(75),string.char(67,111,109,109,111,110), 121944778, 306916804, 1, 1, 1, 310710694, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,97,114,114,111,116),string.char(67,97,114,114,111,116),string.char(75),string.char(67,111,109,109,111,110), 121944778, 387418042, 1, 1, 1, 387874071, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(73,99,105,99,108,101,115,95,75,95,50,48,49,56),string.char(73,99,105,99,108,101,115),string.char(75),string.char(82,97,114,101), 121944778, 2659488219, 1, 1, 1, 2669639638, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,108,111,119,121,95,75,95,50,48,50,51),string.char(71,108,111,119,121),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 15091291377, 1, 1, 1, 15091403551, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(84,114,101,101,50,48,49,55),string.char(84,114,101,101,32,50,48,49,55),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 108294449974966, 1, 1, 1, 1268704124, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,97,110,116,97),string.char(83,97,110,116,97),string.char(75),string.char(67,111,109,109,111,110), 121944778, 5359654461, 1, 1, 1, 331746096, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,111,97,108,95,75,95,50,48,49,56),string.char(67,111,97,108,32,50,48,49,56),string.char(75),string.char(67,111,109,109,111,110), 121944778, 2669120347, 1, 1, 1, 2669638285, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(79,105,108,121),string.char(79,105,108,121),string.char(75),string.char(67,111,109,109,111,110), 121944778, 314421009, 1, 1, 1, 315501170, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(66,97,116,115,95,75,95,50,48,50,52),string.char(66,97,116,115,32,50,48,50,52),string.char(75),string.char(67,111,109,109,111,110), 6600901997, 134605667915149, 1, 1, 1, 0, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(70,97,110,116,97),string.char(79,114,97,110,103,101),string.char(75),string.char(67,111,109,109,111,110), 121944778, 473621067, 1, 1, 1, 473626025, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(80,111,112,115,105,99,108,101,95,75,95,50,48,50,51),string.char(80,111,112,115,105,99,108,101),string.char(75),string.char(85,110,99,111,109,109,111,110), 6600901997, 13884848877, 1, 1, 1, 13944131578, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(82,105,112,112,101,114,95,75,95,50,48,50,48),string.char(82,105,112,112,101,114),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 957726558, 5866360934, 1, 1, 1, 5866441301, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(87,105,116,99,104),string.char(87,105,116,99,104),string.char(75),string.char(67,111,109,109,111,110), 121944778, 531836445, 1, 1, 1, 531873553, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(82,101,97,118,101,114,95,65,110,99,105,101,110,116),string.char(82,101,97,118,101,114,32,40,65,110,99,105,101,110,116,41),string.char(75),string.char(65,110,99,105,101,110,116), 7774148738, 7774148967, 0.2726, 0.2726, 0.2726, 7791640819, 0, -0.094, 0.0422, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(82,117,110,105,99,95,75,95,50,48,50,50),string.char(67,117,114,115,101),string.char(75),string.char(82,97,114,101), 121944778, 11246439789, 1, 1, 1, 11254123390, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(77,105,100,110,105,103,104,116),string.char(77,105,100,110,105,103,104,116),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 121944778, 161367322, 1, 1, 1, 197664126, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(66,111,114,100,101,114,115),string.char(66,111,114,100,101,114,115),string.char(75),string.char(67,111,109,109,111,110), 121944778, 155199285, 1, 1, 1, 198453499, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(84,111,121,95,75,95,50,48,50,51),string.char(84,111,121),string.char(75),string.char(67,111,109,109,111,110), 6600901997, 13884851371, 1, 1, 1, 13944128440, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(69,99,116,111),string.char(69,99,116,111),string.char(75),string.char(67,111,109,109,111,110), 121944778, 1132715027, 1, 1, 1, 1133331679, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(80,97,105,110,116,101,100,95,75,95,50,48,50,51),string.char(80,97,105,110,116,101,100),string.char(75),string.char(82,97,114,101), 6600901997, 12935208652, 1, 1, 1, 12965311567, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,112,108,97,116,116,101,114),string.char(83,112,108,97,116,116,101,114),string.char(75),string.char(67,111,109,109,111,110), 121944778, 16944380350, 1, 1, 1, 16964346058, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(80,108,97,115,109,105,116,101),string.char(80,108,97,115,109,105,116,101),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 121944778, 161369273, 1, 1, 1, 161369368, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(87,97,116,99,104,101,114,95,75,95,50,48,50,49),string.char(87,97,116,99,104,101,114,32,50,48,50,49),string.char(75),string.char(82,97,114,101), 121944778, 7756613596, 1, 1, 1, 7800227475, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(77,117,109,109,105,102,105,101,100),string.char(77,117,109,109,105,102,105,101,100),string.char(75),string.char(67,111,109,109,111,110), 957726558, 4210409851, 1, 1, 1, 4210946577, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(72,97,122,109,97,116),string.char(72,97,122,109,97,116),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 311358906, 1, 1, 1, 315501297, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,116,105,99,107,101,114,115,95,75,95,50,48,50,52),string.char(83,116,105,99,107,101,114,115,32,50,48,50,52,32,194,183,32,83,116,105,99,107,101,114,115,95,75,95,50,48,50,52),string.char(75),string.char(67,111,109,109,111,110), 6600901997, 121348523107585, 1, 1, 1, 0, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,105,110,103,101,114),string.char(71,105,110,103,101,114),string.char(75),string.char(82,97,114,101), 121944778, 5353674093, 1, 1, 1, 331744703, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(69,99,111),string.char(69,99,111),string.char(75),string.char(67,111,109,109,111,110), 121944778, 365566401, 1, 1, 1, 365567889, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(73,110,100,121),string.char(73,110,100,121),string.char(75),string.char(67,111,109,109,111,110), 121944778, 240943629, 1, 1, 1, 305506951, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(84,114,101,101,95,75,95,50,48,50,50),string.char(84,114,101,101,32,50,48,50,50),string.char(75),string.char(82,97,114,101), 957726558, 11803199540, 1, 1, 1, 11834400185, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,97,114,114,111,116,95,75,95,50,48,50,51),string.char(67,97,114,114,111,116,32,50,48,50,51),string.char(75),string.char(85,110,99,111,109,109,111,110), 6600901997, 12928323969, 1, 1, 1, 12965307410, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,97,110,100,121,67,111,114,110,95,75,95,50,48,50,52),string.char(67,97,110,100,121,32,67,111,114,110,32,50,48,50,52),string.char(75),string.char(67,111,109,109,111,110), 6600901997, 76315981363183, 1, 1, 1, 0, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,105,110,103,101,114,98,114,101,97,100,95,75,95,50,48,50,48),string.char(71,105,110,103,101,114,98,114,101,97,100,32,50,48,50,48),string.char(75),string.char(85,110,99,111,109,109,111,110), 957726558, 6121849468, 1, 1, 1, 6121850031, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(84,114,97,118,101,108,101,114,95,75,95,50,48,50,51),string.char(84,114,97,118,101,108,101,114),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 957726558, 15069923204, 1, 1, 1, 15091407901, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(72,105,103,104,84,101,99,104),string.char(72,105,103,104,32,84,101,99,104),string.char(75),string.char(85,110,99,111,109,109,111,110), 957726558, 4659546595, 1, 1, 1, 4659635055, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(66,108,117,101,115,116,101,101,108),string.char(66,108,117,101,115,116,101,101,108),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 157904876, 1, 1, 1, 159947939, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(76,117,99,107,121),string.char(76,117,99,107,121),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 365566400, 1, 1, 1, 365569265, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(87,114,97,112,112,101,100),string.char(87,114,97,112,112,101,100),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 5366242489, 1, 1, 1, 331745500, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,110,111,119,109,97,110,95,75,95,50,48,50,52),string.char(83,110,111,119,109,97,110,32,50,48,50,52),string.char(75),string.char(85,110,99,111,109,109,111,110), 6600901997, 75066955538535, 1, 1, 1, 85751270338066, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,110,111,119,109,97,110,95,75,95,50,48,50,50),string.char(83,110,111,119,109,97,110,32,50,48,50,50),string.char(75),string.char(67,111,109,109,111,110), 957726558, 11823641715, 1, 1, 1, 11834391469, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(86,111,105,100,82,98,120),string.char(86,111,105,100),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 11548074269, 1, 1, 1, 11548082732, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,117,114,115,101,100,95,75,95,50,48,50,52),string.char(67,117,114,115,101,100),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 6600901997, 137589393181339, 1, 1, 1, 0, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,112,101,99,116,114,97,108,95,75,95,50,48,50,49),string.char(83,112,101,99,116,114,97,108),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 121944778, 7756613337, 1, 1, 1, 7800226793, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,114,97,102,102,105,116,105),string.char(71,114,97,102,102,105,116,105),string.char(75),string.char(85,110,99,111,109,109,111,110), 957726558, 4659573175, 1, 1, 1, 4659634630, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(77,111,111,110,115,95,75,95,50,48,50,52),string.char(77,111,111,110,115,32,50,48,50,52),string.char(75),string.char(85,110,99,111,109,109,111,110), 6600901997, 87244940102225, 1, 1, 1, 0, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(80,101,112,112,101,114),string.char(66,114,111,119,110),string.char(75),string.char(67,111,109,109,111,110), 121944778, 473620934, 1, 1, 1, 473625645, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,104,101,101,115,121),string.char(67,104,101,101,115,121),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 161425686, 1, 1, 1, 198455898, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,105,102,116,119,114,97,112,95,75,95,50,48,50,49),string.char(71,105,102,116,119,114,97,112),string.char(75),string.char(67,111,109,109,111,110), 121944778, 8275035514, 1, 1, 1, 8304754179, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(72,97,117,110,116,101,100,95,75,95,50,48,50,49),string.char(72,97,117,110,116,101,100,32,50,48,50,49),string.char(75),string.char(67,111,109,109,111,110), 121944778, 7756611602, 1, 1, 1, 7800222135, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(70,108,111,114,97,108,95,75,95,50,48,50,51),string.char(70,108,111,114,97,108),string.char(75),string.char(82,97,114,101), 6600901997, 13894957068, 1, 1, 1, 13944135218, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,104,111,115,116,121),string.char(71,104,111,115,116,121),string.char(75),string.char(67,111,109,109,111,110), 121944778, 531835085, 1, 1, 1, 531873080, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(80,97,112,101,114),string.char(80,97,112,101,114),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 179035664, 1, 1, 1, 235366870, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,97,114,114,111,116,95,75,95,50,48,50,52),string.char(67,97,114,114,111,116,32,50,48,50,52),string.char(75),string.char(85,110,99,111,109,109,111,110), 6600901997, 16845528588, 1, 1, 1, 0, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(66,111,110,101,115),string.char(66,111,110,101,115),string.char(75),string.char(67,111,109,109,111,110), 121944778, 531836449, 1, 1, 1, 531873816, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(77,97,103,109,97,75),string.char(77,97,103,109,97),string.char(75),string.char(82,97,114,101), 121944778, 1782168732, 1, 1, 1, 1133317890, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(90,111,109,98,105,101,95,75,95,50,48,50,49),string.char(90,111,109,98,105,101,32,50,48,50,49),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 7845697152, 1, 1, 1, 7800222975, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(87,114,97,105,116,104,95,75,95,50,48,50,50),string.char(87,114,97,105,116,104),string.char(75),string.char(82,97,114,101), 121944778, 11215449757, 1, 1, 1, 11254118399, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(77,101,108,111,110),string.char(77,101,108,111,110),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 311701292, 1, 1, 1, 315501369, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,97,118,101,114,110,95,75,95,50,48,49,57),string.char(67,97,118,101,114,110),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 957726558, 4534822092, 1, 1, 1, 4534861110, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(78,101,111,110),string.char(78,101,111,110),string.char(75),string.char(67,111,109,109,111,110), 121944778, 159653652, 1, 1, 1, 159746637, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(79,114,110,97,109,101,110,116,49),string.char(79,114,110,97,109,101,110,116,32,40,67,111,109,109,111,110,41),string.char(75),string.char(67,111,109,109,111,110), 121944778, 331744475, 1, 1, 1, 331745428, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(69,103,103,115),string.char(69,103,103),string.char(75),string.char(67,111,109,109,111,110), 121944778, 386052294, 1, 1, 1, 387875405, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(82,111,115,101,115),string.char(82,111,115,101,115),string.char(75),string.char(67,111,109,109,111,110), 121944778, 361630297, 1, 1, 1, 363352002, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(70,114,111,122,101,110,95,75,95,50,48,50,51),string.char(70,114,111,122,101,110,32,50,48,50,51),string.char(75),string.char(67,111,109,109,111,110), 121944778, 15382634403, 1, 1, 1, 15635556891, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,112,97,114,107,108,101,49),string.char(83,112,97,114,107,108,101,49),string.char(75),string.char(67,111,109,109,111,110), 121944778, 306912202, 1, 1, 1, 310709709, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,104,101,99,107,101,114),string.char(67,104,101,99,107,101,114),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 160167441, 1, 1, 1, 198461230, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,117,109,109,101,114,95,83,116,105,99,107,101,114,115,95,75,95,50,48,50,51),string.char(83,116,105,99,107,101,114,115,32,50,48,50,51),string.char(75),string.char(67,111,109,109,111,110), 6600901997, 13895498375, 1, 1, 1, 13944129977, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,97,110,101),string.char(67,97,110,101),string.char(75),string.char(82,97,114,101), 121944778, 5359571109, 1, 1, 1, 331140746, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(74,97,99,107,95,75,95,50,48,50,50),string.char(76,97,110,116,101,114,110),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 11245572024, 1, 1, 1, 11254093910, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,111,114,114,121),string.char(67,111,114,114,117,112,116),string.char(75),string.char(85,110,105,113,117,101), 121944778, 162016526, 1, 1, 1, 197879343, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,110,111,119,102,108,97,107,101,115,95,75,95,50,48,50,48),string.char(83,110,111,119,102,108,97,107,101,115,32,50,48,50,48),string.char(75),string.char(82,97,114,101), 121944778, 137773102398455, 1, 1, 1, 6123338102, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,99,97,114,102,95,75,95,50,48,50,51),string.char(83,99,97,114,102),string.char(75),string.char(67,111,109,109,111,110), 121944778, 15414881863, 1, 1, 1, 15415482999, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,97,110,116,97,50,48,49,55),string.char(83,97,110,116,97,32,50,48,49,55),string.char(75),string.char(67,111,109,109,111,110), 121944778, 1268277801, 1, 1, 1, 1268703618, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(66,114,97,105,110,115,50,48,49,57),string.char(66,114,97,105,110,115,32,50,48,49,57),string.char(75),string.char(85,110,99,111,109,109,111,110), 957726558, 4210409062, 1, 1, 1, 4210929184, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(86,111,114,116,101,120),string.char(86,111,114,116,101,120),string.char(75),string.char(82,97,114,101), 121944778, 235347825, 1, 1, 1, 235371508, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,116,105,99,107,101,114,115,95,75,95,50,48,50,50),string.char(83,116,105,99,107,101,114,115,32,50,48,50,50,32,194,183,32,83,116,105,99,107,101,114,115,95,75,95,50,48,50,50),string.char(75),string.char(67,111,109,109,111,110), 121944778, 11217750489, 1, 1, 1, 11254067158, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(69,108,102),string.char(69,108,102),string.char(75),string.char(67,111,109,109,111,110), 121944778, 5364286895, 1, 1, 1, 331746317, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(82,105,98,98,111,110,115,95,75,95,50,48,50,49),string.char(82,105,98,98,111,110,115),string.char(75),string.char(67,111,109,109,111,110), 121944778, 8275035072, 1, 1, 1, 8304754882, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,112,97,114,107,108,101,54),string.char(83,112,97,114,107,108,101,54),string.char(75),string.char(67,111,109,109,111,110), 121944778, 306915414, 1, 1, 1, 310713648, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(82,98,120,83,99,97,114,121,95,75,95,50,48,50,51),string.char(71,104,111,117,108,105,115,104),string.char(75),string.char(67,111,109,109,111,110), 121944778, 114660299589667, 1, 1, 1, 14967668214, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(86,97,109,112,105,114,101),string.char(86,97,109,112,105,114,101),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 531835090, 1, 1, 1, 531873248, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(70,114,97,103,105,108,101,95,71,95,50,48,50,51),string.char(70,114,97,103,105,108,101),string.char(71),string.char(67,111,109,109,111,110), 79401392, 12942152157, 1.5, 1.5, 1.5, 12965349193, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(71,114,97,118,101,71),string.char(71,114,97,118,101),string.char(71),string.char(67,111,109,109,111,110), 2514719081, 2513648170, 1, 1, 1, 2513731746, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(71,114,101,101,110,67,97,109,111,95,75,95,50,48,50,50),string.char(90,111,109,98,105,101,32,67,97,109,111),string.char(75),string.char(67,111,109,109,111,110), 121944778, 121944805, 1, 1, 1, 11254145154, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(87,114,97,112,112,101,100,95,71,95,50,48,49,56),string.char(87,114,97,112,112,101,100,32,50,48,49,56),string.char(71),string.char(67,111,109,109,111,110), 79401392, 124221082305936, 1.6, 1.6, 1.6, 2669787533, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(87,114,97,105,116,104,95,71,95,50,48,50,50),string.char(87,114,97,105,116,104),string.char(71),string.char(82,97,114,101), 79401392, 83637468346183, 1.6, 1.6, 1.6, 11255504462, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(87,101,98,115,95,71,95,50,48,50,50),string.char(87,101,98,115),string.char(71),string.char(67,111,109,109,111,110), 79401392, 11255255382, 1.6, 1.6, 1.6, 11284147880, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(87,101,98,98,101,100,71),string.char(87,101,98,98,101,100),string.char(71),string.char(67,111,109,109,111,110), 79401392, 130141624327731, 1.6, 1.6, 1.6, 4210936652, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(87,97,118,121,95,71,95,50,48,50,52),string.char(87,97,118,121),string.char(71),string.char(67,111,109,109,111,110), 79401392, 16846545641, 1.6, 1.6, 1.6, 0, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(86,105,110,101,115,95,71,95,50,48,50,51),string.char(86,105,110,101,115),string.char(71),string.char(67,111,109,109,111,110), 79401392, 15045930187, 1.6, 1.6, 1.6, 15091402817, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(86,97,109,112,105,114,101,95,71,95,50,48,50,50),string.char(86,97,109,112,105,114,101,32,50,48,50,50),string.char(71),string.char(76,101,103,101,110,100,97,114,121), 79401392, 11228808312, 1.6, 1.6, 1.6, 11255503583, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(84,114,101,101,95,71,95,50,48,50,50),string.char(84,114,101,101,32,50,48,50,50),string.char(71),string.char(82,97,114,101), 79401392, 77983878883558, 1.6, 1.6, 1.6, 11834441321, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(84,114,97,118,101,108,101,114,95,71,95,50,48,50,51),string.char(84,114,97,118,101,108,101,114),string.char(71),string.char(76,101,103,101,110,100,97,114,121), 79401392, 89199801409332, 1.6, 1.6, 1.6, 15091344462, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(84,111,120,105,99,71),string.char(84,111,120,105,99),string.char(71),string.char(82,97,114,101), 79401392, 2513648169, 1.6, 1.6, 1.6, 2513742519, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,119,101,97,116,101,114,95,71,95,50,48,49,56),string.char(83,119,101,97,116,101,114,32,50,48,49,56),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 2664997267, 1.6, 1.6, 1.6, 2669787088, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,116,111,99,107,105,110,103,115,95,71,95,50,48,50,50),string.char(83,116,111,99,107,105,110,103,115,32,50,48,50,50),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 11831384378, 1.6, 1.6, 1.6, 11834440319, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,116,105,99,107,101,114,115,88,95,71,95,50,48,50,50),string.char(83,116,105,99,107,101,114,115,32,50,48,50,50),string.char(71),string.char(67,111,109,109,111,110), 79401392, 11830420444, 1.6, 1.6, 1.6, 11834432971, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,116,101,101,108,95,71,95,50,48,50,51),string.char(83,116,101,101,108),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 15044112684, 1.6, 1.6, 1.6, 15091341552, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,116,97,114,115,95,71,95,50,48,50,51),string.char(83,116,97,114,115),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 15383997060, 1.6, 1.6, 1.6, 15635574031, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,116,97,114,114,121,95,71,95,50,48,50,48),string.char(83,116,97,114,114,121,32,50,48,50,48),string.char(71),string.char(67,111,109,109,111,110), 79401392, 5930583738, 1.6, 1.6, 1.6, 5930731295, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,116,97,114,102,105,115,104,95,71,95,50,48,50,52),string.char(83,116,97,114,102,105,115,104),string.char(71),string.char(67,111,109,109,111,110), 79401392, 18321970590, 1.6, 1.6, 1.6, 0, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,112,108,97,116),string.char(83,112,108,97,116),string.char(71),string.char(67,111,109,109,111,110), 79401392, 3183406439, 1.6, 1.6, 1.6, 3183639522, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,112,101,99,116,114,97,108,95,71,95,50,48,50,49),string.char(83,112,101,99,116,114,97,108),string.char(71),string.char(76,101,103,101,110,100,97,114,121), 79401392, 7757802804, 1.6, 1.6, 1.6, 7800255531, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,110,111,119,109,97,110,95,71,95,50,48,50,51),string.char(83,110,111,119,109,97,110,32,50,48,50,51),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 15382659346, 1.6, 1.6, 1.6, 15635572427, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,110,111,119,109,97,110,95,71,95,50,48,50,50),string.char(83,110,111,119,109,97,110,32,50,48,50,50),string.char(71),string.char(67,111,109,109,111,110), 79401392, 11830604534, 1.6, 1.6, 1.6, 11834436620, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,110,111,119,102,108,97,107,101,115,95,71,95,50,48,49,57),string.char(83,110,111,119,102,108,97,107,101,115),string.char(71),string.char(67,111,109,109,111,110), 79401392, 4534835479, 1.6, 1.6, 1.6, 4534866065, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,110,111,119,109,97,110,95,71,95,50,48,49,56),string.char(83,110,111,119,109,97,110,32,50,48,49,56),string.char(71),string.char(67,111,109,109,111,110), 79401392, 2669119107, 1.6, 1.6, 1.6, 2669786846, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,110,111,119,102,108,97,107,101,95,71,95,50,48,50,51),string.char(83,110,111,119,102,108,97,107,101,32,50,48,50,51),string.char(71),string.char(82,97,114,101), 79401392, 15351058932, 1.6, 1.6, 1.6, 15635575718, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,110,111,119,102,108,97,107,101,95,71,95,50,48,50,50),string.char(83,110,111,119,102,108,97,107,101,32,50,48,50,50),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 11830940122, 1.6, 1.6, 1.6, 11834437796, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,110,111,119,102,108,97,107,101,95,71,95,50,48,49,56),string.char(83,110,111,119,102,108,97,107,101,32,50,48,49,56),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 2659487954, 1.6, 1.6, 1.6, 2669786515, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,110,97,107,101,98,105,116,101,71),string.char(83,110,97,107,101,98,105,116,101),string.char(71),string.char(82,97,114,101), 79401392, 109575851098597, 1.6, 1.6, 1.6, 4210925026, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,108,105,109,101,71),string.char(83,108,105,109,101),string.char(71),string.char(67,111,109,109,111,110), 79401392, 2513648152, 1.6, 1.6, 1.6, 2513742319, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,105,108,101,110,116,78,105,103,104,116,95,71,95,50,48,50,48),string.char(83,105,108,101,110,116,32,78,105,103,104,116),string.char(71),string.char(82,97,114,101), 79401392, 6121861331, 1.6, 1.6, 1.6, 6121862034, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,97,110,116,97,95,71,95,50,48,50,51),string.char(83,97,110,116,97,32,50,48,50,51),string.char(71),string.char(67,111,109,109,111,110), 79401392, 15349904283, 1.6, 1.6, 1.6, 15635550625, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,97,110,116,97,95,71,95,50,48,49,56),string.char(69,108,102,32,50,48,49,56),string.char(71),string.char(67,111,109,109,111,110), 79401392, 2664997044, 1.6, 1.6, 1.6, 2669785184, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,97,110,100,121,95,71,95,50,48,50,52),string.char(83,97,110,100,121),string.char(71),string.char(67,111,109,109,111,110), 79401392, 18323743340, 1.6, 1.6, 1.6, 0, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(82,97,105,110,98,111,119,71,117,110),string.char(82,97,105,110,98,111,119),string.char(71),string.char(82,97,114,101), 79401392, 3183408196, 1.6, 1.6, 1.6, 3183640145, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(80,117,109,112,107,105,110,95,71,95,50,48,50,51),string.char(80,117,109,112,107,105,110),string.char(71),string.char(67,111,109,109,111,110), 79401392, 15044730839, 1.6, 1.6, 1.6, 15091327743, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(80,111,116,105,111,110,71,50,48,49,56),string.char(80,111,116,105,111,110),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 2513648149, 1.6, 1.6, 1.6, 2513742133, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(80,114,101,100,97,116,111,114),string.char(80,114,101,100,97,116,111,114),string.char(71),string.char(76,101,103,101,110,100,97,114,121), 79401392, 202773960, 1.6, 1.6, 1.6, 203810176, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(80,111,114,116,97,108,95,71,95,50,48,50,48),string.char(80,111,114,116,97,108),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 5866372960, 1.6, 1.6, 1.6, 5866461926, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(80,111,112,115,105,99,108,101,95,71,95,50,48,50,52),string.char(80,111,112,115,105,99,108,101),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 18321970792, 1.6, 1.6, 1.6, 0, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(80,105,114,97,116,101),string.char(80,105,114,97,116,101),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 78093206510643, 1.6, 1.6, 1.6, 3183639867, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(80,105,110,101,95,71,95,50,48,49,57),string.char(80,105,110,101),string.char(71),string.char(67,111,109,109,111,110), 79401392, 4534870630, 1.6, 1.6, 1.6, 4534871260, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(80,97,108,109,115,95,71,95,50,48,50,52),string.char(80,97,108,109,115),string.char(71),string.char(76,101,103,101,110,100,97,114,121), 79401392, 18321971106, 1.6, 1.6, 1.6, 0, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(79,114,110,97,109,101,110,116,115,95,71,95,50,48,50,48),string.char(79,114,110,97,109,101,110,116,115),string.char(71),string.char(67,111,109,109,111,110), 79401392, 6121862915, 1.6, 1.6, 1.6, 6121863515, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(78,101,111,110,95,71,95,50,48,50,51),string.char(78,101,111,110),string.char(71),string.char(82,97,114,101), 79401392, 15382654157, 1.6, 1.6, 1.6, 15635560825, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(77,117,109,109,121),string.char(77,117,109,109,121),string.char(71),string.char(82,97,114,101), 79401392, 315154445, 1.6, 1.6, 1.6, 315155591, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(77,111,111,110,108,105,103,104,116,95,71,95,50,48,50,50),string.char(77,111,111,110,108,105,103,104,116),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 11254380241, 1.6, 1.6, 1.6, 11284143055, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(77,105,115,116,108,101,116,111,101,95,71,95,50,48,50,50),string.char(77,105,115,116,108,101,116,111,101),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 11831277409, 1.6, 1.6, 1.6, 11834438982, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(76,97,116,116,101,95,71,95,50,48,50,51),string.char(76,97,116,116,101),string.char(71),string.char(76,101,103,101,110,100,97,114,121), 79401392, 15320206276, 1.6, 1.6, 1.6, 15413116029, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(73,110,102,101,99,116,101,100,95,71,95,50,48,50,50),string.char(73,110,102,101,99,116,101,100),string.char(71),string.char(67,111,109,109,111,110), 79401392, 11227996367, 1.6, 1.6, 1.6, 11255502768, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(73,99,105,99,108,101,115,95,71,95,50,48,49,56),string.char(73,99,105,99,108,101,115),string.char(71),string.char(82,97,114,101), 79401392, 2659488496, 1.6, 1.6, 1.6, 2669786044, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(73,99,101,100,114,105,108,108,101,114,95,71,95,50,48,50,48),string.char(73,99,101,100,114,105,108,108,101,114),string.char(71),string.char(76,101,103,101,110,100,97,114,121), 79401392, 6121865669, 1.6, 1.6, 1.6, 6121866490, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(73,99,101,67,97,109,111,95,71,95,50,48,50,49),string.char(73,99,101,32,67,97,109,111),string.char(71),string.char(82,97,114,101), 79401392, 8275032575, 1.6, 1.6, 1.6, 8304767724, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(72,111,108,108,121,95,71,95,50,48,49,56),string.char(72,111,108,108,121),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 2664997622, 1.6, 1.6, 1.6, 2669786261, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(72,97,122,97,114,100,95,71,95,50,48,50,50),string.char(72,97,122,97,114,100),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 11227146152, 1.6, 1.6, 1.6, 11255505449, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(72,97,117,110,116,101,100,71),string.char(72,97,117,110,116,101,100),string.char(71),string.char(67,111,109,109,111,110), 79401392, 2513648133, 1.6, 1.6, 1.6, 2513741901, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(71,105,110,103,101,114,98,114,101,97,100,95,71,95,50,48,50,50),string.char(71,105,110,103,101,114,98,114,101,97,100,32,50,48,50,50),string.char(71),string.char(82,97,114,101), 79401392, 11810420546, 1.6, 1.6, 1.6, 11834442414, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(71,105,110,103,101,114,98,114,101,97,100,95,71,95,50,48,50,49),string.char(71,105,110,103,101,114,98,114,101,97,100,32,50,48,50,49),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 8275032201, 1.6, 1.6, 1.6, 8304772140, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(71,105,110,103,101,114,98,114,101,97,100,95,71,95,50,48,50,48),string.char(71,105,110,103,101,114,98,114,101,97,100,32,50,48,50,48),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 6121859173, 1.6, 1.6, 1.6, 6121860619, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(71,105,110,103,101,114,95,71,95,50,48,49,56),string.char(71,105,110,103,101,114,32,50,48,49,56),string.char(71),string.char(76,101,103,101,110,100,97,114,121), 79401392, 2659488834, 1.6, 1.6, 1.6, 2669785821, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(71,105,102,116,115,95,71,95,50,48,49,57),string.char(71,105,102,116,115),string.char(71),string.char(67,111,109,109,111,110), 79401392, 4534835908, 1.6, 1.6, 1.6, 4534867381, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(71,105,102,116,98,97,103,95,71,95,50,48,50,48),string.char(71,105,102,116,32,66,97,103),string.char(71),string.char(67,111,109,109,111,110), 79401392, 6121864116, 1.6, 1.6, 1.6, 6121864813, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(71,105,102,116,95,71,95,50,48,50,48),string.char(87,114,97,112),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 6121866988, 1.6, 1.6, 1.6, 6121867603, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(71,104,111,115,116,115,95,71,95,50,48,50,49),string.char(87,114,97,105,116,104,115),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 7758397251, 1.6, 1.6, 1.6, 7800251557, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(71,104,111,115,116,115,95,71,95,50,48,50,48),string.char(71,104,111,115,116,115),string.char(71),string.char(82,97,114,101), 79401392, 5866372208, 1.6, 1.6, 1.6, 5866465099, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(71,104,111,115,116,102,105,114,101,95,71,95,50,48,50,50),string.char(71,104,111,115,116,102,105,114,101),string.char(71),string.char(82,97,114,101), 79401392, 11254634864, 1.6, 1.6, 1.6, 11284140034, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(71,104,111,115,116,71,50,48,49,56),string.char(71,104,111,115,116),string.char(71),string.char(76,101,103,101,110,100,97,114,121), 79401392, 2513648114, 1.6, 1.6, 1.6, 2513741407, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(71,104,97,115,116,108,121,95,71,95,50,48,50,51),string.char(71,104,97,115,116,108,121),string.char(71),string.char(82,97,114,101), 79401392, 15045716708, 1.6, 1.6, 1.6, 15091342564, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(70,114,111,122,101,110,95,71,95,50,48,50,51),string.char(70,114,111,122,101,110,32,50,48,50,51),string.char(71),string.char(67,111,109,109,111,110), 79401392, 15344638282, 1.6, 1.6, 1.6, 15635571468, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(70,114,111,115,116,102,97,100,101,95,71,95,50,48,50,51),string.char(70,114,111,115,116,102,97,100,101),string.char(71),string.char(76,101,103,101,110,100,97,114,121), 79401392, 15383614259, 1.6, 1.6, 1.6, 15635577623, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(70,114,111,115,116,101,100,95,71,95,50,48,49,57),string.char(70,114,111,115,116,101,100),string.char(71),string.char(67,111,109,109,111,110), 79401392, 4528661069, 1.6, 1.6, 1.6, 4534866678, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(70,108,111,97,116,105,101,95,71,95,50,48,50,52),string.char(70,108,111,97,116,105,101),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 18321972013, 1.6, 1.6, 1.6, 0, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(70,97,108,108,67,97,109,111,95,71,95,50,48,50,49),string.char(70,97,108,108,32,67,97,109,111),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 7758737021, 1.6, 1.6, 1.6, 7800257544, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(69,121,101,115,95,71,95,50,48,50,48),string.char(87,97,116,99,104,101,114,32,50,48,50,48),string.char(71),string.char(67,111,109,109,111,110), 79401392, 5866372450, 1.6, 1.6, 1.6, 5866459380, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(69,108,102,95,71,95,50,48,50,51),string.char(69,108,102,32,50,48,50,51),string.char(71),string.char(67,111,109,109,111,110), 79401392, 15349698419, 1.6, 1.6, 1.6, 15635569893, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(68,101,102,97,117,108,116,71,117,110),string.char(68,101,102,97,117,108,116,32,71,117,110),string.char(71),string.char(67,111,109,109,111,110), 79401392, 91723031, 1.6, 1.6, 1.6, 197518111, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(68,97,114,107,110,101,115,115,95,71,95,50,48,50,50),string.char(68,97,114,107,110,101,115,115),string.char(71),string.char(67,111,109,109,111,110), 79401392, 11242038756, 1.6, 1.6, 1.6, 11255507374, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(68,97,114,107,95,71,95,50,48,50,51),string.char(68,97,114,107,103,117,110),string.char(71),string.char(82,97,114,101), 79401392, 15082826256, 1.6, 1.6, 1.6, 15091406343, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(67,111,111,107,105,101,95,71,95,50,48,50,49),string.char(67,111,111,107,105,101),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 8275032831, 1.6, 1.6, 1.6, 8304771148, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(67,111,97,108,95,71,95,50,48,50,49),string.char(67,111,97,108,32,50,48,50,49),string.char(71),string.char(67,111,109,109,111,110), 79401392, 8275033614, 1.6, 1.6, 1.6, 8304769409, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(67,111,97,108,95,71,95,50,48,50,50),string.char(67,111,97,108,32,50,48,50,50),string.char(71),string.char(67,111,109,109,111,110), 79401392, 11809114380, 1.6, 1.6, 1.6, 11834434264, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(67,111,97,108,95,71,95,50,48,49,56),string.char(67,111,97,108,32,50,48,49,56),string.char(71),string.char(67,111,109,109,111,110), 79401392, 2669120201, 1.6, 1.6, 1.6, 2669784920, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(67,108,111,119,110,102,105,115,104,95,71,95,50,48,50,52),string.char(67,108,111,119,110,102,105,115,104),string.char(71),string.char(67,111,109,109,111,110), 79401392, 18321972771, 1.6, 1.6, 1.6, 0, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(67,97,118,101,114,110,95,71,95,50,48,49,57),string.char(67,97,118,101,114,110),string.char(71),string.char(76,101,103,101,110,100,97,114,121), 79401392, 128240852390197, 1.6, 1.6, 1.6, 4534875511, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(67,97,116,95,71,95,50,48,50,49),string.char(67,97,116),string.char(71),string.char(67,111,109,109,111,110), 79401392, 7759004533, 1.6, 1.6, 1.6, 7800253444, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(67,97,114,118,101,100,95,71,95,50,48,50,48),string.char(67,97,114,118,101,100),string.char(71),string.char(67,111,109,109,111,110), 79401392, 5866372800, 1.6, 1.6, 1.6, 5866457985, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(67,97,114,114,111,116,95,71,95,50,48,50,52),string.char(67,97,114,114,111,116),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 16856497935, 1.6, 1.6, 1.6, 0, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(67,97,110,101,115,95,71,95,50,48,50,51),string.char(67,97,110,101,115),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 15383886872, 1.6, 1.6, 1.6, 15635558982, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(67,97,110,100,121,83,119,105,114,108,95,71,95,50,48,49,57),string.char(67,97,110,100,121,32,83,119,105,114,108),string.char(71),string.char(82,97,114,101), 79401392, 4534836730, 1.6, 1.6, 1.6, 4534874602, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(67,97,110,101,95,71,95,50,48,49,56),string.char(67,97,110,101,32,50,48,49,56),string.char(71),string.char(82,97,114,101), 79401392, 2659489762, 1.6, 1.6, 1.6, 2669785546, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(67,97,110,100,121,67,111,114,110,95,71,95,50,48,50,50),string.char(67,97,110,100,121,32,67,111,114,110,32,50,48,50,50),string.char(71),string.char(67,111,109,109,111,110), 79401392, 11226919330, 1.6, 1.6, 1.6, 11255558166, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(67,97,110,100,105,101,100,95,71,95,50,48,50,50),string.char(67,97,110,100,105,101,100),string.char(71),string.char(67,111,109,109,111,110), 79401392, 11809753556, 1.6, 1.6, 1.6, 11834435627, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(66,114,97,105,110,115,95,71,95,50,48,50,50),string.char(66,114,97,105,110,115),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 11254925304, 1.6, 1.6, 1.6, 11284145298, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(66,111,110,101,115,50,48,49,57),string.char(66,111,110,101,115),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 4210405561, 1.6, 1.6, 1.6, 4210926347, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(66,97,116,115,71),string.char(66,97,116,115),string.char(71),string.char(67,111,109,109,111,110), 79401392, 2513648112, 1.6, 1.6, 1.6, 2513741174, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(65,112,111,99,95,71,95,50,48,50,50),string.char(65,112,111,99,97,108,121,112,115,101),string.char(71),string.char(67,111,109,109,111,110), 79401392, 11228269165, 1.6, 1.6, 1.6, 11255501940, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(65,114,99,116,105,99,95,71,95,50,48,50,50),string.char(65,114,99,116,105,99),string.char(71),string.char(76,101,103,101,110,100,97,114,121), 79401392, 85287913991189, 1.6, 1.6, 1.6, 11834443783, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(87,97,116,99,104,101,114,95,71,95,50,48,50,49),string.char(87,97,116,99,104,101,114,32,50,48,50,49),string.char(71),string.char(82,97,114,101), 79401392, 7757907850, 1.5, 1.5, 1.5, 7800256309, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(70,108,111,114,97,108,95,71,95,50,48,50,52),string.char(70,108,111,114,97,108),string.char(71),string.char(82,97,114,101), 79401392, 18323742549, 1.5, 1.5, 1.5, 0, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(77,101,108,111,110,95,71,95,50,48,50,51),string.char(77,101,108,111,110),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 13904908523, 1.5, 1.5, 1.5, 13944154336, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,116,97,114,114,121,95,71,95,50,48,50,49),string.char(83,116,97,114,114,121,32,50,48,50,49),string.char(71),string.char(82,97,114,101), 79401392, 8303507091, 1.5, 1.5, 1.5, 8304772774, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(84,111,121,95,71,95,50,48,50,51),string.char(84,111,121),string.char(71),string.char(67,111,109,109,111,110), 79401392, 13905642635, 1.5, 1.5, 1.5, 13944153112, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(67,97,109,111),string.char(67,97,109,111),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 160024546, 1.5, 1.5, 1.5, 160024789, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,116,97,114),string.char(83,116,97,114),string.char(71),string.char(67,111,109,109,111,110), 79401392, 161642996, 1.5, 1.5, 1.5, 203807904, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(71,111,108,100,101,110,71,117,110),string.char(71,111,108,100,101,110),string.char(71),string.char(67,108,97,115,115,105,99), 25298496, 134632723, 1.5, 1.5, 1.5, 147835357, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(87,111,111,100,101,110),string.char(87,111,111,100,101,110),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 84001524223260, 1.5, 1.5, 1.5, 238546356, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(105,82,101,118,111,108,118,101,114),string.char(105,82,101,118,111,108,118,101,114),string.char(71),string.char(82,97,114,101), 79401392, 160219396, 1.5, 1.5, 1.5, 203809168, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(77,97,103,109,97,95,71,95,50,48,50,49),string.char(77,97,103,109,97),string.char(71),string.char(82,97,114,101), 79401392, 7758322982, 1.5, 1.5, 1.5, 7800252572, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,110,111,119,109,97,110,71,117,110),string.char(83,110,111,119,109,97,110),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 332496723, 1.5, 1.5, 1.5, 332497603, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,107,101,116,99,104),string.char(83,107,101,116,99,104),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 161976144, 1.5, 1.5, 1.5, 203808108, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(69,108,102,71,117,110),string.char(69,108,102),string.char(71),string.char(67,111,109,109,111,110), 79401392, 86899632763415, 1.5, 1.5, 1.5, 332767999, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(82,105,116,117,97,108,95,71,95,50,48,50,52),string.char(82,105,116,117,97,108),string.char(71),string.char(82,97,114,101), 79401392, 122499606241450, 1.5, 1.5, 1.5, 0, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,108,111,117,115,101,67,108,111,119,110,71,117,110),string.char(67,108,111,119,110),string.char(71),string.char(85,110,105,113,117,101), 79401392, 4663058089, 1.5, 1.5, 1.5, 4659627976, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(79,114,110,97,109,101,110,116,50,71,117,110),string.char(79,114,110,97,109,101,110,116,50),string.char(71),string.char(67,111,109,109,111,110), 79401392, 332496722, 1.5, 1.5, 1.5, 332497550, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(77,117,109,109,121,71,50,48,49,56),string.char(77,117,109,109,121,32,50,48,49,56),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 2513708668, 1.5, 1.5, 1.5, 2513741663, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(90,111,109,98,105,102,105,101,100,71),string.char(90,111,109,98,105,102,105,101,100),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 137443657929688, 1.5, 1.5, 1.5, 4210944924, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(65,108,105,101,110,115,95,71,95,50,48,50,49),string.char(65,108,105,101,110,115),string.char(71),string.char(67,111,109,109,111,110), 79401392, 94636545088559, 1.5, 1.5, 1.5, 7800250906, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(67,97,110,101,71,117,110),string.char(67,97,110,101),string.char(71),string.char(82,97,114,101), 79401392, 112112286408164, 1.5, 1.5, 1.5, 332497187, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(66,97,99,111,110),string.char(66,97,99,111,110),string.char(71),string.char(82,97,114,101), 79401392, 178240361, 1.5, 1.5, 1.5, 238546467, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(71,105,110,103,101,114,71,117,110),string.char(71,105,110,103,101,114),string.char(71),string.char(82,97,114,101), 79401392, 140264190350882, 1.5, 1.5, 1.5, 332497038, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(66,97,116,115,95,71,95,50,48,50,52),string.char(66,97,116,115,32,50,48,50,52),string.char(71),string.char(67,111,109,109,111,110), 79401392, 127442391741629, 1.5, 1.5, 1.5, 0, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(76,105,103,104,116,115,95,71,95,50,48,49,57),string.char(76,105,103,104,116,115,32,50,48,49,57),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 4534840659, 1.5, 1.5, 1.5, 4534872673, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(77,111,108,116,101,110),string.char(77,111,108,116,101,110),string.char(71),string.char(82,97,114,101), 79401392, 160570263, 1.5, 1.5, 1.5, 203869308, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(71,105,110,103,101,114,98,114,101,97,100,95,71,95,50,48,49,57),string.char(71,105,110,103,101,114,98,114,101,97,100,32,50,48,49,57),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 4534842979, 1.5, 1.5, 1.5, 4534872116, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(71,97,108,97,99,116,105,99),string.char(71,97,108,97,99,116,105,99),string.char(71),string.char(82,97,114,101), 79401392, 173912996, 1.5, 1.5, 1.5, 173913533, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(69,110,103,114,97,118,101,100),string.char(69,110,103,114,97,118,101,100),string.char(71),string.char(67,111,109,109,111,110), 79401392, 159670413, 1.5, 1.5, 1.5, 203807690, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,97,110,116,97,71,117,110),string.char(83,97,110,116,97),string.char(71),string.char(67,111,109,109,111,110), 79401392, 76370731428901, 1.5, 1.5, 1.5, 332496861, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(78,117,107,101,95,71,95,50,48,50,51),string.char(78,117,107,101),string.char(71),string.char(82,97,114,101), 79401392, 12936824008, 1.5, 1.5, 1.5, 12965335931, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(66,108,117,101,115,116,101,101,108,71,117,110),string.char(66,108,117,101,115,116,101,101,108),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 161420087, 1.5, 1.5, 1.5, 162668203, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(79,114,110,97,109,101,110,116,49,71,117,110),string.char(79,114,110,97,109,101,110,116,49),string.char(71),string.char(67,111,109,109,111,110), 79401392, 332358313, 1.5, 1.5, 1.5, 332497144, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(66,108,101,101,100),string.char(82,117,112,116,117,114,101),string.char(71),string.char(76,101,103,101,110,100,97,114,121), 79401392, 315010891, 1.5, 1.5, 1.5, 315100702, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(67,97,110,100,108,101,102,108,97,109,101,95,71,95,50,48,50,52),string.char(67,97,110,100,108,101,102,108,97,109,101),string.char(71),string.char(82,97,114,101), 79401392, 115359559909377, 1.5, 1.5, 1.5, 0, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(77,97,114,105,110,97),string.char(77,97,114,105,110,97),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 159899596, 1.5, 1.5, 1.5, 203808190, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(88,109,97,115,83,116,105,99,107,101,114,115,95,71,95,50,48,50,49),string.char(83,116,105,99,107,101,114,115,32,50,48,50,49,32,194,183,32,88,109,97,115,83,116,105,99,107,101,114,115,95,71,95,50,48,50,49),string.char(71),string.char(67,111,109,109,111,110), 79401392, 110585366732058, 1.6, 1.6, 1.6, 8304770115, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(67,114,97,99,107,115,95,71,95,50,48,50,49),string.char(67,114,97,99,107,115),string.char(71),string.char(67,111,109,109,111,110), 79401392, 7758056748, 1.5, 1.5, 1.5, 7800254737, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,116,105,99,107,101,114,115,95,71,95,50,48,50,49),string.char(83,116,105,99,107,101,114,115,32,50,48,50,49,32,194,183,32,83,116,105,99,107,101,114,115,95,71,95,50,48,50,49),string.char(71),string.char(67,111,109,109,111,110), 79401392, 7758615144, 1.5, 1.5, 1.5, 7800257010, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(87,114,97,112,112,101,100,71,117,110),string.char(87,114,97,112,112,101,100),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 103005044438900, 1.5, 1.5, 1.5, 332497103, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(67,97,117,116,105,111,110),string.char(67,97,117,116,105,111,110),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 48737841, 1.5, 1.5, 1.5, 238546422, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(72,76,50),string.char(72,76,50),string.char(71),string.char(67,111,109,109,111,110), 79401392, 181689885, 1.5, 1.5, 1.5, 238546100, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(87,97,116,101,114,66,97,108,108,111,111,110,115,95,71,95,50,48,50,52),string.char(66,97,108,108,111,111,110,115),string.char(71),string.char(67,111,109,109,111,110), 79401392, 18323742698, 1.5, 1.5, 1.5, 0, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(71,117,110,49),string.char(67,111,119,98,111,121),string.char(71),string.char(67,108,97,115,115,105,99), 79401392, 79401500, 1.5, 1.5, 1.5, 144290769, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,117,110,115,101,116,95,71,95,50,48,50,51),string.char(83,117,110),string.char(71),string.char(82,97,114,101), 79401392, 13896017136, 1.5, 1.5, 1.5, 13944156090, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(78,105,103,104,116,102,105,114,101),string.char(78,105,103,104,116,102,105,114,101),string.char(71),string.char(82,97,114,101), 79401392, 4659577665, 1.5, 1.5, 1.5, 4659626966, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(70,114,111,122,101,110,95,71,95,50,48,49,57),string.char(70,114,111,122,101,110,32,50,48,49,57),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 4528661973, 1.5, 1.5, 1.5, 4534873956, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,117,109,109,101,114,95,83,116,105,99,107,101,114,115,95,71,95,50,48,50,51),string.char(83,116,105,99,107,101,114,115,32,50,48,50,51),string.char(71),string.char(67,111,109,109,111,110), 79401392, 13905821320, 1.5, 1.5, 1.5, 13944151909, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(65,99,101),string.char(65,99,101),string.char(71),string.char(82,97,114,101), 79401392, 178208194, 1.5, 1.5, 1.5, 238546577, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(65,115,116,101,114,111,105,100),string.char(65,115,116,101,114,111,105,100),string.char(71),string.char(67,111,109,109,111,110), 79401392, 6394252363, 1.5, 1.5, 1.5, 476599365, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(77,117,109,109,121,95,71,95,50,48,50,48),string.char(77,117,109,109,121,32,50,48,50,48),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 5866372623, 1.5, 1.5, 1.5, 5866463755, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(78,105,103,104,116),string.char(78,105,103,104,116),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 159882296, 1.5, 1.5, 1.5, 159971385, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,112,108,97,115,104,95,71),string.char(83,112,108,97,115,104),string.char(71),string.char(76,101,103,101,110,100,97,114,121), 79401392, 4659576260, 1.5, 1.5, 1.5, 4659626370, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(67,97,110,100,121,67,111,114,110,95,71,95,50,48,50,52),string.char(67,97,110,100,121,32,67,111,114,110,32,50,48,50,52),string.char(71),string.char(67,111,109,109,111,110), 79401392, 110799536201694, 1.5, 1.5, 1.5, 0, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(80,97,105,110,116,101,100,95,71,95,50,48,50,51),string.char(80,97,105,110,116,101,100),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 12937817240, 1.5, 1.5, 1.5, 12965344675, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,112,105,116,102,105,114,101),string.char(83,112,105,116,102,105,114,101),string.char(71),string.char(82,97,114,101), 79401392, 159883934, 1.5, 1.5, 1.5, 159971321, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,110,111,119,109,97,110,95,71,95,50,48,50,49),string.char(83,110,111,119,109,97,110,32,50,48,50,49),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 8275033129, 1.5, 1.5, 1.5, 8304766932, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(86,97,109,112,105,114,101,71,50,48,49,56),string.char(86,97,109,112,105,114,101,32,50,48,49,56),string.char(71),string.char(82,97,114,101), 79401392, 2513708622, 1.5, 1.5, 1.5, 2513742751, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(73,109,98,117,101,100),string.char(73,109,98,117,101,100),string.char(71),string.char(82,97,114,101), 79401392, 156263287, 1.5, 1.5, 1.5, 162668312, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(80,101,97),string.char(80,101,97),string.char(71),string.char(67,111,109,109,111,110), 79401392, 162911948, 1.5, 1.5, 1.5, 238545971, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(86,105,112,101,114),string.char(86,105,112,101,114),string.char(71),string.char(76,101,103,101,110,100,97,114,121), 79401392, 159991281, 1.5, 1.5, 1.5, 160299600, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(85,110,105,118,101,114,115,101),string.char(85,110,105,118,101,114,115,101),string.char(71),string.char(76,101,103,101,110,100,97,114,121), 79401392, 238542777, 1.5, 1.5, 1.5, 238546660, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(84,114,101,101,71,117,110),string.char(84,114,101,101),string.char(71),string.char(76,101,103,101,110,100,97,114,121), 79401392, 106909830955114, 1.5, 1.5, 1.5, 332497688, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(78,117,116,99,114,97,99,107,101,114),string.char(78,117,116,99,114,97,99,107,101,114),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 5538506180, 1.5, 1.5, 1.5, 332497657, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(73,110,102,105,108,116,114,97,116,111,114),string.char(73,110,102,105,108,116,114,97,116,111,114),string.char(71),string.char(67,111,109,109,111,110), 79401392, 156265112, 1.5, 1.5, 1.5, 203806022, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(67,108,111,119,110,95,71,95,50,48,50,52),string.char(67,108,111,119,110,32,50,48,50,52),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 83300450889998, 1.5, 1.5, 1.5, 0, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(66,105,103,75,105,108,108),string.char(66,105,103,32,75,105,108,108),string.char(71),string.char(67,111,109,109,111,110), 79401392, 159963965, 1.5, 1.5, 1.5, 162669041, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(65,117,114,111,114,97,95,71,95,50,48,49,57),string.char(65,117,114,111,114,97,32,50,48,49,57),string.char(71),string.char(82,97,114,101), 79401392, 70440729181948, 1.5, 1.5, 1.5, 4534875165, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(90,111,109,98,105,101,71,50,48,49,56),string.char(90,111,109,98,105,101),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 140056674605111, 1.5, 1.5, 1.5, 2513743298, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(82,73,80),string.char(82,73,80),string.char(71),string.char(67,111,109,109,111,110), 79401392, 4210409923, 1.5, 1.5, 1.5, 4210947993, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(67,97,110,100,121,67,111,114,110,95,71,95,50,48,50,48),string.char(67,97,110,100,121,32,67,111,114,110,32,50,48,50,48),string.char(71),string.char(67,111,109,109,111,110), 79401392, 5866371945, 1.5, 1.5, 1.5, 5866454590, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(67,111,108,100),string.char(67,111,108,100),string.char(71),string.char(67,111,109,109,111,110), 79401392, 161309663, 1.5, 1.5, 1.5, 161309889, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(76,101,97,118,101,115,95,71,95,50,48,50,52),string.char(76,101,97,118,101,115),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 105437948088593, 1.5, 1.5, 1.5, 0, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(79,118,101,114,115,101,101,114),string.char(79,118,101,114,115,101,101,114),string.char(71),string.char(76,101,103,101,110,100,97,114,121), 79401392, 162262248, 1.5, 1.5, 1.5, 175668680, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,116,105,99,107,101,114,115,95,71,95,50,48,50,52),string.char(83,116,105,99,107,101,114,115,32,50,48,50,52,32,194,183,32,83,116,105,99,107,101,114,115,95,71,95,50,48,50,52),string.char(71),string.char(67,111,109,109,111,110), 79401392, 89311097227409, 1.5, 1.5, 1.5, 0, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,112,97,114,107,108,101),string.char(83,112,97,114,107,108,101),string.char(71),string.char(76,101,103,101,110,100,97,114,121), 79401392, 162976205, 1.5, 1.5, 1.5, 203869110, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(72,97,99,107,101,114),string.char(72,97,99,107,101,114),string.char(71),string.char(82,97,114,101), 79401392, 198413638, 1.5, 1.5, 1.5, 203819271, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(67,117,114,115,101,100,95,71,95,50,48,50,52),string.char(67,117,114,115,101,100),string.char(71),string.char(76,101,103,101,110,100,97,114,121), 79401392, 134978959658778, 1.5, 1.5, 1.5, 0, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(76,111,118,101,71,117,110),string.char(76,111,118,101),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 159686237, 1.5, 1.5, 1.5, 203867650, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(73,114,111,110),string.char(73,114,111,110),string.char(71),string.char(67,111,109,109,111,110), 79401392, 159707533, 1.5, 1.5, 1.5, 160201541, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(70,97,108,108,111,117,116),string.char(70,97,108,108,111,117,116),string.char(71),string.char(67,111,109,109,111,110), 79401392, 172596465, 1.5, 1.5, 1.5, 175668592, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(67,111,108,97),string.char(83,111,100,97),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 320398770, 1.5, 1.5, 1.5, 238546400, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(71,111,116,104,105,99,95,71,95,50,48,50,49),string.char(71,111,116,104,105,99),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 7758572472, 1.5, 1.5, 1.5, 7800253970, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(77,111,110,115,116,101,114),string.char(77,111,110,115,116,101,114),string.char(71),string.char(82,97,114,101), 79401392, 4210409812, 1.5, 1.5, 1.5, 4210941474, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(65,105,100),string.char(74,117,105,99,101),string.char(71),string.char(67,111,109,109,111,110), 79401392, 7164849213, 1.5, 1.5, 1.5, 203807397, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(82,105,112,112,101,114,95,71,95,50,48,50,48),string.char(82,105,112,112,101,114),string.char(71),string.char(76,101,103,101,110,100,97,114,121), 79401392, 5866373797, 1.5, 1.5, 1.5, 5866460591, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(65,117,114,111,114,97,95,71,95,50,48,50,49),string.char(65,117,114,111,114,97,32,50,48,50,49),string.char(71),string.char(76,101,103,101,110,100,97,114,121), 79401392, 96698273353001, 1.5, 1.5, 1.5, 8304766165, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(67,104,114,111,109,97,116,105,99,95,71,95,50,48,50,51),string.char(67,104,114,111,109,97,116,105,99),string.char(71),string.char(76,101,103,101,110,100,97,114,121), 79401392, 12937562728, 1.5, 1.5, 1.5, 12965339774, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(66,105,116),string.char(66,105,116),string.char(71),string.char(67,111,109,109,111,110), 79401392, 178259396, 1.5, 1.5, 1.5, 238549030, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(78,101,119,115),string.char(78,101,119,115),string.char(71),string.char(67,111,109,109,111,110), 79401392, 178238688, 1.5, 1.5, 1.5, 238546032, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(67,104,101,100,100,97,114),string.char(67,104,101,100,100,97,114),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 160274812, 1.5, 1.5, 1.5, 203808317, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,97,119,67,104,114,111,109,97),string.char(83,97,119,32,194,183,32,83,97,119,67,104,114,111,109,97),string.char(75),string.char(71,111,100,108,121), 168119698, 3171086347, 0.5, 0.5, 0.55, 3187398132, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(75,110,105,102,101,49),string.char(83,112,108,105,116,116,101,114),string.char(75),string.char(67,108,97,115,115,105,99), 22771612, 22771560, 0.15, 0.15, 0.15, 143820641, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(73,99,101,119,105,110,103),string.char(73,99,101,119,105,110,103),string.char(75),string.char(65,110,99,105,101,110,116), 3183449780, 2279588369, 0.085, 0.085, 0.085, 2669997196, -0.0001, -1, -0.1, 1, 0, 0, 0, 0.8625, -0.5061, 0, 0.5061, 0.8625 },
{string.char(73,99,101,83,104,97,114,100),string.char(73,99,101,32,83,104,97,114,100),string.char(75),string.char(71,111,100,108,121), 188539751, 188539820, 0.85, 0.85, 0.85, 1268710824, -0.0001, -0.0312, 1.071, 1, 0, 0, 0, -0.0842, 0.9965, 0, -0.9965, -0.0842 },
{string.char(73,99,101,68,114,97,103,111,110),string.char(73,99,101,32,68,114,97,103,111,110),string.char(75),string.char(71,111,100,108,121), 165708869, 165708903, 0.5, 0.5, 0.5, 585846454, -0.0001, -0.1514, 1.2029, 1, 0, 0, 0, 0.0802, 0.9968, 0, -0.9968, 0.0802 },
{string.char(72,101,97,116,67,104,114,111,109,97),string.char(72,101,97,116,32,194,183,32,72,101,97,116,67,104,114,111,109,97),string.char(75),string.char(71,111,100,108,121), 105333894, 3171194706, 0.3, 0.3, 0.3, 3187444849, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(72,101,97,116),string.char(72,101,97,116,32,194,183,32,72,101,97,116),string.char(75),string.char(71,111,100,108,121), 105333894, 105334003, 0.3, 0.3, 0.3, 3187444758, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(72,97,110,100,115,97,119),string.char(72,97,110,100,115,97,119),string.char(75),string.char(71,111,100,108,121), 54430772, 54430066, 0.4, 0.6, 0.53, 332042435, 0.0031, 0.0461, -0.803, -1, -0.0004, 0.0029, 0.0029, -0.0614, 0.9981, -0.0002, 0.9981, 0.0614 },
{string.char(72,97,108,108,111,119,115,66,108,97,100,101),string.char(72,97,108,108,111,119,39,115,32,66,108,97,100,101),string.char(75),string.char(71,111,100,108,121), 179155055, 1132750758, 0.55, 0.55, 0.555, 1132775323, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,119,105,114,108,121,71,117,110,66,114,111,110,122,101),string.char(66,114,111,110,122,101,32,83,119,105,114,108,121),string.char(71),string.char(85,110,105,113,117,101), 8310911339, 113787938041112, 1, 1, 1, 9552063524, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(71,105,110,103,101,114,109,105,110,116,95,75,67,104,114,111,109,97),string.char(67,111,111,107,105,101,99,97,110,101),string.char(75),string.char(71,111,100,108,121), 11837984324, 11837984504, 0.0687, 0.0687, 0.0687, 11979596437, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,105,110,103,101,114,98,108,97,100,101,67,104,114,111,109,97),string.char(71,105,110,103,101,114,98,108,97,100,101),string.char(75),string.char(71,111,100,108,121), 2248389833, 2248390749, 0.61, 0.61, 0.6095, 2672351679, -0.5814, 0.7932, -0.0418, 0.042, 0.6372, 0.7696, 0.0428, -0.7707, 0.6358, 0.9982, 0.0062, -0.0597 },
{string.char(71,104,111,115,116,75,110,105,102,101),string.char(71,104,111,115,116),string.char(75),string.char(67,108,97,115,115,105,99), 64131019, 64131051, 3, 2, 2, 144268841, -0.0001, -0.0054, -0.6642, 1, 0, 0, 0, 0.0068, -1, 0, 1, 0.0068 },
{string.char(71,101,109,115,116,111,110,101,67,104,114,111,109,97),string.char(71,101,109,115,116,111,110,101,32,194,183,32,71,101,109,115,116,111,110,101,67,104,114,111,109,97),string.char(75),string.char(71,111,100,108,121), 1626714161, 3183577898, 25, 25, 25, 3183657875, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,101,109,115,116,111,110,101),string.char(71,101,109,115,116,111,110,101,32,194,183,32,71,101,109,115,116,111,110,101),string.char(75),string.char(71,111,100,108,121), 1626714161, 3183579677, 25, 25, 25, 3183657748, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(70,114,111,115,116,115,97,98,101,114),string.char(70,114,111,115,116,115,97,98,101,114),string.char(75),string.char(71,111,100,108,121), 1192795322, 1192795941, 0.55, 0.55, 0.6, 1268934541, 0, -0.0706, 1.1513, 1, 0, 0, 0, -0.0286, 0.9996, 0, -0.9996, -0.0286 },
{string.char(70,114,111,115,116,98,105,116,101),string.char(70,114,111,115,116,98,105,116,101),string.char(75),string.char(71,111,100,108,121), 4528435571, 4528435630, 1.1, 1.1, 1.1, 4528373246, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(70,108,97,109,101,115),string.char(70,108,97,109,101,115),string.char(75),string.char(71,111,100,108,121), 238314098, 238314124, 0.6, 0.8, 0.73, 585873746, 0, 0.0027, 1.1242, 1, 0, 0, 0, 0.0654, 0.9979, 0, -0.9979, 0.0654 },
{string.char(70,97,110,103,67,104,114,111,109,97),string.char(70,97,110,103,32,194,183,32,70,97,110,103,67,104,114,111,109,97),string.char(75),string.char(71,111,100,108,121), 117500241, 0, 0.4, 0.4, 0.4, 3187397850, 0, -1, -0.1, 0.0872, 0, -0.9962, 0, 1, 0, 0.9962, 0, 0.0872 },
{string.char(70,97,110,103),string.char(70,97,110,103,32,194,183,32,70,97,110,103),string.char(75),string.char(71,111,100,108,121), 117500241, 117500388, 0.4, 0.4, 0.4, 3187397768, 0, -1, -0.1, 0.0872, 0, -0.9962, 0, 1, 0, 0.9962, 0, 0.0872 },
{string.char(69,116,101,114,110,97,108,67,97,110,101),string.char(69,116,101,114,110,97,108,99,97,110,101),string.char(75),string.char(71,111,100,108,121), 3132923779, 4488374804, 0.95, 0.95, 0.95, 4488391411, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(69,116,101,114,110,97,108,52),string.char(69,116,101,114,110,97,108,32,73,86),string.char(75),string.char(71,111,100,108,121), 3132923779, 4999951444, 0.95, 0.95, 0.95, 4999958740, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(69,116,101,114,110,97,108,51),string.char(69,116,101,114,110,97,108,32,73,73,73),string.char(75),string.char(71,111,100,108,121), 3132923779, 3279683257, 0.95, 0.95, 0.95, 3281170430, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(69,116,101,114,110,97,108,50),string.char(69,116,101,114,110,97,108,32,73,73),string.char(75),string.char(71,111,100,108,121), 532155954, 2545251852, 0.5, 0.5, 0.5, 2545253030, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(69,116,101,114,110,97,108),string.char(69,116,101,114,110,97,108),string.char(75),string.char(71,111,100,108,121), 532155954, 532156041, 0.45, 0.45, 0.45, 538706317, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,119,105,114,108,121,71,117,110,83,105,108,118,101,114),string.char(83,105,108,118,101,114,32,83,119,105,114,108,121),string.char(71),string.char(85,110,105,113,117,101), 8310911339, 108720084988330, 1, 1, 1, 9552064240, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(68,101,97,116,104,115,104,97,114,100,67,104,114,111,109,97),string.char(68,101,97,116,104,115,104,97,114,100,32,194,183,32,68,101,97,116,104,115,104,97,114,100,67,104,114,111,109,97),string.char(75),string.char(71,111,100,108,121), 62275962, 3167029738, 0.75, 0.75, 0.75, 3187397317, 0, -1, -0.1001, 0, 0, -1, 0, 1, 0, 1, 0, 0 },
{string.char(68,101,97,116,104,115,104,97,114,100),string.char(68,101,97,116,104,115,104,97,114,100,32,194,183,32,68,101,97,116,104,115,104,97,114,100),string.char(75),string.char(71,111,100,108,121), 62275962, 192567360, 0.75, 0.75, 0.75, 3175017717, 0, -1, -0.1, 0, 0, -1, 0, 1, 0, 1, 0, 0 },
{string.char(68,97,114,107,115,119,111,114,100),string.char(68,97,114,107,115,119,111,114,100),string.char(75),string.char(71,111,100,108,121), 15020899066, 15020899218, 0.08, 0.08, 0.08, 15080267070, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,108,111,99,107,119,111,114,107),string.char(67,108,111,99,107,119,111,114,107),string.char(75),string.char(71,111,100,108,121), 352571495, 352570357, 1.1, 1.6, 1.2, 360609441, 0.0002, 0.0291, 1.1578, 1, 0, 0, 0, -0.0018, 1, 0, -1, -0.0018 },
{string.char(67,104,105,108,108),string.char(67,104,105,108,108),string.char(75),string.char(71,111,100,108,121), 105329941, 105978218, 0.5, 0.5, 0.5, 332022166, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,97,110,100,121,67,111,114,110),string.char(67,97,110,100,121,67,111,114,110),string.char(75),string.char(67,111,109,109,111,110), 121944778, 1311187229, 1, 1, 1, 1133337797, 0, -0.9885, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,97,110,100,108,101,102,108,97,109,101,67,104,114,111,109,97),string.char(67,97,110,100,108,101,102,108,97,109,101),string.char(75),string.char(71,111,100,108,121), 7791364860, 7791364988, 0.065, 0.065, 0.065, 7806149582, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(66,111,110,101,98,108,97,100,101,67,104,114,111,109,97),string.char(66,111,110,101,98,108,97,100,101),string.char(75),string.char(71,111,100,108,121), 1857106669, 2516324337, 0.7, 0.7, 0.7, 2513597845, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(66,108,117,101,83,101,101,114),string.char(66,108,117,101,32,83,101,101,114),string.char(75),string.char(71,111,100,108,121), 156092238, 3184062977, 0.7, 0.91, 1, 3184139996, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(66,108,111,111,100,75,110,105,102,101),string.char(66,108,111,111,100),string.char(75),string.char(67,108,97,115,115,105,99), 51682254, 51941734, 0.5, 0.5, 0.3, 144307188, 0, -0.0504, -0.3497, 1, 0, 0, 0, -0.0392, -0.9992, 0, 0.9992, -0.0392 },
{string.char(66,97,116,116,108,101,65,120,101),string.char(66,97,116,116,108,101,65,120,101),string.char(75),string.char(71,111,100,108,121), 1084767698, 1084767901, 0.56, 0.56, 0.56, 1133237368, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(78,105,103,104,116,98,108,97,100,101),string.char(78,105,103,104,116,98,108,97,100,101),string.char(75),string.char(71,111,100,108,121), 103838505, 103838996, 0.7, 0.45, 0.5, 475478854, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(79,114,97,110,103,101,83,101,101,114),string.char(79,114,97,110,103,101,32,83,101,101,114),string.char(75),string.char(71,111,100,108,121), 156092238, 7443788709, 0.7, 0.91, 1, 3184139504, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(80,101,112,112,101,114,109,105,110,116),string.char(80,101,112,112,101,114,109,105,110,116),string.char(75),string.char(71,111,100,108,121), 6085025295, 6074789360, 0.07, 0.07, 0.07, 6076067750, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(80,104,97,110,116,111,109,50,48,50,50),string.char(80,104,97,110,116,111,109,32,50,48,50,50),string.char(75),string.char(71,111,100,108,121), 121944778, 95338306077286, 1, 1, 1, 11229732037, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(80,105,120,101,108),string.char(80,105,120,101,108),string.char(75),string.char(71,111,100,108,121), 361629844, 361630114, 3, 3, 3, 365347166, 0, -0.1546, 0.9239, 1, 0, 0, 0, 0, 1, 0, -1, 0 },
{string.char(80,114,105,115,109,97,116,105,99),string.char(80,114,105,115,109,97,116,105,99),string.char(75),string.char(71,111,100,108,121), 5355753728, 5355747943, 0.06, 0.0692, 0.06, 5360359935, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(80,117,109,112,107,105,110,103),string.char(80,117,109,112,107,105,110,103),string.char(75),string.char(71,111,100,108,121), 94840342, 1133078553, 0.4, 0.4, 0.4, 1133082421, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(80,117,114,112,108,101,83,101,101,114),string.char(80,117,114,112,108,101,32,83,101,101,114),string.char(75),string.char(71,111,100,108,121), 156092238, 3184063317, 0.7, 0.91, 1, 3184140119, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(82,101,100,83,101,101,114),string.char(82,101,100,32,83,101,101,114),string.char(75),string.char(71,111,100,108,121), 156092238, 3184063443, 0.7, 0.91, 1, 3184139367, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,97,119),string.char(83,97,119,32,194,183,32,83,97,119),string.char(75),string.char(71,111,100,108,121), 168119698, 168119736, 0.5, 0.5, 0.55, 3187397991, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(89,101,108,108,111,119,83,101,101,114),string.char(89,101,108,108,111,119,32,83,101,101,114),string.char(75),string.char(71,111,100,108,121), 156092238, 7443776855, 0.7, 0.91, 1, 3184139648, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(88,109,97,115),string.char(88,109,97,115),string.char(75),string.char(71,111,100,108,121), 187852667, 187852629, 0.6, 0.6, 0.6, 332077449, -0.0001, -0.124, 1.1068, 1, 0, 0, 0, 0, 1, 0, -1, 0 },
{string.char(87,105,110,116,101,114,115,69,100,103,101),string.char(87,105,110,116,101,114,39,115,32,69,100,103,101),string.char(75),string.char(71,111,100,108,121), 93108071, 93112631, 0.45, 0.45, 0.45, 1268708987, 0, -1, -0.1, 0, 0, -1, 0, 1, 0, 1, 0, 0 },
{string.char(86,105,114,116,117,97,108),string.char(86,105,114,116,117,97,108),string.char(75),string.char(71,111,100,108,121), 130101214, 386250868, 0.6, 0.6, 0.7, 386276987, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(84,117,114,107,101,121,50,48,50,51),string.char(84,117,114,107,101,121),string.char(75),string.char(71,111,100,108,121), 15320557481, 86999625612475, 0.056, 0.056, 0.056, 15413162319, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(87,114,97,112,112,101,100,95,75,95,50,48,49,56),string.char(87,114,97,112,112,101,100,32,50,48,49,56),string.char(75),string.char(67,111,109,109,111,110), 121944778, 2672196316, 1, 1, 1, 2669640357, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(65,100,117,114,105,116,101,71,117,110),string.char(65,100,117,114,105,116,101),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 162812733, 1.5, 1.5, 1.5, 175668921, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(84,105,109,101,75,110,105,102,101),string.char(80,114,105,110,99,101),string.char(75),string.char(67,108,97,115,115,105,99), 70990583, 70990591, 0.5, 0.8, 0.5, 143917700, -0.0386, 0.0062, -0.9927, -0.0967, -0.0823, 0.9919, 0.9951, -0.0262, 0.0949, 0.0182, 0.9963, 0.0844 },
{string.char(84,105,100,101,115,67,104,114,111,109,97),string.char(84,105,100,101,115,32,194,183,32,84,105,100,101,115,67,104,114,111,109,97),string.char(75),string.char(71,111,100,108,121), 238314382, 3171168641, 0.7, 0.9, 0.7, 3187398906, 0, -0.2257, 1.0324, 1, 0.0025, 0, 0, -0.0191, 0.9998, 0.0025, -0.9998, -0.0191 },
{string.char(84,105,100,101,115),string.char(84,105,100,101,115,32,194,183,32,84,105,100,101,115),string.char(75),string.char(71,111,100,108,121), 238314382, 238314431, 0.7, 0.9, 0.7, 3187398809, 0, -0.226, 1.032, 1, 0, 0, 0, 0.048, 0.9988, 0, -0.9988, 0.048 },
{string.char(84,104,101,83,101,101,114),string.char(83,101,101,114,32,194,183,32,84,104,101,83,101,101,114),string.char(75),string.char(71,111,100,108,121), 156092238, 156092253, 0.7, 0.91, 1, 3184139765, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,112,105,100,101,114),string.char(83,112,105,100,101,114),string.char(75),string.char(71,111,100,108,121), 302165984, 315122091, 0.55, 0.57, 0.52, 315120760, 0, -0.15, 0.973, 1, 0, 0, 0, 0, 1, 0, -1, 0 },
{string.char(83,110,111,119,102,108,97,107,101),string.char(83,110,111,119,102,108,97,107,101),string.char(75),string.char(71,111,100,108,121), 582120569, 582120836, 0.6, 0.6, 0.6, 1268932977, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,108,97,115,104,101,114,67,104,114,111,109,97),string.char(83,108,97,115,104,101,114,32,194,183,32,83,108,97,115,104,101,114,67,104,114,111,109,97),string.char(75),string.char(71,111,100,108,121), 283709822, 3171107559, 0.45, 0.45, 0.45, 3187398385, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,108,97,115,104,101,114),string.char(83,108,97,115,104,101,114,32,194,183,32,83,108,97,115,104,101,114),string.char(75),string.char(71,111,100,108,121), 283709822, 313894904, 0.45, 0.45, 0.45, 3187398274, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,104,97,100,111,119,75,110,105,102,101),string.char(83,104,97,100,111,119),string.char(75),string.char(67,108,97,115,115,105,99), 86297695, 86290910, 0.4, 0.2, 0.2, 144070096, 0, -0.0087, -0.703, 0.0033, 0, 1, 1, 0.0049, -0.0033, -0.0049, 1, 0 },
{string.char(83,101,101,114,67,104,114,111,109,97),string.char(83,101,101,114,32,194,183,32,83,101,101,114,67,104,114,111,109,97),string.char(75),string.char(71,111,100,108,121), 156092238, 3184059718, 1, 1, 1, 3184140321, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,99,121,116,104,101),string.char(66,97,116,119,105,110,103),string.char(75),string.char(65,110,99,105,101,110,116), 305826272, 2511673515, 1, 1, 1, 375690925, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(65,117,114,111,114,97,75,110,105,102,101),string.char(65,117,115,116,114,97,108,105,115),string.char(75),string.char(71,111,100,108,121), 16025287191, 97521579968070, 0.0753, 0.0753, 0.0753, 101343256002049, 0, -1.1615, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(66,97,116,116,108,101,65,120,101,50),string.char(66,97,116,116,108,101,65,120,101,32,73,73),string.char(75),string.char(71,111,100,108,121), 2397016406, 2521633652, 0.7357, 0.7357, 0.7357, 2513535503, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(66,105,111,98,108,97,100,101),string.char(66,105,111,98,108,97,100,101),string.char(75),string.char(71,111,100,108,121), 4662600017, 4751538400, 0.0624, 0.0684, 0.066, 4751540097, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(73,99,101,112,105,101,114,99,101,114,83,105,108,118,101,114),string.char(83,105,108,118,101,114,32,73,99,101,112,105,101,114,99,101,114),string.char(71),string.char(85,110,105,113,117,101), 11868991644, 122077395445706, 0.0548, 0.0548, 0.0548, 12226843957, 0, -0.66, 0.2344, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,111,110,115,116,101,108,108,97,116,105,111,110,95,71,95,50,48,50,52),string.char(78,105,103,104,116,115,107,121),string.char(71),string.char(76,101,103,101,110,100,97,114,121), 6600918074, 140562006976774, 0.0384, 0.0388, 0.0369, 94311965719769, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,111,111,107,105,101,98,108,97,100,101),string.char(67,111,111,107,105,101,98,108,97,100,101),string.char(75),string.char(71,111,100,108,121), 6123168377, 6123168583, 1, 1, 1, 6121574620, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(69,103,103,98,108,97,100,101),string.char(69,103,103,98,108,97,100,101),string.char(75),string.char(71,111,100,108,121), 6596834762, 6596824396, 0.0686, 0.0686, 0.0686, 6607512359, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(69,108,100,101,114,119,111,111,100,83,99,121,116,104,101),string.char(69,108,100,101,114,119,111,111,100,32,83,99,121,116,104,101),string.char(75),string.char(65,110,99,105,101,110,116), 4217523241, 4210044808, 0.0764, 0.0764, 0.0764, 4468593654, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(70,108,111,119,101,114,119,111,111,100,75,110,105,102,101),string.char(70,108,111,119,101,114,119,111,111,100),string.char(75),string.char(71,111,100,108,121), 16883629972, 16895441338, 0.0792, 0.0792, 0.0792, 0, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,104,111,115,116,98,108,97,100,101),string.char(71,104,111,115,116,98,108,97,100,101),string.char(75),string.char(71,111,100,108,121), 4217554208, 4210531490, 0.0535, 0.0535, 0.0535, 4217586790, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(72,97,108,108,111,119,115,99,121,116,104,101),string.char(72,97,108,108,111,119,115,99,121,116,104,101),string.char(75),string.char(65,110,99,105,101,110,116), 5841877975, 5841879647, 0.0708, 0.0708, 0.0708, 5877016863, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(72,101,97,114,116,98,108,97,100,101),string.char(72,101,97,114,116,98,108,97,100,101),string.char(75),string.char(71,111,100,108,121), 6404140078, 6413074818, 1.1003, 1.1003, 1.1003, 6413214382, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,117,103,97,114),string.char(83,117,103,97,114),string.char(71),string.char(71,111,100,108,121), 101086719, 72286618177616, 0.5, 0.5, 0.5, 3215356000, -0.1, 0.536, 1.079, -1, 0, 0, 0, -1, 0, 0, 0, 1 },
{string.char(73,99,101,102,108,97,107,101),string.char(73,99,101,102,108,97,107,101),string.char(75),string.char(71,111,100,108,121), 8231045240, 8231046270, 0.0675, 0.0675, 0.0675, 8304818186, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(76,111,103,99,104,111,112,112,101,114),string.char(76,111,103,99,104,111,112,112,101,114),string.char(75),string.char(65,110,99,105,101,110,116), 4535643726, 4535641077, 1, 1, 1, 4528268775, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(78,101,98,117,108,97),string.char(78,101,98,117,108,97),string.char(75),string.char(71,111,100,108,121), 6596839942, 6256756879, 1.1522, 1.1522, 1.1522, 6598123521, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(80,101,97,114,108,95,75),string.char(80,101,97,114,108),string.char(75),string.char(71,111,100,108,121), 18276861801, 74986100175804, 0.0697, 0.0697, 0.0697, 0, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(80,108,97,115,109,97,98,108,97,100,101),string.char(80,108,97,115,109,97,98,108,97,100,101),string.char(75),string.char(71,111,100,108,121), 9702732853, 10015130416, 0.0018, 0.0016, 0.0017, 10014680882, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(82,97,105,110,98,111,119,95,75),string.char(82,97,105,110,98,111,119,32,40,71,111,100,108,121,41),string.char(75),string.char(71,111,100,108,121), 12921240966, 12921241867, 0.0652, 0.0652, 0.0652, 12966184630, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,97,107,117,114,97,95,75),string.char(83,97,107,117,114,97),string.char(75),string.char(71,111,100,108,121), 12307707430, 12307707797, 0.0741, 0.0741, 0.0741, 12339366064, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,119,105,114,108,121,65,120,101),string.char(83,119,105,114,108,121,32,65,120,101),string.char(75),string.char(65,110,99,105,101,110,116), 8293463844, 8293464070, 0.0579, 0.0579, 0.0579, 8304801000, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,119,105,114,108,121,66,108,97,100,101),string.char(83,119,105,114,108,121,32,66,108,97,100,101),string.char(75),string.char(71,111,100,108,121), 8302964090, 8302965681, 0.0669, 0.0669, 0.0669, 8304805693, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(86,97,109,112,105,114,101,115,69,100,103,101),string.char(86,97,109,112,105,114,101,39,115,32,69,100,103,101),string.char(75),string.char(71,111,100,108,121), 5841895234, 5842343736, 0.067, 0.067, 0.067, 5873256998, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(73,99,101,72,97,109,109,101,114),string.char(73,99,101,99,114,117,115,104,101,114,32,40,82,97,114,101,41),string.char(75),string.char(82,97,114,101), 957726558, 11850788417, 1, 1, 1, 11855360152, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,119,105,114,108,121,65,120,101,83,105,108,118,101,114),string.char(83,105,108,118,101,114,32,83,119,105,114,108,121),string.char(75),string.char(85,110,105,113,117,101), 8293463844, 137014121340838, 0.0579, 0.0579, 0.0579, 9552051805, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(87,97,118,101,115,95,75),string.char(87,97,118,101,115),string.char(75),string.char(71,111,100,108,121), 13916938702, 13916939964, 0.0792, 0.0792, 0.0793, 13933066522, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(87,114,97,105,116,104,75,110,105,102,101),string.char(83,112,105,114,105,116),string.char(75),string.char(71,111,100,108,121), 112444333460928, 131787177447081, 0.1047, 0.1047, 0.1047, 0, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(87,114,97,112,112,101,100,95,71,95,50,48,50,52),string.char(87,114,97,112,112,101,100,32,50,48,50,52),string.char(71),string.char(85,110,99,111,109,109,111,110), 6600918074, 137311445183389, 0.0384, 0.0388, 0.0369, 109929760056853, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(90,111,109,98,105,101,66,97,116),string.char(66,97,116),string.char(75),string.char(71,111,100,108,121), 11182796403, 11192090515, 0.0741, 0.0741, 0.0741, 11229814357, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(87,114,97,112,112,101,100,95,75,95,50,48,50,50),string.char(87,114,97,112,112,101,100,32,50,48,50,50),string.char(75),string.char(67,111,109,109,111,110), 121944778, 331744478, 1, 1, 1, 11834403282, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(65,109,101,114,105,108,97,115,101,114),string.char(65,109,101,114,105,108,97,115,101,114),string.char(71),string.char(71,111,100,108,121), 116657254, 445884341, 0.7, 0.7, 0.7, 446050753, 0, -0.5, 0.5, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(66,97,117,98,108,101,67,104,114,111,109,97),string.char(66,97,117,98,108,101),string.char(71),string.char(71,111,100,108,121), 107813118898769, 109913147403488, 0.0471, 0.0471, 0.0471, 137938731902685, 0, -0.5, 0.5, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(66,108,97,115,116,101,114),string.char(66,108,97,115,116,101,114),string.char(71),string.char(71,111,100,108,121), 92656610, 90586029262535, 0.4, 0.45, 0.5, 386277381, 0, -0.5, 0.5, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(66,108,111,115,115,111,109,95,71),string.char(66,108,111,115,115,111,109),string.char(71),string.char(71,111,100,108,121), 12322809632, 12322809917, 0.0476, 0.0441, 0.0438, 12339377105, 0, -0.5, 0.5, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,104,114,111,109,97,68,97,114,107,98,114,105,110,103,101,114),string.char(68,97,114,107,98,114,105,110,103,101,114),string.char(71),string.char(71,111,100,108,121), 4730813852, 4728494788, 0.039, 0.039, 0.039, 4751507011, 0, -0.5, 0.5, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,104,114,111,109,97,76,105,103,104,116,98,114,105,110,103,101,114),string.char(76,105,103,104,116,98,114,105,110,103,101,114),string.char(71),string.char(71,111,100,108,121), 4730813852, 4728487789, 0.039, 0.039, 0.039, 4751507078, 0, -0.5, 0.5, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,111,110,115,116,101,108,108,97,116,105,111,110,67,104,114,111,109,97),string.char(67,111,110,115,116,101,108,108,97,116,105,111,110,32,194,183,32,67,111,110,115,116,101,108,108,97,116,105,111,110,67,104,114,111,109,97),string.char(71),string.char(71,111,100,108,121), 124598402927958, 123603327635244, 0.1012, 0.1012, 0.1012, 98517109155878, 0, -0.27, 0.727, 1, 0, 0, 0, 0.9999, 0.0125, 0, -0.0125, 0.9999 },
{string.char(68,97,114,107,115,104,111,116),string.char(68,97,114,107,115,104,111,116),string.char(71),string.char(71,111,100,108,121), 15027451531, 15027451643, 0.04, 0.04, 0.04, 15080280688, 0, -0.5, 0.5, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(68,105,115,105,110,116),string.char(76,97,115,101,114,32,40,67,108,97,115,115,105,99,41),string.char(71),string.char(67,108,97,115,115,105,99), 18265627, 18265614, 1, 1, 1, 54798135, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(71,105,110,103,101,114,76,117,103,101,114),string.char(71,105,110,103,101,114,32,76,117,103,101,114),string.char(71),string.char(71,111,100,108,121), 95356090, 2674981863, 1.8, 1.8, 1.8, 2674983099, 0, -0.5, 0.5, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,105,110,103,101,114,109,105,110,116,95,71),string.char(71,105,110,103,101,114,109,105,110,116),string.char(71),string.char(71,111,100,108,121), 11866444071, 11866444253, 0.0461, 0.0461, 0.0461, 11872179646, 0, -0.3283, 0.7857, 1, 0, 0, 0, 0.9997, 0.0246, 0, -0.0246, 0.9997 },
{string.char(71,114,101,101,110,76,117,103,101,114),string.char(71,114,101,101,110,32,76,117,103,101,114),string.char(71),string.char(71,111,100,108,121), 95356090, 126534866, 1.8, 1.8, 1.8, 332044679, 0, -0.5, 0.5, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(76,97,115,101,114),string.char(76,97,115,101,114,32,194,183,32,76,97,115,101,114),string.char(71),string.char(71,111,100,108,121), 130099641, 161254231, 0.5, 0.5, 0.5, 3187422496, 0, -0.5, 0.5, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(76,97,115,101,114,67,104,114,111,109,97),string.char(76,97,115,101,114,32,194,183,32,76,97,115,101,114,67,104,114,111,109,97),string.char(71),string.char(71,111,100,108,121), 130099641, 0, 0.5, 0.5, 0.5, 3187422628, 0, -0.5, 0.5, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(76,117,103,101,114,67,104,114,111,109,97),string.char(76,117,103,101,114),string.char(71),string.char(71,111,100,108,121), 95356090, 0, 1.8, 1.8, 1.8, 3187399258, 0, -0.5, 0.5, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(76,117,103,101,114,99,97,110,101),string.char(76,117,103,101,114,99,97,110,101),string.char(71),string.char(71,111,100,108,121), 95356090, 4535479829, 1.8, 1.8, 1.8, 4535482609, 0, -0.5, 0.5, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(79,99,101,97,110,95,71),string.char(79,99,101,97,110),string.char(71),string.char(71,111,100,108,121), 13928587755, 90484783616182, 0.0787, 0.0431, 0.0468, 13933165014, 0, -0.5, 0.5, 0.9999, -0.0087, -0.0087, 0.0087, 1, 0, 0.0087, -0.0001, 1 },
{string.char(80,104,97,115,101,114),string.char(80,104,97,115,101,114),string.char(71),string.char(67,108,97,115,115,105,99), 69486593, 69486519, 0.8, 0.8, 0.8, 144325423, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(80,108,97,115,109,97,98,101,97,109),string.char(80,108,97,115,109,97,98,101,97,109),string.char(71),string.char(71,111,100,108,121), 9702755186, 10015208201, 0.0424, 0.0463, 0.0439, 10014717343, 0, -0.5, 0.5, 0.9999, -0.0087, -0.0087, 0.0087, 1, 0, 0.0087, -0.0001, 1 },
{string.char(83,104,97,114,107),string.char(83,104,97,114,107,32,194,183,32,83,104,97,114,107),string.char(71),string.char(71,111,100,108,121), 118269783, 203858007, 0.3, 0.43, 0.4, 3187421705, 0, -0.5, 0.5, 0.9999, -0.0087, -0.0087, 0.0087, 1, 0, 0.0087, -0.0001, 1 },
{string.char(83,104,97,114,107,67,104,114,111,109,97),string.char(83,104,97,114,107,32,194,183,32,83,104,97,114,107,67,104,114,111,109,97),string.char(71),string.char(71,111,100,108,121), 118269783, 3171214838, 0.44, 0.44, 0.44, 3187421856, 0, -0.5, 0.5, 0.9999, -0.0087, -0.0087, 0.0087, 1, 0, 0.0087, -0.0001, 1 },
{string.char(67,104,105,99,107,95,75,95,50,48,50,53),string.char(67,104,105,99,107),string.char(75),string.char(67,111,109,109,111,110), 121944778, 116056287470892, 1, 1, 1, 116361515042274, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,119,105,114,108,121,71,117,110,67,104,114,111,109,97),string.char(83,119,105,114,108,121,32,71,117,110,32,194,183,32,83,119,105,114,108,121,71,117,110,67,104,114,111,109,97),string.char(71),string.char(71,111,100,108,121), 8310911339, 8293539377, 1, 1, 1, 8311453396, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(84,114,97,118,101,108,101,114,71,117,110,67,104,114,111,109,97),string.char(84,114,97,118,101,108,101,114,39,115,32,71,117,110),string.char(71),string.char(71,111,100,108,121), 15090814396, 132537117087610, 0.0499, 0.0499, 0.0499, 15097920149, 0, -0.5, 0.5, 0.9999, -0.0087, -0.0087, 0.0087, 1, 0, 0.0087, -0.0001, 1 },
{string.char(86,97,109,112,105,114,101,65,120,101,95,71,111,108,100),string.char(86,97,109,112,105,114,101,39,115,32,65,120,101,32,194,183,32,86,97,109,112,105,114,101,65,120,101,95,71,111,108,100),string.char(75),string.char(85,110,105,113,117,101), 92263601594064, 132843202397207, 0.0725, 0.0725, 0.0725, 0, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(86,97,109,112,105,114,101,71,117,110,67,104,114,111,109,97),string.char(86,97,109,112,105,114,101,39,115,32,71,117,110,32,194,183,32,86,97,109,112,105,114,101,71,117,110,67,104,114,111,109,97),string.char(71),string.char(71,111,100,108,121), 126591885289479, 104946799389637, 0.05, 0.05, 0.05, 0, 0, -0.5, 0.5, 0.9999, -0.0087, -0.0087, 0.0087, 1, 0, 0.0087, -0.0001, 1 },
{string.char(87,97,116,101,114,103,117,110,67,104,114,111,109,97),string.char(87,97,116,101,114,103,117,110),string.char(71),string.char(71,111,100,108,121), 18280999342, 129036269962882, 0.0395, 0.0395, 0.0395, 18351465514, 0, -0.5, 0.5, 0.9999, -0.0087, -0.0087, 0.0087, 1, 0, 0.0087, -0.0001, 1 },
{string.char(65,117,114,111,114,97,71,117,110),string.char(66,111,114,101,97,108,105,115),string.char(71),string.char(71,111,100,108,121), 16070198638, 107873598804292, 0.0469, 0.0469, 0.0469, 108635848059846, 0, -0.5, 0.5, 0.9999, -0.0087, -0.0087, 0.0087, 1, 0, 0.0087, -0.0001, 1 },
{string.char(83,119,105,114,108,121,65,120,101,66,114,111,110,122,101),string.char(66,114,111,110,122,101,32,83,119,105,114,108,121),string.char(75),string.char(85,110,105,113,117,101), 8293463844, 82459482426756, 0.0579, 0.0579, 0.0579, 9552050165, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,119,105,114,108,121,71,117,110,66,108,117,101),string.char(66,108,117,101,32,83,119,105,114,108,121),string.char(71),string.char(85,110,105,113,117,101), 8310911339, 104958144059634, 1, 1, 1, 9552060741, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(70,108,111,119,101,114,119,111,111,100,71,117,110),string.char(70,108,111,119,101,114,119,111,111,100,32,71,117,110),string.char(71),string.char(71,111,100,108,121), 16895099893, 16895448237, 0.0519, 0.0519, 0.0519, 0, 0, -0.5, 0.5, 0.9999, -0.0087, -0.0087, 0.0087, 1, 0, 0.0087, -0.0001, 1 },
{string.char(68,101,99,111,114,97,116,101,100,95,75,95,50,48,50,53),string.char(68,101,99,111,114,97,116,101,100),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 136070215876929, 1, 1, 1, 124860763249593, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(72,97,108,108,111,119,103,117,110),string.char(72,97,108,108,111,119,103,117,110),string.char(71),string.char(71,111,100,108,121), 5841866437, 5841868338, 0.0408, 0.0408, 0.0408, 5877089721, -0.6954, -0.2885, -0.036, -0.0467, 0.056, -0.9973, 0, 0.9984, 0.056, 0.9989, 0.0026, -0.0466 },
{string.char(73,99,101,72,97,109,109,101,114,95,71,111,100,108,121),string.char(73,99,101,99,114,117,115,104,101,114,32,40,71,111,100,108,121,41),string.char(75),string.char(71,111,100,108,121), 11855737283, 11855737599, 0.07, 0.07, 0.07, 11855282546, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(73,99,101,98,101,97,109),string.char(73,99,101,98,101,97,109),string.char(71),string.char(71,111,100,108,121), 8310908064, 8231066536, 1, 1, 1.0002, 8305000161, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,119,105,114,108,121,65,120,101,71,111,108,100),string.char(71,111,108,100,32,83,119,105,114,108,121),string.char(75),string.char(85,110,105,113,117,101), 8293463844, 76537714037540, 0.0579, 0.0579, 0.0579, 9552054920, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(84,117,114,116,108,101,95,75,95,50,48,50,52),string.char(84,117,114,116,108,101),string.char(75),string.char(85,110,99,111,109,109,111,110), 6600901997, 127394910308086, 1, 1, 1, 0, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(74,105,110,103,108,101,103,117,110),string.char(74,105,110,103,108,101,103,117,110),string.char(71),string.char(71,111,100,108,121), 6125843704, 6125843755, 1, 1, 1, 6121678262, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(77,97,107,101,115,104,105,102,116),string.char(77,97,107,101,115,104,105,102,116),string.char(71),string.char(71,111,100,108,121), 11158364935, 11274360089, 0.0546, 0.0546, 0.0546, 11229837140, -0.0028, -0.4133, 0.7372, 0.9999, -0.0087, -0.0087, 0.0087, 1, 0, 0.0087, -0.0001, 1 },
{string.char(67,101,108,101,115,116,105,97,108),string.char(67,101,108,101,115,116,105,97,108),string.char(75),string.char(65,110,99,105,101,110,116), 109711282082830, 117556526686597, 0.0533, 0.0533, 0.0533, 136673966529736, 0, 0.0018, 0.2811, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(80,101,97,114,108,95,71),string.char(80,101,97,114,108,115,104,105,110,101),string.char(71),string.char(71,111,100,108,121), 18280804203, 136668364239627, 0.0431, 0.0431, 0.0431, 0, 0, -0.5, 0.5, 0.9999, -0.0087, -0.0087, 0.0087, 1, 0, 0.0087, -0.0001, 1 },
{string.char(82,97,105,110,98,111,119,95,71),string.char(82,97,105,110,98,111,119,32,71,117,110),string.char(71),string.char(71,111,100,108,121), 12921221200, 12921231088, 0.0519, 0.0519, 0.0519, 12966354606, 0, -0.5, 0.5, 0.9999, -0.0087, -0.0087, 0.0087, 1, 0, 0.0087, -0.0001, 1 },
{string.char(83,112,101,99,116,114,101,50,48,50,50),string.char(83,112,101,99,116,114,101),string.char(71),string.char(71,111,100,108,121), 11165536294, 11165715120, 0.052, 0.052, 0.052, 11229779932, -0.0011, -0.5, 0.6295, 0.9999, -0.0087, -0.0087, 0.0087, 1, 0, 0.0087, -0.0001, 1 },
{string.char(83,116,105,99,107,101,114,115,95,88,95,71,95,50,48,50,52),string.char(83,116,105,99,107,101,114,115,32,50,48,50,52,32,194,183,32,83,116,105,99,107,101,114,115,95,88,95,71,95,50,48,50,52),string.char(71),string.char(67,111,109,109,111,110), 6600918074, 139997450438464, 0.0384, 0.0388, 0.0369, 91224254479440, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,119,105,114,108,121,71,117,110),string.char(83,119,105,114,108,121,32,71,117,110,32,194,183,32,83,119,105,114,108,121,71,117,110),string.char(71),string.char(71,111,100,108,121), 8310911339, 97363489382281, 1, 1, 1, 8305002569, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(86,97,109,112,105,114,101,65,120,101,95,80,117,114,112,108,101),string.char(86,97,109,112,105,114,101,39,115,32,65,120,101,32,194,183,32,86,97,109,112,105,114,101,65,120,101,95,80,117,114,112,108,101),string.char(75),string.char(85,110,105,113,117,101), 92263601594064, 125726996015099, 0.0725, 0.0725, 0.0725, 0, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(86,97,109,112,105,114,101,71,117,110),string.char(86,97,109,112,105,114,101,39,115,32,71,117,110,32,194,183,32,86,97,109,112,105,114,101,71,117,110),string.char(71),string.char(71,111,100,108,121), 126591885289479, 105399657891158, 0.0483, 0.0483, 0.0483, 0, 0, -0.5, 0.5, 0.9999, -0.0087, -0.0087, 0.0087, 1, 0, 0.0087, -0.0001, 1 },
{string.char(87,114,97,105,116,104,71,117,110),string.char(83,111,117,108),string.char(71),string.char(71,111,100,108,121), 79527507796407, 80102752403085, 0.0444, 0.0444, 0.0444, 0, 0, -0.5, 0.5, 0.9999, -0.0087, -0.0087, 0.0087, 1, 0, 0.0087, -0.0001, 1 },
{string.char(73,110,102,101,99,116,101,100),string.char(73,110,102,101,99,116,101,100),string.char(75),string.char(67,111,109,109,111,110), 121944778, 6978645136, 1, 1, 1, 200953094, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(70,111,114,101,115,116,95,71,95,50,48,50,52),string.char(70,111,114,101,115,116),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 114741314080418, 1.6, 1.6, 1.6, 78199422065424, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(80,97,116,114,105,99,107),string.char(80,97,116,114,105,99,107),string.char(75),string.char(67,111,109,109,111,110), 121944778, 7837986943, 1, 1, 1, 383476085, 0, -0.9885, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(68,97,114,116,98,114,105,110,103,101,114),string.char(68,97,114,116,98,114,105,110,103,101,114),string.char(71),string.char(85,110,105,113,117,101), 6689725889, 6689727175, 0.4426, 0.4258, 0.4258, 8626617523, 0.0352, -0.3793, 0.465, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,108,111,117,115,101,67,108,111,119,110),string.char(67,108,111,119,110),string.char(75),string.char(85,110,105,113,117,101), 121944778, 197196512, 1, 1, 1, 315501118, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,97,110,101,95,71,95,50,48,50,49),string.char(67,97,110,101,32,50,48,50,49),string.char(71),string.char(67,111,109,109,111,110), 79401392, 8275031710, 1.5, 1.5, 1.5, 8304768700, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,104,97,114,107,83,101,101,107,101,114),string.char(83,104,97,114,107,83,101,101,107,101,114),string.char(71),string.char(85,110,105,113,117,101), 6967743598, 6689657395, 0.75, 0.75, 0.75, 6967771328, 0.1, -0.1, -0.5, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(73,99,101,98,108,97,115,116,101,114),string.char(73,99,101,98,108,97,115,116,101,114),string.char(71),string.char(71,111,100,108,121), 6125828567, 6120563948, 1, 1, 1, 6121579464, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(84,114,97,118,101,108,101,114,65,120,101),string.char(84,114,97,118,101,108,101,114,39,115,32,65,120,101),string.char(75),string.char(65,110,99,105,101,110,116), 15057341638, 15057460725, 0.0681, 0.0681, 0.0681, 15070870271, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(72,97,108,108,111,119),string.char(72,97,108,108,111,119,39,115,32,69,100,103,101),string.char(75),string.char(71,111,100,108,121), 179155055, 179155105, 0.57, 0.57, 0.57, 531878205, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(82,97,121,103,117,110,83,105,108,118,101,114),string.char(83,105,108,118,101,114,32,82,97,121,103,117,110),string.char(71),string.char(85,110,105,113,117,101), 115447220952926, 133327506424645, 0.0471, 0.0471, 0.0471, 71511736314707, 0.0009, -0.554, 0.7423, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(65,109,101,114,105,99,97,83,119,111,114,100),string.char(79,108,100,32,71,108,111,114,121),string.char(75),string.char(71,111,100,108,121), 262027449, 445805934, 0.6, 0.6, 0.6, 446047742, 0, 0.25, 1.9, 1, 0, 0, 0, 0.0767, 0.9971, 0, -0.9971, 0.0767 },
{string.char(86,97,109,112,105,114,101,65,120,101,95,66,114,111,110,122,101),string.char(86,97,109,112,105,114,101,39,115,32,65,120,101,32,194,183,32,86,97,109,112,105,114,101,65,120,101,95,66,114,111,110,122,101),string.char(75),string.char(85,110,105,113,117,101), 92263601594064, 117917193798694, 0.0725, 0.0725, 0.0725, 0, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(84,114,101,101),string.char(84,114,101,101),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 121944778, 5838589224, 1, 1, 1, 331745577, 0, -1.0285, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(84,114,101,101,95,75,95,50,48,50,51),string.char(84,114,101,101,32,50,48,50,51),string.char(75),string.char(82,97,114,101), 957726558, 121944805, 1, 1, 1, 15635563249, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,110,111,119,121),string.char(83,110,111,119,121),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 5538538671, 1, 1, 1, 332011125, 0, -0.9885, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(69,108,105,116,101,71,114,101,101,110),string.char(71,114,101,101,110,32,69,108,105,116,101),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 121944778, 137946316996767, 1, 1, 1, 332754554, 0, -1.0285, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(65,112,111,99,95,75,95,50,48,50,50),string.char(65,112,111,99,97,108,121,112,115,101),string.char(75),string.char(67,111,109,109,111,110), 121944778, 11218500706, 1, 1, 1, 11254172968, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(65,108,101,120),string.char(65,108,101,120),string.char(75),string.char(67,111,109,109,111,110), 121944778, 545604317, 1, 1, 1, 546159020, 0, -0.9885, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,111,109,98,97,116,50),string.char(67,111,109,98,97,116,32,73,73),string.char(75),string.char(67,111,109,109,111,110), 121944778, 6932358967, 1, 1, 1, 4972196241, 0.0416, -1.1409, 0.0773, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(66,114,111,110,122,101,86,97,109,112,105,114,101,115,69,100,103,101),string.char(66,114,111,110,122,101,32,86,97,109,112,39,115,32,69,100,103,101),string.char(75),string.char(85,110,105,113,117,101), 5841895234, 124129066234254, 0.067, 0.067, 0.067, 12253493272, 0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(66,108,117,101,86,97,109,112,105,114,101,115,69,100,103,101),string.char(66,108,117,101,32,86,97,109,112,39,115,32,69,100,103,101),string.char(75),string.char(85,110,105,113,117,101), 5841895234, 116887066557099, 0.067, 0.067, 0.067, 12253491988, 0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,111,108,100,86,97,109,112,105,114,101,115,69,100,103,101),string.char(71,111,108,100,32,86,97,109,112,39,115,32,69,100,103,101),string.char(75),string.char(85,110,105,113,117,101), 5841895234, 89466623295527, 0.067, 0.067, 0.067, 12253496571, 0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,105,108,118,101,114,86,97,109,112,105,114,101,115,69,100,103,101),string.char(83,105,108,118,101,114,32,86,97,109,112,39,115,32,69,100,103,101),string.char(75),string.char(85,110,105,113,117,101), 5841895234, 93427229045342, 0.067, 0.067, 0.067, 12253494893, 0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(70,108,111,114,97),string.char(70,108,111,114,97),string.char(71),string.char(71,111,100,108,121), 108253816085047, 116621225933096, 0.0457, 0.0457, 0.0457, 139276091458016, 0, -0.5, 0.5, 0.9999, -0.0087, -0.0087, 0.0087, 1, 0, 0.0087, -0.0001, 1 },
{string.char(66,108,111,111,109),string.char(66,108,111,111,109),string.char(75),string.char(71,111,100,108,121), 73266355643345, 103489229144925, 0.079, 0.079, 0.079, 132419834610569, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(66,117,110,110,105,101,115,95,75,95,50,48,50,53),string.char(66,117,110,110,105,101,115),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 121944778, 104875261384354, 1, 1, 1, 90549252812333, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,97,114,114,111,116,115,95,75,95,50,48,50,53),string.char(67,97,114,114,111,116,115),string.char(75),string.char(67,111,109,109,111,110), 121944778, 137285542474252, 1, 1, 1, 76914260444878, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(80,111,116,105,111,110),string.char(80,111,116,105,111,110),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 1782402938, 1, 1, 1, 1133366632, 0, -0.9885, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(82,101,97,118,101,114,95,76,101,103,101,110,100,97,114,121),string.char(82,101,97,118,101,114,32,40,76,101,103,101,110,100,97,114,121,41),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 121944778, 121291446597917, 1, 1, 1, 7791485669, 0, -1.0087, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(73,103,108,111,111,95,71,95,50,48,50,52),string.char(73,103,108,111,111),string.char(71),string.char(67,111,109,109,111,110), 79401392, 73071132008000, 1.6, 1.6, 1.6, 95517099886712, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(82,101,97,118,101,114),string.char(82,101,97,118,101,114,32,40,82,97,114,101,41),string.char(75),string.char(82,97,114,101), 121944778, 118176521118205, 1, 1, 1, 7791484774, 0, -1.0087, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(73,99,101,72,97,109,109,101,114,95,76,101,103,101,110,100,97,114,121),string.char(73,99,101,99,114,117,115,104,101,114,32,40,76,101,103,101,110,100,97,114,121,41),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 957726558, 11851776706, 1, 1, 1, 11855361567, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(73,99,101,98,114,101,97,107,101,114),string.char(73,99,101,98,114,101,97,107,101,114),string.char(75),string.char(65,110,99,105,101,110,116), 6124173614, 6124173821, 0.9685, 0.9685, 0.9685, 6121572723, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(86,97,109,112,105,114,101,65,120,101),string.char(86,97,109,112,105,114,101,39,115,32,65,120,101,32,40,65,110,99,105,101,110,116,41),string.char(75),string.char(65,110,99,105,101,110,116), 92263601594064, 73008954478338, 0.0725, 0.0725, 0.0725, 0, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,119,105,114,108,121,71,117,110,71,111,108,100),string.char(71,111,108,100,32,83,119,105,114,108,121),string.char(71),string.char(85,110,105,113,117,101), 8310911339, 122072784662988, 1, 1, 1, 9552065167, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(77,105,110,116,121),string.char(77,105,110,116,121),string.char(71),string.char(71,111,100,108,121), 4528424409, 4528424475, 1.119, 1.119, 1.119, 4528291487, -0.0211, 0.2222, 0.772, -0.9998, 0, -0.0211, 0.0016, -0.9972, -0.075, -0.021, -0.075, 0.997 },
{string.char(66,108,117,101,72,97,114,118,101,115,116,101,114),string.char(66,108,117,101,32,72,97,114,118,101,115,116,101,114),string.char(71),string.char(85,110,105,113,117,101), 7775027413, 8266618476, 0.06, 0.05, 0.05, 8194219645, 0, -0.54, 0.4558, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(69,108,100,101,114,119,111,111,100,71,117,110),string.char(69,108,100,101,114,119,111,111,100,32,82,101,118,111,108,118,101,114),string.char(71),string.char(71,111,100,108,121), 4210029922, 4210038158, 0.0298, 0.0298, 0.0298, 4468571736, -0.5676, -0.1243, -0.0424, -0.0003, 0.023, -0.9997, -0.0117, 0.9997, 0.023, 0.9999, 0.0117, 0 },
{string.char(67,97,110,100,121),string.char(67,97,110,100,121),string.char(75),string.char(71,111,100,108,121), 19040337, 19040326, 1.1, 1.4, 1.1, 332021011, 0, 0.866, -0.006, 0, 0, 1, 0, -1, 0, 1, 0, 0 },
{string.char(69,108,100,101,114,119,111,111,100,71,117,110,83,105,108,118,101,114),string.char(83,105,108,118,101,114,32,69,108,100,101,114,119,111,111,100),string.char(71),string.char(85,110,105,113,117,101), 4210029922, 5357372620, 0.0407, 0.0456, 0.0406, 4468583758, -0.6706, -0.1995, -0.0658, 0.0161, 0.0001, -0.9999, 0.0208, 0.9998, 0.0005, 0.9997, -0.0208, 0.0161 },
{string.char(69,108,100,101,114,119,111,111,100,75,110,105,102,101,66,108,117,101),string.char(66,108,117,101,32,69,108,100,101,114,119,111,111,100),string.char(75),string.char(85,110,105,113,117,101), 11238166013, 14741388867, 0.07, 0.07, 0.07, 11505913287, 0, -1.347, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,105,108,118,101,114,72,97,108,108,111,119),string.char(83,105,108,118,101,114,32,72,97,108,108,111,119),string.char(75),string.char(85,110,105,113,117,101), 179155055, 104150976879041, 0.5, 0.5, 0.5, 2511341094, 0, -1.3549, 0.0348, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,105,108,118,101,114,73,99,101,98,108,97,115,116,101,114),string.char(83,105,108,118,101,114,32,73,99,101,98,108,97,115,116,101,114),string.char(71),string.char(85,110,105,113,117,101), 6125828567, 6246950589, 1, 1, 1, 6404166698, -0.0085, -0.7, -0.546, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,105,108,118,101,114,73,99,101,98,114,101,97,107,101,114),string.char(83,105,108,118,101,114,32,73,99,101,98,114,101,97,107,101,114),string.char(75),string.char(85,110,105,113,117,101), 6124173614, 6237992602, 1, 1, 1, 6404126280, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,105,108,118,101,114,72,97,114,118,101,115,116,101,114),string.char(83,105,108,118,101,114,32,72,97,114,118,101,115,116,101,114),string.char(71),string.char(85,110,105,113,117,101), 7775027413, 8266615645, 0.06, 0.05, 0.05, 8194217388, 0, -0.51, 0.4458, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(66,108,117,101,83,117,103,97,114),string.char(66,108,117,101,32,83,117,103,97,114),string.char(71),string.char(85,110,105,113,117,101), 101086719, 3241860913, 0.6, 0.6, 0.6, 3215355152, -0.1, 0.5361, 1.0789, -1, 0, 0, 0, -1, 0, 0, 0, 1 },
{string.char(76,111,103,99,104,111,112,112,101,114,83,105,108,118,101,114),string.char(83,105,108,118,101,114,32,76,111,103,99,104,111,112,112,101,114),string.char(75),string.char(85,110,105,113,117,101), 4535643726, 9346155546, 1, 1, 1, 4753352581, -0.0051, -0.7237, 0.328, 0.9962, -0.0316, -0.0816, 0.0342, 0.9989, 0.031, 0.0806, -0.0336, 0.9962 },
{string.char(77,105,110,116,121,83,105,108,118,101,114),string.char(83,105,108,118,101,114,32,77,105,110,116,121),string.char(71),string.char(85,110,105,113,117,101), 5216810177, 4753313914, 1.15, 1.15, 1.15, 4753346087, 0.0545, -0.2787, 0.5806, 0.9959, -0.0334, 0.0839, 0.0337, 0.9994, -0.0026, -0.0838, 0.0054, 0.9965 },
{string.char(83,105,108,118,101,114,67,97,110,100,121),string.char(83,105,108,118,101,114,32,67,97,110,100,121),string.char(75),string.char(85,110,105,113,117,101), 19040337, 97784569465604, 1, 1.3333, 1, 1520190188, 0, 0.866, -0.006, 0, 0, 1, 0, -1, 0, 1, 0, 0 },
{string.char(69,108,100,101,114,119,111,111,100,71,117,110,66,108,117,101),string.char(66,108,117,101,32,69,108,100,101,114,119,111,111,100),string.char(71),string.char(85,110,105,113,117,101), 4210029922, 5827160585, 0.0407, 0.0456, 0.0406, 4468574885, -0.6706, -0.1995, -0.0658, 0.0161, 0.0001, -0.9999, 0.0208, 0.9998, 0.0005, 0.9997, -0.0208, 0.0161 },
{string.char(69,108,100,101,114,119,111,111,100,71,117,110,66,114,111,110,122,101),string.char(66,114,111,110,122,101,32,69,108,100,101,114,119,111,111,100),string.char(71),string.char(85,110,105,113,117,101), 4210029922, 5355144249, 0.0407, 0.0456, 0.0406, 4468585407, -0.6706, -0.1995, -0.0658, 0.0161, 0.0001, -0.9999, 0.0208, 0.9998, 0.0005, 0.9997, -0.0208, 0.0161 },
{string.char(69,108,100,101,114,119,111,111,100,71,117,110,71,111,108,100),string.char(71,111,108,100,32,69,108,100,101,114,119,111,111,100),string.char(71),string.char(85,110,105,113,117,101), 4210029922, 126940459873407, 0.0407, 0.0456, 0.0406, 4468584345, -0.6706, -0.1995, -0.0658, 0.0161, 0.0001, -0.9999, 0.0208, 0.9998, 0.0005, 0.9997, -0.0208, 0.0161 },
{string.char(69,108,100,101,114,119,111,111,100,75,110,105,102,101,66,114,111,110,122,101),string.char(66,114,111,110,122,101,32,69,108,100,101,114,119,111,111,100),string.char(75),string.char(85,110,105,113,117,101), 11238166013, 14741383535, 0.07, 0.07, 0.07, 11505914752, 0, -1.347, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(69,108,100,101,114,119,111,111,100,75,110,105,102,101,71,111,108,100),string.char(71,111,108,100,32,69,108,100,101,114,119,111,111,100),string.char(75),string.char(85,110,105,113,117,101), 11238166013, 14741358103, 0.07, 0.07, 0.07, 11505917850, 0, -1.347, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(69,108,100,101,114,119,111,111,100,75,110,105,102,101,83,105,108,118,101,114),string.char(83,105,108,118,101,114,32,69,108,100,101,114,119,111,111,100),string.char(75),string.char(85,110,105,113,117,101), 11238166013, 14741374486, 0.07, 0.07, 0.07, 11505916486, 0, -1.3468, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(66,114,111,110,122,101,72,97,108,108,111,119),string.char(66,114,111,110,122,101,32,72,97,108,108,111,119),string.char(75),string.char(85,110,105,113,117,101), 179155055, 2518167440, 0.5, 0.5, 0.5, 2511342846, 0, -1.3549, 0.0348, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,111,108,100,72,97,108,108,111,119),string.char(71,111,108,100,32,72,97,108,108,111,119),string.char(75),string.char(85,110,105,113,117,101), 179155055, 110453608575133, 0.5, 0.5, 0.5, 2511340308, 0, -1.3549, 0.0348, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(82,101,100,72,97,108,108,111,119),string.char(82,101,100,32,72,97,108,108,111,119),string.char(75),string.char(85,110,105,113,117,101), 179155055, 73958132414440, 0.5, 0.5, 0.5, 2511343130, 0, -1.3549, 0.0348, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(82,97,121,103,117,110,66,114,111,110,122,101),string.char(66,114,111,110,122,101,32,82,97,121,103,117,110),string.char(71),string.char(85,110,105,113,117,101), 115447220952926, 122251377901095, 0.0471, 0.0471, 0.0471, 138881346504998, 0.0009, -0.554, 0.7423, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(82,97,121,103,117,110,82,101,100),string.char(82,101,100,32,82,97,121,103,117,110),string.char(71),string.char(85,110,105,113,117,101), 115447220952926, 104160895526874, 0.0471, 0.0471, 0.0471, 132354489228618, 0.0009, -0.554, 0.7423, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(66,114,111,110,122,101,73,99,101,98,108,97,115,116,101,114),string.char(66,114,111,110,122,101,32,73,99,101,98,108,97,115,116,101,114),string.char(71),string.char(85,110,105,113,117,101), 6125828567, 6246948951, 1, 1, 1, 6404167442, -0.0085, -0.7, -0.546, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(71,111,108,100,73,99,101,98,108,97,115,116,101,114),string.char(71,111,108,100,32,73,99,101,98,108,97,115,116,101,114),string.char(71),string.char(85,110,105,113,117,101), 6125828567, 6246949956, 1, 1, 1, 6404165933, -0.0085, -0.7, -0.546, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(82,101,100,73,99,101,98,108,97,115,116,101,114),string.char(82,101,100,32,73,99,101,98,108,97,115,116,101,114),string.char(71),string.char(85,110,105,113,117,101), 6125828567, 6246951385, 1, 1, 1, 6404168049, -0.0085, -0.7, -0.546, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(66,114,111,110,122,101,73,99,101,98,114,101,97,107,101,114),string.char(66,114,111,110,122,101,32,73,99,101,98,114,101,97,107,101,114),string.char(75),string.char(85,110,105,113,117,101), 6124173614, 6237991982, 1, 1, 1, 6404127119, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,111,108,100,73,99,101,98,114,101,97,107,101,114),string.char(71,111,108,100,32,73,99,101,98,114,101,97,107,101,114),string.char(75),string.char(85,110,105,113,117,101), 6124173614, 6237993632, 1, 1, 1, 6404115112, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(82,101,100,73,99,101,98,114,101,97,107,101,114),string.char(82,101,100,32,73,99,101,98,114,101,97,107,101,114),string.char(75),string.char(85,110,105,113,117,101), 6124173614, 6237994207, 1, 1, 1, 6404129111, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(66,114,111,110,122,101,72,97,114,118,101,115,116,101,114),string.char(66,114,111,110,122,101,32,72,97,114,118,101,115,116,101,114),string.char(71),string.char(85,110,105,113,117,101), 7775027413, 8266617019, 0.06, 0.05, 0.05, 8194221072, 0, -0.52, 0.4158, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,111,108,100,72,97,114,118,101,115,116,101,114),string.char(71,111,108,100,32,72,97,114,118,101,115,116,101,114),string.char(71),string.char(85,110,105,113,117,101), 7775027413, 8266613473, 0.06, 0.05, 0.05, 8194222523, 0, -0.52, 0.4258, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(72,97,114,118,101,115,116,101,114),string.char(72,97,114,118,101,115,116,101,114),string.char(71),string.char(65,110,99,105,101,110,116), 7775027413, 7775245551, 0.06, 0.05, 0.05, 7800847534, 0, -0.5366, 0.4983, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,105,108,118,101,114,83,117,103,97,114),string.char(83,105,108,118,101,114,32,83,117,103,97,114),string.char(71),string.char(85,110,105,113,117,101), 101086719, 80417567706028, 0.6, 0.6, 0.6, 3215355602, -0.1, 0.5361, 1.0789, -1, 0, 0, 0, -1, 0, 0, 0, 1 },
{string.char(71,111,108,100,83,117,103,97,114),string.char(71,111,108,100,32,83,117,103,97,114),string.char(71),string.char(85,110,105,113,117,101), 101086719, 77907977694388, 0.6, 0.6, 0.6, 3215355797, -0.1, 0.5361, 1.0789, -1, 0, 0, 0, -1, 0, 0, 0, 1 },
{string.char(66,114,111,110,122,101,83,117,103,97,114),string.char(66,114,111,110,122,101,32,83,117,103,97,114),string.char(71),string.char(85,110,105,113,117,101), 101086719, 6958436959, 0.6, 0.6, 0.6, 3215355397, -0.1, 0.5361, 1.0789, -1, 0, 0, 0, -1, 0, 0, 0, 1 },
{string.char(76,111,103,99,104,111,112,112,101,114,66,108,117,101),string.char(66,108,117,101,32,76,111,103,99,104,111,112,112,101,114),string.char(75),string.char(85,110,105,113,117,101), 4535643726, 4753303501, 1, 1, 1, 4753353471, 0, -0.9536, 0.3372, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(76,111,103,99,104,111,112,112,101,114,66,114,111,110,122,101),string.char(66,114,111,110,122,101,32,76,111,103,99,104,111,112,112,101,114),string.char(75),string.char(85,110,105,113,117,101), 4535643726, 7572081485, 0.96, 0.96, 0.96, 4753354123, 0, -0.9536, 0.3372, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(76,111,103,99,104,111,112,112,101,114,71,111,108,100),string.char(71,111,108,100,32,76,111,103,99,104,111,112,112,101,114),string.char(75),string.char(85,110,105,113,117,101), 4535643726, 108331174915822, 0.96, 0.96, 0.96, 4753354638, 0, -0.9536, 0.3372, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(77,105,110,116,121,66,114,111,110,122,101),string.char(66,114,111,110,122,101,32,77,105,110,116,121),string.char(71),string.char(85,110,105,113,117,101), 5216810177, 5211061190, 1.15, 1.15, 1.15, 4753348263, 0.0545, -0.2787, 0.5806, 0.9959, -0.0334, 0.0839, 0.0337, 0.9994, -0.0026, -0.0838, 0.0054, 0.9965 },
{string.char(66,108,117,101,67,97,110,100,121),string.char(66,108,117,101,32,67,97,110,100,121),string.char(75),string.char(85,110,105,113,117,101), 19040337, 3241832047, 1, 1.3333, 1, 1489495701, 0, 0.866, -0.006, 0, 0, 1, 0, -1, 0, 1, 0, 0 },
{string.char(66,114,111,110,122,101,67,97,110,100,121),string.char(66,114,111,110,122,101,32,67,97,110,100,121),string.char(75),string.char(85,110,105,113,117,101), 19040337, 122687610829006, 1, 1.3333, 1, 1520189487, 0, 0.866, -0.006, 0, 0, 1, 0, -1, 0, 1, 0, 0 },
{string.char(71,111,108,100,67,97,110,100,121),string.char(71,111,108,100,32,67,97,110,100,121),string.char(75),string.char(85,110,105,113,117,101), 19040337, 2885942815, 1, 1.3333, 1, 1520188792, 0, 0.866, -0.006, 0, 0, 1, 0, -1, 0, 1, 0, 0 },
{string.char(67,101,108,101,115,116,105,97,108,95,83,105,108,118,101,114),string.char(83,105,108,118,101,114,32,67,101,108,101,115,116,105,97,108),string.char(75),string.char(85,110,105,113,117,101), 109711282082830, 119629165572031, 0.0533, 0.0533, 0.0533, 90241292303974, 0, 0.002, 0.281, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,111,110,115,116,101,108,108,97,116,105,111,110,95,83,105,108,118,101,114),string.char(83,105,108,118,101,114,32,67,111,110,115,116,101,108,108,97,116,105,111,110),string.char(71),string.char(85,110,105,113,117,101), 124598402927958, 88000474566609, 0.1007, 0.1007, 0.1007, 100747436297625, 0, -0.27, 0.727, 1, 0, 0, 0, 0.9999, 0.0125, 0, -0.0125, 0.9999 },
{string.char(73,99,101,112,105,101,114,99,101,114,82,101,100),string.char(82,101,100,32,73,99,101,112,105,101,114,99,101,114),string.char(71),string.char(85,110,105,113,117,101), 11868991644, 12196203001, 0.0548, 0.0548, 0.0548, 12227133450, 0, -0.66, 0.234, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,105,110,103,101,114,115,99,121,116,104,101,95,66,108,117,101),string.char(66,108,117,101,32,71,105,110,103,101,114,115,99,121,116,104,101),string.char(75),string.char(85,110,105,113,117,101), 15397282571, 125204450826311, 0.0696, 0.0696, 0.0697, 0, 0, -0.94, -0.063, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(84,114,97,118,101,108,101,114,65,120,101,83,105,108,118,101,114),string.char(83,105,108,118,101,114,32,84,114,97,118,101,108,101,114,39,115),string.char(75),string.char(85,110,105,113,117,101), 15057341638, 125312600693078, 0.0681, 0.0681, 0.0681, 15695407742, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(86,97,109,112,105,114,101,65,120,101,95,83,105,108,118,101,114),string.char(86,97,109,112,105,114,101,39,115,32,65,120,101,32,194,183,32,86,97,109,112,105,114,101,65,120,101,95,83,105,108,118,101,114),string.char(75),string.char(85,110,105,113,117,101), 92263601594064, 78665201678229, 0.0725, 0.0725, 0.0725, 0, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,101,108,101,115,116,105,97,108,95,66,114,111,110,122,101),string.char(66,114,111,110,122,101,32,67,101,108,101,115,116,105,97,108),string.char(75),string.char(85,110,105,113,117,101), 109711282082830, 118098317574486, 0.0533, 0.0533, 0.0533, 119399643874968, 0, 0.002, 0.281, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,101,108,101,115,116,105,97,108,95,71,111,108,100),string.char(71,111,108,100,32,67,101,108,101,115,116,105,97,108),string.char(75),string.char(85,110,105,113,117,101), 109711282082830, 74186573010586, 0.0533, 0.0533, 0.0533, 104229967982042, 0, 0.002, 0.281, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,101,108,101,115,116,105,97,108,95,82,101,100),string.char(82,101,100,32,67,101,108,101,115,116,105,97,108),string.char(75),string.char(85,110,105,113,117,101), 109711282082830, 91261836086535, 0.0533, 0.0533, 0.0533, 119157529694972, 0, 0.002, 0.281, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,111,110,115,116,101,108,108,97,116,105,111,110,95,66,114,111,110,122,101),string.char(66,114,111,110,122,101,32,67,111,110,115,116,101,108,108,97,116,105,111,110),string.char(71),string.char(85,110,105,113,117,101), 124598402927958, 84518828644661, 0.1007, 0.1007, 0.1007, 112811587103866, 0, -0.27, 0.727, 1, 0, 0, 0, 0.9999, 0.0125, 0, -0.0125, 0.9999 },
{string.char(67,111,110,115,116,101,108,108,97,116,105,111,110,95,71,111,108,100),string.char(71,111,108,100,32,67,111,110,115,116,101,108,108,97,116,105,111,110),string.char(71),string.char(85,110,105,113,117,101), 124598402927958, 129541547610095, 0.1007, 0.1007, 0.1007, 132975248521820, 0, -0.27, 0.727, 1, 0, 0, 0, 0.9999, 0.0125, 0, -0.0125, 0.9999 },
{string.char(67,111,110,115,116,101,108,108,97,116,105,111,110,95,82,101,100),string.char(82,101,100,32,67,111,110,115,116,101,108,108,97,116,105,111,110),string.char(71),string.char(85,110,105,113,117,101), 124598402927958, 97613309386908, 0.1007, 0.1007, 0.1007, 85766514163212, 0, -0.27, 0.727, 1, 0, 0, 0, 0.9999, 0.0125, 0, -0.0125, 0.9999 },
{string.char(73,99,101,112,105,101,114,99,101,114),string.char(73,99,101,112,105,101,114,99,101,114),string.char(71),string.char(65,110,99,105,101,110,116), 11868991644, 11869075814, 0.0548, 0.0548, 0.0548, 11874071041, 0, -0.5819, 0.0324, 1, 0, 0, 0, 0.9978, -0.0658, 0, 0.0658, 0.9978 },
{string.char(73,99,101,112,105,101,114,99,101,114,66,114,111,110,122,101),string.char(66,114,111,110,122,101,32,73,99,101,112,105,101,114,99,101,114),string.char(71),string.char(85,110,105,113,117,101), 11868991644, 136041212037383, 0.0548, 0.0548, 0.0548, 12226920195, 0, -0.66, 0.234, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(73,99,101,112,105,101,114,99,101,114,71,111,108,100),string.char(71,111,108,100,32,73,99,101,112,105,101,114,99,101,114),string.char(71),string.char(85,110,105,113,117,101), 11868991644, 89221956008018, 0.0548, 0.0548, 0.0548, 12226688172, 0, -0.66, 0.234, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(73,99,101,72,97,109,109,101,114,71,111,108,100),string.char(71,111,108,100,32,73,99,101,99,114,117,115,104,101,114),string.char(75),string.char(85,110,105,113,117,101), 11848711686, 132842079563749, 0.0736, 0.0736, 0.0736, 12227137860, 0, -0.8, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,105,110,103,101,114,115,99,121,116,104,101,95,66,114,111,110,122,101),string.char(66,114,111,110,122,101,32,71,105,110,103,101,114,115,99,121,116,104,101),string.char(75),string.char(85,110,105,113,117,101), 15397282571, 88640690300238, 0.0696, 0.0696, 0.0697, 0, 0, -0.94, -0.063, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(73,99,101,72,97,109,109,101,114,66,114,111,110,122,101),string.char(66,114,111,110,122,101,32,73,99,101,99,114,117,115,104,101,114),string.char(75),string.char(85,110,105,113,117,101), 11848711686, 88591542566831, 0.0736, 0.0736, 0.0736, 12227148356, 0, -0.8, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(84,114,97,118,101,108,101,114,65,120,101,66,114,111,110,122,101),string.char(66,114,111,110,122,101,32,84,114,97,118,101,108,101,114,39,115),string.char(75),string.char(85,110,105,113,117,101), 15057341638, 87152090639814, 0.0681, 0.0681, 0.0681, 15695407020, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(84,114,97,118,101,108,101,114,65,120,101,71,111,108,100),string.char(71,111,108,100,32,84,114,97,118,101,108,101,114,39,115),string.char(75),string.char(85,110,105,113,117,101), 15057341638, 107837737026552, 0.0681, 0.0681, 0.0681, 15695408631, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(84,114,101,101,71,117,110,50,48,50,51),string.char(69,118,101,114,103,117,110),string.char(71),string.char(71,111,100,108,121), 15408863676, 83856783954564, 0.023, 0.023, 0.023, 15694357721, 0.0363, -0.4269, 0.9423, 0.9995, 0, 0.0305, 0, 1, 0, -0.0305, 0, 0.9995 },
{string.char(84,114,101,101,75,110,105,102,101,50,48,50,51),string.char(69,118,101,114,103,114,101,101,110),string.char(75),string.char(71,111,100,108,121), 15408280573, 125133515152716, 0.0046, 0.0046, 0.0046, 15694357137, 0.0502, -1.7515, -0.0305, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,105,110,103,101,114,115,99,111,112,101),string.char(71,105,110,103,101,114,115,99,111,112,101),string.char(71),string.char(65,110,99,105,101,110,116), 15374602183, 15409041564, 0.0842, 0.0842, 0.0842, 15666596216, 0, -0.4, 0.9, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,105,110,103,101,114,115,99,111,112,101,95,66,108,117,101),string.char(66,108,117,101,32,71,105,110,103,101,114,115,99,111,112,101),string.char(71),string.char(85,110,105,113,117,101), 15374602183, 100142423147247, 0.0842, 0.0842, 0.0842, 0, 0, -0.42, 0.97, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,105,110,103,101,114,115,99,111,112,101,95,66,114,111,110,122,101),string.char(66,114,111,110,122,101,32,71,105,110,103,101,114,115,99,111,112,101),string.char(71),string.char(85,110,105,113,117,101), 15374602183, 93684911189915, 0.0842, 0.0842, 0.0842, 0, 0, -0.42, 0.97, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,105,110,103,101,114,115,99,111,112,101,95,71,111,108,100),string.char(71,111,108,100,32,71,105,110,103,101,114,115,99,111,112,101),string.char(71),string.char(85,110,105,113,117,101), 15374602183, 75888854860786, 0.0842, 0.0842, 0.0842, 0, 0, -0.42, 0.97, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,105,110,103,101,114,115,99,111,112,101,95,83,105,108,118,101,114),string.char(83,105,108,118,101,114,32,71,105,110,103,101,114,115,99,111,112,101),string.char(71),string.char(85,110,105,113,117,101), 15374602183, 129527194826480, 0.0842, 0.0842, 0.0842, 0, 0, -0.42, 0.97, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,117,110,115,101,116,71,117,110),string.char(83,117,110,114,105,115,101),string.char(71),string.char(71,111,100,108,121), 109742397574153, 71731808219690, 0.0458, 0.0458, 0.0458, 129480661108374, 0, -0.1086, 0.6442, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,117,110,115,101,116,75,110,105,102,101),string.char(83,117,110,115,101,116),string.char(75),string.char(71,111,100,108,121), 137082284051764, 93782017269677, 0.074, 0.074, 0.074, 103526268515240, 0, -1.3352, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,121,110,116,104,119,97,118,101),string.char(83,121,110,116,104,119,97,118,101,32,40,82,97,114,101,41),string.char(75),string.char(82,97,114,101), 6600901997, 139525295603551, 1, 1, 1, 84935740002917, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,121,110,116,104,119,97,118,101,95,65,110,99,105,101,110,116),string.char(83,121,110,116,104,119,97,118,101,32,40,65,110,99,105,101,110,116,41),string.char(75),string.char(65,110,99,105,101,110,116), 81344146777937, 84281380230931, 0.0741, 0.0741, 0.0741, 133828016595037, 0.0228, -0.64, 0.2496, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,121,110,116,104,119,97,118,101,95,71,111,100,108,121),string.char(83,121,110,116,104,119,97,118,101,32,40,71,111,100,108,121,41),string.char(75),string.char(71,111,100,108,121), 132672824913652, 81048398253986, 0.0741, 0.0741, 0.0741, 116075729415230, -0.0142, -1.06, 0.0292, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,121,110,116,104,119,97,118,101,95,76,101,103,101,110,100,97,114,121),string.char(83,121,110,116,104,119,97,118,101,32,40,76,101,103,101,110,100,97,114,121,41),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 6600901997, 115419740311345, 1, 1, 1, 132040985617451, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(73,99,101,72,97,109,109,101,114,82,101,100),string.char(82,101,100,32,73,99,101,99,114,117,115,104,101,114),string.char(75),string.char(85,110,105,113,117,101), 11848711686, 71714696554176, 0.0736, 0.0736, 0.0736, 12227186408, 0, -0.8, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(73,99,101,72,97,109,109,101,114,83,105,108,118,101,114),string.char(83,105,108,118,101,114,32,73,99,101,99,114,117,115,104,101,114),string.char(75),string.char(85,110,105,113,117,101), 11848711686, 108890976731643, 0.0736, 0.0736, 0.0736, 12227142478, 0, -0.8, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,105,110,103,101,114,115,99,121,116,104,101,95,71,111,108,100),string.char(71,111,108,100,32,71,105,110,103,101,114,115,99,121,116,104,101),string.char(75),string.char(85,110,105,113,117,101), 15397282571, 87952488946515, 0.0696, 0.0696, 0.0697, 0, 0, -1.1001, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,105,110,103,101,114,115,99,121,116,104,101,95,83,105,108,118,101,114),string.char(83,105,108,118,101,114,32,71,105,110,103,101,114,115,99,121,116,104,101),string.char(75),string.char(85,110,105,113,117,101), 15397282571, 110584978259893, 0.0696, 0.0696, 0.0697, 0, 0, -1.1001, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(82,97,121,103,117,110),string.char(82,97,121,103,117,110),string.char(71),string.char(71,111,100,108,121), 115447220952926, 127881437685243, 0.0471, 0.0471, 0.0471, 139431943195380, 0.0009, -0.554, 0.7423, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(85,70,79,115,95,75,95,50,48,50,53),string.char(85,70,79,115),string.char(75),string.char(67,111,109,109,111,110), 6600901997, 101182606016909, 1, 1, 1, 97641024072972, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(88,101,110,111,95,75,95,50,48,50,53),string.char(88,101,110,111),string.char(75),string.char(82,97,114,101), 6600901997, 101379516858862, 1, 1, 1, 80492487454400, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(72,97,117,110,116,101,100,72,111,117,115,101,95,75,95,50,48,50,53),string.char(72,97,117,110,116,101,100,32,50,48,50,53),string.char(75),string.char(67,111,109,109,111,110), 6600901997, 96264372471629, 1, 1, 1, 90194465176219, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(80,117,109,112,107,105,110,80,97,116,99,104,95,75,95,50,48,50,53),string.char(80,117,109,112,107,105,110,32,50,48,50,53),string.char(75),string.char(85,110,99,111,109,109,111,110), 6600901997, 92052630861897, 1, 1, 1, 119626042140839, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(66,97,116,115,95,75,95,50,48,50,53),string.char(67,97,116,115),string.char(75),string.char(67,111,109,109,111,110), 6600901997, 116130292497156, 1, 1, 1, 140366567839959, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(69,110,101,114,103,105,122,101,100,95,71,95,50,48,50,53),string.char(69,110,101,114,103,105,122,101,100),string.char(71),string.char(76,101,103,101,110,100,97,114,121), 79401392, 96975375477860, 1.6, 1.6, 1.6, 114403390530326, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(72,111,108,111,103,114,97,109,95,71,95,50,48,50,53),string.char(72,111,108,111,103,114,97,109),string.char(71),string.char(82,97,114,101), 79401392, 130121703557220, 1.6, 1.6, 1.6, 108751717527377, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(84,114,101,97,116,115,95,71,95,50,48,50,53),string.char(84,114,101,97,116,115),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 121735248301175, 1.6, 1.6, 1.6, 76537883908961, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(67,97,110,100,121,67,111,114,110,95,71,95,50,48,50,53),string.char(67,97,110,100,121,32,67,111,114,110,32,50,48,50,53),string.char(71),string.char(67,111,109,109,111,110), 79401392, 88054952272755, 1.6, 1.6, 1.6, 129781304866793, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(69,121,101,115,95,71,95,50,48,50,53),string.char(69,121,101,115),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 81682248459741, 1.6, 1.6, 1.6, 90751163516480, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(65,98,100,117,99,116,105,111,110,95,75,95,50,48,50,53),string.char(65,98,100,117,99,116,105,111,110),string.char(75),string.char(85,110,99,111,109,109,111,110), 6600901997, 125213231050513, 1, 1, 1, 107510647616718, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(84,114,101,97,116,115,95,75,95,50,48,50,53),string.char(84,114,101,97,116,115),string.char(75),string.char(85,110,99,111,109,109,111,110), 6600901997, 117148660034316, 1, 1, 1, 115298865715727, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,116,105,99,107,101,114,115,72,95,75,95,50,48,50,53),string.char(83,116,105,99,107,101,114,115,32,50,48,50,53,32,194,183,32,83,116,105,99,107,101,114,115,72,95,75,95,50,48,50,53),string.char(75),string.char(67,111,109,109,111,110), 6600901997, 91672438499477, 1, 1, 1, 100461386281007, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,97,110,100,121,67,111,114,110,95,75,95,50,48,50,53),string.char(67,97,110,100,121,32,67,111,114,110,32,50,48,50,53),string.char(75),string.char(67,111,109,109,111,110), 6600901997, 84607607123689, 1, 1, 1, 86405207895194, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(72,111,108,111,103,114,97,109,95,75,95,50,48,50,53),string.char(72,111,108,111,103,114,97,109),string.char(75),string.char(82,97,114,101), 6600901997, 139678078674313, 1, 1, 1, 77773918675860, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(69,110,101,114,103,105,122,101,100,95,75,95,50,48,50,53),string.char(69,110,101,114,103,105,122,101,100),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 6600901997, 104379655242590, 1, 1, 1, 86258299490709, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(85,70,79,115,95,71,95,50,48,50,53),string.char(85,70,79,115),string.char(71),string.char(67,111,109,109,111,110), 79401392, 81729797666928, 1.6, 1.6, 1.6, 84030107970606, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(70,97,108,108,95,71,95,50,48,50,53),string.char(70,97,108,108),string.char(71),string.char(67,111,109,109,111,110), 79401392, 72560612536240, 1.6, 1.6, 1.6, 78153346812503, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(88,101,110,111,95,71,95,50,48,50,53),string.char(88,101,110,111),string.char(71),string.char(82,97,114,101), 79401392, 88277879999522, 1.6, 1.6, 1.6, 139755862211442, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(72,101,97,114,116,87,97,110,100),string.char(72,101,97,114,116,32,87,97,110,100,32,194,183,32,72,101,97,114,116,87,97,110,100),string.char(75),string.char(71,111,100,108,121), 77738838473091, 76246633927299, 0.0782, 0.0782, 0.0782, 118334707962654, 0, -0.8, 0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(82,97,121,103,117,110,71,111,108,100),string.char(71,111,108,100,32,82,97,121,103,117,110),string.char(71),string.char(85,110,105,113,117,101), 115447220952926, 128241054560504, 0.0471, 0.0471, 0.0471, 76250851065456, 0.0009, -0.554, 0.7423, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(84,114,101,97,116),string.char(84,114,101,97,116),string.char(71),string.char(71,111,100,108,121), 135790480817772, 86649236464456, 0.0538, 0.0538, 0.0538, 131626924640663, 0, 0, 0.6, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(88,101,110,111,71,117,110),string.char(88,101,110,111,115,104,111,116),string.char(71),string.char(71,111,100,108,121), 96867436912658, 103568875118220, 0.0534, 0.0534, 0.0534, 96859273002742, 0.0253, -0.0153, 0.8973, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(88,101,110,111,75,110,105,102,101),string.char(88,101,110,111,107,110,105,102,101),string.char(75),string.char(71,111,100,108,121), 136619680236977, 113651973865393, 0.0784, 0.0784, 0.0784, 115021756767182, 0, -1.2953, 0.0848, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,116,105,99,107,101,114,115,84,50,48,50,53),string.char(83,116,105,99,107,101,114,115,32,50,48,50,53,32,194,183,32,83,116,105,99,107,101,114,115,84,50,48,50,53),string.char(75),string.char(67,111,109,109,111,110), 6600901997, 113144896198208, 1, 1, 1, 115280072896190, -0.0224, -1.0551, 0.0453, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(66,97,117,98,108,101,75,110,105,102,101),string.char(79,114,110,97,109,101,110,116,32,40,71,111,100,108,121,41),string.char(75),string.char(71,111,100,108,121), 116508096109443, 135843404105980, 0.0731, 0.0731, 0.0731, 111092946728824, 0, -1.15, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(66,108,105,122,122,97,114,100),string.char(66,108,105,122,122,97,114,100,32,194,183,32,66,108,105,122,122,97,114,100),string.char(71),string.char(71,111,100,108,121), 77235373292363, 131115493735176, 0.043, 0.043, 0.043, 88928894807422, 0, -0.57, 0.75, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(66,108,105,122,122,97,114,100,67,104,114,111,109,97),string.char(66,108,105,122,122,97,114,100,32,194,183,32,66,108,105,122,122,97,114,100,67,104,114,111,109,97),string.char(71),string.char(71,111,100,108,121), 77235373292363, 97280881789656, 0.0433, 0.0433, 0.0433, 139495852635932, 0, -0.32, 0.34, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(70,114,111,122,101,110,95,71,95,50,48,50,53),string.char(70,114,111,122,101,110,32,50,48,50,53),string.char(71),string.char(76,101,103,101,110,100,97,114,121), 79401392, 87079980851460, 1.5, 1.5, 1.5, 90622014285727, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(70,114,111,122,101,110,95,75,95,50,48,50,53),string.char(70,114,111,122,101,110,32,50,48,50,53),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 6600901997, 103391577880162, 1, 1, 1, 108996627787763, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,105,110,103,101,114,98,114,101,97,100,95,71,95,50,48,50,53),string.char(71,105,110,103,101,114,98,114,101,97,100,32,50,48,50,53),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 77398327971959, 1.5, 1.5, 1.5, 74908113882525, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(71,105,110,103,101,114,98,114,101,97,100,95,75,95,50,48,50,53),string.char(71,105,110,103,101,114,98,114,101,97,100,32,50,48,50,53),string.char(75),string.char(85,110,99,111,109,109,111,110), 6600901997, 86777384953188, 1, 1, 1, 134478959354477, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(71,105,110,103,101,114,99,111,111,107,105,101,95,71,95,50,48,50,53),string.char(71,105,110,103,101,114,99,111,111,107,105,101),string.char(71),string.char(82,97,114,101), 79401392, 112196863510306, 1.5, 1.5, 1.5, 99160839686845, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(71,105,110,103,101,114,99,111,111,107,105,101,95,75,95,50,48,50,53),string.char(71,105,110,103,101,114,99,111,111,107,105,101),string.char(75),string.char(82,97,114,101), 6600901997, 77551638357810, 1, 1, 1, 111408683823094, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(76,105,103,104,116,115,95,71,95,50,48,50,53),string.char(76,105,103,104,116,115,32,50,48,50,53),string.char(71),string.char(67,111,109,109,111,110), 79401392, 80557940854587, 1.5, 1.5, 1.5, 104258636970738, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(76,105,103,104,116,115,95,75,95,50,48,50,53),string.char(76,105,103,104,116,115,32,50,48,50,53),string.char(75),string.char(67,111,109,109,111,110), 6600901997, 71217678785248, 1, 1, 1, 71228862432065, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(79,114,110,97,109,101,110,116,115,95,75,95,50,48,50,53),string.char(79,114,110,97,109,101,110,116,115,32,50,48,50,53),string.char(75),string.char(85,110,99,111,109,109,111,110), 6600901997, 128273296066714, 1, 1, 1, 132504094164819, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(80,101,112,112,101,114,109,105,110,116,95,71,95,50,48,50,53),string.char(80,101,112,112,101,114,109,105,110,116),string.char(71),string.char(67,111,109,109,111,110), 79401392, 107986046289088, 1.5, 1.5, 1.5, 73148873488539, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(80,101,112,112,101,114,109,105,110,116,95,75,95,50,48,50,53),string.char(80,101,112,112,101,114,109,105,110,116,32,50,48,50,53),string.char(75),string.char(67,111,109,109,111,110), 6600901997, 120181028268113, 1, 1, 1, 84605926178412, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,110,111,119,68,97,103,103,101,114),string.char(83,110,111,119,32,68,97,103,103,101,114),string.char(75),string.char(71,111,100,108,121), 140633396635861, 77812964601215, 0.0598, 0.0598, 0.0598, 95328449981238, 0, -1.15, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,110,111,119,98,97,108,108,95,71,95,50,48,50,53),string.char(83,110,111,119,98,97,108,108),string.char(71),string.char(67,111,109,109,111,110), 79401392, 81738515769034, 1.5, 1.5, 1.5, 104416405402940, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,110,111,119,99,97,110,110,111,110),string.char(83,110,111,119,99,97,110,110,111,110),string.char(71),string.char(71,111,100,108,121), 99836890880541, 122392330922281, 0.05, 0.05, 0.05, 129186939023729, 0, -0.32, 0.34, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,110,111,119,115,116,111,114,109),string.char(83,110,111,119,115,116,111,114,109,32,194,183,32,83,110,111,119,115,116,111,114,109),string.char(75),string.char(71,111,100,108,121), 127534150487935, 84853425379784, 0.077, 0.077, 0.077, 70973050894155, 0, -1.26, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,110,111,119,115,116,111,114,109,67,104,114,111,109,97),string.char(83,110,111,119,115,116,111,114,109,32,194,183,32,83,110,111,119,115,116,111,114,109,67,104,114,111,109,97),string.char(75),string.char(71,111,100,108,121), 86944837615327, 86253759560362, 0.077, 0.077, 0.077, 94202294092932, 0, -1.18, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,112,101,97,114,109,105,110,116,95,71,95,50,48,50,53),string.char(83,112,101,97,114,109,105,110,116),string.char(71),string.char(82,97,114,101), 79401392, 125101257679057, 1.5, 1.5, 1.5, 81352860339620, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,112,101,97,114,109,105,110,116,95,75,95,50,48,50,53),string.char(83,112,101,97,114,109,105,110,116),string.char(75),string.char(82,97,114,101), 6600901997, 73372556711687, 1, 1, 1, 98506456649552, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,116,105,99,107,101,114,115,88,95,71,95,50,48,50,53),string.char(83,116,105,99,107,101,114,115,32,50,48,50,53),string.char(71),string.char(67,111,109,109,111,110), 79401392, 123572826899313, 1.5, 1.5, 1.5, 127489830827583, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,116,105,99,107,101,114,115,88,95,75,95,50,48,50,53),string.char(83,116,105,99,107,101,114,115,32,50,48,50,53,32,194,183,32,83,116,105,99,107,101,114,115,88,95,75,95,50,48,50,53),string.char(75),string.char(67,111,109,109,111,110), 6600901997, 130231206599976, 1, 1, 1, 102283625659356, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,119,101,97,116,101,114,95,71,95,50,48,50,53),string.char(83,119,101,97,116,101,114,32,50,48,50,53),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 83785504897240, 1.5, 1.5, 1.5, 118557229750245, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,119,101,97,116,101,114,95,75,95,50,48,50,53),string.char(83,119,101,97,116,101,114,32,50,48,50,53),string.char(75),string.char(85,110,99,111,109,109,111,110), 6600901997, 134310239127931, 1, 1, 1, 102130993592804, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(80,101,110,103,117,105,110,95,75,95,50,48,50,53),string.char(80,101,110,103,117,105,110),string.char(75),string.char(67,111,109,109,111,110), 6600901997, 72734484939175, 1, 1, 1, 93320180084418, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,119,101,101,116,67,104,114,111,109,97),string.char(83,119,101,101,116,32,194,183,32,83,119,101,101,116,67,104,114,111,109,97),string.char(75),string.char(71,111,100,108,121), 88250692342609, 120707737118924, 0.0691, 0.0691, 0.0691, 90923771881248, 0, -1, 0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(67,117,112,105,100,95,75,95,50,48,50,54),string.char(67,117,112,105,100),string.char(75),string.char(76,101,103,101,110,100,97,114,121), 121944778, 91124699102770, 1, 1, 1, 123955324398353, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(72,101,97,114,116,98,114,101,97,107,95,71,95,50,48,50,54),string.char(72,101,97,114,116,98,114,101,97,107),string.char(71),string.char(82,97,114,101), 79401392, 102957418708034, 1.6, 1.6, 1.6, 79235438948261, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(80,97,119,115,95,71,95,50,48,50,54),string.char(80,97,119,115),string.char(71),string.char(85,110,99,111,109,109,111,110), 79401392, 108504597564281, 1.6, 1.6, 1.6, 120089556380493, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(66,108,111,115,115,111,109,95,75,95,50,48,50,54),string.char(66,108,111,115,115,111,109,32,50,48,50,54),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 139596499078847, 1, 1, 1, 110160120309916, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,116,114,97,119,98,101,114,114,105,101,115,95,71,95,50,48,50,54),string.char(83,116,114,97,119,98,101,114,114,105,101,115),string.char(71),string.char(67,111,109,109,111,110), 79401392, 103202994163470, 1.6, 1.6, 1.6, 128646835922561, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(72,101,97,114,116,115,95,75,95,50,48,50,54),string.char(72,101,97,114,116,115,32,50,48,50,54),string.char(75),string.char(67,111,109,109,111,110), 121944778, 112048035793774, 1, 1, 1, 99939659856909, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(80,108,97,105,100,95,71,95,50,48,50,54),string.char(80,108,97,105,100),string.char(71),string.char(67,111,109,109,111,110), 79401392, 100185145262613, 1.6, 1.6, 1.6, 121681210724670, 0, -0.7, -0.3, 1, 0, 0, 0, 0, -1, 0, 1, 0 },
{string.char(83,116,97,114,114,121,95,75,95,50,48,50,54),string.char(83,116,97,114,114,121,32,50,48,50,54),string.char(75),string.char(85,110,99,111,109,109,111,110), 121944778, 98911990727243, 1, 1, 1, 130537925107449, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,116,114,97,119,98,101,114,114,105,101,115,95,75,95,50,48,50,54),string.char(83,116,114,97,119,98,101,114,114,105,101,115),string.char(75),string.char(67,111,109,109,111,110), 121944778, 75968382870233, 1, 1, 1, 73897192147749, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,119,101,101,116,95,75,95,50,48,50,54),string.char(89,117,109,109,121),string.char(75),string.char(82,97,114,101), 121944778, 139481558107907, 1, 1, 1, 113677688954146, 0, -1, -0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(72,101,97,114,116,87,97,110,100,67,104,114,111,109,97),string.char(72,101,97,114,116,32,87,97,110,100,32,194,183,32,72,101,97,114,116,87,97,110,100,67,104,114,111,109,97),string.char(75),string.char(71,111,100,108,121), 77738838473091, 78842905206144, 0.0782, 0.0782, 0.0782, 99154743764163, 0, -0.8, 0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
{string.char(83,119,101,101,116),string.char(83,119,101,101,116,32,194,183,32,83,119,101,101,116),string.char(75),string.char(71,111,100,108,121), 88250692342609, 75844398224824, 0.0691, 0.0691, 0.0691, 126937716954396, 0, -1, 0.1, 1, 0, 0, 0, 1, 0, 0, 0, 1 },
}
local _0x93C9 = {
Ancient = 1,
Godly = 2,
Unique = 3,
Legendary = 4,
Vintage = 5,
Classic = 6,
Rare = 7,
Uncommon = 8,
Common = 9,
}
local _0x37E0 = {
Ancient = Color3.fromRGB(255, 190, 70),
Godly = Color3.fromRGB(255, 90, 200),
Unique = Color3.fromRGB(255, 230, 110),
Legendary = Color3.fromRGB(255, 80, 80),
Vintage = Color3.fromRGB(200, 170, 120),
Classic = Color3.fromRGB(150, 210, 255),
Rare = Color3.fromRGB(90, 150, 255),
Uncommon = Color3.fromRGB(110, 220, 120),
Common = Color3.fromRGB(170, 170, 170),
}
local _0x9FF3 = {}
local _0x47E4 = {}
for _0xBFE6, _0x9B31 in ipairs(_0x4267) do
local _0x334A = {
_0xFBB7 = _0x9B31[1],
_0xBD62 = _0x9B31[2],
type = _0x9B31[3] ==string.char(75)andstring.char(75,110,105,102,101)orstring.char(71,117,110),
rarity = _0x9B31[4],
mesh =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47).. _0x9B31[5],
_0x0E85 = _0x9B31[6] ~= 0 andstring.char(114,98,120,97,115,115,101,116,105,100,58,47,47).. _0x9B31[6] or"",
_0xFF4E = { _0x9B31[7], _0x9B31[8], _0x9B31[9] },
_0x95B5 = _0x9B31[10],
_0x9DCF =string.char(116,111,111,108),
_0x1205 = _0x9B31[4],
grip = _0x9B31[11] and CFrame.new(_0x9B31[11], _0x9B31[12], _0x9B31[13], _0x9B31[14], _0x9B31[15], _0x9B31[16], _0x9B31[17], _0x9B31[18], _0x9B31[19], _0x9B31[20], _0x9B31[21], _0x9B31[22]) or nil,
}
table.insert(_0x9FF3, _0x334A)
_0x47E4[_0x334A.key] = _0x334A
end
table.sort(_0x9FF3, function(_0x7D74, _0xBB9C)
local _0xF141, _0x0EA9 = _0x93C9[_0x7D74.rarity] or 10, _0x93C9[_0xBB9C.rarity] or 10
if _0xF141 ~= _0x0EA9 then
return _0xF141 < _0x0EA9
end
return _0x7D74.name < _0xBB9C.name
end)
local _0xA570 = {}
local function _0xFFE4(_0x3066)
local _0x7D74 = _0xA570[_0x3066]
if not _0x7D74 then
return
end
pcall(function()
if _0x7D74.mesh and _0x7D74.orig then
_0x7D74.mesh.MeshId = _0x7D74.orig.MeshId
_0x7D74.mesh.TextureId = _0x7D74.orig.TextureId
_0x7D74.mesh.Scale = _0x7D74.orig.Scale
end
if _0x7D74.origColor then
_0x3066.Color = _0x7D74.origColor
_0x3066.Material = _0x7D74.origMat
end
if _0x7D74.overlay then
_0x7D74.overlay:Destroy()
end
if _0x7D74.hiddenParts then
for hiddenPart, originalTransparency in pairs(_0x7D74.hiddenParts) do
if hiddenPart and hiddenPart.Parent then
hiddenPart.LocalTransparencyModifier = originalTransparency or 0
end
end
_0x7D74.hiddenParts = nil
end
_0x3066.LocalTransparencyModifier = 0
end)
for _0xBFE6, _0x23BB in ipairs(_0x7D74.fx) do
_0x23BB:Destroy()
end
_0xA570[_0x3066] = nil
end
local function _0x543E()
for _0x3066 in pairs(_0xA570) do
_0xFFE4(_0x3066)
end
end
local function _0x0060(_0x7D74, _0x1457)
for _0xBFE6, _0x23BB in ipairs(_0x7D74.fx) do
_0x23BB:Destroy()
end
_0x7D74.fx = {}
local _0xF3DB = _0x0333
if _0xEC88.glow then
table.insert(_0x7D74.fx, _0x81A6(string.char(80,111,105,110,116,76,105,103,104,116), {
Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,71,108,111,119),
Color = _0xF3DB,
Brightness = _0xEC88.light / 25,
Range = 9,
Shadows = false,
Parent = _0x1457,
}))
end
if _0xEC88.sparkles then
table.insert(_0x7D74.fx, _0x81A6(string.char(80,97,114,116,105,99,108,101,69,109,105,116,116,101,114), {
Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,112,97,114,107,108,101,115),
Texture =string.char(114,98,120,97,115,115,101,116,58,47,47,116,101,120,116,117,114,101,115,47,112,97,114,116,105,99,108,101,115,47,115,112,97,114,107,108,101,115,95,109,97,105,110,46,100,100,115),
LightEmission = 1,
Size = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0.25), NumberSequenceKeypoint.new(1, 0) }),
Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0.1), NumberSequenceKeypoint.new(1, 1) }),
Lifetime = NumberRange.new(0.4, 0.8),
Rate = 14,
Speed = NumberRange.new(0.5, 1.5),
SpreadAngle = Vector2.new(180, 180),
Parent = _0x1457,
}))
end
end
local _0xDF56 = { _0xC3A4 = nil, display = nil }
local _0x1D29 = 1
local function _0xA13C()
if _0xDF56.tool and _0xDF56.display and _0xDF56.display > 0 then
_0x1D29 = _0xDF56.tool / _0xDF56.display
_0x330E(string.char(83,107,105,110,32,67,104,97,110,103,101,114,47,75), _0x1D29)
end
end
_0x64F7(string.char(83,107,105,110,32,67,104,97,110,103,101,114,47,75), function(_0xBE50)
if type(_0xBE50) ==string.char(110,117,109,98,101,114)and _0xBE50 > 0 then
_0x1D29 = _0xBE50
end
end, function()
return _0x1D29
end, 1)
local function _0xCD86(_0x3066)
if _0x3066:IsA(string.char(77,101,115,104,80,97,114,116)) then
local _0xDD63 = _0x3066.MeshSize
return _0xDD63.Magnitude > 0 and (_0x3066.Size / _0xDD63).Magnitude or nil
end
local _0xE818 = _0x3066:FindFirstChildOfClass(string.char(83,112,101,99,105,97,108,77,101,115,104))
return _0xE818 and _0xE818.Scale.Magnitude or nil
end
local function _0xE145(_0x334A, _0x8442)
local _0xBE50 = Vector3.new(_0x334A.scale[1], _0x334A.scale[2], _0x334A.scale[3])
local _0x4804 = _0x334A.src orstring.char(100,105,115,112,108,97,121)if _0x8442 ==string.char(116,111,111,108)and _0x4804 ==string.char(100,105,115,112,108,97,121)then
_0xBE50 *= _0x1D29
elseif _0x8442 ==string.char(100,105,115,112,108,97,121)and _0x4804 ==string.char(116,111,111,108)then
_0xBE50 /= _0x1D29
end
return _0xBE50 * (_0xEC88.size / 100)
end
local function _0x196C(_0x3066, _0x28E9, isTool)
local _0x8442 = isTool andstring.char(116,111,111,108)orstring.char(100,105,115,112,108,97,121)if not _0xA570[_0x3066] then
local _0x9B31 = _0xCD86(_0x3066)
if _0x9B31 and _0x9B31 > 0 and _0xDF56[_0x8442] ~= _0x9B31 then
_0xDF56[_0x8442] = _0x9B31
_0xA13C()
end
end
local _0x334A = _0x47E4[_0xEC88.sel[_0x28E9]]
if not _0x334A then
_0xFFE4(_0x3066)
return
end
local _0x7D74 = _0xA570[_0x3066]
if _0x7D74 and _0x7D74.key == _0x334A.key and _0x7D74.size == _0xEC88.size then
if _0x7D74.mesh and not _0x7D74.overlay and _0x7D74.mesh.MeshId ~= _0x334A.mesh then
_0x7D74.key = nil
else
if _0x7D74.overlay then
_0x3066.LocalTransparencyModifier = 1
end
return
end
end
if not _0x7D74 then
_0x7D74 = { _0xC2D5 = {}, origColor = _0x3066.Color, origMat = _0x3066.Material }
local _0xE818 = _0x3066:FindFirstChildOfClass(string.char(83,112,101,99,105,97,108,77,101,115,104))
if _0xE818 and not _0x3066:IsA(string.char(77,101,115,104,80,97,114,116)) then
_0x7D74.mesh = _0xE818
_0x7D74.orig = { MeshId = _0xE818.MeshId, TextureId = _0xE818.TextureId, Scale = _0xE818.Scale }
end
_0xA570[_0x3066] = _0x7D74
end
_0x7D74.key, _0x7D74.size = _0x334A.key, _0xEC88.size
if _0x7D74.mesh and not (_0x8442 ==string.char(116,111,111,108)and _0x334A.grip) then
if _0x7D74.overlay then
_0x7D74.overlay:Destroy()
_0x7D74.overlay = nil
_0x3066.LocalTransparencyModifier = 0
end
_0x7D74.mesh.MeshId = _0x334A.mesh
_0x7D74.mesh.TextureId = _0x334A.tex
_0x7D74.mesh.Scale = _0xE145(_0x334A, _0x8442)
if _0x334A.color then
_0x3066.Color = Color3.new(_0x334A.color[1], _0x334A.color[2], _0x334A.color[3])
pcall(function()
_0x3066.Material = Enum.Material[_0x334A.mat]
end)
end
else
if _0x7D74.overlay then
_0x7D74.overlay:Destroy()
end
if _0x7D74.mesh and _0x7D74.orig then
_0x7D74.mesh.MeshId = _0x7D74.orig.MeshId
_0x7D74.mesh.TextureId = _0x7D74.orig.TextureId
_0x7D74.mesh.Scale = _0x7D74.orig.Scale
end
local _0x18EF = CFrame.identity
local _0xC3A4 = _0x3066.Parent
if _0x8442 ==string.char(116,111,111,108)and _0x334A.grip and _0xC3A4 and _0xC3A4:IsA(string.char(84,111,111,108)) then
_0x18EF = _0xC3A4.Grip * _0x334A.grip:Inverse()
end
local _0x0D18 = _0x81A6(string.char(80,97,114,116), {
Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,107,105,110),
Size = Vector3.one * 0.2,
Transparency = 0,
CanCollide = false,
CanTouch = false,
CanQuery = false,
Massless = true,
Anchored = false,
CFrame = _0x3066.CFrame * _0x18EF,
Parent = _0x3066,
})
_0x81A6(string.char(83,112,101,99,105,97,108,77,101,115,104), {
MeshType = Enum.MeshType.FileMesh,
MeshId = _0x334A.mesh,
TextureId = _0x334A.tex,
Scale = _0xE145(_0x334A, _0x8442),
Parent = _0x0D18,
})
if _0x334A.color then
_0x0D18.Color = Color3.new(_0x334A.color[1], _0x334A.color[2], _0x334A.color[3])
pcall(function()
_0x0D18.Material = Enum.Material[_0x334A.mat]
end)
end
_0x81A6(string.char(87,101,108,100,67,111,110,115,116,114,97,105,110,116), { Part0 = _0x3066, Part1 = _0x0D18, Parent = _0x0D18 })
_0x7D74.overlay = _0x0D18if isTool then
_0x7D74.hiddenParts = _0x7D74.hiddenParts or {}
local _0xC3A4 = _0x3066:FindFirstAncestorOfClass(string.char(84,111,111,108))
if _0xC3A4 then
for _0xBFE6, _0xA051 in ipairs(_0xC3A4:GetDescendants()) do
if _0xA051:IsA(string.char(66,97,115,101,80,97,114,116)) and _0xA051 ~= _0x0D18 and not _0xA051:IsDescendantOf(_0x0D18) then
if _0x7D74.hiddenParts[_0xA051] == nil then
_0x7D74.hiddenParts[_0xA051] = _0xA051.LocalTransparencyModifier
end
_0xA051.LocalTransparencyModifier = 1
end
end
end
end
_0x3066.LocalTransparencyModifier = 1
end
if isTool then
_0x0060(_0x7D74, _0x3066)
end
endlocal function _0xC4CD(_0x8C06)
local _0x9DE5, _0x40E5 = {}, {}
local _0x6A7F = {string.char(98,97,99,107,107,110,105,102,101),string.char(98,97,99,107,95,107,110,105,102,101),string.char(107,110,105,102,101,95,98,97,99,107),string.char(107,110,105,102,101,100,105,115,112,108,97,121),string.char(107,110,105,102,101,95,100,105,115,112,108,97,121),string.char(100,105,115,112,108,97,121,107,110,105,102,101),string.char(98,97,99,107,119,101,97,112,111,110),string.char(98,97,99,107,95,119,101,97,112,111,110),string.char(119,101,97,112,111,110,100,105,115,112,108,97,121),string.char(119,101,97,112,111,110,95,100,105,115,112,108,97,121),string.char(107,110,105,102,101,115,104,101,97,116,104),string.char(107,110,105,102,101,95,115,104,101,97,116,104),string.char(115,104,101,97,116,104),string.char(107,110,105,102,101)}
local function _0xA0FA(_0xBD62)
local _0xDDE9 = string.lower(_0xBD62 or"")
for _0xBFE6, _0x98C3 in ipairs(_0x6A7F) do
if _0xDDE9 == _0x98C3 or _0xDDE9:find(_0x98C3, 1, true) then
return true
end
end
return false
end
local function _0x2166(_0xAA59)
if not _0xAA59 or _0x40E5[_0xAA59] or _0xAA59:IsA(string.char(84,111,111,108)) then return end
if not (_0xAA59:IsA(string.char(77,111,100,101,108)) or _0xAA59:IsA(string.char(70,111,108,100,101,114)) or _0xAA59:IsA(string.char(66,97,115,101,80,97,114,116)) or _0xAA59:IsA(string.char(65,99,99,101,115,115,111,114,121))) then
return
end
if not _0xA0FA(_0xAA59.Name) then return end
local _0xEE00 = {}
if _0xAA59:IsA(string.char(66,97,115,101,80,97,114,116)) then
table.insert(_0xEE00, _0xAA59)
else
local _0x14B7 = _0x8C06:FindFirstChildOfClass(string.char(84,111,111,108))
for _0xBFE6, _0x819A in ipairs(_0xAA59:GetDescendants()) do
if _0x819A:IsA(string.char(66,97,115,101,80,97,114,116)) and (not _0x14B7 or not _0x819A:IsDescendantOf(_0x14B7)) then
table.insert(_0xEE00, _0x819A)
end
end
end
if #_0xEE00 > 0 then
_0x40E5[_0xAA59] = true
table.insert(_0x9DE5, {_0xB7F6 = _0xAA59, _0xEE00 = _0xEE00})
end
end
for _0xBFE6, child in ipairs(_0x8C06:GetChildren()) do
if child:IsA(string.char(77,111,100,101,108)) or child:IsA(string.char(70,111,108,100,101,114)) or child:IsA(string.char(65,99,99,101,115,115,111,114,121)) or child:IsA(string.char(66,97,115,101,80,97,114,116)) then
_0x2166(child)
end
end
for _0xBFE6, _0x819A in ipairs(_0x8C06:GetDescendants()) do
if _0x819A:IsA(string.char(77,111,100,101,108)) or _0x819A:IsA(string.char(70,111,108,100,101,114)) or _0x819A:IsA(string.char(66,97,115,101,80,97,114,116)) then
_0x2166(_0x819A)
end
endif #_0x9DE5 == 0 then
for _0xBFE6, _0x819A in ipairs(_0x8C06:GetDescendants()) do
if _0x819A:IsA(string.char(66,97,115,101,80,97,114,116)) then
local _0xDDE9 = _0x819A.Name:lower()
if (_0xDDE9:find(string.char(98,97,99,107,107,110,105,102,101),1,true) or _0xDDE9 ==string.char(98,108,97,100,101)or _0xDDE9 ==string.char(107,110,105,102,101)) and not _0x819A:IsDescendantOf(_0x8C06:FindFirstChild(string.char(75,110,105,102,101))) then
table.insert(_0x9DE5, {_0xB7F6=_0x819A, _0xEE00={_0x819A}})
end
end
end
end
return _0x9DE5
end
local function _0xB2FB()
local _0xC494 = {}
local _0x8C06 = _0xD33F.Character
if not _0x8C06 then
return _0xC494
end
local _0x40E5 = {}
local function _0x930C(_0x3066, _0x28E9, isTool)
if _0x3066 and _0x3066:IsA(string.char(66,97,115,101,80,97,114,116)) and not _0x40E5[_0x3066] then
_0x40E5[_0x3066] = true
table.insert(_0xC494, {_0x3066, _0x28E9, isTool, nil})
end
endfor _0xBFE6, _0xC3A4 in ipairs(_0x8C06:GetChildren()) do
if _0xC3A4:IsA(string.char(84,111,111,108)) then
local _0xDDE9 = string.lower(_0xC3A4.Name)
local _0x28E9 = _0xDDE9:find(string.char(107,110,105,102,101), 1, true) andstring.char(75,110,105,102,101)or (_0xDDE9:find(string.char(103,117,110), 1, true) andstring.char(71,117,110)or nil)
if _0x28E9 then
local _0x98C3 = _0xC3A4:FindFirstChild(string.char(72,97,110,100,108,101))
if not (_0x98C3 and _0x98C3:IsA(string.char(66,97,115,101,80,97,114,116))) then
for _0xBFE6, _0x819A in ipairs(_0xC3A4:GetDescendants()) do
if _0x819A:IsA(string.char(66,97,115,101,80,97,114,116)) then _0x98C3 = _0x819A break end
end
end
_0x930C(_0x98C3, _0x28E9, true)
end
end
endfor _0xBFE6, display in ipairs(_0xC4CD(_0x8C06)) do
local _0xB7F6 = display.root
local _0xCCBB
for _0xBFE6, _0x3066 in ipairs(display.parts) do
local _0xDDE9 = _0x3066.Name:lower()
if _0xDDE9 ==string.char(104,97,110,100,108,101)or _0xDDE9 ==string.char(98,97,99,107,107,110,105,102,101)or _0xDDE9 ==string.char(98,108,97,100,101)or _0xDDE9 ==string.char(107,110,105,102,101)then
_0xCCBB = _0x3066
break
end
end
_0xB7F6 = _0xCCBB or _0xB7F6
_0x930C(_0xB7F6,string.char(75,110,105,102,101), false)
local _0xD660 = _0xC494[#_0xC494]
_0xD660[4] = display.parts
end
return _0xC494
end
local function _0x12CE(_0xD660, appliedEntry)
if _0xD660[3] or not _0xD660[4] then return end
appliedEntry.hiddenParts = appliedEntry.hiddenParts or {}
for _0xBFE6, _0x3066 in ipairs(_0xD660[4]) do
if _0x3066 and _0x3066:IsA(string.char(66,97,115,101,80,97,114,116)) and _0x3066 ~= _0xD660[1] then
if appliedEntry.hiddenParts[_0x3066] == nil then
appliedEntry.hiddenParts[_0x3066] = _0x3066.LocalTransparencyModifier
end
_0x3066.LocalTransparencyModifier = 1
end
end
end
local function _0x22DA()
for _0xBFE6, _0x7D74 in pairs(_0xA570) do
_0x7D74.key = nil
end
end
local _0x0389 = 0
_0xF709(_0x7FDD.Heartbeat, function()
local _0x9494 = os.clock()
if _0xEC88.enabled and _0x9494 - _0x0389 > 0.2 then
_0x0389 = _0x9494
local _0x2395 = {}
for _0xBFE6, _0x4903 in ipairs(_0xB2FB()) do
_0x2395[_0x4903[1]] = true
pcall(_0x196C, _0x4903[1], _0x4903[2], _0x4903[3])
if not _0x4903[3] then
local _0x7D74 = _0xA570[_0x4903[1]]
if _0x7D74 then
_0x12CE(_0x4903, _0x7D74)
end
end
endfor _0x3066 in pairs(_0xA570) do
if not _0x3066:IsDescendantOf(game) then
_0xA570[_0x3066] = nil
elseif not _0x2395[_0x3066] then
_0xFFE4(_0x3066)
end
end
end
end)
local _0x4783 = _0x3957.page
_0x3957.custom = true
_0x3957.title.Visible = false
_0x3957.desc.Visible = false
_0x4783.ScrollingEnabled = false
_0x4783.Active = false
_0x4783.ScrollBarThickness = 0
_0x4783.CanvasSize = UDim2.new()
local _0xF8DD = Color3.fromRGB(36, 36, 38)
local _0x353D = Color3.fromRGB(48, 48, 52)
local _0x70CF = Color3.fromRGB(17, 17, 19)
local _0x6097
local function _0xD268(_0x4FEA, _0xD85E, _0xA051, _0x98C3, _0x52F8)
local _0x42FB = _0x83FE:GetTextSize(_0xD85E, _0x52F8, Enum.Font.GothamMedium, Vector2.new(300, 40)).X + 30
local _0xBB9C = _0x81A6(string.char(84,101,120,116,66,117,116,116,111,110), {
Text ="",
AutoButtonColor = false,
BackgroundColor3 = Color3.fromRGB(90, 90, 90),
BackgroundTransparency = 0.85,
Position = UDim2.fromOffset(_0xA051, 0),
Size = UDim2.fromOffset(_0x42FB, _0x98C3),
ZIndex = 3,
Parent = _0x4FEA,
})
_0x46F9(_0xBB9C, 9)
local _0x819A = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.new(0, 12, 0.5, 0),
Size = UDim2.fromOffset(0, 0),
BackgroundColor3 = _0x0333,
BorderSizePixel = 0,
ZIndex = 4,
Parent = _0xBB9C,
})
_0x1692(_0x819A)
local _0xA0A4 = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text = _0xD85E,
Font = Enum.Font.GothamMedium,
TextSize = _0x52F8,
TextColor3 = _0x08BE,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(15, 0),
Size = UDim2.new(1, -15, 1, 0),
ZIndex = 4,
Parent = _0xBB9C,
})
local _0xCA34 = { _0xBB9C = _0xBB9C, _0x93F4 = _0x819A, _0x4AFF = _0xA0A4, _0x42FB = _0x42FB, _0x9B7B = false }
_0xCA34.set = function(_0x9B7B)
_0xCA34.on = _0x9B7B
_0x0ED9(_0xBB9C, 0.25, { BackgroundTransparency = _0x9B7B and 0.35 or 0.85 }, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
_0x0ED9(_0x819A, 0.25, { Size = UDim2.fromOffset(_0x9B7B and 6 or 0, _0x9B7B and 6 or 0) }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
_0x0ED9(_0xA0A4, 0.25, { TextColor3 = _0x9B7B and _0x0333 or _0x08BE, Position = UDim2.fromOffset(_0x9B7B and 21 or 15, 0) }, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
end
_0xF709(_0xBB9C.MouseEnter, function()
if not _0xCA34.on then
_0x0ED9(_0xA0A4, 0.15, { TextColor3 = _0x9CF4 })
end
end)
_0xF709(_0xBB9C.MouseLeave, function()
if not _0xCA34.on then
_0x0ED9(_0xA0A4, 0.15, { TextColor3 = _0x08BE })
end
end)
return _0xCA34
end
local _0x88B3 = _0x81A6(string.char(70,114,97,109,101), { Size = UDim2.new(1, 0, 0, 30), BackgroundTransparency = 1, ZIndex = 3, Parent = _0x4783 })
local _0xBEB7, _0xA051 = {}, 0
for _0xBFE6, sub in ipairs({string.char(75,110,105,102,101),string.char(71,117,110)}) do
local _0xCA34 = _0xD268(_0x88B3, sub, _0xA051, 30, 13)
_0xBEB7[sub] = _0xCA34
_0xA051 += _0xCA34.w + 4
_0xF709(_0xCA34.b.MouseButton1Click, function()
if _0xEC88.listType == sub then
return
end
_0xBEB7[_0xEC88.listType].set(false)
_0xEC88.listType = sub
_0xCA34.set(true)
_0x6097(true)
end)
end
_0xBEB7[_0xEC88.listType].set(true)
local _0xA96F = _0x81A6(string.char(84,101,120,116,66,117,116,116,111,110), {
Text ="",
AutoButtonColor = false,
BackgroundColor3 = Color3.fromRGB(90, 90, 90),
BackgroundTransparency = 0.85,
AnchorPoint = Vector2.new(1, 0),
Position = UDim2.new(1, -4, 0, 0),
Size = UDim2.fromOffset(96, 30),
ZIndex = 3,
Parent = _0x88B3,
})
_0x46F9(_0xA96F, 9)
local _0xE2CB = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(83,107,105,110,115),
Font = Enum.Font.GothamMedium,
TextSize = 12,
TextColor3 = _0x0333,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(12, 0),
Size = UDim2.new(1, -50, 1, 0),
ZIndex = 4,
Parent = _0xA96F,
})
local _0x818F = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(1, 0.5),
Position = UDim2.new(1, -9, 0.5, 0),
Size = UDim2.fromOffset(30, 16),
BackgroundColor3 = _0x0333,
ZIndex = 4,
Parent = _0xA96F,
})
_0x1692(_0x818F)
local _0x5B47 = _0x39A4(_0x818F, _0x0333)
local _0xE9A9 = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.new(0, 22, 0.5, 0),
Size = UDim2.fromOffset(10, 10),
BackgroundColor3 = _0xD583,
ZIndex = 5,
Parent = _0x818F,
})
_0x1692(_0xE9A9)local _0x7E68 = nil
local _0x5B38 = {}local _0xC651 = nil
local _0x2095 = {}
local _0xAE29 = {}
local function _0x1D58()
if _0xC651 then
pcall(function() _0xC651:Disconnect() end)
_0xC651 = nil
end
for _0x85B8, connection in pairs(_0xAE29) do
if connection then pcall(function() connection:Disconnect() end) end
_0xAE29[_0x85B8] = nil
end
for _0x79E1, wasDisabled in pairs(_0x2095) do
if _0x79E1 and _0x79E1.Parent then
pcall(function() _0x79E1.Disabled = wasDisabled end)
end
_0x2095[_0x79E1] = nil
end
end
local function _0x78FF(_0x289D)
if not _0x289D or not _0xEC88.enabled then return end
local _0x79E1 = _0x289D:FindFirstChild(string.char(65,110,105,109,97,116,101))
if _0x79E1 and _0x79E1:IsA(string.char(76,111,99,97,108,83,99,114,105,112,116)) then
if _0x2095[_0x79E1] == nil then
_0x2095[_0x79E1] = _0x79E1.Disabled
end
pcall(function() _0x79E1.Disabled = true end)
end
local _0x8C8F = _0x289D:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0x85B8 = _0x8C8F and _0x8C8F:FindFirstChildOfClass(string.char(65,110,105,109,97,116,111,114))
if _0x85B8 then
for _0xBFE6, _0xB86F in ipairs(_0x85B8:GetPlayingAnimationTracks()) do
pcall(function() _0xB86F:Stop(0) end)
end
if not _0xAE29[_0x85B8] then
_0xAE29[_0x85B8] = _0x85B8.AnimationPlayed:Connect(function(_0xB86F)
if _0xEC88.enabled then pcall(function() _0xB86F:Stop(0) end) end
end)
end
end
end
local function _0x671C(_0x289D)
if _0xC651 then
pcall(function() _0xC651:Disconnect() end)
_0xC651 = nil
end
if not _0x289D then return end
_0x78FF(_0x289D)
_0xC651 = _0x289D.DescendantAdded:Connect(function(_0xAA59)
if not _0xEC88.enabled then return end
if _0xAA59.Name ==string.char(65,110,105,109,97,116,101)or _0xAA59:IsA(string.char(65,110,105,109,97,116,111,114)) or _0xAA59:IsA(string.char(72,117,109,97,110,111,105,100)) then
task.defer(function()
if _0xEC88.enabled and _0x289D == _0xD33F.Character then
_0x78FF(_0x289D)
end
end)
end
end)
end
local function _0x1A71()
if _0x7E68 then
pcall(function() _0x7E68:Disconnect() end)
_0x7E68 = nil
end
for motor, originalTransform in pairs(_0x5B38) do
if motor and motor.Parent then
pcall(function() motor.Transform = originalTransform end)
end
end
table.clear(_0x5B38)
end
local function _0x40FA()
_0x1A71()
local _0x289D = _0xD33F.Character
if not _0x289D then return endfor _0xBFE6, _0xAA59 in ipairs(_0x289D:GetDescendants()) do
if _0xAA59:IsA(string.char(77,111,116,111,114,54,68)) then
_0x5B38[_0xAA59] = _0xAA59.Transform
end
end
_0x7E68 = _0x7FDD.PreSimulation:Connect(function()
if not _0xEC88.enabled or _0x289D ~= _0xD33F.Character then return end
for _0xBFE6, _0xAA59 in ipairs(_0x289D:GetDescendants()) do
if _0xAA59:IsA(string.char(77,111,116,111,114,54,68)) and _0x5B38[_0xAA59] == nil then
_0x5B38[_0xAA59] = _0xAA59.Transform
end
end
for motor, capturedTransform in pairs(_0x5B38) do
if motor and motor.Parent and motor:IsDescendantOf(_0x289D) then
pcall(function() motor.Transform = capturedTransform end)
else
_0x5B38[motor] = nil
end
end
end)
end
_0xF709(_0xD33F.CharacterAdded, function(_0x289D)
if _0xEC88.enabled then
task.defer(function()
if not _0xEC88.enabled or _0x289D ~= _0xD33F.Character then return end
_0x40FA()
_0x671C(_0x289D)
end)
end
end)
local function _0xDBF0(_0x9B7B, byUser)
_0xEC88.enabled = _0x9B7B
if _0x9B7B then_0x40FA()
_0x671C(_0xD33F.Character)
for _0xBFE6, _0x7D74 in pairs(_0xA570) do
_0x7D74.key = nil
end
_0x0389 = 0
else
_0x1A71()
_0x1D58()
_0x543E()
end
_0xE9A9.Size = UDim2.fromOffset(15, 10)
_0x0ED9(_0xE9A9, 0.35, {
Position = UDim2.new(0, _0x9B7B and 22 or 8, 0.5, 0),
Size = UDim2.fromOffset(10, 10),
BackgroundColor3 = _0x9B7B and _0xD583 or _0x08BE,
}, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
_0x0ED9(_0x818F, 0.25, { BackgroundColor3 = _0x9B7B and _0x0333 or _0xD583 })
_0x0ED9(_0x5B47, 0.25, { Color = _0x9B7B and _0x0333 or _0x7988 })
_0x0ED9(_0xE2CB, 0.25, { TextColor3 = _0x9B7B and _0x0333 or _0x08BE })
_0x0ED9(_0xA96F, 0.25, { BackgroundTransparency = _0x9B7B and 0.6 or 0.85 })
if byUser then
_0x330E(string.char(83,107,105,110,32,67,104,97,110,103,101,114,47,69,110,97,98,108,101,100), _0x9B7B)
_0xE835(string.char(83,107,105,110,32,67,104,97,110,103,101,114,58,32).. (_0x9B7B andstring.char(79,110)orstring.char(79,102,102)), _0x9B7B andstring.char(115,107,105,110,115,32,101,113,117,105,112,112,101,100)orstring.char(100,101,102,97,117,108,116,32,119,101,97,112,111,110,115))
end
end
_0xF709(_0xA96F.MouseButton1Click, function()
_0xDBF0(not _0xEC88.enabled, true)
end)
_0x64F7(string.char(83,107,105,110,32,67,104,97,110,103,101,114,47,69,110,97,98,108,101,100), function(_0xBE50)
if type(_0xBE50) ==string.char(98,111,111,108,101,97,110)then
_0xDBF0(_0xBE50)
end
end, function()
return _0xEC88.enabled
end, true)
local _0xD38E = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text ="",
RichText = true,
Font = Enum.Font.GothamMedium,
TextSize = 12,
TextColor3 = _0x08BE,
TextXAlignment = Enum.TextXAlignment.Left,
TextTruncate = Enum.TextTruncate.AtEnd,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(2, 38),
Size = UDim2.new(1, -4, 0, 20),
ZIndex = 3,
Parent = _0x4783,
})
local _0xE730 =""local function _0x2965()
local _0xA7E6, _0xA54B = 0, 0
for _0xBFE6, _0x334A in ipairs(_0x9FF3) do
if _0x334A.type ==string.char(75,110,105,102,101)then
_0xA7E6 += 1
else
_0xA54B += 1
end
end
local function _0x012B(_0x28E9)
local _0x334A = _0x47E4[_0xEC88.sel[_0x28E9]]
return _0x334A andstring.char(60,98,62,60,102,111,110,116,32,99,111,108,111,114,61,34,35,102,102,102,102,102,102,34,62).. _0x334A.name ..string.char(60,47,102,111,110,116,62,60,47,98,62)orstring.char(100,101,102,97,117,108,116)end
_0xD38E.Text = (string.char(37,100,32,107,110,105,118,101,115,32,194,183,32,37,100,32,103,117,110,115,32,32,32,32,32,107,110,105,102,101,58,32,37,115,32,194,183,32,103,117,110,58,32,37,115)).format(string.char(37,100,32,107,110,105,118,101,115,32,194,183,32,37,100,32,103,117,110,115,32,32,32,32,32,107,110,105,102,101,58,32,37,115,32,194,183,32,103,117,110,58,32,37,115), _0xA7E6, _0xA54B, _0x012B(string.char(75,110,105,102,101)), _0x012B(string.char(71,117,110)))
end
local _0xDC2E = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(1, 0),
Position = UDim2.new(1, -4, 0, 35),
Size = UDim2.fromOffset(170, 24),
BackgroundColor3 = Color3.fromRGB(22, 22, 22),
ZIndex = 3,
Parent = _0x4783,
})
_0x46F9(_0xDC2E, 8)
local _0xD078 = _0x39A4(_0xDC2E)
local _0xE9C6 = _0x81A6(string.char(84,101,120,116,66,111,120), {
Text ="",
PlaceholderText =string.char(83,101,97,114,99,104,32,115,107,105,110,115,46,46,46),
PlaceholderColor3 = _0xEE3F,
Font = Enum.Font.Gotham,
TextSize = 12,
TextColor3 = _0x0333,
TextXAlignment = Enum.TextXAlignment.Left,
ClearTextOnFocus = false,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(10, 0),
Size = UDim2.new(1, -16, 1, 0),
ZIndex = 4,
Parent = _0xDC2E,
})
_0xD38E.Size = UDim2.new(1, -190, 0, 20)
_0xF709(_0xE9C6.Focused, function()
_0x0ED9(_0xD078, 0.2, { Color = Color3.fromRGB(120, 120, 120) })
end)
_0xF709(_0xE9C6.FocusLost, function()
_0x0ED9(_0xD078, 0.2, { Color = _0x7988 })
end)
local _0x7476 = _0x81A6(string.char(83,99,114,111,108,108,105,110,103,70,114,97,109,101), {
Position = UDim2.fromOffset(0, 66),
Size = UDim2.new(1, 0, 1, -66),
Active = true,
ScrollingEnabled = false,
AutomaticCanvasSize = Enum.AutomaticSize.Y,
BackgroundTransparency = 1,
BorderSizePixel = 0,
ScrollBarThickness = 3,
ScrollBarImageColor3 = _0x08BE,
ScrollBarImageTransparency = 0.3,
VerticalScrollBarInset = Enum.ScrollBarInset.Always,
ScrollingDirection = Enum.ScrollingDirection.Y,
ElasticBehavior = Enum.ElasticBehavior.Never,
ClipsDescendants = true,
CanvasSize = UDim2.new(),
ZIndex = 2,
Parent = _0x4783,
})
_0x81A6(string.char(85,73,80,97,100,100,105,110,103), {
PaddingTop = UDim.new(0, 1),
PaddingLeft = UDim.new(0, 1),
PaddingRight = UDim.new(0, 4),
PaddingBottom = UDim.new(0, 140),
Parent = _0x7476,
})
local _0x595B = _0x81A6(string.char(85,73,71,114,105,100,76,97,121,111,117,116), {
CellSize = UDim2.new(0.25, -6, 0, 150),
CellPadding = UDim2.fromOffset(8, 8),
SortOrder = Enum.SortOrder.LayoutOrder,
Parent = _0x7476,
})
local _0x60BA = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text ="",
Font = Enum.Font.GothamMedium,
TextSize = 12,
TextColor3 = _0xEE3F,
TextWrapped = true,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(20, 106),
Size = UDim2.new(1, -40, 0, 60),
ZIndex = 3,
Parent = _0x4783,
})
local function _0xDCB3(scroller)
local _0x9EA9, _0x1BD4, _0x4694 = false, nil, 0
local _0xDD0A = false
local function _0x5BA0(_0x16A1)
local _0x0D18, _0x36DB = scroller.AbsolutePosition, scroller.AbsoluteSize
return _0x16A1.X >= _0x0D18.X and _0x16A1.X <= _0x0D18.X + _0x36DB.X and _0x16A1.Y >= _0x0D18.Y and _0x16A1.Y <= _0x0D18.Y + _0x36DB.Y
end
local function _0x5E49()
return math.max(0, scroller.AbsoluteCanvasSize.Y - scroller.AbsoluteWindowSize.Y)
end
local function _0x5F77(_0x16A1, input)
if not _0x5BA0(_0x16A1) or _0x5E49() <= 0 then return end
_0x9EA9, _0x1BD4, _0x4694, _0xDD0A = true, input, _0x16A1.Y, false
end
_0xF709(_0x63F8.TouchStarted, function(input)
_0x5F77(input.Position, input)
end)
_0xF709(_0x63F8.TouchMoved, function(input)
if not _0x9EA9 or _0x1BD4 ~= input then return end
local _0xD132 = input.Position.Y - _0x4694
if math.abs(_0xD132) > 0.1 then
_0xDD0A = true
_0x4694 = input.Position.Y
scroller.CanvasPosition = Vector2.new(0, math.clamp(scroller.CanvasPosition.Y - _0xD132, 0, _0x5E49()))
end
end)
_0xF709(_0x63F8.TouchEnded, function(input)
if input == _0x1BD4 then
_0x9EA9, _0x1BD4 = false, nil
end
end)_0xF709(scroller.InputBegan, function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
_0x5F77(input.Position, input)
end
end)
_0xF709(_0x63F8.InputChanged, function(input)
if not _0x9EA9 or _0x1BD4 == nil or input.UserInputType ~= Enum.UserInputType.MouseMovement then return end
local _0xD132 = input.Position.Y - _0x4694
if math.abs(_0xD132) > 0.1 then
_0xDD0A = true
_0x4694 = input.Position.Y
scroller.CanvasPosition = Vector2.new(0, math.clamp(scroller.CanvasPosition.Y - _0xD132, 0, _0x5E49()))
end
end)
_0xF709(_0x63F8.InputEnded, function(input)
if input == _0x1BD4 then _0x9EA9, _0x1BD4 = false, nil end
end)
end
local function _0x62BD()
_0x7476.CanvasSize = UDim2.fromOffset(0, math.max(_0x595B.AbsoluteContentSize.Y + 140, _0x7476.AbsoluteWindowSize.Y + 2))
end
_0xDCB3(_0x7476)
_0xF709(_0x595B:GetPropertyChangedSignal(string.char(65,98,115,111,108,117,116,101,67,111,110,116,101,110,116,83,105,122,101)), _0x62BD)
_0x62BD()
_0xF709(_0x7476:GetPropertyChangedSignal(string.char(65,98,115,111,108,117,116,101,87,105,110,100,111,119,83,105,122,101)), _0x62BD)
local _0x178B = {}
local function _0xE717(_0xD51E)
local _0x9B7B = _0xEC88.sel[_0xD51E.s.type] == _0xD51E.s.key
_0xD51E.stroke.Color = _0x9B7B and _0x0333 or _0x7988
_0xD51E.stroke.Transparency = _0x9B7B and 0.1 or 0
_0x0ED9(_0xD51E.badge, 0.25, { Size = UDim2.fromOffset(_0x9B7B and 62 or 0, 15) }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
end
local function _0x6D11(_0x334A, _0xD51E)
_0xEC88.sel[_0x334A.type] = _0xEC88.sel[_0x334A.type] ~= _0x334A.key and _0x334A.key or nil
_0x330E(string.char(83,107,105,110,32,67,104,97,110,103,101,114,47,83,107,105,110,115,47).. _0x334A.type, _0xEC88.sel[_0x334A.type] or false)
for _0xBFE6, _0x1592 in ipairs(_0x178B) do
_0xE717(_0x1592)
end
_0x2965()
_0x22DA()
_0x0389 = 0
_0xD51E.sc.Scale = 0.93
_0x0ED9(_0xD51E.sc, 0.35, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
_0xE835(_0x334A.type, _0xEC88.sel[_0x334A.type] and _0x334A.name ..string.char(32,101,113,117,105,112,112,101,100)orstring.char(100,101,102,97,117,108,116,32,115,107,105,110))
end
local function _0x96EC(_0x334A, _0x02E3)
local _0xFCDE = _0x81A6(string.char(84,101,120,116,66,117,116,116,111,110), {
Text ="",
AutoButtonColor = false,
BackgroundTransparency = 1,
LayoutOrder = _0x02E3,
ZIndex = 2,
Parent = _0x7476,
})
local _0xFF4E = _0x81A6(string.char(85,73,83,99,97,108,101), { Parent = _0xFCDE })
local _0x1823 = _0x81A6(string.char(70,114,97,109,101), {
Size = UDim2.new(1, 0, 0, 100),
BackgroundColor3 = _0xF8DD,
ClipsDescendants = true,
ZIndex = 2,
Parent = _0xFCDE,
})
_0x46F9(_0x1823, 8)
local _0xCFC0 = _0x39A4(_0x1823)
local _0x4CC3 = _0x81A6(string.char(73,109,97,103,101,76,97,98,101,108), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromScale(0.5, 0.5),
Size = UDim2.fromOffset(84, 84),
BackgroundTransparency = 1,
ScaleType = Enum.ScaleType.Fit,
Image = _0x334A.img ~= 0 and (string.char(114,98,120,116,104,117,109,98,58,47,47,116,121,112,101,61,65,115,115,101,116,38,105,100,61,37,100,38,119,61,49,53,48,38,104,61,49,53,48)):format(_0x334A.img) or"",
ZIndex = 3,
Parent = _0x1823,
})
local _0x8404 = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(69,81,85,73,80,80,69,68),
Font = Enum.Font.GothamBold,
TextSize = 9,
TextColor3 = Color3.fromRGB(10, 10, 10),
BackgroundColor3 = _0x0333,
Position = UDim2.fromOffset(6, 6),
Size = UDim2.fromOffset(0, 15),
ClipsDescendants = true,
ZIndex = 5,
Parent = _0x1823,
})
_0x46F9(_0x8404, 5)
local _0x6161 = _0x81A6(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(0, 106),
Size = UDim2.new(1, 0, 1, -106),
BackgroundColor3 = _0x70CF,
ZIndex = 2,
Parent = _0xFCDE,
})
_0x46F9(_0x6161, 8)
_0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text = _0x334A.name:upper(),
Font = Enum.Font.GothamBold,
TextSize = 11,
TextColor3 = _0x0333,
TextTruncate = Enum.TextTruncate.AtEnd,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(6, 5),
Size = UDim2.new(1, -12, 0, 15),
ZIndex = 3,
Parent = _0x6161,
})
_0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text = _0x334A.rarity,
Font = Enum.Font.GothamMedium,
TextSize = 10,
TextColor3 = _0x37E0[_0x334A.rarity] or _0x08BE,
TextXAlignment = Enum.TextXAlignment.Center,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(6, 21),
Size = UDim2.new(1, -12, 0, 12),
ZIndex = 3,
Parent = _0x6161,
})
local _0xD51E = { _0xFCDE = _0xFCDE, sc = _0xFF4E, _0x6D2C = _0xCFC0, _0x8404 = _0x8404, _0x334A = _0x334A }
table.insert(_0x178B, _0xD51E)
_0xE717(_0xD51E)
_0xF709(_0xFCDE.MouseEnter, function()
_0x0ED9(_0x1823, 0.15, { BackgroundColor3 = _0x353D })
_0x0ED9(_0x4CC3, 0.2, { Size = UDim2.fromOffset(94, 94) }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
end)
_0xF709(_0xFCDE.MouseLeave, function()
_0x0ED9(_0x1823, 0.15, { BackgroundColor3 = _0xF8DD })
_0x0ED9(_0x4CC3, 0.2, { Size = UDim2.fromOffset(84, 84) })
end)
_0xF709(_0xFCDE.MouseButton1Click, function()
_0x6D11(_0x334A, _0xD51E)
end)
end
local _0xC494, _0x93A1 = {}, 0
local function _0xFDDE()
local _0x64B6 = math.min(#_0xC494, _0x93A1 + 32)
for _0x60FA = _0x93A1 + 1, _0x64B6 do
_0x96EC(_0xC494[_0x60FA], _0x60FA)
end
_0x93A1 = _0x64B6
_0x62BD()
end
_0xF709(_0x7476:GetPropertyChangedSignal(string.char(67,97,110,118,97,115,80,111,115,105,116,105,111,110)), function()
if _0x93A1 < #_0xC494 and _0x7476.CanvasPosition.Y + _0x7476.AbsoluteWindowSize.Y >= math.max(0, _0x7476.CanvasSize.Y.Offset - 350) then
_0xFDDE()
end
end)
_0x6097 = function(_0x92FF)
for _0xBFE6, _0xD51E in ipairs(_0x178B) do
_0xD51E.card:Destroy()
end
table.clear(_0x178B)
_0xC494, _0x93A1 = {}, 0
for _0xBFE6, _0x334A in ipairs(_0x9FF3) do
if _0x334A.type == _0xEC88.listType and (_0xE730 ==""or _0x334A.name:lower():find(_0xE730, 1, true)) then
table.insert(_0xC494, _0x334A)
end
end
_0x7476.CanvasPosition = Vector2.zero
_0xFDDE()
_0x60BA.Text = #_0xC494 == 0 andstring.char(110,111,116,104,105,110,103,32,102,111,117,110,100)or""_0x2965()
if _0x92FF then
_0x7476.Position = UDim2.fromOffset(0, 78)
_0x0ED9(_0x7476, 0.35, { Position = UDim2.fromOffset(0, 66) }, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
end
end
_0xF709(_0xE9C6:GetPropertyChangedSignal(string.char(84,101,120,116)), function()
_0xE730 = _0xE9C6.Text:lower()
_0x6097(false)
end)
for _0xBFE6, _0x28E9 in ipairs({string.char(75,110,105,102,101),string.char(71,117,110)}) do
_0x64F7(string.char(83,107,105,110,32,67,104,97,110,103,101,114,47,83,107,105,110,115,47).. _0x28E9, function(_0xBE50)
if type(_0xBE50) ==string.char(115,116,114,105,110,103)and _0x47E4[_0xBE50] then
_0xEC88.sel[_0x28E9] = _0xBE50
for _0xBFE6, _0xD51E in ipairs(_0x178B) do
_0xE717(_0xD51E)
end
_0x2965()
end
end, function()
return _0xEC88.sel[_0x28E9]
end)
end
_0x6097(false)_0xF709(_0xD33F.CharacterAdded, function()
task.defer(function()
_0x543E()
_0x0389 = 0
end)
end)
_0x5137 = function()
_0x543E()
end
end
do
local _0x47FC = { _0x9B7B = false, _0xE692 =string.char(72,111,108,100,32,83,112,97,99,101), _0x5C27 = 60, gain = 8 }
local _0xA773 = 0
local _0xD071 = 0
local _0x678F = 0
local _0x48E3 = false
local _0x49AE
local function _0xDBF8()
_0xA773 = 0
local _0x4245 = workspace.CurrentCamera
if _0x49AE and _0x4245 then
_0x0ED9(_0x4245, 0.3, { FieldOfView = _0x49AE })
end
end
_0xF709(_0x7FDD.Heartbeat, function()
if not _0x47FC.on then
return
end
local _0x8C06 = _0xD33F.Character
local _0xE4E7 = _0x8C06 and _0x8C06:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xBD98 = _0x8C06 and _0x8C06:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if not _0xE4E7 or not _0xBD98 or _0xBD98.Health <= 0 then
return
end
local _0x0E8F = _0xBD98.MoveDirection.Magnitude > 0.1
local _0xC03D = _0x47FC.mode ==string.char(65,117,116,111)and _0x0E8F or _0x47FC.mode ==string.char(72,111,108,100,32,83,112,97,99,101)and _0x63F8:IsKeyDown(Enum.KeyCode.Space)
local _0xA111 = _0xBD98.FloorMaterial ~= Enum.Material.Air
local _0x9494 = os.clock()
if _0xA111 then
if _0x48E3 then
_0xD071 = _0x9494
end
_0x48E3 = false
if _0xC03D and _0x0E8F then
if _0x9494 - _0x678F > 0.2 then
_0x678F = _0x9494
_0xA773 += 1
_0xBD98:ChangeState(Enum.HumanoidStateType.Jumping)
end
elseif _0x9494 - _0xD071 > 0.25 or not _0x0E8F then
if _0xA773 > 0 then
_0xDBF8()
end
end
else
_0x48E3 = true
if _0x0E8F and _0xA773 > 0 then
local _0xB07F = math.min(_0xBD98.WalkSpeed + _0xA773 * _0x47FC.gain * 0.5, _0x47FC.max)
local _0x2D51 = _0xBD98.MoveDirection.Unit
local _0xBE50 = _0xE4E7.AssemblyLinearVelocity
_0xE4E7.AssemblyLinearVelocity = Vector3.new(_0x2D51.X * _0xB07F, _0xBE50.Y, _0x2D51.Z * _0xB07F)
local _0x4245 = workspace.CurrentCamera
if _0x4245 then
_0x49AE = _0x49AE or _0x4245.FieldOfView
local _0x3FFC = math.clamp((_0xB07F - _0xBD98.WalkSpeed) / math.max(_0x47FC.max - _0xBD98.WalkSpeed, 1), 0, 1)
_0x4245.FieldOfView = _0x4245.FieldOfView + (_0x49AE + 12 * _0x3FFC - _0x4245.FieldOfView) * 0.15
end
end
end
end)
local _0xDBF6 = _0x78B0(_0xBC91,string.char(66,104,111,112))
_0xDBF6:Toggle(string.char(69,110,97,98,108,101),string.char(98,117,110,110,121,32,104,111,112,32,45,32,101,118,101,114,121,32,106,117,109,112,32,109,97,107,101,115,32,121,111,117,32,102,97,115,116,101,114), function(_0x9B7B)
_0x47FC.on = _0x9B7B
if not _0x9B7B then
_0xDBF8()
end
_0xE835(string.char(66,104,111,112,58,32).. (_0x9B7B andstring.char(79,110)orstring.char(79,102,102)), _0x9B7B and (_0x47FC.mode ==string.char(65,117,116,111)andstring.char(106,117,115,116,32,114,117,110)orstring.char(104,111,108,100,32,115,112,97,99,101,32,97,110,100,32,114,117,110)) orstring.char(115,116,111,112,112,101,100))
end)
_0xDBF6:Segmented(string.char(77,111,100,101), {string.char(72,111,108,100,32,83,112,97,99,101),string.char(65,117,116,111)}, _0x47FC.mode, function(_0xBE50)
_0x47FC.mode = _0xBE50
end)
_0xDBF6:Slider(string.char(77,97,120,32,115,112,101,101,100), 30, 150, _0x47FC.max, function(_0xBE50)
_0x47FC.max = _0xBE50
end)
_0xDBF6:Slider(string.char(71,97,105,110,32,112,101,114,32,104,111,112), 2, 20, _0x47FC.gain, function(_0xBE50)
_0x47FC.gain = _0xBE50
end)
end
do
local _0x2F05 = { _0x9B7B = false, _0xB07F = 10, _0x2D51 =string.char(82,105,103,104,116)}
local _0x9F2C
local _0x7305 = nil_0xF709(_0x7FDD.PreSimulation, function(_0xF45E)
if not _0x2F05.on then return end
local _0x8C06 = _0xD33F.Character
local _0xE4E7 = _0x8C06 and _0x8C06:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xBD98 = _0x8C06 and _0x8C06:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if not _0xE4E7 or not _0xBD98 or _0xBD98.Health <= 0 then
_0x7305 = nil
return
end
_0xBD98.AutoRotate = false
_0x9F2C = _0xBD98
local _0xBFE6, _0x3CC1, _0xBFE6 = _0xE4E7.CFrame:ToOrientation()
_0x7305 = (_0x7305 or _0x3CC1) + _0x2F05.speed * 1.5 * (_0x2F05.dir ==string.char(82,105,103,104,116)and -1 or 1) * _0xF45E
local _0x16A1 = _0xE4E7.Position
_0xE4E7.CFrame = CFrame.new(_0x16A1) * CFrame.Angles(0, _0x7305, 0)
_0xE4E7.AssemblyAngularVelocity = Vector3.zero
end)
local function _0x48B4()
if _0x9F2C and _0x9F2C.Parent then
_0x9F2C.AutoRotate = true
end
local _0x8C06 = _0xD33F.Character
local _0xE4E7 = _0x8C06 and _0x8C06:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if _0xE4E7 then pcall(function() _0xE4E7.AssemblyAngularVelocity = Vector3.zero end) end
_0x9F2C = nil
_0x7305 = nil
end
_0x9565 = function(_0x9B7B)
_0x2F05.on = _0x9B7B and true or false
if not _0x2F05.on then
_0x48B4()
end
_0xE835(string.char(83,112,105,110,32,66,111,116,58,32).. (_0x2F05.on andstring.char(79,110)orstring.char(79,102,102)), _0x2F05.on andstring.char(115,112,105,110,110,105,110,103,32,101,110,97,98,108,101,100)orstring.char(115,116,111,112,112,101,100))
end
_0xBF1A = function(_0xBE50)
_0x2F05.speed = math.clamp(tonumber(_0xBE50) or 10, 1, 30)
end
local _0xDBF6 = _0x78B0(_0xBC91,string.char(83,112,105,110))
_0xDBF6:Toggle(string.char(69,110,97,98,108,101),string.char(115,112,105,110,32,121,111,117,114,32,99,104,97,114,97,99,116,101,114,32,97,114,111,117,110,100), function(_0x9B7B)
_0x9565(_0x9B7B)
end)
_0xDBF6:Slider(string.char(83,112,101,101,100), 1, 30, _0x2F05.speed, function(_0xBE50)
_0x2F05.speed = _0xBE50
end, function(_0xBE50)
return _0xBE50 ..string.char(120)end)
_0xDBF6:Segmented(string.char(68,105,114,101,99,116,105,111,110), {string.char(76,101,102,116),string.char(82,105,103,104,116)}, _0x2F05.dir, function(_0xBE50)
_0x2F05.dir = _0xBE50
end)
_0x66A6 = function()
_0x2F05.on = false
_0x48B4()
end
end
do
local _0x6E7E = { 125491951751014, 90892690280238, 88712283515515, 99919046918338, 127717306748023 }
local _0x0C97 = { _0x9B7B = false, _0xA213 = nil }
local _0xB86F, _0xA8A1
local function _0x8F60()
if _0xA8A1 then
return _0xA8A1
end
for _0xBFE6, _0xABD9 in ipairs(_0x6E7E) do
local _0x3E35, _0xC66A = pcall(function()
return game:GetObjects(string.char(114,98,120,97,115,115,101,116,105,100,58,47,47).. _0xABD9)
end)
if _0x3E35 and type(_0xC66A) ==string.char(116,97,98,108,101)then
for _0xBFE6, _0xCA34 in ipairs(_0xC66A) do
local _0xC494 = _0xCA34:GetDescendants()
table.insert(_0xC494, 1, _0xCA34)
for _0xBFE6, _0x7D74 in ipairs(_0xC494) do
if _0x7D74:IsA(string.char(65,110,105,109,97,116,105,111,110)) and _0x7D74.AnimationId ~=""then
_0xA8A1 = _0x7D74.AnimationId
return _0xA8A1
end
end
end
end
end
end
local function _0x311B()
if _0xB86F then
pcall(function()
_0xB86F:Stop(0.25)
end)
_0xB86F = nil
end
end
local function _0xFA7F()
local _0xBD98 = _0xA6D4()
if not _0xBD98 then
return
end
task.spawn(function()
local _0xABD9 = _0x8F60()
if not _0xABD9 or not _0x0C97.on then
if not _0xABD9 then
_0xE835(string.char(72,117,103),string.char(99,111,117,108,100,110,39,116,32,108,111,97,100,32,116,104,101,32,104,117,103,32,97,110,105,109,97,116,105,111,110))
end
return
end
_0x311B()
local _0x92FF = Instance.new(string.char(65,110,105,109,97,116,105,111,110))
_0x92FF.AnimationId = _0xABD9
local _0x85B8 = _0xBD98:FindFirstChildOfClass(string.char(65,110,105,109,97,116,111,114)) or _0xBD98
local _0x3E35, _0x2984 = pcall(function()
return _0x85B8:LoadAnimation(_0x92FF)
end)
if _0x3E35 and _0x2984 then
_0x2984.Priority = Enum.AnimationPriority.Action4
_0x2984.Looped = true
_0x2984:Play(0.25)
_0xB86F = _0x2984
end
end)
end
local function _0xE860(exclude)
local _0x56FE = _0xD33F.Character and _0xD33F.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0x56FE then
return nil
end
local _0x613C, _0xC6A6
for _0xBFE6, _0x0D18 in ipairs(_0x9A21:GetPlayers()) do
if _0x0D18 ~= _0xD33F and _0x0D18 ~= exclude then
local _0x98C3 = _0x2E92(_0x0D18)
if _0x98C3 then
local _0x819A = (_0x98C3.Position - _0x56FE.Position).Magnitude
if not _0xC6A6 or _0x819A < _0xC6A6 then
_0x613C, _0xC6A6 = _0x0D18, _0x819A
end
end
end
end
return _0x613C
end
_0xF709(_0x7FDD.Heartbeat, function()
if not _0x0C97.on then
return
end
local _0x8C06 = _0xD33F.Character
local _0xE4E7 = _0x8C06 and _0x8C06:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0xE4E7 then
return
end
local _0xB6CB = _0x2E92(_0x0C97.target)
if not _0xB6CB then
_0x0C97.target = _0xE860()
_0xB6CB = _0x2E92(_0x0C97.target)
if not _0xB6CB then
return
end
_0xE835(string.char(72,117,103),string.char(104,117,103,103,105,110,103,32).. _0x0C97.target.DisplayName)
end
local _0x88D0 = _0xB6CB.CFrame * CFrame.new(0, 0, -1.4)
_0xE4E7.CFrame = CFrame.lookAt(_0x88D0.Position, Vector3.new(_0xB6CB.Position.X, _0x88D0.Position.Y, _0xB6CB.Position.Z))
_0xE4E7.AssemblyLinearVelocity = Vector3.zero
if not _0xB86F then
_0xFA7F()
end
end)
local _0xDBF6 = _0x78B0(_0xBC91,string.char(72,117,103))
_0xDBF6:Toggle(string.char(72,117,103),string.char(104,117,103,32,116,104,101,32,110,101,97,114,101,115,116,32,112,108,97,121,101,114,32,45,32,101,118,101,114,121,111,110,101,32,115,101,101,115,32,105,116), function(_0x9B7B)
_0x0C97.on = _0x9B7B
if _0x9B7B then
_0x0C97.target = _0xE860()
if _0x0C97.target then
_0xE835(string.char(72,117,103),string.char(104,117,103,103,105,110,103,32).. _0x0C97.target.DisplayName)
_0xFA7F()
else
_0xE835(string.char(72,117,103),string.char(110,111,98,111,100,121,32,97,114,111,117,110,100))
end
else
_0x311B()
_0x0C97.target = nil
end
end)
_0xDBF6:Button(string.char(78,101,120,116,32,112,108,97,121,101,114),string.char(104,117,103,32,115,111,109,101,111,110,101,32,101,108,115,101), function()
local _0xC494 = {}
for _0xBFE6, _0x0D18 in ipairs(_0x9A21:GetPlayers()) do
if _0x0D18 ~= _0xD33F and _0x2E92(_0x0D18) then
table.insert(_0xC494, _0x0D18)
end
end
if #_0xC494 == 0 then
_0xE835(string.char(72,117,103),string.char(110,111,98,111,100,121,32,97,114,111,117,110,100))
return
end
local _0x60FA = table.find(_0xC494, _0x0C97.target) or 0
_0x0C97.target = _0xC494[_0x60FA % #_0xC494 + 1]
_0xE835(string.char(72,117,103),string.char(104,117,103,103,105,110,103,32).. _0x0C97.target.DisplayName)
end)
table.insert(_0x7E96, {
Disconnect = function()
_0x311B()
end,
})
end
do
local _0x946C
local _0x08C7
local _0xE812 = 0
local function _0xBEFC()
return workspace:FindFirstChild(string.char(82,101,103,117,108,97,114,76,111,98,98,121)) or workspace:FindFirstChild(string.char(76,111,98,98,121))
end
local function _0xFDCB(_0x60FA)
local _0x0CDE = _0xBEFC()
if not _0x0CDE then
return nil
end
return _0x0CDE:FindFirstChild(string.char(86,111,116,101,80,97,100).. _0x60FA) or _0x0CDE:FindFirstChild(string.char(86,111,116,101,80,97,100).. _0x60FA, true)
end
local function _0x1732(_0xD4B7)
if not _0xD4B7 then
return nil
end
if _0xD4B7:IsA(string.char(66,97,115,101,80,97,114,116)) then
return _0xD4B7.CFrame
end
if _0xD4B7:IsA(string.char(77,111,100,101,108)) then
return _0xD4B7:GetPivot()
end
local _0x3066 = _0xD4B7:FindFirstChildWhichIsA(string.char(66,97,115,101,80,97,114,116), true)
return _0x3066 and _0x3066.CFrame
end
local _0x5634 = {}
local function _0x7A65()
table.clear(_0x5634)
local _0x50F4 = _0xD33F:FindFirstChildOfClass(string.char(80,108,97,121,101,114,71,117,105))
if not _0x50F4 then
return
end
for _0xBFE6, _0x82D5 in ipairs(_0x50F4:GetDescendants()) do
if (_0x82D5:IsA(string.char(83,117,114,102,97,99,101,71,117,105)) or _0x82D5:IsA(string.char(66,105,108,108,98,111,97,114,100,71,117,105))) and _0x82D5.Adornee then
local _0xC494 = _0x5634[_0x82D5.Adornee] or {}
_0x5634[_0x82D5.Adornee] = _0xC494
table.insert(_0xC494, _0x82D5)
end
end
end
local function _0xD27D(_0xD4B7)
local _0xB1B3 = {}
for adornee, _0xC494 in pairs(_0x5634) do
if adornee == _0xD4B7 or adornee:IsDescendantOf(_0xD4B7) then
for _0xBFE6, _0x82D5 in ipairs(_0xC494) do
table.insert(_0xB1B3, _0x82D5)
end
end
end
local _0x4EAA = _0xD4B7:FindFirstChild(string.char(86,111,116,101,73,110,102,111,71,117,105), true)
if _0x4EAA then
table.insert(_0xB1B3, _0x4EAA)
end
return _0xB1B3
end
local function _0x75CB(_0xD4B7)
if not _0xD4B7 then
return nil, nil
end
local _0x5870, _0x1871
for _0xBFE6, _0x82D5 in ipairs(_0xD27D(_0xD4B7)) do
if _0x82D5:IsA(string.char(76,97,121,101,114,67,111,108,108,101,99,116,111,114)) and not _0x82D5.Enabled then
continue
end
local _0x0A80 = _0x82D5:FindFirstChild(string.char(67,111,110,116,97,105,110,101,114), true) or _0x82D5
local function _0x740C(_0xBD62)
local _0xCA34 = _0x0A80:FindFirstChild(_0xBD62, true)
if _0xCA34 and (_0xCA34:IsA(string.char(84,101,120,116,76,97,98,101,108)) or _0xCA34:IsA(string.char(84,101,120,116,66,117,116,116,111,110))) and _0xCA34.Text ~=""then
return _0xCA34.Text
end
end
_0x5870 = _0x5870 or _0x740C(string.char(77,97,112,78,97,109,101))
local _0xBE50 = _0x740C(string.char(86,111,116,101,115))
if _0xBE50 and (not _0x1871 or (tonumber(_0xBE50:match(string.char(37,100,43))) or 0) > (tonumber(_0x1871:match(string.char(37,100,43))) or 0)) then
_0x1871 = _0xBE50
end
end
return _0x5870, _0x1871
end
local function _0x86BD(_0xD4B7)
local _0x613C, _0x1757 = nil, 0
for _0xBFE6, _0x819A in ipairs(_0xD4B7:GetDescendants()) do
local _0x95B5
if _0x819A:IsA(string.char(73,109,97,103,101,76,97,98,101,108)) or _0x819A:IsA(string.char(73,109,97,103,101,66,117,116,116,111,110)) then
_0x95B5 = _0x819A.Image
elseif _0x819A:IsA(string.char(68,101,99,97,108)) or _0x819A:IsA(string.char(84,101,120,116,117,114,101)) then
_0x95B5 = _0x819A.Texture
end
if _0x95B5 and _0x95B5 ~=""then
local _0xDDE9 = _0x819A.Name:lower()
local _0x61BC = (_0xDDE9:find(string.char(109,97,112)) or _0xDDE9:find(string.char(116,104,117,109,98)) or _0xDDE9:find(string.char(112,114,101,118,105,101,119))) and 3 or ((_0xDDE9:find(string.char(105,109,97,103,101)) or _0xDDE9:find(string.char(105,99,111,110))) and 2 or 1)
if _0x61BC > _0x1757 then
_0x613C, _0x1757 = _0x95B5, _0x61BC
end
end
end
return _0x613C
end
local _0xF8DD = Color3.fromRGB(36, 36, 38)
local _0x353D = Color3.fromRGB(48, 48, 52)
local _0x70CF = Color3.fromRGB(17, 17, 19)
local _0x4783 = _0xB0F3.page
_0xB0F3.custom = true
_0xB0F3.title.Visible = false
_0xB0F3.desc.Visible = false
_0x4783.ScrollingEnabled = false
_0x4783.ScrollBarThickness = 0
_0x4783.CanvasSize = UDim2.new()
_0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(86,111,116,101,32,68,117,112,101,32,77,97,112),
Font = Enum.Font.GothamBold,
TextSize = 18,
TextColor3 = _0x0333,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Size = UDim2.new(1, -110, 0, 22),
Parent = _0x4783,
})
local _0x2B3B = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(112,105,99,107,32,97,32,109,97,112),
Font = Enum.Font.Gotham,
TextSize = 12,
TextColor3 = _0x08BE,
TextXAlignment = Enum.TextXAlignment.Left,
TextTruncate = Enum.TextTruncate.AtEnd,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(0, 22),
Size = UDim2.new(1, -110, 0, 16),
Parent = _0x4783,
})
local function _0x3A55(_0x4903)
_0x2B3B.Text = _0x4903
end
local _0x26D9 = _0x81A6(string.char(84,101,120,116,66,117,116,116,111,110), {
Text =string.char(83,116,111,112),
Font = Enum.Font.GothamBold,
TextSize = 12,
TextColor3 = _0xEE3F,
BackgroundColor3 = _0x3922,
AutoButtonColor = false,
AnchorPoint = Vector2.new(1, 0),
Position = UDim2.new(1, -8, 0, 4),
Size = UDim2.fromOffset(80, 28),
ZIndex = 2,
Parent = _0x4783,
})
_0x46F9(_0x26D9, 8)
local _0xD2BE = _0x39A4(_0x26D9)
local _0xE58D = _0x81A6(string.char(85,73,83,99,97,108,101), { Parent = _0x26D9 })
local _0x7476 = _0x81A6(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(0, 50),
Size = UDim2.new(1, -8, 0, 172),
BackgroundTransparency = 1,
Parent = _0x4783,
})
_0x81A6(string.char(85,73,71,114,105,100,76,97,121,111,117,116), {
CellSize = UDim2.new(0.3333333333333333, -6, 0, 172),
CellPadding = UDim2.fromOffset(8, 8),
SortOrder = Enum.SortOrder.LayoutOrder,
Parent = _0x7476,
})
local _0x0F87 = _0x81A6(string.char(67,97,110,118,97,115,71,114,111,117,112), {
Position = UDim2.fromOffset(0, 46),
Size = UDim2.new(1, -8, 1, -46),
BackgroundTransparency = 1,
GroupTransparency = 1,
Visible = false,
ZIndex = 5,
Parent = _0x4783,
})
local _0x4527 = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.new(0.5, 0, 0.5, -44),
Size = UDim2.fromOffset(136, 136),
BackgroundColor3 = _0x2CF9,
ZIndex = 6,
Parent = _0x0F87,
})
_0x1692(_0x4527)
local _0xB72D = _0x81A6(string.char(85,73,83,116,114,111,107,101), { Color = _0x0333, Thickness = 2, Parent = _0x4527 })
local _0x9C0F = _0x81A6(string.char(85,73,71,114,97,100,105,101,110,116), {
Transparency = NumberSequence.new({
NumberSequenceKeypoint.new(0, 0),
NumberSequenceKeypoint.new(0.5, 0.85),
NumberSequenceKeypoint.new(1, 0),
}),
Parent = _0xB72D,
})
local _0xB8B4 = _0x81A6(string.char(73,109,97,103,101,76,97,98,101,108), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromScale(0.5, 0.5),
Size = UDim2.new(1, -10, 1, -10),
BackgroundColor3 = Color3.fromRGB(22, 22, 22),
ScaleType = Enum.ScaleType.Crop,
Image ="",
ZIndex = 7,
Parent = _0x4527,
})
_0x1692(_0xB8B4)
_0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(122,122,122),
Font = Enum.Font.GothamBlack,
TextSize = 22,
TextColor3 = _0x9245,
BackgroundTransparency = 1,
Size = UDim2.fromScale(1, 1),
ZIndex = 8,
Parent = _0xB8B4,
})
local _0x504C = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(87,97,105,116,105,110,103,32,102,111,114,32,109,97,112),
Font = Enum.Font.GothamBold,
TextSize = 20,
TextColor3 = _0x0333,
BackgroundTransparency = 1,
AnchorPoint = Vector2.new(0.5, 0),
Position = UDim2.new(0.5, 0, 0.5, 38),
Size = UDim2.new(1, 0, 0, 24),
ZIndex = 6,
Parent = _0x0F87,
})
local _0x5868 = _0x81A6(string.char(85,73,71,114,97,100,105,101,110,116), { Parent = _0x504C })
local _0x58A8 = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0),
Position = UDim2.new(0.5, 0, 0.5, 68),
Size = UDim2.fromOffset(36, 12),
BackgroundTransparency = 1,
ZIndex = 6,
Parent = _0x0F87,
})
local _0x7563 = {}
for _0x60FA = 1, 3 do
_0x7563[_0x60FA] = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.new(0, 6 + (_0x60FA - 1) * 12, 0.5, 0),
Size = UDim2.fromOffset(5, 5),
BackgroundColor3 = _0x0333,
ZIndex = 6,
Parent = _0x58A8,
})
_0x1692(_0x7563[_0x60FA])
end
_0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(114,111,117,110,100,32,105,115,32,111,110,32,32,194,183,32,32,109,97,112,115,32,115,104,111,119,32,117,112,32,119,104,101,110,32,118,111,116,105,110,103,32,115,116,97,114,116,115),
Font = Enum.Font.Gotham,
TextSize = 12,
TextColor3 = _0x08BE,
BackgroundTransparency = 1,
AnchorPoint = Vector2.new(0.5, 0),
Position = UDim2.new(0.5, 0, 0.5, 86),
Size = UDim2.new(1, 0, 0, 16),
ZIndex = 6,
Parent = _0x0F87,
})
local _0x456B = false
local _0xE072 = _0x81A6(string.char(85,73,83,99,97,108,101), { Parent = _0x0F87 })
local _0x2E40 = _0x81A6(string.char(85,73,83,99,97,108,101), { Parent = _0x7476 })
local function _0x6436(_0x9B7B)
if _0x9B7B == _0x456B then
return
end
_0x456B = _0x9B7B
if _0x9B7B then
_0x7476.Visible = false
_0x0F87.Visible = true
_0xE072.Scale = 0.92
_0x0ED9(_0xE072, 0.45, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
_0x0ED9(_0x0F87, 0.35, { GroupTransparency = 0 })
else
local _0x4903 = _0x0ED9(_0x0F87, 0.2, { GroupTransparency = 1 })
_0x4903.Completed:Connect(function()
if not _0x456B then
_0x0F87.Visible = false
end
end)
_0x7476.Visible = true
_0x2E40.Scale = 0.9
_0x0ED9(_0x2E40, 0.45, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
end
end
local _0x15AC = os.clock()
_0xF709(_0x7FDD.RenderStepped, function()
if not _0x0F87.Visible or not _0x2D1C.Visible then
return
end
local _0x4903 = os.clock() - _0x15AC
_0x9C0F.Rotation = _0x4903 * 140 % 360
_0x5868.Color = _0x2F28(_0x4903 * 0.35)
local _0x5D9E = math.sin(_0x4903 * 1.6) * 4
_0x4527.Position = UDim2.new(0.5, 0, 0.5, -44 + _0x5D9E)
for _0x60FA, _0x819A in ipairs(_0x7563) do
local _0x3FFC = math.max(0, math.sin(_0x4903 * 5 - _0x60FA * 0.7))
_0x819A.Position = UDim2.new(0, 6 + (_0x60FA - 1) * 12, 0.5, -_0x3FFC * 5)
_0x819A.BackgroundTransparency = 0.6 - _0x3FFC * 0.6
end
end)
local _0x178B = {}
local _0x0712
local _0xA52C = false
local function _0x6F72(_0x9B7B)
if _0x9B7B and not _0xA52C then
local _0x8C06 = _0xD33F.Character
_0xE4E6(_0x8C06 and _0x8C06:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)))
_0xA52C = true
if _0x4CBA.on then
_0xE835(string.char(68,101,115,121,110,99,32,112,97,117,115,101,100),string.char(116,117,114,110,101,100,32,111,102,102,32,119,104,105,108,101,32,121,111,117,32,100,117,112,101,32,109,97,112,32,118,111,116,101,115))
end
elseif not _0x9B7B and _0xA52C then
_0x0F18()
_0xA52C = false
if _0x4CBA.on then
_0xE835(string.char(68,101,115,121,110,99,58,32,79,110),string.char(118,111,116,101,32,108,111,111,112,32,101,110,100,101,100,32,45,32,100,101,115,121,110,99,32,105,115,32,98,97,99,107))
end
end
end
local function _0x48B4(silent)
local _0xA22A = _0x946C
_0x946C = nil
_0x6F72(false)
if _0x08C7 then
pcall(task.cancel, _0x08C7)
_0x08C7 = nil
end
_0x0712()
if _0xA22A and not silent then
_0x3A55(string.char(115,116,111,112,112,101,100,32,32,194,183,32,32).. _0xE812 ..string.char(32,118,111,116,101,115,32,99,97,115,116))
_0xE835(string.char(86,111,116,101,32,68,117,112,101),string.char(108,111,111,112,32,115,116,111,112,112,101,100))
end
end
local function _0xB35F(_0x60FA)
local _0xD4B7 = _0xFDCB(_0x60FA)
if not _0xD4B7 then
return false
end
local _0x5870, _0x1871 = _0x75CB(_0xD4B7)
if not (_0x5870 and _0x1871) then
return false
end
return true, tonumber(_0x1871:match(string.char(37,100,43)))
end
local function _0x2DA4(reason)
if not _0x946C then
return
end
_0x946C = nil
_0x6F72(false)
local _0xB6CB = _0x08C7
_0x08C7 = nil
if _0xB6CB and _0xB6CB ~= coroutine.running() then
pcall(task.cancel, _0xB6CB)
end
_0x0712()
_0x3A55(reason ..string.char(32,32,194,183,32,32).. _0xE812 ..string.char(32,118,111,116,101,115,32,99,97,115,116))
_0xE835(string.char(86,111,116,101,32,68,117,112,101), reason ..string.char(32,45,32,108,111,111,112,32,115,116,111,112,112,101,100))
end
local function _0x4FE8(_0x60FA)
_0x48B4(true)
_0x946C = _0x60FA
_0xE812 = 0
_0x6F72(true)
_0x0712()
local _0xBD62 = _0x178B[_0x60FA].map orstring.char(112,97,100,32,35).. _0x60FA
_0x3A55(string.char(108,111,111,112,105,110,103,32,111,110,32).. _0xBD62)
_0xE835(string.char(86,111,116,101,32,68,117,112,101),string.char(118,111,116,105,110,103,32,102,111,114,32).. _0xBD62)
_0x08C7 = task.spawn(function()
local _0x613C, _0x67C3 = nil, 0
while _0x946C == _0x60FA do
_0x7A65()
local _0x2395, _0x5AC5 = _0xB35F(_0x60FA)
if not _0x2395 then
_0x2DA4(string.char(118,111,116,105,110,103,32,101,110,100,101,100))
return
end
_0x613C = _0x613C or _0x5AC5
local _0x8C06 = _0xD33F.Character
local _0xBD98 = _0x8C06 and _0x8C06:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0xB7F6 = _0x8C06 and _0x8C06:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xA213 = _0x1732(_0xFDCB(_0x60FA))
if _0xBD98 and _0xBD98.Health > 0 and _0xB7F6 and _0xA213 then
_0xB7F6.CFrame = _0xA213 + Vector3.new(0, 2.5, 0)
local _0x3FF6 = _0x5AC5
local _0xADEA = os.clock()
repeat
_0x7FDD.Heartbeat:Wait()
_0xB7F6.CFrame = _0xA213 + Vector3.new(0, 2.5, 0)
_0x7A65()
local _0xBFE6, _0xD51E = _0xB35F(_0x60FA)
if _0xD51E and _0x3FF6 and _0xD51E > _0x3FF6 then
break
end
until os.clock() - _0xADEA >= 0.4 or _0x946C ~= _0x60FA
if _0x946C ~= _0x60FA then
break
end
_0x7A65()
_0x2395, _0x5AC5 = _0xB35F(_0x60FA)
if not _0x2395 then
_0x2DA4(string.char(118,111,116,105,110,103,32,101,110,100,101,100))
return
end
if _0x5AC5 and _0x613C and _0x5AC5 <= _0x613C then
_0x67C3 += 1
if _0x67C3 >= 3 then
_0x2DA4(string.char(118,111,116,101,115,32,110,111,116,32,99,111,117,110,116,105,110,103))
return
end
else
_0x67C3 = 0
_0x613C = _0x5AC5 or _0x613C
end
_0xE812 += 1
_0x3A55(string.char(108,111,111,112,105,110,103,32,111,110,32).. (_0x178B[_0x60FA].map orstring.char(112,97,100,32,35).. _0x60FA) ..string.char(32,32,194,183,32,32).. _0xE812 ..string.char(32,118,111,116,101,115,32,99,97,115,116))
if _0xBD98.Health > 0 then
_0xBD98.Health = 0
end
local _0x43CE = _0xD33F.CharacterAdded:Wait()
_0x43CE:WaitForChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116), 3)
task.wait(0.12)
local _0x5ED5 = _0x43CE:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0x777C = _0x1732(_0xFDCB(_0x60FA))
if _0x946C == _0x60FA and _0x5ED5 and (not _0x777C or (_0x5ED5.Position - _0x777C.Position).Magnitude > 300) then
_0x2DA4(string.char(114,111,117,110,100,32,115,116,97,114,116,101,100))
return
end
elseif not _0xBD98 or _0xBD98.Health <= 0 then
local _0xB4A4 = _0xD33F.CharacterAdded:Wait()
_0xB4A4:WaitForChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116), 3)
task.wait(0.12)
else
task.wait(0.2)
end
end
end)
end
for _0x60FA = 1, 3 do
local _0xFCDE = _0x81A6(string.char(84,101,120,116,66,117,116,116,111,110), {
Text ="",
AutoButtonColor = false,
BackgroundTransparency = 1,
LayoutOrder = _0x60FA,
ZIndex = 2,
Parent = _0x7476,
})
local _0xDD55 = _0x81A6(string.char(85,73,83,99,97,108,101), { Parent = _0xFCDE })
local _0x1823 = _0x81A6(string.char(70,114,97,109,101), { Size = UDim2.new(1, 0, 0, 112), BackgroundColor3 = _0xF8DD, ZIndex = 2, Parent = _0xFCDE })
_0x46F9(_0x1823, 8)
local _0x5E6F = _0x39A4(_0x1823)
local _0xE523 = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(63),
Font = Enum.Font.GothamBlack,
TextSize = 28,
TextColor3 = _0x9245,
BackgroundTransparency = 1,
Size = UDim2.new(1, 0, 1, -18),
ZIndex = 3,
Parent = _0x1823,
})
local _0x95B5 = _0x81A6(string.char(73,109,97,103,101,76,97,98,101,108), {
Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1,
ScaleType = Enum.ScaleType.Crop,
ImageColor3 = Color3.fromRGB(200, 200, 200),
ImageTransparency = 1,
ZIndex = 3,
Parent = _0x1823,
})
_0x46F9(_0x95B5, 8)
local _0x02F8 = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0, 1),
Position = UDim2.fromScale(0, 1),
Size = UDim2.new(1, 0, 0, 44),
BackgroundColor3 = Color3.new(0, 0, 0),
BorderSizePixel = 0,
ZIndex = 4,
Parent = _0x1823,
})
_0x46F9(_0x02F8, 8)
_0x81A6(string.char(85,73,71,114,97,100,105,101,110,116), { Rotation = 90, Transparency = NumberSequence.new(1, 0.25), Parent = _0x02F8 })
local _0xB2D1 = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(1, 0),
Position = UDim2.new(1, -6, 0, 6),
Size = UDim2.fromOffset(64, 16),
BackgroundColor3 = _0x0333,
Visible = false,
ZIndex = 5,
Parent = _0x1823,
})
_0x46F9(_0xB2D1, 5)
local _0xFEF6 = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0, 0.5),
Position = UDim2.new(0, 6, 0.5, 0),
Size = UDim2.fromOffset(5, 5),
BackgroundColor3 = _0xD583,
ZIndex = 6,
Parent = _0xB2D1,
})
_0x1692(_0xFEF6)
_0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(82,85,78,78,73,78,71),
Font = Enum.Font.GothamBold,
TextSize = 9,
TextColor3 = _0xD583,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(14, 0),
Size = UDim2.new(1, -16, 1, 0),
ZIndex = 6,
Parent = _0xB2D1,
})
local _0x1871 = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(60,102,111,110,116,32,99,111,108,111,114,61,34,35,70,70,70,70,70,70,34,62,60,98,62,45,60,47,98,62,60,47,102,111,110,116,62,32,60,102,111,110,116,32,99,111,108,111,114,61,34,35,57,65,57,65,57,65,34,62,118,111,116,101,115,60,47,102,111,110,116,62),
RichText = true,
Font = Enum.Font.GothamMedium,
TextSize = 12,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
AnchorPoint = Vector2.new(0, 1),
Position = UDim2.new(0, 8, 1, -5),
Size = UDim2.new(1, -16, 0, 16),
ZIndex = 5,
Parent = _0x1823,
})
local _0x6161 = _0x81A6(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(0, 118),
Size = UDim2.new(1, 0, 1, -118),
BackgroundColor3 = _0x70CF,
ZIndex = 2,
Parent = _0xFCDE,
})
_0x46F9(_0x6161, 8)
local _0x6EB6 = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(76,79,65,68,73,78,71,46,46,46),
Font = Enum.Font.GothamBold,
TextSize = 11,
TextColor3 = _0x0333,
TextWrapped = true,
TextTruncate = Enum.TextTruncate.AtEnd,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(6, 0),
Size = UDim2.new(1, -12, 1, 0),
ZIndex = 3,
Parent = _0x6161,
})
local _0xD51E = {
_0x1823 = _0x1823,
_0x6D2C = _0x5E6F,
_0x95B5 = _0x95B5,
_0xE523 = _0xE523,
run = _0xB2D1,
_0xFEF6 = _0xFEF6,
_0x1871 = _0x1871,
_0xBD62 = _0x6EB6,
_0xB3B6 = false,
}
_0x178B[_0x60FA] = _0xD51E
_0xF709(_0xFCDE.MouseEnter, function()
_0xD51E.hover = true
_0x0712()
end)
_0xF709(_0xFCDE.MouseLeave, function()
_0xD51E.hover = false
_0x0712()
end)
_0xF709(_0xFCDE.MouseButton1Click, function()
_0xDD55.Scale = 0.94
_0x0ED9(_0xDD55, 0.35, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
if _0x946C == _0x60FA then
_0x48B4()
else
_0x4FE8(_0x60FA)
end
end)
end
_0x0712 = function()
for _0x60FA, _0xD51E in ipairs(_0x178B) do
local _0x9B7B = _0x946C == _0x60FA
_0x0ED9(_0xD51E.thumb, 0.15, { BackgroundColor3 = _0xD51E.hover and _0x353D or _0xF8DD })
_0x0ED9(_0xD51E.stroke, 0.2, {
Color = _0x9B7B and _0x0333 or (_0xD51E.hover and _0x9CCA or _0x7988),
Thickness = _0x9B7B and 1.5 or 1,
})
_0x0ED9(_0xD51E.img, 0.2, { ImageColor3 = (_0x9B7B or _0xD51E.hover) and _0x0333 or Color3.fromRGB(200, 200, 200) })
if _0x9B7B and not _0xD51E.run.Visible then
_0xD51E.run.Visible = true
_0xD51E.run.Size = UDim2.fromOffset(40, 16)
_0x0ED9(_0xD51E.run, 0.3, { Size = UDim2.fromOffset(64, 16) }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
elseif not _0x9B7B then
_0xD51E.run.Visible = false
end
end
local _0x052E = _0x946C ~= nil
_0x0ED9(_0x26D9, 0.2, {
BackgroundColor3 = _0x052E and _0x0333 or _0x3922,
TextColor3 = _0x052E and _0xD583 or _0xEE3F,
})
_0x0ED9(_0xD2BE, 0.2, { Color = _0x052E and _0x0333 or _0x7988 })
end
_0x0712()
_0xF709(_0x26D9.MouseButton1Click, function()
_0xE58D.Scale = 0.85
_0x0ED9(_0xE58D, 0.35, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
if _0x946C then
_0x48B4()
else
_0xE835(string.char(86,111,116,101,32,68,117,112,101),string.char(110,111,116,104,105,110,103,32,105,115,32,114,117,110,110,105,110,103))
end
end)
_0xF709(_0x7FDD.Heartbeat, function()
if not _0x946C then
return
end
local _0xD51E = _0x178B[_0x946C]
_0xD51E.runDot.BackgroundTransparency = 0.5 - 0.5 * math.cos(os.clock() * 6)
end)
local function _0xCF89(_0xD51E, _0xDC93)
if _0xD51E.image == _0xDC93 then
return
end
_0xD51E.image = _0xDC93
_0xD51E.img.Image = _0xDC93 or""_0x0ED9(_0xD51E.img, 0.3, { ImageTransparency = _0xDC93 and 0 or 1 })
_0xD51E.ph.Visible = not _0xDC93
end
task.spawn(function()
while _0x4696.Parent do
pcall(function()
local _0x0CDE = _0xBEFC()
_0x7A65()
local _0x74FC = false
for _0x60FA, _0xD51E in ipairs(_0x178B) do
local _0xD4B7 = _0x0CDE and _0xFDCB(_0x60FA)
local _0x5870, _0x1871
if _0xD4B7 then
_0x5870, _0x1871 = _0x75CB(_0xD4B7)
end
if _0x5870 then
_0x74FC = true
end
if not _0x0CDE then
_0xD51E.name.Text =string.char(82,79,85,78,68,32,73,83,32,79,78)elseif not _0xD4B7 then
_0xD51E.name.Text =string.char(85,78,65,86,65,73,76,65,66,76,69)elseif _0x5870 and _0x5870 ~= _0xD51E.map then
_0xD51E.map = _0x5870
_0xD51E.name.Text = _0x5870:upper()
local _0xB03B =""for _0x42FB in _0x5870:gmatch(string.char(37,83,43)) do
_0xB03B ..= _0x42FB:sub(1, 1):upper()
end
_0xD51E.ph.Text = _0xB03B:sub(1, 3)
_0xCF89(_0xD51E, _0x86BD(_0xD4B7))
end
if not _0xD4B7 then
_0xD51E.map = nil
_0xD51E.ph.Text =string.char(63)_0xCF89(_0xD51E, nil)
end
_0xD51E.votes.Text = (string.char(60,102,111,110,116,32,99,111,108,111,114,61,34,35,70,70,70,70,70,70,34,62,60,98,62,37,115,60,47,98,62,60,47,102,111,110,116,62,32,60,102,111,110,116,32,99,111,108,111,114,61,34,35,57,65,57,65,57,65,34,62,118,111,116,101,115,60,47,102,111,110,116,62)):format(_0x1871 orstring.char(45))
end
if _0x946C and not _0xB35F(_0x946C) then
_0x2DA4(string.char(118,111,116,105,110,103,32,101,110,100,101,100))
end
_0x6436(not _0x74FC and not _0x946C)
if not _0x946C then
_0x3A55(_0x74FC andstring.char(112,105,99,107,32,97,32,109,97,112)orstring.char(114,111,117,110,100,32,105,115,32,111,110))
end
end)
task.wait(0.5)
end
end)
_0x88FE = function()
_0x48B4(true)
end
end
do
local _0x9B23 = { _0x9B7B = false }
local _0xFDEA = false
local _0x17A4
local _0x1E6E = {}
local function _0x700E(_0xBD62)
return _0xBF86(_0xD33F, _0xBD62)
end
local function _0x48A1(_0x819A)
if _0x819A:IsA(string.char(66,97,115,101,80,97,114,116)) then
return _0x819A
end
if _0x819A:IsA(string.char(77,111,100,101,108)) then
return _0x819A.PrimaryPart or _0x819A:FindFirstChildWhichIsA(string.char(66,97,115,101,80,97,114,116), true)
end
end
local function _0x76FD()
if _0x17A4 and _0x17A4.Parent then
return _0x17A4
end
for _0xBFE6, _0x819A in ipairs(workspace:GetDescendants()) do
if _0x819A.Name ==string.char(71,117,110,68,114,111,112)then
local _0x82D5 = _0x48A1(_0x819A)
if _0x82D5 then
return _0x82D5
end
end
end
end
local function _0x0208(_0xE4E7, _0x82D5)
if firetouchinterest then
firetouchinterest(_0xE4E7, _0x82D5, 0)
firetouchinterest(_0xE4E7, _0x82D5, 1)
end
end
local function _0xF38B()
for _0xBFE6, _0x0D18 in ipairs(_0x9A21:GetPlayers()) do
if _0x0D18 ~= _0xD33F and _0xBF86(_0x0D18,string.char(75,110,105,102,101)) then
local _0xD51E = _0x0D18.Character
local _0x98C3 = _0xD51E and _0xD51E:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if _0x98C3 then
return _0x98C3.Position
end
end
end
end
local function _0xFD7C(_0xF33E, manual, deathPos)
if _0xFDEA then
return
end
local _0x8C06 = _0xD33F.Character
local _0xE4E7 = _0x8C06 and _0x8C06:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xBD98 = _0x8C06 and _0x8C06:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if not _0xE4E7 or not _0xBD98 or _0xBD98.Health <= 0 then
return
end
if not manual and _0x90B5(_0xE4E7.Position) then
return
end
if _0x700E(string.char(75,110,105,102,101)) then
if manual then
_0xE835(string.char(71,114,97,98,32,71,117,110),string.char(109,117,114,100,101,114,101,114,32,99,97,110,39,116,32,112,105,99,107,32,117,112,32,116,104,101,32,103,117,110))
end
return
end
if _0x700E(string.char(71,117,110)) then
return
end
_0xF33E = _0xF33E or _0x76FD()
if not _0xF33E and not deathPos then
if manual then
_0xE835(string.char(71,114,97,98,32,71,117,110),string.char(110,111,32,100,114,111,112,112,101,100,32,103,117,110,32,114,105,103,104,116,32,110,111,119))
end
return
end
_0xFDEA = true
local _0x8F96 = os.clock()
local function _0x052E(_0x82D5)
return _0x82D5 and _0x82D5.Parent and _0x82D5 or nil
end
while not _0x052E(_0xF33E) and os.clock() - _0x8F96 < 1.5 do
_0xF33E = _0x052E(_0x17A4)
if _0xF33E then
break
end
_0x7FDD.Heartbeat:Wait()
end
if not _0x052E(_0xF33E) or not _0xE4E7.Parent or _0xBD98.Health <= 0 then
_0xFDEA = false
return
end
if not manual then
local _0x3F0B = os.clock()
while os.clock() - _0x3F0B < 3 do
local _0x16A1 = _0xF38B()
if not _0x16A1 or not _0x052E(_0xF33E) or (_0x16A1 - _0xF33E.Position).Magnitude > 8 then
break
end
_0x7FDD.Heartbeat:Wait()
end
if not _0x052E(_0xF33E) then
_0xFDEA = false
return
end
end
_0xE4E6(_0xE4E7)
local _0x7BF7 = _0xE4E7.CFrame
local _0x8E73 = false
local _0xA213
local function _0x348A(_0xD51E)
if _0xD51E.Name ~=string.char(71,117,110)or _0x8E73 then
return
end
_0x8E73 = true
_0xA213 = nil
if _0xE4E7.Parent and _0xBD98.Health > 0 then
_0xE4E7.CFrame = _0x7BF7
_0xE4E7.AssemblyLinearVelocity = Vector3.zero
end
end
local _0xCBAB = _0xD33F:FindFirstChildOfClass(string.char(66,97,99,107,112,97,99,107))
local _0xC178 = _0xCBAB and _0xCBAB.ChildAdded:Connect(_0x348A)
local _0x35A1 = _0x8C06.ChildAdded:Connect(_0x348A)
local _0x2DDF = _0x7FDD.Stepped:Connect(function()
if _0xA213 and _0xE4E7.Parent then
_0xE4E7.CFrame = _0xA213
_0xE4E7.AssemblyLinearVelocity = Vector3.zero
end
end)
_0x0208(_0xE4E7, _0xF33E)
_0x7FDD.Heartbeat:Wait()
if not _0x8E73 and _0x700E(string.char(71,117,110)) then
_0x8E73 = true
end
if not _0x8E73 then
local _0xD9F3 = os.clock()
while not _0x8E73 and os.clock() - _0xD9F3 < 0.35 do
_0xF33E = _0x052E(_0xF33E) or _0x052E(_0x17A4)
if not _0xF33E or not _0xE4E7.Parent or _0xBD98.Health <= 0 then
break
end
_0xA213 = _0xF33E.CFrame
_0xE4E7.CFrame = _0xA213
_0xE4E7.AssemblyLinearVelocity = Vector3.zero
_0x0208(_0xE4E7, _0xF33E)
_0x7FDD.Heartbeat:Wait()
if not _0x8E73 and _0x700E(string.char(71,117,110)) then
_0x348A({ Name =string.char(71,117,110)})
end
end
end
_0x2DDF:Disconnect()
if _0xC178 then
_0xC178:Disconnect()
end
_0x35A1:Disconnect()
_0xA213 = nil
if _0xE4E7.Parent and _0xBD98.Health > 0 then
_0xE4E7.CFrame = _0x7BF7
_0xE4E7.AssemblyLinearVelocity = Vector3.zero
end
_0xFDEA = false
_0x0F18()
if _0x8E73 then
_0xE835(string.char(71,114,97,98,32,71,117,110), (string.char(103,117,110,32,103,114,97,98,98,101,100,32,105,110,32,37,100,32,109,115)):format(math.floor((os.clock() - _0x8F96) * 1000)))
elseif manual then
_0xE835(string.char(71,114,97,98,32,71,117,110),string.char(99,111,117,108,100,110,39,116,32,103,114,97,98,32,105,116))
end
end
_0xF709(workspace.DescendantAdded, function(_0x819A)
if _0x819A.Name ~=string.char(71,117,110,68,114,111,112)then
return
end
local _0x82D5 = _0x48A1(_0x819A)
if not _0x82D5 then
return
end
_0x17A4 = _0x82D5
if _0x9B23.on and not _0xFDEA then
task.spawn(_0xFD7C, _0x82D5)
end
end)
_0xF709(_0x7FDD.Heartbeat, function()
if not _0x9B23.on then
if next(_0x1E6E) then
table.clear(_0x1E6E)
end
return
end
for _0xBFE6, _0x0D18 in ipairs(_0x9A21:GetPlayers()) do
if _0x0D18 ~= _0xD33F then
local _0x8C06 = _0x0D18.Character
local _0xE4E7 = _0x8C06 and _0x8C06:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xBD98 = _0x8C06 and _0x8C06:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0x2E92 = _0xE4E7 and _0xBD98 and _0xBD98.Health > 0
if _0x2E92 and _0xBF86(_0x0D18,string.char(71,117,110)) then
_0x1E6E[_0x0D18] = _0xE4E7.Position
elseif _0x1E6E[_0x0D18] then
local _0x16A1 = _0x1E6E[_0x0D18]
_0x1E6E[_0x0D18] = nil
if _0xBD98 and _0xBD98.Health <= 0 and not _0xFDEA then
task.spawn(_0xFD7C, nil, false, _0x16A1)
end
end
end
end
for _0x0D18 in pairs(_0x1E6E) do
if not _0x0D18.Parent then
_0x1E6E[_0x0D18] = nil
end
end
end)
local _0xDBF6 = _0x78B0(_0xDBCA,string.char(65,117,116,111,32,71,114,97,98,32,71,117,110))
_0xDBF6:Toggle(string.char(69,110,97,98,108,101),string.char(115,104,101,114,105,102,102,32,100,105,101,115,32,45,32,121,111,117,32,103,114,97,98,32,116,104,101,32,103,117,110,32,105,110,115,116,97,110,116,108,121), function(_0x9B7B)
_0x9B23.on = _0x9B7B
if _0x9B7B then
task.spawn(_0xFD7C)
end
_0xE835(string.char(71,114,97,98,32,71,117,110,58,32).. (_0x9B7B andstring.char(79,110)orstring.char(79,102,102)), _0x9B7B andstring.char(119,97,105,116,105,110,103,32,102,111,114,32,97,32,100,114,111,112,112,101,100,32,103,117,110)orstring.char(100,105,115,97,98,108,101,100))
end)
_0xDBF6:Button(string.char(71,114,97,98,32,110,111,119),string.char(116,97,107,101,32,116,104,101,32,100,114,111,112,112,101,100,32,103,117,110,32,114,105,103,104,116,32,110,111,119), function()
_0xFD7C(nil, true)
end)
if not firetouchinterest then
_0xDBF6:Button(string.char(78,111,32,102,105,114,101,116,111,117,99,104,105,110,116,101,114,101,115,116),string.char(101,120,101,99,117,116,111,114,32,108,97,99,107,115,32,105,116,32,45,32,103,114,97,98,32,114,101,108,105,101,115,32,111,110,32,116,101,108,101,112,111,114,116,32,111,110,108,121), function() end)
end
end
do
local _0x8F5E = { autoSheriff = false, _0xFDEA = false, cancel = false, nextScan = 0, autoCharacter = nil, autoReadyAt = 0 }
local _0x5680 = {}
local _0x0756, _0x3098 = {}, 0
local _0xC70C
local function _0x6C9F()
if os.clock() - _0x3098 < 1 then
return
end
_0x3098 = os.clock()
local _0x324D = game:GetService(string.char(82,101,112,108,105,99,97,116,101,100,83,116,111,114,97,103,101)):FindFirstChild(string.char(71,101,116,80,108,97,121,101,114,68,97,116,97), true)
if not (_0x324D and _0x324D:IsA(string.char(82,101,109,111,116,101,70,117,110,99,116,105,111,110))) then
return
end
local _0x3E35, _0xC352 = pcall(_0x324D.InvokeServer, _0x324D)
if not _0x3E35 or type(_0xC352) ~=string.char(116,97,98,108,101)then
return
end
local _0xBE1C = {}
for _0xBD62, _0xD38E in pairs(_0xC352) do
if type(_0xD38E) ==string.char(116,97,98,108,101)and type(_0xD38E.Role) ==string.char(115,116,114,105,110,103)and not _0xD38E.Dead and not _0xD38E.Killed then
_0xBE1C[_0xBD62] = _0xD38E.Role
end
end
_0x0756 = _0xBE1C
end
local function _0xA2DB(_0x0D18, _0x439E)
if _0x439E ==string.char(77,117,114,100,101,114,101,114)and _0xBF86(_0x0D18,string.char(75,110,105,102,101)) then
return true
end
if _0x439E ==string.char(83,104,101,114,105,102,102)and _0xBF86(_0x0D18,string.char(71,117,110)) then
return true
end
local _0x8F5D = _0x0756[_0x0D18.Name]
return _0x439E ==string.char(77,117,114,100,101,114,101,114)and _0x8F5D ==string.char(77,117,114,100,101,114,101,114)or _0x439E ==string.char(83,104,101,114,105,102,102)and (_0x8F5D ==string.char(83,104,101,114,105,102,102)or _0x8F5D ==string.char(72,101,114,111))
end
local function _0x8BB1(_0x439E)
for _0xBFE6, _0x0D18 in ipairs(_0x9A21:GetPlayers()) do
if _0x0D18 ~= _0xD33F and _0xA2DB(_0x0D18, _0x439E) then
local _0x8C06 = _0x0D18.Character
local _0xBD98 = _0x8C06 and _0x8C06:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0xB7F6 = _0x8C06 and _0x8C06:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if _0xBD98 and _0xBD98.Health > 0 and _0xB7F6 then
return _0x0D18
end
end
end
_0x6C9F()
for _0xBFE6, _0x0D18 in ipairs(_0x9A21:GetPlayers()) do
if _0x0D18 ~= _0xD33F and _0xA2DB(_0x0D18, _0x439E) then
local _0x8C06 = _0x0D18.Character
local _0xBD98 = _0x8C06 and _0x8C06:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0xB7F6 = _0x8C06 and _0x8C06:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if _0xBD98 and _0xBD98.Health > 0 and _0xB7F6 then
return _0x0D18
end
end
end
end
local function _0x0CBD(_0x16A1, _0x9C5B)
local _0x4527 = _0x81A6(string.char(80,97,114,116), {
Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,70,108,105,110,103,73,109,112,97,99,116),
Anchored = true,
CanCollide = false,
CanQuery = false,
CanTouch = false,
CastShadow = false,
Material = Enum.Material.Neon,
Color = _0x9C5B,
Transparency = 0.15,
Shape = Enum.PartType.Cylinder,
Size = Vector3.new(0.12, 1, 1),
CFrame = CFrame.new(_0x16A1) * CFrame.Angles(0, 0, math.pi / 2),
Parent = workspace,
})
_0x0ED9(_0x4527, 0.45, { Size = Vector3.new(0.12, 14, 14), Transparency = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
game:GetService(string.char(68,101,98,114,105,115)):AddItem(_0x4527, 0.5)
end
local function _0xEBD0(_0xA213, _0x439E, manual)
if _0x8F5E.busy then
if manual then
_0xE835(string.char(82,111,108,101,32,70,108,105,110,103),string.char(97,110,111,116,104,101,114,32,102,108,105,110,103,32,105,115,32,97,108,114,101,97,100,121,32,114,117,110,110,105,110,103))
end
return false
end
local _0x8C06 = _0xD33F.Character
local _0xBD98 = _0x8C06 and _0x8C06:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0xB7F6 = _0x8C06 and _0x8C06:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0x98C2 = _0xA213 and _0xA213.Character
local _0xA267 = _0x98C2 and _0x98C2:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0x3B1F = _0x98C2 and _0x98C2:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not (_0xB7F6 and _0xBD98 and _0xBD98.Health > 0 and _0x3B1F and _0xA267 and _0xA267.Health > 0) then
if manual then
_0xE835(string.char(82,111,108,101,32,70,108,105,110,103), _0x439E:lower() ..string.char(32,105,115,32,110,111,116,32,97,118,97,105,108,97,98,108,101))
end
return false
end
if _0xA267.Sit then
if manual then
_0xE835(string.char(82,111,108,101,32,70,108,105,110,103), _0xA213.DisplayName ..string.char(32,105,115,32,115,105,116,116,105,110,103))
end
return false
end
_0x8F5E.busy, _0x8F5E.cancel = true, false
local _0x3D86 = _0x4CBA.on or _0x4CBA.force
if _0x3D86 then
_0xE4E6(_0xB7F6)
end
local _0x7E39 = _0x8C06:GetPivot()
local _0x29A8 = _0xBD98.AutoRotate
local _0x4C09 = workspace.FallenPartsDestroyHeight
local _0x6F92 = _0xBD98:GetStateEnabled(Enum.HumanoidStateType.Seated)
local _0xFB80 = false
local _0x5D9D = _0x0EBB.antiFling == true
local _0x9C5B = _0x439E ==string.char(83,104,101,114,105,102,102)and Color3.fromRGB(70, 150, 255) or Color3.fromRGB(255, 70, 70)
local _0x7268 = _0x81A6(string.char(72,105,103,104,108,105,103,104,116), {
Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,70,108,105,110,103,84,97,114,103,101,116),
Adornee = _0x98C2,
DepthMode = Enum.HighlightDepthMode.AlwaysOnTop,
FillColor = _0x9C5B,
FillTransparency = 0.65,
OutlineColor = _0x0333,
OutlineTransparency = 0,
Parent = _0x98C2,
})
local _0x99C9 = _0x81A6(string.char(66,105,108,108,98,111,97,114,100,71,117,105), {
Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,70,108,105,110,103,77,97,114,107,101,114),
Adornee = _0x3B1F,
AlwaysOnTop = true,
Size = UDim2.fromOffset(150, 30),
StudsOffset = Vector3.new(0, 3.5, 0),
Parent = _0x4696,
})
_0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(70,76,73,78,71,73,78,71,32,32,226,134,147),
Font = Enum.Font.GothamBlack,
TextSize = 14,
TextColor3 = _0x9C5B,
TextStrokeColor3 = Color3.new(),
TextStrokeTransparency = 0.25,
BackgroundTransparency = 1,
Size = UDim2.fromScale(1, 1),
Parent = _0x99C9,
})
local _0x8EA5 = _0x81A6(string.char(66,111,100,121,86,101,108,111,99,105,116,121), {
Velocity = Vector3.zero,
MaxForce = Vector3.new(9e9, 9e9, 9e9),
Parent = _0xB7F6,
})
local _0xF404 = false
local function _0x8815()
if _0xF404 then
return
end
_0xF404 = true
for _0xBFE6, _0xBA21 in ipairs({ _0x8EA5, _0x7268, _0x99C9 }) do
if _0xBA21 and _0xBA21.Parent then
_0xBA21:Destroy()
end
end
pcall(_0xBD98.SetStateEnabled, _0xBD98, Enum.HumanoidStateType.Seated, _0x6F92)
if _0xD33F.Character == _0x8C06 and _0xB7F6.Parent and _0xBD98.Health > 0 then
pcall(function()
for _0xBFE6 = 1, 6 do
_0x8C06:PivotTo(_0x7E39 * CFrame.new(0, 0.5, 0))
for _0xBFE6, _0x3066 in ipairs(_0x8C06:GetChildren()) do
if _0x3066:IsA(string.char(66,97,115,101,80,97,114,116)) then
_0x3066.AssemblyLinearVelocity = Vector3.zero
_0x3066.AssemblyAngularVelocity = Vector3.zero
end
end
if (_0xB7F6.Position - _0x7E39.Position).Magnitude < 25 then
break
end
_0x7FDD.Heartbeat:Wait()
end
_0xBD98.AutoRotate = _0x29A8
_0xBD98:ChangeState(Enum.HumanoidStateType.GettingUp)
end)
end
if _0xFB80 then
pcall(function()
workspace.FallenPartsDestroyHeight = _0x4C09
end)
end
if _0x5D9D then
_0x0EBB.antiFling = true
end
if _0x3D86 then
_0x0F18()
end
_0x8F5E.busy = false
_0xC70C = nil
end
_0xC70C = _0x8815
if _0x5D9D then
_0xB8F5()
end
_0xBD98.AutoRotate = false
_0xFB80 = pcall(function()
workspace.FallenPartsDestroyHeight = 0 / 0
end)
if not _0xFB80 then
_0x8815()
if manual then
_0xE835(string.char(82,111,108,101,32,70,108,105,110,103),string.char(101,120,101,99,117,116,111,114,32,99,97,110,110,111,116,32,100,105,115,97,98,108,101,32,70,97,108,108,101,110,80,97,114,116,115,68,101,115,116,114,111,121,72,101,105,103,104,116))
end
return false
end
pcall(_0xBD98.SetStateEnabled, _0xBD98, Enum.HumanoidStateType.Seated, false)
pcall(function()
if sethiddenproperty then
sethiddenproperty(_0xD33F,string.char(83,105,109,117,108,97,116,105,111,110,82,97,100,105,117,115), math.huge)
end
end)
local _0xB2B1 = os.clock()
local _0xC22D = _0x3B1F.Position
local _0xAC39 = _0xC22D
local _0xE765 = false
local _0xD057 = _0x3B1F or _0x98C2:FindFirstChild(string.char(72,101,97,100)) or _0x98C2:FindFirstChildWhichIsA(string.char(66,97,115,101,80,97,114,116))
local function _0xDD0C()
if not _0xD057.Parent then
return false
end
_0xC22D = _0xD057.Position
local _0xA81A = (_0xC22D - _0xAC39).Magnitude
local _0xB07F = _0xD057.AssemblyLinearVelocity.Magnitude
return _0xC22D.Y <= _0x4C09 + 30 or _0xA81A > 350 or _0xA81A > 120 and _0xB07F > 200
endlocal function _0xE2E2(_0x16A1, _0x4DD6)
local _0x7800 = CFrame.new(_0xD057.Position) * _0x16A1 * _0x4DD6
_0xB7F6.CFrame = _0x7800
_0x8C06:PivotTo(_0x7800)
_0xB7F6.Velocity = Vector3.new(9e7, 9e8, 9e7)
_0xB7F6.RotVelocity = Vector3.new(9e8, 9e8, 9e8)
end
local _0x3E35, _0x7FEF = pcall(function()
local _0x4DD6 = 0
while os.clock() - _0xB2B1 < 2 and not _0x8F5E.cancel do
if not (_0xB7F6.Parent and _0xBD98.Health > 0 and _0xD057.Parent and _0xA267.Health > 0) then
break
end
if _0xDD0C() then
_0xE765 = true
break
end
local _0xB07F = _0xD057.AssemblyLinearVelocity.Magnitude
_0x4DD6 += 100
local _0xCBF3
if _0xB07F < 50 then
local _0xA44A = _0xA267.MoveDirection * _0xB07F / 1.25
local _0xADE9 = CFrame.Angles(math.rad(_0x4DD6), 0, 0)
_0xCBF3 = {
{ CFrame.new(0, 1.5, 0) + _0xA44A, _0xADE9 },
{ CFrame.new(0, -1.5, 0) + _0xA44A, _0xADE9 },
{ CFrame.new(0, 1.5, 0) + _0xA44A, _0xADE9 },
{ CFrame.new(0, -1.5, 0) + _0xA44A, _0xADE9 },
{ CFrame.new(0, 1.5, 0) + _0xA267.MoveDirection, _0xADE9 },
{ CFrame.new(0, -1.5, 0) + _0xA267.MoveDirection, _0xADE9 },
}
else
local _0x68FD, _0xA790 = CFrame.new(), CFrame.Angles(math.rad(90), 0, 0)
_0xCBF3 = {
{ CFrame.new(0, 1.5, _0xA267.WalkSpeed), _0xA790 },
{ CFrame.new(0, -1.5, -_0xA267.WalkSpeed), _0x68FD },
{ CFrame.new(0, 1.5, _0xA267.WalkSpeed), _0xA790 },
{ CFrame.new(0, -1.5, 0), _0xA790 },
{ CFrame.new(0, -1.5, 0), _0x68FD },
{ CFrame.new(0, -1.5, 0), _0xA790 },
{ CFrame.new(0, -1.5, 0), _0x68FD },
}
end
for _0xBFE6, _0x98EA in ipairs(_0xCBF3) do
_0xE2E2(_0x98EA[1], _0x98EA[2])
task.wait()
if _0x8F5E.cancel or _0xDD0C() then
_0xE765 = not _0x8F5E.cancel
break
end
end
if _0xE765 then
break
end
end
end)
_0x8815()
if _0x3E35 and _0xE765 and _0xC22D then
_0x0CBD(_0xC22D, _0x9C5B)
end
if manual then
if _0x3E35 and _0xE765 then
_0xE835(string.char(70,108,105,110,103,32).. _0x439E, _0xA213.DisplayName ..string.char(32,102,108,117,110,103,32,100,111,119,110))
elseif _0x3E35 then
_0xE835(string.char(82,111,108,101,32,70,108,105,110,103),string.char(116,97,114,103,101,116,32,114,101,115,105,115,116,101,100,32,116,104,101,32,102,108,105,110,103))
else
_0xE835(string.char(82,111,108,101,32,70,108,105,110,103),string.char(102,97,105,108,101,100,58,32).. tostring(_0x7FEF))
end
end
return _0x3E35 and _0xE765
end
local function _0x19DB(_0x439E, manual)
local _0xA213 = _0x8BB1(_0x439E)
if not _0xA213 then
if manual then
_0xE835(string.char(82,111,108,101,32,70,108,105,110,103), _0x439E:lower() ..string.char(32,110,111,116,32,102,111,117,110,100))
end
return false
end
return _0xEBD0(_0xA213, _0x439E, manual), _0xA213
end
_0xF709(_0x7FDD.Heartbeat, function()
if not _0x8F5E.autoSheriff or _0x8F5E.busy or os.clock() < _0x8F5E.nextScan then
return
end
_0x8F5E.nextScan = os.clock() + 0.8
local _0xA213 = _0x8BB1(string.char(83,104,101,114,105,102,102))
local _0x8C06 = _0xA213 and _0xA213.Character
local _0x3B1F = _0x8C06 and _0x8C06:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0x56FE = _0xD33F.Character and _0xD33F.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0x8C06 or not _0x3B1F or not _0x56FE or _0x5680[_0x8C06] or _0x90B5(_0x3B1F.Position) or _0x90B5(_0x56FE.Position) then
_0x8F5E.autoCharacter = nil
_0x8F5E.autoReadyAt = 0
return
end
if _0x8F5E.autoCharacter ~= _0x8C06 then
_0x8F5E.autoCharacter = _0x8C06
_0x8F5E.autoReadyAt = os.clock() + 2.5
return
end
if os.clock() < _0x8F5E.autoReadyAt or _0xA213.Character ~= _0x8C06 or not _0xA2DB(_0xA213,string.char(83,104,101,114,105,102,102)) then
return
end
_0x8F5E.autoReadyAt = os.clock() + 2.5
task.spawn(function()
if _0xEBD0(_0xA213,string.char(83,104,101,114,105,102,102), false) then
_0x5680[_0x8C06] = true
end
end)
end)
_0xF709(_0x9A21.PlayerRemoving, function(_0x0D18)
if _0x0D18.Character then
_0x5680[_0x0D18.Character] = nil
end
end)
local _0xDBF6 = _0x78B0(_0xDBCA,string.char(82,111,108,101,32,70,108,105,110,103))
_0xDBF6:Toggle(string.char(65,117,116,111,32,70,108,105,110,103,32,83,104,101,114,105,102,102),string.char(102,108,105,110,103,32,101,97,99,104,32,115,104,101,114,105,102,102,32,100,111,119,110,32,111,110,99,101,32,112,101,114,32,108,105,102,101), function(_0x9B7B)
_0x8F5E.autoSheriff = _0x9B7B
_0x8F5E.nextScan = 0
_0x8F5E.autoCharacter = nil
_0x8F5E.autoReadyAt = 0
if not _0x9B7B then
_0x8F5E.cancel = true
end
_0xE835(string.char(65,117,116,111,32,70,108,105,110,103,32,83,104,101,114,105,102,102,58,32).. (_0x9B7B andstring.char(79,110)orstring.char(79,102,102)), _0x9B7B andstring.char(119,97,116,99,104,105,110,103,32,102,111,114,32,116,104,101,32,115,104,101,114,105,102,102)orstring.char(100,105,115,97,98,108,101,100))
end)
_0xDBF6:Button(string.char(70,108,105,110,103,32,83,104,101,114,105,102,102),string.char(102,108,105,110,103,32,116,104,101,32,99,117,114,114,101,110,116,32,115,104,101,114,105,102,102,32,100,111,119,110), function()
_0x19DB(string.char(83,104,101,114,105,102,102), true)
end)
_0xDBF6:Button(string.char(70,108,105,110,103,32,77,117,114,100,101,114,101,114),string.char(102,108,105,110,103,32,116,104,101,32,99,117,114,114,101,110,116,32,109,117,114,100,101,114,101,114,32,100,111,119,110), function()
_0x19DB(string.char(77,117,114,100,101,114,101,114), true)
end)
_0xF027 = function(_0xA213, manual)
local _0x439E = _0xA2DB(_0xA213,string.char(83,104,101,114,105,102,102)) andstring.char(83,104,101,114,105,102,102)or (_0xA2DB(_0xA213,string.char(77,117,114,100,101,114,101,114)) andstring.char(77,117,114,100,101,114,101,114)orstring.char(80,108,97,121,101,114))
return _0xEBD0(_0xA213, _0x439E, manual ~= false)
end
_0x4E33 = function()
_0x8F5E.autoSheriff = false
_0x8F5E.cancel = true
if _0xC70C then
_0xC70C()
end
end
end
do
local _0x49BD = false
local _0x1EF2 = false
local _0x4C53 = false
local _0xA3EA = 0
local function _0x5B95(sheriffOnly, _0x4804, includeLobby)
local _0xC494 = {}
for _0xBFE6, _0x0D18 in ipairs(_0x9A21:GetPlayers()) do
if _0x0D18 ~= _0xD33F then
local _0xE4E7 = _0x2E92(_0x0D18)
if _0xE4E7 and (includeLobby or not _0x90B5(_0xE4E7.Position)) then
local _0xF33E = _0xBF86(_0x0D18,string.char(71,117,110)) ~= nil
if not sheriffOnly or _0xF33E then
table.insert(_0xC494, { _0x0D18 = _0x0D18, _0xF33E = _0xF33E, _0x819A = (_0xE4E7.Position - _0x4804).Magnitude })
end
end
end
end
table.sort(_0xC494, function(_0x7D74, _0xBB9C)
if _0x7D74.gun ~= _0xBB9C.gun then
return _0x7D74.gun
end
return _0x7D74.d < _0xBB9C.d
end)
return _0xC494
end
local function _0xEEB1(_0xBD98)
local _0x8C06 = _0xD33F.Character
local _0x7FF8 = _0x8C06 and _0x8C06:FindFirstChild(string.char(75,110,105,102,101))
if _0x7FF8 then
return _0x7FF8
end
local _0xCBAB = _0xD33F:FindFirstChildOfClass(string.char(66,97,99,107,112,97,99,107))
_0x7FF8 = _0xCBAB and _0xCBAB:FindFirstChild(string.char(75,110,105,102,101))
if _0x7FF8 then
_0xBD98:EquipTool(_0x7FF8)
for _0xBFE6 = 1, 10 do
if _0x7FF8.Parent == _0x8C06 then
break
end
_0x7FDD.Heartbeat:Wait()
end
return _0x7FF8
end
end
local function _0x6F00(_0x7FF8, _0x8C06)
pcall(function()
_0x7FF8:Activate()
end)
local _0x1457 = _0x7FF8:FindFirstChild(string.char(72,97,110,100,108,101))
if _0x1457 and firetouchinterest then
for _0xBFE6, _0xDDE9 in ipairs({string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116),string.char(85,112,112,101,114,84,111,114,115,111),string.char(84,111,114,115,111),string.char(72,101,97,100)}) do
local _0x3066 = _0x8C06:FindFirstChild(_0xDDE9)
if _0x3066 then
firetouchinterest(_0x1457, _0x3066, 0)
firetouchinterest(_0x1457, _0x3066, 1)
end
end
end
end
local function _0xBAE9(_0x8C06)
local _0x6355 = _0x8C06.Archivable
_0x8C06.Archivable = true
local _0x3E35, _0x8125 = pcall(function()
return _0x8C06:Clone()
end)
_0x8C06.Archivable = _0x6355
if not _0x3E35 or not _0x8125 then
return
end
for _0xBFE6, _0x819A in ipairs(_0x8125:GetDescendants()) do
if _0x819A:IsA(string.char(76,117,97,83,111,117,114,99,101,67,111,110,116,97,105,110,101,114)) or _0x819A:IsA(string.char(83,111,117,110,100)) then
_0x819A:Destroy()
elseif _0x819A:IsA(string.char(66,97,115,101,80,97,114,116)) then
_0x819A.Anchored = true
_0x819A.CanCollide = false
_0x819A.CanQuery = false
_0x819A.CanTouch = false
elseif _0x819A:IsA(string.char(72,117,109,97,110,111,105,100)) then
_0x819A.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
end
end
_0x8125.Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,116,97,110,100,73,110)_0x8125.Parent = workspace.CurrentCamera
return _0x8125
end
local function _0x4432(_0x8C06, _0x9B7B)
for _0xBFE6, _0x819A in ipairs(_0x8C06:GetDescendants()) do
if _0x819A:IsA(string.char(66,97,115,101,80,97,114,116)) or _0x819A:IsA(string.char(68,101,99,97,108)) then
_0x819A.LocalTransparencyModifier = _0x9B7B and 1 or 0
end
end
end
local function _0x81C0(sheriffOnly, silent, onlyList)
if _0x1EF2 then
return
end
local _0xE4E7, _0xBD98, _0x8C06 = _0x2E92(_0xD33F)
if not _0xE4E7 then
return
end
if not _0xBF86(_0xD33F,string.char(75,110,105,102,101)) then
if not silent then
_0xE835(string.char(75,105,108,108,32,65,108,108),string.char(121,111,117,39,114,101,32,110,111,116,32,116,104,101,32,109,117,114,100,101,114,101,114))
end
return
end
local _0xC494 = _0x5B95(sheriffOnly, _0xE4E7.Position, onlyList ~= nil)
if onlyList then
local _0xB977 = {}
for _0xBFE6, _0x9B31 in ipairs(_0xC494) do
if table.find(onlyList, _0x9B31.p) then
table.insert(_0xB977, _0x9B31)
end
end
_0xC494 = _0xB977
end
if #_0xC494 == 0 then
if not silent then
_0xE835(string.char(75,105,108,108,32,65,108,108), sheriffOnly andstring.char(110,111,32,115,104,101,114,105,102,102,32,105,110,32,116,104,101,32,114,111,117,110,100)orstring.char(110,111,98,111,100,121,32,116,111,32,107,105,108,108))
end
return
end
_0x1EF2, _0x4C53 = true, false
_0xE4E6(_0xE4E7)
local _0x7BF7 = _0xE4E7.CFrame
local _0x8F96 = os.clock()
local _0x4245 = workspace.CurrentCamera
local _0xEF2F, _0x86B7 = _0x4245.CameraType, _0x4245.CFrame
local _0xE59C = _0xBAE9(_0x8C06)
_0x4245.CameraType = Enum.CameraType.Scriptable
_0x4245.CFrame = _0x86B7
local _0x7FF8 = _0xEEB1(_0xBD98)
local _0xA213
local _0x2DDF = _0x7FDD.Stepped:Connect(function()
_0x4245.CFrame = _0x86B7
if _0xE4E7.Parent then
_0x4432(_0x8C06, true)
if _0xA213 then
_0xE4E7.CFrame = _0xA213
_0xE4E7.AssemblyLinearVelocity = Vector3.zero
end
end
end)
local _0x2700 = #_0xC494
while _0x2700 > 0 and os.clock() - _0x8F96 < 2 do
if _0x4C53 or _0xBD98.Health <= 0 or not _0xE4E7.Parent then
break
end
_0x2700 = 0
for _0xBFE6, _0x9B31 in ipairs(_0xC494) do
local _0xB6CB, _0xBFE6, _0x98C2 = _0x2E92(_0x9B31.p)
if _0xB6CB and not _0x4C53 then
_0x2700 += 1
local _0x83AD = _0xB6CB.CFrame * CFrame.new(0, 0, 1.4)
_0xA213 = CFrame.lookAt(_0x83AD.Position, _0xB6CB.Position)
_0xE4E7.CFrame = _0xA213
_0xE4E7.AssemblyLinearVelocity = Vector3.zero
_0x7FF8 = _0x7FF8 and _0x7FF8.Parent and _0x7FF8 or _0xEEB1(_0xBD98)
if _0x7FF8 then
_0x6F00(_0x7FF8, _0x98C2)
end
_0x7FDD.Heartbeat:Wait()
if _0x7FF8 then
_0x6F00(_0x7FF8, _0x98C2)
end
end
end
end
_0xA213 = nil
_0x2DDF:Disconnect()
if _0xE4E7.Parent and _0xBD98.Health > 0 then
_0xE4E7.CFrame = _0x7BF7
_0xE4E7.AssemblyLinearVelocity = Vector3.zero
end
_0x7FDD.Heartbeat:Wait()
if _0x8C06.Parent then
_0x4432(_0x8C06, false)
end
if _0xE59C then
_0xE59C:Destroy()
end
_0x4245.CameraType = _0xEF2F
if _0xBD98.Parent then
_0x4245.CameraSubject = _0xBD98
end
local _0x674A = 0
for _0xBFE6, _0x9B31 in ipairs(_0xC494) do
if not _0x2E92(_0x9B31.p) then
_0x674A += 1
end
end
_0x1EF2 = false
_0x0F18()
if not onlyList then
_0xE835(string.char(75,105,108,108,32,65,108,108), (string.char(107,105,108,108,101,100,32,37,100,47,37,100,32,105,110,32,37,46,50,102,115)):format(_0x674A, #_0xC494, os.clock() - _0x8F96))
end
end
_0xC638 = function(_0xA213)
_0x81C0(false, false, { _0xA213 })
end
_0xF709(_0x7FDD.Heartbeat, function()
if not _0x49BD or _0x1EF2 or os.clock() - _0xA3EA < 2 then
return
end
local _0xE4E7 = _0x2E92(_0xD33F)
if not _0xE4E7 or _0x90B5(_0xE4E7.Position) or not _0xBF86(_0xD33F,string.char(75,110,105,102,101)) then
return
end
_0xA3EA = os.clock()
task.spawn(_0x81C0, false, true)
end)
local _0xC050 = { 120141614672192, 111443745475294, 16531510943 }
local _0x1D7F = { [120141614672192] = -1 }
local _0x3D1F = {
_0x6DDD = { 106621472307027, 117678889994053, 86747216998490 },
boom = { 125127520917980, 7157159568, 9126102254 },
rumble = { 1843024924, 9846227426, 138432031406888 },
static = { 96891705634188, 83265726239905, 128865910652923 },
fpv = { 114037851906101, 78411105609654, 122096583027065 },
}
local _0xE85D = { 124994246147928, 129274863429961, 79445961621887 }
local _0x55C3 = {}
local _0x401E =string.char(83,104,97,104,101,100)local _0xBFFB =string.char(70,108,105,110,103)local _0x0A4D = {}
local _0x23CB, _0x014B
local _0xA4E6 = {}
local _0x1587 = false
local _0xD5D1 = game:GetService(string.char(67,111,110,116,101,110,116,80,114,111,118,105,100,101,114))
local _0x28F0 = game:GetService(string.char(83,111,117,110,100,83,101,114,118,105,99,101))local _0xD551 = Instance.new(string.char(83,99,114,101,101,110,71,117,105))
_0xD551.Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,68,114,111,110,101,70,117,108,108,115,99,114,101,101,110)_0xD551.ResetOnSpawn = false
_0xD551.IgnoreGuiInset = true
_0xD551.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
_0xD551.DisplayOrder = 9997
pcall(function()
_0xD551.ScreenInsets = Enum.ScreenInsets.None
_0xD551.ClipToDeviceSafeArea = false
end)
_0xD551.Parent = _0x50F4
local function _0x3FD8(_0xE6E2)
local _0xEE00 = {}
for _0xBFE6, _0xA051 in ipairs(_0xE6E2:GetDescendants()) do
if _0xA051:IsA(string.char(66,97,115,101,80,97,114,116)) then
table.insert(_0xEE00, _0xA051)
end
end
return _0xEE00
end
local function _0x7894()
local _0xE6E2 = Instance.new(string.char(77,111,100,101,108))
local _0xF3DB = Color3.fromRGB(92, 96, 100)
local function _0x3066(_0xBB27, _0x52F8, _0x7800, _0x9C5B, shape)
local _0x0D18 = Instance.new(_0xBB27)
_0x0D18.Size, _0x0D18.CFrame = _0x52F8, _0x7800
_0x0D18.Color = _0x9C5B or _0xF3DB
_0x0D18.Material = Enum.Material.SmoothPlastic
if shape then
_0x0D18.Shape = shape
end
_0x0D18.Parent = _0xE6E2
return _0x0D18
end
local _0x862A = CFrame.Angles(0, math.rad(90), 0)
_0x3066(string.char(80,97,114,116), Vector3.new(9.6, 1.3, 1.3), CFrame.new(0, 0, 0.2) * _0x862A, nil, Enum.PartType.Cylinder)
_0x3066(string.char(80,97,114,116), Vector3.new(1.3, 1.3, 1.3), CFrame.new(0, 0, -4.6), nil, Enum.PartType.Ball)
_0x3066(string.char(80,97,114,116), Vector3.new(0.5, 0.9, 0.9), CFrame.new(0, 0, 5.2) * _0x862A, Color3.fromRGB(40, 40, 40), Enum.PartType.Cylinder)
_0x3066(string.char(80,97,114,116), Vector3.new(0.12, 3.2, 0.3), CFrame.new(0, 0, 5.5), Color3.fromRGB(30, 30, 30)).Name =string.char(80,114,111,112)_0x3066(string.char(87,101,100,103,101,80,97,114,116), Vector3.new(0.25, 4.9, 7.5), CFrame.fromMatrix(Vector3.new(3.05, 0, 0.75), Vector3.new(0, -1, 0), Vector3.new(1, 0, 0), Vector3.new(0, 0, 1)))
_0x3066(string.char(87,101,100,103,101,80,97,114,116), Vector3.new(0.25, 4.9, 7.5), CFrame.fromMatrix(Vector3.new(-3.05, 0, 0.75), Vector3.new(0, 1, 0), Vector3.new(-1, 0, 0), Vector3.new(0, 0, 1)))
_0x3066(string.char(80,97,114,116), Vector3.new(0.2, 1.8, 1.4), CFrame.new(5.45, 0.4, 3.9))
_0x3066(string.char(80,97,114,116), Vector3.new(0.2, 1.8, 1.4), CFrame.new(-5.45, 0.4, 3.9))
_0xE6E2.WorldPivot = CFrame.new()
return _0xE6E2
end
local function _0x38B4(_0xE6E2, _0xEE00, _0xABD9)
local _0xDB45, _0x73ED = Vector3.one * math.huge, -Vector3.one * math.huge
local _0x8490 = {}
for _0xBFE6, _0x0D18 in ipairs(_0xEE00) do
local _0x7800, _0x98C3 = _0x0D18.CFrame, _0x0D18.Size / 2
local _0x5ED5 = Vector3.new(math.abs(_0x7800.RightVector.X) * _0x98C3.X + math.abs(_0x7800.UpVector.X) * _0x98C3.Y + math.abs(_0x7800.LookVector.X) * _0x98C3.Z, math.abs(_0x7800.RightVector.Y) * _0x98C3.X + math.abs(_0x7800.UpVector.Y) * _0x98C3.Y + math.abs(_0x7800.LookVector.Y) * _0x98C3.Z, math.abs(_0x7800.RightVector.Z) * _0x98C3.X + math.abs(_0x7800.UpVector.Z) * _0x98C3.Y + math.abs(_0x7800.LookVector.Z) * _0x98C3.Z)
_0xDB45, _0x73ED = _0xDB45:Min(_0x7800.Position - _0x5ED5), _0x73ED:Max(_0x7800.Position + _0x5ED5)
table.insert(_0x8490, { _0x7800.Position, _0x5ED5 })
end
local _0x52F8, _0xF89E = _0x73ED - _0xDB45, (_0xDB45 + _0x73ED) / 2
local _0xA975, _0x7D1E = Vector3.xAxis, Vector3.zAxis
if _0x52F8.Z > _0x52F8.X then
_0xA975, _0x7D1E = Vector3.zAxis, Vector3.xAxis
end
local _0x0D62 = 0
for _0xBFE6, _0xBB9C in ipairs(_0x8490) do
local _0x7D74 = _0xBB9C[2]:Dot(_0xA975) * _0xBB9C[2]:Dot(_0x7D1E)
_0x0D62 += (_0xBB9C[1] - _0xF89E):Dot(_0xA975) * _0x7D74
end
local _0xF3D5 = _0x0D62 >= 0 and 1 or -1
if _0x1D7F[_0xABD9] then
_0xF3D5 = _0x1D7F[_0xABD9]
end
_0xE6E2.WorldPivot = CFrame.lookAt(_0xF89E, _0xF89E - _0xA975 * _0xF3D5)
return math.max(_0x52F8.X, _0x52F8.Z)
end
local function _0x53FD()
local _0xE6E2 = Instance.new(string.char(77,111,100,101,108))
local function _0x3066(_0x52F8, _0x7800, _0x9C5B, shape, mat)
local _0x0D18 = Instance.new(string.char(80,97,114,116))
_0x0D18.Size, _0x0D18.CFrame = _0x52F8, _0x7800
_0x0D18.Color = _0x9C5B
_0x0D18.Material = mat or Enum.Material.SmoothPlastic
if shape then
_0x0D18.Shape = shape
end
_0x0D18.Parent = _0xE6E2
return _0x0D18
end
local _0x02D2 = Color3.fromRGB(28, 28, 30)
_0x3066(Vector3.new(0.9, 0.25, 1.5), CFrame.new(), _0x02D2)
for _0xBFE6, _0x7D74 in ipairs({ 45, 135, 225, 315 }) do
local _0x5ED5 = math.rad(_0x7D74)
local _0x9FAF = Vector3.new(math.sin(_0x5ED5) * 1.45, 0, math.cos(_0x5ED5) * 1.45)
_0x3066(Vector3.new(0.18, 0.1, 2.9), CFrame.lookAt(Vector3.zero, _0x9FAF) * CFrame.new(0, 0, -1.45), _0x02D2)
_0x3066(Vector3.new(0.3, 0.32, 0.32), CFrame.new(_0x9FAF + Vector3.new(0, 0.18, 0)) * CFrame.Angles(0, 0, math.rad(90)), Color3.fromRGB(60, 120, 70), Enum.PartType.Cylinder, Enum.Material.Metal)
local _0x4066 = _0x3066(Vector3.new(0.04, 1.3, 1.3), CFrame.new(_0x9FAF + Vector3.new(0, 0.36, 0)) * CFrame.Angles(0, 0, math.rad(90)), Color3.fromRGB(20, 20, 20), Enum.PartType.Cylinder)
_0x4066.Transparency = 0.55
_0x4066.Name =string.char(80,114,111,112)end
_0x3066(Vector3.new(0.6, 0.45, 1.1), CFrame.new(0, 0.38, 0.1), Color3.fromRGB(40, 90, 170))
_0x3066(Vector3.new(0.35, 0.3, 0.3), CFrame.new(0, 0.25, -0.75), Color3.fromRGB(15, 15, 15))
_0x3066(Vector3.new(2.2, 0.55, 0.55), CFrame.new(0, -0.4, -0.7) * CFrame.Angles(0, math.rad(90), 0), Color3.fromRGB(110, 90, 55), Enum.PartType.Cylinder, Enum.Material.Metal)
_0x3066(Vector3.new(0.5, 0.5, 0.5), CFrame.new(0, -0.4, -1.8), Color3.fromRGB(200, 200, 190), Enum.PartType.Ball)
_0xE6E2.WorldPivot = CFrame.new()
return _0xE6E2
end
local function _0xE319(_0xE6E2, _0xEE00, _0xABD9)
local _0xDB45, _0x73ED = Vector3.one * math.huge, -Vector3.one * math.huge
for _0xBFE6, _0x0D18 in ipairs(_0xEE00) do
local _0x7800, _0x98C3 = _0x0D18.CFrame, _0x0D18.Size / 2
local _0x5ED5 = Vector3.new(math.abs(_0x7800.RightVector.X) * _0x98C3.X + math.abs(_0x7800.UpVector.X) * _0x98C3.Y + math.abs(_0x7800.LookVector.X) * _0x98C3.Z, math.abs(_0x7800.RightVector.Y) * _0x98C3.X + math.abs(_0x7800.UpVector.Y) * _0x98C3.Y + math.abs(_0x7800.LookVector.Y) * _0x98C3.Z, math.abs(_0x7800.RightVector.Z) * _0x98C3.X + math.abs(_0x7800.UpVector.Z) * _0x98C3.Y + math.abs(_0x7800.LookVector.Z) * _0x98C3.Z)
_0xDB45, _0x73ED = _0xDB45:Min(_0x7800.Position - _0x5ED5), _0x73ED:Max(_0x7800.Position + _0x5ED5)
end
local _0x52F8, _0xF89E = _0x73ED - _0xDB45, (_0xDB45 + _0x73ED) / 2
local _0x613C, _0x1757, _0xA975 = nil, 0, Vector3.zAxis
for _0xBFE6, _0x0D18 in ipairs(_0xEE00) do
local _0x9CB7 = _0x0D18.Size
local _0xAD7B = math.max(_0x9CB7.X, _0x9CB7.Y, _0x9CB7.Z)
local _0x4F48 = math.min(_0x9CB7.X, _0x9CB7.Y, _0x9CB7.Z)
local _0x61BC = _0xAD7B * _0xAD7B * _0x4F48 / math.max(_0x4F48, 0.05)
if _0xAD7B / math.max(_0x4F48, 0.05) > 2.2 and _0x61BC > _0x1757 then
local _0x7800 = _0x0D18.CFrame
local _0xD9B0 = _0x9CB7.X == _0xAD7B and _0x7800.RightVector or _0x9CB7.Y == _0xAD7B and _0x7800.UpVector or _0x7800.LookVector
if math.abs(_0xD9B0.Y) < 0.5 then
_0x613C, _0x1757 = _0x0D18, _0x61BC
end
end
end
local _0xF3D5 = 1
if _0x613C then
local _0x9CB7, _0x7800 = _0x613C.Size, _0x613C.CFrame
local _0xD9B0 = _0x9CB7.X == math.max(_0x9CB7.X, _0x9CB7.Y, _0x9CB7.Z) and _0x7800.RightVector or _0x9CB7.Y == math.max(_0x9CB7.X, _0x9CB7.Y, _0x9CB7.Z) and _0x7800.UpVector or _0x7800.LookVector
_0xA975 = math.abs(_0xD9B0.X) > math.abs(_0xD9B0.Z) and Vector3.xAxis or Vector3.zAxis
local _0x2CD9 = math.max(_0x9CB7.X, _0x9CB7.Y, _0x9CB7.Z) / 2
local _0xD51E = (_0x7800.Position - _0xF89E):Dot(_0xA975)
local _0xED53, _0xD7B7 = _0xD51E + _0x2CD9 * math.abs(_0xD9B0:Dot(_0xA975)), _0xD51E - _0x2CD9 * math.abs(_0xD9B0:Dot(_0xA975))
_0xF3D5 = math.abs(_0xED53) >= math.abs(_0xD7B7) and -1 or 1
end
if _0x55C3[_0xABD9] then
_0xF3D5 = _0x55C3[_0xABD9]
end
_0xE6E2.WorldPivot = CFrame.lookAt(_0xF89E, _0xF89E - _0xA975 * _0xF3D5)
return math.max(_0x52F8.X, _0x52F8.Z)
end
local function _0xF992(_0xC494)
for _0xBFE6, _0xABD9 in ipairs(_0xC494) do
local _0x334A = Instance.new(string.char(83,111,117,110,100))
_0x334A.SoundId =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47).. _0xABD9
_0x334A.Volume = 0
_0x334A.Parent = _0x28F0
local _0xB490 = false
local _0x3E35 = pcall(function()
_0xD5D1:PreloadAsync({ _0x334A }, function(_0xBFE6, _0xD51C)
_0xB490 = _0xD51C == Enum.AssetFetchStatus.Success
end)
end)
_0x334A:Destroy()
if _0x3E35 and _0xB490 then
returnstring.char(114,98,120,97,115,115,101,116,105,100,58,47,47).. _0xABD9
end
end
returnstring.char(114,98,120,97,115,115,101,116,105,100,58,47,47).. _0xC494[1]
end
local function _0xB271()
while _0x1587 do
task.wait()
end
for _0xFBB7 in pairs(_0x3D1F) do
if not _0xA4E6[_0xFBB7] then
_0x1587 = true
for nextKey, _0xC494 in pairs(_0x3D1F) do
if not _0xA4E6[nextKey] then
_0xA4E6[nextKey] = _0xF992(_0xC494)
end
end
_0x1587 = false
break
end
end
end
local function _0x2373(override)
while _0x014B do
task.wait(0.1)
end
local _0x8442 = override or _0x401E
_0xB271()
if _0x0A4D[_0x8442] then
_0x23CB = _0x0A4D[_0x8442]
return _0x23CB
end
_0x014B = true
local _0x8FD5 = _0x8442 ==string.char(70,80,86)local _0xE6E2, _0xE99D
for _0xBFE6, _0xABD9 in ipairs(_0x8FD5 and _0xE85D or _0xC050) do
_0xE99D = _0xABD9
local _0x3E35, _0xC66A = pcall(function()
return game:GetObjects(string.char(114,98,120,97,115,115,101,116,105,100,58,47,47).. _0xABD9)
end)
if _0x3E35 and _0xC66A and #_0xC66A > 0 then
_0xE6E2 = Instance.new(string.char(77,111,100,101,108))
for _0xBFE6, _0xCA34 in ipairs(_0xC66A) do
_0xCA34.Parent = _0xE6E2
end
for _0xBFE6, _0xA051 in ipairs(_0xE6E2:GetDescendants()) do
if _0xA051:IsA(string.char(76,117,97,83,111,117,114,99,101,67,111,110,116,97,105,110,101,114)) or _0xA051:IsA(string.char(83,111,117,110,100)) or _0xA051:IsA(string.char(67,108,105,99,107,68,101,116,101,99,116,111,114)) or _0xA051:IsA(string.char(80,114,111,120,105,109,105,116,121,80,114,111,109,112,116)) or _0xA051:IsA(string.char(72,117,109,97,110,111,105,100)) or _0xA051:IsA(string.char(66,105,108,108,98,111,97,114,100,71,117,105)) then
_0xA051:Destroy()
end
end
if _0xE6E2:FindFirstChildWhichIsA(string.char(66,97,115,101,80,97,114,116), true) then
break
end
_0xE6E2:Destroy()
_0xE6E2 = nil
end
end
local _0xDA2E
if _0xE6E2 then
_0xDA2E = (_0x8FD5 and _0xE319 or _0x38B4)(_0xE6E2, _0x3FD8(_0xE6E2), _0xE99D)
elseif _0x8FD5 then
_0xE6E2 = _0x53FD()
_0xDA2E = 4
else
_0xE6E2 = _0x7894()
_0xDA2E = 11
end
pcall(function()
_0xE6E2:ScaleTo(_0xE6E2:GetScale() * (_0x8FD5 and 3 or 5) / math.max(_0xDA2E, 0.1))
end)
_0xE6E2.Archivable = true
for _0xBFE6, _0xA051 in ipairs(_0xE6E2:GetDescendants()) do
_0xA051.Archivable = true
end
for _0xBFE6, _0x0D18 in ipairs(_0x3FD8(_0xE6E2)) do
_0x0D18.Anchored = true
_0x0D18.CanCollide = false
_0x0D18.CanQuery = false
_0x0D18.CanTouch = false
end
_0xE6E2.Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,104,97,104,101,100)_0x0A4D[_0x8442] = _0xE6E2
_0x23CB = _0x0A4D[_0x401E]
_0x014B = false
return _0xE6E2
end
local function _0x6275(_0xFBB7, _0x4FEA, _0x476F)
local _0x5E9B = _0xA4E6[_0xFBB7]
if not _0x5E9B then
local _0xC494 = _0x3D1F[_0xFBB7]
if _0xC494 and _0xC494[1] then
_0x5E9B =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47).. tostring(_0xC494[1])
_0xA4E6[_0xFBB7] = _0x5E9B
else
return
end
end
local _0x334A = Instance.new(string.char(83,111,117,110,100))
_0x334A.SoundId = _0x5E9B
for _0x3FFC, _0xBE50 in pairs(_0x476F or {}) do
_0x334A[_0x3FFC] = _0xBE50
end
_0x334A.Parent = _0x4FEA
pcall(function() _0x334A:Play() end)
if not _0x334A.IsLoaded then
task.spawn(function()
local _0x8FF3 = os.clock() + 3
while _0x334A.Parent and not _0x334A.IsLoaded and os.clock() < _0x8FF3 do
task.wait(0.05)
end
if _0x334A.Parent and not _0x334A.IsPlaying then
pcall(function() _0x334A:Play() end)
end
end)
end
return _0x334A
end
local function _0xE089(intensity, hideAfter)
local _0xBD62 =string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,104,97,104,101,100,83,104,97,107,101).. math.random(1000000)
local _0x8F96, _0x64B6 = os.clock(), CFrame.new()
_0x7FDD:BindToRenderStep(_0xBD62, Enum.RenderPriority.Camera.Value + 1, function()
local _0x4245 = workspace.CurrentCamera
if not _0x4245 then
_0x7FDD:UnbindFromRenderStep(_0xBD62)
return
end
local _0x3FFC = 1 - (os.clock() - _0x8F96) / hideAfter
if _0x3FFC <= 0 then
_0x4245.CFrame = _0x4245.CFrame * _0x64B6:Inverse()
_0x7FDD:UnbindFromRenderStep(_0xBD62)
return
end
local _0x7D74 = intensity * _0x3FFC * _0x3FFC
local _0x18EF = CFrame.Angles((math.random() - 0.5) * _0x7D74, (math.random() - 0.5) * _0x7D74, (math.random() - 0.5) * _0x7D74 * 0.5)
_0x4245.CFrame = _0x4245.CFrame * _0x64B6:Inverse() * _0x18EF
_0x64B6 = _0x18EF
end)
end
local function _0x78D9(_0x16A1)
local _0xC2D5 = Instance.new(string.char(80,97,114,116))
_0xC2D5.Anchored, _0xC2D5.CanCollide, _0xC2D5.CanQuery, _0xC2D5.CanTouch = true, false, false, false
_0xC2D5.Transparency, _0xC2D5.Size, _0xC2D5.Position = 1, Vector3.one, _0x16A1
_0xC2D5.Parent = workspace.CurrentCamera
local _0x9B31 = Instance.new(string.char(69,120,112,108,111,115,105,111,110))
_0x9B31.Position, _0x9B31.BlastPressure, _0x9B31.BlastRadius = _0x16A1, 0, 0
_0x9B31.DestroyJointRadiusPercent = 0
_0x9B31.ExplosionType = Enum.ExplosionType.NoCraters
_0x9B31.Parent = workspace
local function _0x7DE1(_0x476F, _0xDDE9)
local _0x0623 = Instance.new(string.char(80,97,114,116,105,99,108,101,69,109,105,116,116,101,114))
_0x0623.Enabled = false
for _0x3FFC, _0xBE50 in pairs(_0x476F) do
_0x0623[_0x3FFC] = _0xBE50
end
_0x0623.Parent = _0xC2D5
_0x0623:Emit(_0xDDE9)
end
_0x7DE1({
Texture =string.char(114,98,120,97,115,115,101,116,58,47,47,116,101,120,116,117,114,101,115,47,112,97,114,116,105,99,108,101,115,47,102,105,114,101,95,109,97,105,110,46,100,100,115),
Color = ColorSequence.new(Color3.fromRGB(255, 220, 120), Color3.fromRGB(255, 80, 20)),
LightEmission = 1,
Lifetime = NumberRange.new(0.35, 0.7),
Speed = NumberRange.new(25, 55),
SpreadAngle = Vector2.new(180, 180),
Drag = 6,
Size = NumberSequence.new({ NumberSequenceKeypoint.new(0, 6), NumberSequenceKeypoint.new(1, 14) }),
Transparency = NumberSequence.new(0.1, 1),
}, 60)
_0x7DE1({
Texture =string.char(114,98,120,97,115,115,101,116,58,47,47,116,101,120,116,117,114,101,115,47,112,97,114,116,105,99,108,101,115,47,115,109,111,107,101,95,109,97,105,110,46,100,100,115),
Color = ColorSequence.new(Color3.fromRGB(60, 55, 50), Color3.fromRGB(25, 25, 25)),
Lifetime = NumberRange.new(2.5, 4.5),
Speed = NumberRange.new(8, 22),
SpreadAngle = Vector2.new(180, 180),
Drag = 2,
Acceleration = Vector3.new(0, 6, 0),
Size = NumberSequence.new({ NumberSequenceKeypoint.new(0, 8), NumberSequenceKeypoint.new(1, 22) }),
Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0.2), NumberSequenceKeypoint.new(1, 1) }),
RotSpeed = NumberRange.new(-40, 40),
Rotation = NumberRange.new(0, 360),
}, 35)
_0x7DE1({
Texture =string.char(114,98,120,97,115,115,101,116,58,47,47,116,101,120,116,117,114,101,115,47,112,97,114,116,105,99,108,101,115,47,115,112,97,114,107,108,101,115,95,109,97,105,110,46,100,100,115),
Color = ColorSequence.new(Color3.fromRGB(255, 190, 90)),
LightEmission = 1,
Lifetime = NumberRange.new(0.6, 1.4),
Speed = NumberRange.new(60, 110),
SpreadAngle = Vector2.new(180, 180),
Acceleration = Vector3.new(0, -60, 0),
Size = NumberSequence.new(0.6, 0),
}, 80)
local _0x84FA = Instance.new(string.char(80,111,105,110,116,76,105,103,104,116))
_0x84FA.Color, _0x84FA.Brightness, _0x84FA.Range = Color3.fromRGB(255, 160, 70), 10, 60
_0x84FA.Parent = _0xC2D5
_0x85C3:Create(_0x84FA, TweenInfo.new(0.8), { Brightness = 0 }):Play()
_0x6275(string.char(98,111,111,109), _0xC2D5, { Volume = 2, RollOffMinDistance = 20, RollOffMaxDistance = 1500 })
_0x6275(string.char(114,117,109,98,108,101), _0xC2D5, { Volume = 1.2, RollOffMinDistance = 60, RollOffMaxDistance = 3000 })
local _0x4245 = workspace.CurrentCamera
if _0x4245 then
local _0x819A = (_0x4245.CFrame.Position - _0x16A1).Magnitude
if _0x819A < 200 then
_0xE089(0.06 * (1 - _0x819A / 200) + 0.01, 0.7)
end
end
_0x0E8D:AddItem(_0xC2D5, 7)
_0x0E8D:AddItem(_0x9B31, 3)
end
local function _0xAC8E(targetName, flightTime)
local _0xDBF5 = Enum.Font.Code
local _0xB7F6 = _0x81A6(string.char(67,97,110,118,97,115,71,114,111,117,112), {
Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,105,103,110,97,108,76,111,115,116),
Position = UDim2.fromOffset(0, -100),
Size = UDim2.new(1, 0, 1, 200),
BackgroundColor3 = Color3.new(1, 1, 1),
BackgroundTransparency = 0,
BorderSizePixel = 0,
ZIndex = 50,
Parent = _0xD551,
})
local _0x0E62 = _0x81A6(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(0, 100),
Size = UDim2.new(1, 0, 1, -200),
BackgroundTransparency = 1,
ZIndex = 52,
Parent = _0xB7F6,
})
local function _0xC8F1(_0x476F)
do
local _0x707C = {}
_0x707C[63741] = {
function()
return _0x476F
end,string.char(66,97,99,107,103,114,111,117,110,100,84,114,97,110,115,112,97,114,101,110,99,121),
function()
return 1
end,
}
_0x707C[49931] = {
function()
return _0x476F
end,string.char(80,97,114,101,110,116),
function()
return _0x476F.Parent or _0x0E62
end,
}
_0x707C[17390] = {
function()
return _0x476F
end,string.char(84,101,120,116,67,111,108,111,114,51),
function()
return _0x476F.TextColor3 or Color3.fromRGB(235, 235, 235)
end,
}
_0x707C[59406] = {
function()
return _0x476F
end,string.char(70,111,110,116),
function()
return _0x476F.Font or _0xDBF5
end,
}
_0x707C[4207] = {
function()
return _0x476F
end,string.char(90,73,110,100,101,120),
function()
return 53
end,
}
local _0x02E3 = { 63741, 59406, 17390, 4207, 49931 }
for j = 1, #_0x02E3 do
local _0xD660 = _0x707C[_0x02E3[j]]
_0xD660[1]()[_0xD660[2]] = _0xD660[3]()
end
end
return _0x81A6(string.char(84,101,120,116,76,97,98,101,108), _0x476F)
end
local _0x44BE = {}
for _0x60FA = 1, 42 do
_0x44BE[_0x60FA] = _0x81A6(string.char(70,114,97,109,101), {
Position = UDim2.new(0, 0, (_0x60FA - 1) / 42, 0),
Size = UDim2.new(1.3, 0, 0.023809523809523808, 1),
BorderSizePixel = 0,
ZIndex = 51,
Visible = false,
Parent = _0xB7F6,
})
end
for _0x60FA = 0, 59 do
_0x81A6(string.char(70,114,97,109,101), {
Position = UDim2.new(0, 0, _0x60FA / 60, 0),
Size = UDim2.new(1, 0, 0, 1),
BackgroundColor3 = Color3.new(0, 0, 0),
BackgroundTransparency = 0.75,
BorderSizePixel = 0,
ZIndex = 55,
Parent = _0xB7F6,
})
end
local _0x0A80 = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromScale(0.5, 0.5),
Size = UDim2.fromOffset(380, 92),
BackgroundTransparency = 1,
Visible = false,
ZIndex = 53,
Parent = _0x0E62,
})
_0x81A6(string.char(85,73,83,116,114,111,107,101), { Color = Color3.fromRGB(255, 255, 255), Thickness = 2, Parent = _0x0A80 })
local _0x22BD = _0xC8F1({ Size = UDim2.fromScale(1, 1), Text =string.char(83,73,71,78,65,76,32,76,79,83,84), TextSize = 46, Parent = _0x0A80 })
local _0x071D = _0xC8F1({
AnchorPoint = Vector2.new(0.5, 1),
Position = UDim2.new(0.5, 0, 0.5, -58),
Size = UDim2.fromOffset(300, 20),
Text =string.char(47,33,92,32,32,78,79,32,86,73,68,69,79),
TextSize = 16,
TextColor3 = Color3.fromRGB(255, 60, 50),
Visible = false,
})
local _0x3654 = _0xC8F1({
AnchorPoint = Vector2.new(0.5, 0),
Position = UDim2.new(0.5, 0, 0.5, 58),
Size = UDim2.fromOffset(500, 20),
TextSize = 15,
Visible = false,
Text = targetName andstring.char(84,65,82,71,69,84,32,32).. targetName:upper() ..string.char(32,32,45,32,32,72,73,84)orstring.char(78,79,32,84,65,82,71,69,84),
TextColor3 = targetName and Color3.fromRGB(120, 255, 140) or Color3.fromRGB(170, 170, 170),
})
local _0xF7CA = math.floor(flightTime)
local _0xE296 = {
_0xC8F1({
Position = UDim2.fromOffset(28, 22),
Size = UDim2.fromOffset(300, 18),
TextSize = 15,
TextXAlignment = Enum.TextXAlignment.Left,
Text = _0x401E ==string.char(70,80,86)andstring.char(70,80,86,32,75,65,77,73,75,65,90,69,32,32,32,67,65,77,32,49)orstring.char(83,72,65,72,69,68,45,49,51,54,32,32,32,67,65,77,32,49),
}),
_0xC8F1({
AnchorPoint = Vector2.new(1, 0),
Position = UDim2.new(1, -28, 0, 22),
Size = UDim2.fromOffset(300, 18),
TextSize = 15,
TextXAlignment = Enum.TextXAlignment.Right,
Text = (string.char(82,69,67,32,32,48,48,58,37,48,50,100,58,37,48,50,100)):format(_0xF7CA // 60, _0xF7CA % 60),
TextColor3 = Color3.fromRGB(255, 60, 50),
}),
_0xC8F1({
Position = UDim2.new(0, 28, 1, -40),
Size = UDim2.fromOffset(300, 18),
TextSize = 15,
TextXAlignment = Enum.TextXAlignment.Left,
Text =string.char(67,72,32,53,46,56,71,32,32,32,82,83,83,73,32,32,48,37),
}),
_0xC8F1({
AnchorPoint = Vector2.new(1, 0),
Position = UDim2.new(1, -28, 1, -40),
Size = UDim2.fromOffset(300, 18),
TextSize = 15,
TextXAlignment = Enum.TextXAlignment.Right,
Text =string.char(76,73,78,75,32,32,45,45,46,45,32,32,100,66),
}),
}
for _0xBFE6, _0xD51E in ipairs(_0xE296) do
_0xD51E.Visible = false
end
local _0xEDAD = _0x6275(string.char(115,116,97,116,105,99), workspace.CurrentCamera, { Volume = 0.8 })
local _0x8F96 = os.clock()
local _0xA306
_0xA306 = _0x7FDD.RenderStepped:Connect(function()
local _0x4903 = os.clock() - _0x8F96
if _0x4903 < 0.07 then
return
elseif _0x4903 < 0.6 then
_0xB7F6.BackgroundColor3 = Color3.new(0, 0, 0)
for _0xBFE6, _0xBB9C in ipairs(_0x44BE) do
local _0x82D5 = math.random()
_0xBB9C.Visible = true
_0xBB9C.BackgroundColor3 = Color3.new(_0x82D5, _0x82D5, _0x82D5)
_0xBB9C.BackgroundTransparency = math.random() * 0.35
_0xBB9C.Position = UDim2.new(-math.random() * 0.3, 0, _0xBB9C.Position.Y.Scale, 0)
end
else
if _0xEDAD and _0xEDAD.IsPlaying then
_0xEDAD:Stop()
end
_0x0A80.Visible = true
_0x071D.Visible = true
_0x3654.Visible = true
for _0xBFE6, _0xD51E in ipairs(_0xE296) do
_0xD51E.Visible = true
end
for _0xBFE6, _0xBB9C in ipairs(_0x44BE) do
_0xBB9C.Visible = math.random() < 0.03
if _0xBB9C.Visible then
local _0x82D5 = math.random() * 0.5
_0xBB9C.BackgroundColor3 = Color3.new(_0x82D5, _0x82D5, _0x82D5)
_0xBB9C.BackgroundTransparency = 0.6
end
end
local _0x9B7B = _0x4903 * 2.2 % 1 < 0.62
_0x22BD.TextTransparency = _0x9B7B and 0 or 0.85
_0x071D.TextTransparency = _0x9B7B and 0 or 0.6
_0x0A80.Position = UDim2.new(0.5, math.random() < 0.06 and math.random(-6, 6) or 0, 0.5, 0)
end
end)
task.delay(2.65, function()
_0x85C3:Create(_0xB7F6, TweenInfo.new(0.3), { GroupTransparency = 1 }):Play()
task.wait(0.32)
_0xA306:Disconnect()
_0xB7F6:Destroy()
if _0xEDAD then
_0xEDAD:Destroy()
end
end)
end
local function _0xD99B(_0x0D18)
local _0x4903 = os.clock()
while _0x1EF2 and os.clock() - _0x4903 < 2 do
_0x7FDD.Heartbeat:Wait()
end
if _0x2E92(_0x0D18) then
_0x81C0(false, true, { _0x0D18 })
end
return not _0x2E92(_0x0D18)
end
local _0x893B = false
local _0xA52C = false
local function _0x5B06()
if _0x893B then
return
end
local _0xE4E7, _0xBD98, _0x8C06 = _0x2E92(_0xD33F)
if not _0xE4E7 then
return
endpcall(function()
local _0xD51E = require(_0xD33F.PlayerScripts:WaitForChild(string.char(80,108,97,121,101,114,77,111,100,117,108,101), 2)):GetControls()
if _0xD51E then _0xD51E:Enable() end
end)
pcall(function()
_0xBD98.PlatformStand = false
_0xBD98.Sit = false
_0xBD98.AutoRotate = true
if _0xBD98.WalkSpeed <= 0.01 then _0xBD98.WalkSpeed = 16 end
if _0xBD98.UseJumpPower then
if _0xBD98.JumpPower <= 0.01 then _0xBD98.JumpPower = 50 end
else
if _0xBD98.JumpHeight <= 0.01 then _0xBD98.JumpHeight = 7.2 end
end
_0xBD98:ChangeState(Enum.HumanoidStateType.Running)
end)
local _0x0AEF = _0xBFFB
if _0x0AEF ==string.char(75,105,108,108)and not _0xBF86(_0xD33F,string.char(75,110,105,102,101)) then
_0xE835(string.char(68,114,111,110,101),string.char(75,105,108,108,32,105,109,112,97,99,116,32,114,101,113,117,105,114,101,115,32,116,104,101,32,109,117,114,100,101,114,101,114,32,107,110,105,102,101))
return
end
if not _0x23CB then
_0xE835(string.char(83,104,97,104,101,100),string.char(108,111,97,100,105,110,103,32,116,104,101,32,100,114,111,110,101,46,46,46))
_0x2373()
end
if not _0x2E92(_0xD33F) then
return
end
_0x893B = true
pcall(function()
_0xBD98:UnequipTools()
end)local _0x54BE
local _0x9DFB = true
pcall(function()
_0x54BE = require(_0xD33F.PlayerScripts:WaitForChild(string.char(80,108,97,121,101,114,77,111,100,117,108,101), 2)):GetControls()
if _0x54BE then pcall(function() _0x54BE:Enable() end) end
end)
local _0xF4E1, _0xCFED = _0xBD98.WalkSpeed, _0xBD98.JumpPower
local _0xFC73 = _0xBD98.JumpHeight
local _0x12FA = _0xBD98.UseJumpPower
local _0x889C = _0xBD98.AutoRotate
local _0x5EE6 = _0xBD98.PlatformStand
local _0x451C = _0xBD98.Sit
local _0xF276 = _0xE4E7.Anchored
local _0x9DEA = _0xBD98:GetState()local _0x4245 = workspace.CurrentCamera
local _0xEF2F = _0x4245.CameraType
_0x4245.CameraType = Enum.CameraType.Scriptable
local _0xB740, _0x50DC = _0x63F8.MouseBehavior, _0x63F8.MouseIconEnabled
local _0xFF78 = RaycastParams.new()
_0xFF78.FilterType = Enum.RaycastFilterType.Exclude
_0xFF78.IgnoreWater = true
local _0xEE9A = { _0x4245, _0x8C06 }
_0xFF78.FilterDescendantsInstances = _0xEE9A
local _0xA83C = _0x4245.CFrame.LookVector
local _0x2454 = math.atan2(-_0xA83C.X, -_0xA83C.Z)
local _0xCC86 = 0.12
_0xE4E6(_0xE4E7)
_0xA52C = true
local _0xC5D8 = _0x8C06:GetPivot()
local _0x16A1 = _0xE4E7.Position + Vector3.new(0, 1.5, 0)
_0x4432(_0x8C06, true)
local _0x96F5 = 0
local _0x8F96 = os.clock()
local _0x8FD5 = _0x401E ==string.char(70,80,86)local _0x834B = _0x23CB:Clone()
local _0x0446 = _0x834B:FindFirstChildWhichIsA(string.char(66,97,115,101,80,97,114,116), true)
_0x834B.Parent = _0x4245
local _0x476F = {}
for _0xBFE6, _0x819A in ipairs(_0x834B:GetDescendants()) do
if _0x819A:IsA(string.char(66,97,115,101,80,97,114,116)) then
local _0xDDE9 = _0x819A.Name:lower()
if _0xDDE9:find(string.char(112,114,111,112)) or _0xDDE9:find(string.char(98,108,97,100,101)) then
table.insert(_0x476F, _0x819A)
end
end
end
local _0x6DDD = _0x6275(_0x8FD5 andstring.char(102,112,118)orstring.char(101,110,103,105,110,101), _0x0446, { Looped = true, Volume = 1, RollOffMinDistance = 15, RollOffMaxDistance = 700 })
local _0x9E90, _0x9314
if _0x8FD5 then
_0x9E90 = _0x81A6(string.char(70,114,97,109,101), { Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,104,97,104,101,100,79,115,100), Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, Parent = _0x4696 })
_0x9314 = {}
local function _0xCA34(_0xFBB7, anchor, pos2, align)
_0x9314[_0xFBB7] = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
AnchorPoint = anchor,
Position = pos2,
Size = UDim2.fromOffset(200, 18),
BackgroundTransparency = 1,
Font = Enum.Font.Code,
TextSize = 16,
TextColor3 = Color3.fromRGB(255, 255, 255),
TextStrokeTransparency = 0.3,
TextXAlignment = align,
Text ="",
Parent = _0x9E90,
})
end
_0xCA34(string.char(98,97,116), Vector2.new(0, 0), UDim2.fromOffset(30, 70), Enum.TextXAlignment.Left)
_0xCA34(string.char(116,105,109,101), Vector2.new(1, 0), UDim2.new(1, -30, 0, 70), Enum.TextXAlignment.Right)
_0xCA34(string.char(97,108,116), Vector2.new(0, 1), UDim2.new(0, 30, 1, -80), Enum.TextXAlignment.Left)
_0xCA34(string.char(115,112,100), Vector2.new(1, 1), UDim2.new(1, -30, 1, -80), Enum.TextXAlignment.Right)
_0xCA34(string.char(109,111,100,101), Vector2.new(0.5, 0), UDim2.new(0.5, 0, 0, 70), Enum.TextXAlignment.Center)
_0x9314.mode.Text = _0x0AEF:upper() ..string.char(32,32,32,65,67,82,79)_0x9314.mode.TextColor3 = _0x0AEF ==string.char(75,105,108,108)and Color3.fromRGB(255, 80, 70) or Color3.fromRGB(110, 190, 255)
end
local _0x0825 = _0x81A6(string.char(70,114,97,109,101), {
Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,104,97,104,101,100,72,117,100),
AnchorPoint = Vector2.new(0.5, 1),
Position = UDim2.new(0.5, 0, 1, -24),
Size = UDim2.fromOffset(0, 30),
AutomaticSize = Enum.AutomaticSize.X,
BackgroundColor3 = Color3.fromRGB(14, 14, 18),
BackgroundTransparency = 0.25,
Parent = _0xD551,
})
_0x81A6(string.char(85,73,67,111,114,110,101,114), { CornerRadius = UDim.new(1, 0), Parent = _0x0825 })
_0x81A6(string.char(85,73,80,97,100,100,105,110,103), { PaddingLeft = UDim.new(0, 14), PaddingRight = UDim.new(0, 14), Parent = _0x0825 })
local _0x0746 = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Size = UDim2.fromScale(0, 1),
AutomaticSize = Enum.AutomaticSize.X,
BackgroundTransparency = 1,
Font = Enum.Font.GothamMedium,
TextSize = 13,
TextColor3 = Color3.fromRGB(235, 235, 240),
Text ="",
Parent = _0x0825,
})
local _0xAAEC = _0x81A6(string.char(70,114,97,109,101), {
Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,104,97,104,101,100,67,114,111,115,115),
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromScale(0.5, 0.5),
Size = UDim2.fromOffset(6, 6),
BackgroundColor3 = Color3.fromRGB(255, 70, 60),
Parent = _0xD551,
})
_0x81A6(string.char(85,73,67,111,114,110,101,114), { CornerRadius = UDim.new(1, 0), Parent = _0xAAEC })
local _0x921D
local _0x0F2B = false
pcall(function()
_0x0F2B = _0x63F8.PreferredInput == Enum.PreferredInput.Touch
end)
local _0x191C = _0x63F8.TouchEnabled and (_0x0F2B or not _0x63F8.KeyboardEnabled)
local _0xFF23 = {
throttle = 0,
yaw = 0,
_0x5D7E = Vector2.zero,
boost = false,
_0x926F = false,
down = false,
}
local _0x46D7
local _0xCB86, _0x81B7 = false, false
local function _0x9465()
if not _0x921D then
return
end
_0x921D.frame:Destroy()
if _0x921D.rec then
_0x921D.rec:Destroy()
end
_0x921D = nil
end
local function _0x8888(_0xAA59)
local _0x6355 = _0xAA59.Archivable
_0xAA59.Archivable = true
local _0x3E35, _0xD51E = pcall(function()
return _0xAA59:Clone()
end)
_0xAA59.Archivable = _0x6355
return _0x3E35 and _0xD51E or nil
end
local function _0x12DB(_0x0D18)
_0x9465()
local _0xB6CB, _0xBFE6, _0x98C2 = _0x2E92(_0x0D18)
if not _0xB6CB then
return
end
local _0xEF1C = _0x81A6(string.char(70,114,97,109,101), {
Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,104,97,104,101,100,80,105,112),
AnchorPoint = Vector2.new(1, 1),
Position = UDim2.new(1, -20, 1, -20),
Size = UDim2.fromOffset(300, 190),
BackgroundColor3 = Color3.fromRGB(10, 10, 12),
BorderSizePixel = 0,
Visible = false,
Parent = _0xD551,
})
_0x81A6(string.char(85,73,67,111,114,110,101,114), { CornerRadius = UDim.new(0, 8), Parent = _0xEF1C })
_0x81A6(string.char(85,73,83,116,114,111,107,101), { Color = Color3.fromRGB(255, 70, 60), Thickness = 1.5, Transparency = 0.2, Parent = _0xEF1C })
local _0x56A0 = _0x81A6(string.char(86,105,101,119,112,111,114,116,70,114,97,109,101), {
Position = UDim2.fromOffset(4, 4),
Size = UDim2.new(1, -8, 1, -8),
BackgroundColor3 = Color3.fromRGB(28, 32, 40),
BorderSizePixel = 0,
Ambient = Color3.fromRGB(150, 150, 155),
LightColor = Color3.fromRGB(255, 250, 240),
LightDirection = Vector3.new(-0.6, -1, -0.4),
Parent = _0xEF1C,
})
_0x81A6(string.char(85,73,67,111,114,110,101,114), { CornerRadius = UDim.new(0, 6), Parent = _0x56A0 })
local _0xE470 = _0x81A6(string.char(67,97,109,101,114,97), { FieldOfView = 62, Parent = _0x56A0 })
_0x56A0.CurrentCamera = _0xE470
local function _0xD85E(props2)
do
local _0xEAC9 = {}
_0xEAC9[5924] = {
function()
return props2
end,string.char(80,97,114,101,110,116),
function()
return props2.Parent or _0xEF1C
end,
}
_0xEAC9[33396] = {
function()
return props2
end,string.char(84,101,120,116,83,105,122,101),
function()
return props2.TextSize or 13
end,
}
_0xEAC9[27460] = {
function()
return props2
end,string.char(70,111,110,116),
function()
return Enum.Font.Code
end,
}
_0xEAC9[46500] = {
function()
return props2
end,string.char(66,97,99,107,103,114,111,117,110,100,84,114,97,110,115,112,97,114,101,110,99,121),
function()
return 1
end,
}
_0xEAC9[31679] = {
function()
return props2
end,string.char(84,101,120,116,83,116,114,111,107,101,84,114,97,110,115,112,97,114,101,110,99,121),
function()
return 0.4
end,
}
_0xEAC9[59609] = {
function()
return props2
end,string.char(90,73,110,100,101,120),
function()
return 4
end,
}
local _0x02E3 = { 46500, 27460, 33396, 31679, 59609, 5924 }
for j = 1, #_0x02E3 do
local _0x38FB = _0xEAC9[_0x02E3[j]]
_0x38FB[1]()[_0x38FB[2]] = _0x38FB[3]()
end
end
return _0x81A6(string.char(84,101,120,116,76,97,98,101,108), props2)
end
_0xD85E({
Position = UDim2.fromOffset(12, 9),
Size = UDim2.new(1, -24, 0, 14),
TextXAlignment = Enum.TextXAlignment.Left,
TextColor3 = Color3.fromRGB(255, 255, 255),
Text =string.char(84,65,82,71,69,84,32,67,65,77,32,32).. _0x0D18.DisplayName:upper(),
})
local _0x8942 = _0xD85E({
AnchorPoint = Vector2.new(0, 1),
Position = UDim2.new(0, 12, 1, -8),
Size = UDim2.new(1, -24, 0, 14),
TextXAlignment = Enum.TextXAlignment.Left,
TextColor3 = Color3.fromRGB(255, 80, 70),
Text ="",
})
local _0x0EC3 = _0x81A6(string.char(70,114,97,109,101), {
Size = UDim2.fromScale(1, 1),
BackgroundColor3 = Color3.new(1, 1, 1),
BackgroundTransparency = 1,
BorderSizePixel = 0,
ZIndex = 3,
Parent = _0xEF1C,
})
_0x81A6(string.char(85,73,67,111,114,110,101,114), { CornerRadius = UDim.new(0, 8), Parent = _0x0EC3 })
local _0xA2F2 = _0xD85E({
Size = UDim2.fromScale(1, 1),
TextSize = 22,
TextColor3 = Color3.fromRGB(235, 235, 235),
BackgroundColor3 = Color3.new(0, 0, 0),
Text =string.char(83,73,71,78,65,76,32,76,79,83,84),
Visible = false,
})
_0xA2F2.BackgroundTransparency = 0
_0x81A6(string.char(85,73,67,111,114,110,101,114), { CornerRadius = UDim.new(0, 8), Parent = _0xA2F2 })
local _0xD38C = Instance.new(string.char(77,111,100,101,108))
local _0xB3D9 = OverlapParams.new()
_0xB3D9.FilterType = Enum.RaycastFilterType.Exclude
local _0x01F9 = { _0x4245 }
for _0xBFE6, pl in ipairs(_0x9A21:GetPlayers()) do
if pl.Character then
table.insert(_0x01F9, pl.Character)
end
end
_0xB3D9.FilterDescendantsInstances = _0x01F9
local _0x8E73 = 0
for _0xBFE6, _0x3066 in ipairs(workspace:GetPartBoundsInRadius(_0xB6CB.Position, 80, _0xB3D9)) do
if _0x8E73 >= 600 then
break
end
if _0x3066.Transparency < 0.95 and not _0x3066:IsA(string.char(84,101,114,114,97,105,110)) then
local _0xD51E = _0x8888(_0x3066)
if _0xD51E then
for _0xBFE6, _0x819A in ipairs(_0xD51E:GetDescendants()) do
if not (_0x819A:IsA(string.char(68,101,99,97,108)) or _0x819A:IsA(string.char(84,101,120,116,117,114,101)) or _0x819A:IsA(string.char(83,112,101,99,105,97,108,77,101,115,104)) or _0x819A:IsA(string.char(83,117,114,102,97,99,101,65,112,112,101,97,114,97,110,99,101))) then
_0x819A:Destroy()
end
end
_0xD51E.Anchored = true
_0xD51E.Parent = _0xD38C
_0x8E73 += 1
end
end
end
_0xD38C.Parent = _0x56A0
local _0xADD4 = {}
local _0x797D = _0x8888(_0x98C2)
if _0x797D then
for _0xBFE6, _0x819A in ipairs(_0x797D:GetDescendants()) do
if _0x819A:IsA(string.char(76,117,97,83,111,117,114,99,101,67,111,110,116,97,105,110,101,114)) or _0x819A:IsA(string.char(83,111,117,110,100)) then
_0x819A:Destroy()
elseif _0x819A:IsA(string.char(66,97,115,101,80,97,114,116)) then
_0x819A.Anchored = true
end
end
local function _0xB288(_0x7D74, _0xBB9C)
for _0xBFE6, _0x22DF in ipairs(_0x7D74:GetChildren()) do
local _0x171F = _0xBB9C:FindFirstChild(_0x22DF.Name)
if _0x171F then
if _0x22DF:IsA(string.char(66,97,115,101,80,97,114,116)) and _0x171F:IsA(string.char(66,97,115,101,80,97,114,116)) then
table.insert(_0xADD4, { _0x22DF, _0x171F })
end
_0xB288(_0x22DF, _0x171F)
end
end
end
_0xB288(_0x98C2, _0x797D)
_0x797D.Parent = _0x56A0
end
local _0xED8A = _0x23CB:Clone()
_0xED8A.Parent = _0x56A0
local _0x6453 = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,104,97,104,101,100,82,101,99),
AnchorPoint = Vector2.new(0.5, 0),
Position = UDim2.new(0.5, 0, 0, 14),
Size = UDim2.fromOffset(220, 18),
BackgroundTransparency = 1,
Font = Enum.Font.Code,
TextSize = 15,
TextColor3 = Color3.fromRGB(255, 70, 60),
TextStrokeTransparency = 0.5,
Text =string.char(226,151,143,32,82,69,67,32,32,84,65,82,71,69,84,32,67,65,77),
Parent = _0xD551,
})
_0x921D = {
_0xEF1C = _0xEF1C,
vf = _0x56A0,
_0x0D18 = _0x0D18,
_0xE4E7 = _0xB6CB,
vcam = _0xE470,
_0xADD4 = _0xADD4,
_0x834B = _0xED8A,
stamp = _0x8942,
_0x0EC3 = _0x0EC3,
lost = _0xA2F2,
rec = _0x6453,
_0xA7B0 = {},
}
end
local function _0xC222(droneCf)
if not _0x921D then
return
end
if not _0x2E92(_0x921D.p) then
_0x9465()
return
end
local _0x9494 = os.clock()
local _0x7D32 = table.create(#_0x921D.links)
for _0x60FA, _0xA0A4 in ipairs(_0x921D.links) do
_0x7D32[_0x60FA] = _0xA0A4[1].CFrame
end
table.insert(_0x921D.frames, { _0x4903 = _0x9494, _0x834B = droneCf, _0x7D32 = _0x7D32, tp = _0x921D.hrp.Position })
while #_0x921D.frames > 2 and _0x9494 - _0x921D.frames[1].t > 3.2 do
table.remove(_0x921D.frames, 1)
end
_0x921D.rec.TextTransparency = _0x9494 * 2 % 1 < 0.6 and 0 or 0.7
end
local function _0x9D58(_0x86F2)
if _0x86F2.rec then
pcall(function() _0x86F2.rec:Destroy() end)
end
local _0xA7B0 = _0x86F2.frames
if #_0xA7B0 < 2 then
pcall(function() _0x86F2.frame:Destroy() end)
return
endlocal _0xA25C = 2.8
local _0xE3BD = 0.6
local _0xA178 = 0.4
local _0x63FE = 0.2
local function _0x5DB5(_0x23BB)
for _0x60FA, _0xA0A4 in ipairs(_0x86F2.links) do
if _0x23BB.cfs[_0x60FA] then
_0xA0A4[2].CFrame = _0x23BB.cfs[_0x60FA]
end
end
_0x86F2.drone:PivotTo(_0x23BB.drone)
local _0xC4D6 = _0x23BB.drone.Position - _0x23BB.tp
local _0x68FD = Vector3.new(_0xC4D6.X, 0, _0xC4D6.Z)
local _0x2435 = _0x68FD.Magnitude > 0.1 and _0x68FD.Unit or Vector3.zAxis
local _0x4EDF = _0x23BB.tp - _0x2435 * 11 + Vector3.new(0, 5, 0)
local _0x5D7E = _0xC4D6.Magnitude > 0.1 and _0xC4D6.Unit or Vector3.zAxis
return CFrame.lookAt(_0x4EDF, _0x23BB.tp + _0x5D7E * 6 + Vector3.new(0, 1, 0))
end
local _0xEF1C = _0x86F2.frame
_0xEF1C.Visible = true
_0xEF1C.Size = UDim2.fromOffset(0, 0)
_0x85C3:Create(_0xEF1C, TweenInfo.new(0.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.fromOffset(300, 190) }):Play()
local _0x6E9F = _0xA7B0[1].t
local _0x8046 = math.max(_0xA7B0[#_0xA7B0].t - _0x6E9F, 0.001)
local _0x012B = 1
local _0x2450
local _0x05B5 = os.clock()
while true do
local _0x4903 = os.clock() - _0x05B5
if _0x4903 >= _0xA25C then break end
local _0x3DF9 = _0x6E9F + (_0x4903 / _0xA25C) * _0x8046
while _0x012B < #_0xA7B0 and _0xA7B0[_0x012B + 1].t <= _0x3DF9 do
_0x012B += 1
end
local _0xC03D = _0x5DB5(_0xA7B0[_0x012B])
_0x2450 = _0x2450 and _0x2450:Lerp(_0xC03D, 0.3) or _0xC03D
_0x86F2.vcam.CFrame = _0x2450
_0x86F2.stamp.Text = (string.char(226,151,143,32,82,69,67,32,32,37,48,50,100,58,37,48,53,46,50,102,32,32,32,82,69,80,76,65,89)):format(math.floor(_0x4903 / 60), _0x4903 % 60)
_0x7FDD.RenderStepped:Wait()
end
local _0x64B6 = _0xA7B0[#_0xA7B0]
_0x5DB5(_0x64B6)
pcall(function() _0x86F2.drone:Destroy() end)
local _0xE592 = _0x81A6(string.char(80,97,114,116), {
Shape = Enum.PartType.Ball, Size = Vector3.one * 2, Anchored = true,
Material = Enum.Material.Neon, Color = Color3.fromRGB(255, 150, 50),
CFrame = CFrame.new(_0x64B6.drone.Position), Parent = _0x86F2.vf,
})
_0x86F2.flash.BackgroundTransparency = 0
_0x85C3:Create(_0x86F2.flash, TweenInfo.new(_0xE3BD), { BackgroundTransparency = 1 }):Play()
_0x85C3:Create(_0xE592, TweenInfo.new(_0xE3BD, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = Vector3.one * 22, Color = Color3.fromRGB(70, 60, 55), Transparency = 0.4 }):Play()
local _0x99AC = os.clock()
while os.clock() - _0x99AC < _0xE3BD do
local _0x3FFC = 1 - (os.clock() - _0x99AC) / _0xE3BD
_0x86F2.vcam.CFrame = _0x2450 * CFrame.Angles((math.random() - 0.5) * 0.08 * _0x3FFC, (math.random() - 0.5) * 0.08 * _0x3FFC, 0)
_0x7FDD.RenderStepped:Wait()
end
_0x86F2.lost.Visible = true
task.wait(_0xA178)
local _0x6CE2 = _0x85C3:Create(_0xEF1C, TweenInfo.new(_0x63FE), { Size = UDim2.fromOffset(0, 0) })
_0x6CE2:Play()
task.wait(_0x63FE)
pcall(function() _0xEF1C:Destroy() end)
end
local _0x5AEE = {}
local _0x37B6 = false
local _0x348B = {}
local function _0x12A0(keepSignalLost)
local _0x9058 = {
ClumsyScriptShahedHud = true, ClumsyScriptShahedCross = true,
ClumsyScriptShahedOsd = true, ClumsyScriptShahedRec = true,
ClumsyScriptDroneMobile = true, ClumsyScriptSignalLost = true,
ClumsyScriptShahedPip = true,
}
for _0xBFE6, child in ipairs(_0xD551:GetChildren()) do
if _0x9058[child.Name] and not (keepSignalLost and child.Name ==string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,105,103,110,97,108,76,111,115,116)) then pcall(function() child:Destroy() end) end
end
end
local function _0x0A7A()
local _0xCB74 = workspace.CurrentCamera
if not _0xCB74 then return end
for _0xBFE6, child in ipairs(_0xCB74:GetChildren()) do
if child.Name ==string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,104,97,104,101,100)or child.Name ==string.char(67,108,117,109,115,121,83,99,114,105,112,116,68,114,111,110,101)then
pcall(function() child:Destroy() end)
end
end
end
local _0x4E81 = false
local function _0x855D(exploded)
if _0x4E81 then
return
end
_0x4E81 = true
_0x9DFB = false_0x893B = false
for _0xBFE6, _0xD51E in ipairs(_0x348B) do pcall(function() _0xD51E:Disconnect() end) end
table.clear(_0x348B)
pcall(function() _0x7FDD:UnbindFromRenderStep(string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,104,97,104,101,100,80,105,108,111,116)) end)
pcall(function() if _0x6DDD then _0x6DDD:Stop() end end)
pcall(function() _0x834B:Destroy() end)
pcall(function() _0x0825:Destroy() end)
pcall(function() if _0x46D7 then _0x46D7:Destroy() end end)
pcall(_0x9465)
pcall(function() _0xAAEC:Destroy() end)
pcall(function() if _0x9E90 then _0x9E90:Destroy() end end)pcall(_0x12A0, exploded)
pcall(_0x0A7A)
pcall(function()
_0x63F8.MouseBehavior = _0xB740
_0x63F8.MouseIconEnabled = _0x50DC
end)pcall(function()
if _0x8C06.Parent then
_0x4432(_0x8C06, false)
end
end)if _0xC5D8 and _0x8C06.Parent and _0xBD98.Health > 0 then
pcall(function()
_0x8C06:PivotTo(_0xC5D8)
end)
end
pcall(function()
for _0xBFE6, _0x3066 in ipairs(_0x8C06:GetDescendants()) do
if _0x3066:IsA(string.char(66,97,115,101,80,97,114,116)) then
_0x3066.Anchored = (_0x3066 == _0xE4E7) and _0xF276 or false
_0x3066.AssemblyLinearVelocity = Vector3.zero
_0x3066.AssemblyAngularVelocity = Vector3.zero
end
end
end)pcall(function()
_0xBD98.WalkSpeed = _0xF4E1
_0xBD98.JumpPower = _0xCFED
_0xBD98.AutoRotate = _0x889C
_0xBD98.PlatformStand = _0x5EE6
_0xBD98.Sit = false
if _0xBD98.Health > 0 then
_0xBD98:ChangeState(Enum.HumanoidStateType.GettingUp)
_0x7FDD.Heartbeat:Wait()
_0xBD98:ChangeState(Enum.HumanoidStateType.Running)
end
end)if _0xA52C then
_0xA52C = false
pcall(_0x0F18)
endpcall(function() if _0x54BE then _0x54BE:Enable() end end)
pcall(function()
_0xBD98.PlatformStand = false
_0xBD98.Sit = false
_0xBD98.AutoRotate = _0x889C
_0xBD98.WalkSpeed = _0xF4E1 > 0 and _0xF4E1 or 16
if _0x12FA then
_0xBD98.JumpPower = _0xCFED > 0 and _0xCFED or 50
else
_0xBD98.JumpHeight = _0xFC73 > 0 and _0xFC73 or 7.2
end
end)pcall(function()
_0xBD98.PlatformStand = false
_0xBD98.Sit = false
_0xBD98.AutoRotate = _0x889C
if _0xBD98.UseJumpPower then _0xBD98.JumpPower = math.max(_0xCFED, 50) else _0xBD98.JumpHeight = math.max(_0xFC73, 7.2) end
_0xBD98.WalkSpeed = math.max(_0xF4E1, 16)
_0xBD98:ChangeState(Enum.HumanoidStateType.Running)
end)
task.defer(function()
for _0xBFE6 = 1, 5 do
if not _0xBD98.Parent or _0xBD98.Health <= 0 then break end
pcall(function() _0xBD98.PlatformStand=false; _0xBD98.Sit=false; if _0xBD98.UseJumpPower then _0xBD98.JumpPower=math.max(_0xCFED,50) else _0xBD98.JumpHeight=math.max(_0xFC73,7.2) end; _0xBD98.WalkSpeed=math.max(_0xF4E1,16) end)
task.wait(0.15)
end
end)local function _0x1E94()
local _0xCB74 = workspace.CurrentCamera
if _0xCB74 then
pcall(function() _0xCB74.CameraType = Enum.CameraType.Custom end)
pcall(function() if _0xBD98.Parent and _0xBD98.Health > 0 then _0xCB74.CameraSubject = _0xBD98 end end)
end
end
_0x1E94()
task.defer(_0x1E94)
task.delay(0.25, _0x1E94)
task.delay(1, _0x1E94)task.delay(7, function()
pcall(function()
for _0xBFE6, child in ipairs(_0xD551:GetChildren()) do
if child.Name ==string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,105,103,110,97,108,76,111,115,116)then child:Destroy() end
end
end)
pcall(_0x1E94)
end)
if exploded thentask.delay(7, function()
for _0xBFE6, child in ipairs(_0xD551:GetChildren()) do
if child.Name ==string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,105,103,110,97,108,76,111,115,116)then
pcall(function() child:Destroy() end)
end
end
end)
end
_0x893B = false
end
local function _0xBBD9(_0x0995)
if _0x37B6 then
return
end
_0x37B6 = true
local _0x613C, _0xC6A6 = nil, 16
for _0xBFE6, _0x9B31 in ipairs(_0x5B95(false, _0x0995, true)) do
local _0xB6CB = _0x2E92(_0x9B31.p)
local _0x819A = _0xB6CB and (_0xB6CB.Position - _0x0995).Magnitude
if _0x819A and _0x819A < _0xC6A6 then
_0x613C, _0xC6A6 = _0x9B31.p, _0x819A
end
endif _0x921D then
local _0x86F2 = _0x921D
_0x921D = nilpcall(function() _0x86F2.frame.Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,104,97,104,101,100,82,101,112,108,97,121,84,97,98,108,101,116)end)
table.insert(_0x86F2.frames, {
_0x4903 = os.clock(),
_0x834B = CFrame.new(_0x0995),
_0x7D32 = _0x86F2.frames[#_0x86F2.frames] and _0x86F2.frames[#_0x86F2.frames].cfs or {},
tp = _0x86F2.hrp.Position,
})
task.delay(2.5, _0x9D58, _0x86F2)
end
if _0x613C and _0x0AEF ==string.char(75,105,108,108)then
task.spawn(function()
local _0x3E35 = _0xD99B(_0x613C)
if _0x3E35 then
_0xE835(string.char(208,146,209,128,208,176,208,179,32,209,131,208,189,208,184,209,135,209,130,208,190,208,182,208,181,208,189), _0x613C.DisplayName ..string.char(32,209,131,208,189,208,184,209,135,209,130,208,190,208,182,208,181,208,189))
end
end)
end
_0xAC8E(_0x613C and _0x613C.DisplayName, os.clock() - _0x8F96)
pcall(_0x78D9, _0x0995)
if _0x613C and _0x0AEF ==string.char(70,108,105,110,103)and _0xF027 thentask.spawn(function()
local _0x3E35 = _0xF027(_0x613C, false)
if _0x3E35 then
_0xE835(string.char(208,146,209,128,208,176,208,179,32,209,131,208,189,208,184,209,135,209,130,208,190,208,182,208,181,208,189), _0x613C.DisplayName ..string.char(32,209,131,208,189,208,184,209,135,209,130,208,190,208,182,208,181,208,189))
end
_0x855D(true)
end)
else
_0x855D(true)
end
end
local function _0xD1A9()
if _0x37B6 then
return
end
_0x37B6 = true
task.spawn(_0x855D, false)
end
if _0x191C then
_0x46D7 = _0x81A6(string.char(70,114,97,109,101), {
Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,68,114,111,110,101,77,111,98,105,108,101),
Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1,
Parent = _0xD551,
})
local _0x248F = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0, 1),
Position = UDim2.new(0, 24, 1, -28),
Size = UDim2.fromOffset(136, 136),
BackgroundColor3 = Color3.fromRGB(14, 14, 18),
BackgroundTransparency = 0.28,
Active = true,
ZIndex = 20,
Parent = _0x46D7,
})
_0x81A6(string.char(85,73,67,111,114,110,101,114), { CornerRadius = UDim.new(1, 0), Parent = _0x248F })
_0x81A6(string.char(85,73,83,116,114,111,107,101), { Color = _0x0333, Thickness = 2, Transparency = 0.35, Parent = _0x248F })
local _0x3E4A = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromScale(0.5, 0.5),
Size = UDim2.fromOffset(54, 54),
BackgroundColor3 = _0x0333,
BackgroundTransparency = 0.08,
ZIndex = 21,
Parent = _0x248F,
})
_0x81A6(string.char(85,73,67,111,114,110,101,114), { CornerRadius = UDim.new(1, 0), Parent = _0x3E4A })
local _0x4F22
local function _0xA7BA()
_0x4F22 = nil
_0xFF23.throttle, _0xFF23.yaw = 0, 0
_0x3E4A.Position = UDim2.fromScale(0.5, 0.5)
end
local function _0xDE59(input)
local _0xF89E = _0x248F.AbsolutePosition + _0x248F.AbsoluteSize / 2
local _0xC4D6 = Vector2.new(input.Position.X, input.Position.Y) - _0xF89E
local _0xEFFE = _0x248F.AbsoluteSize.X * 0.36
if _0xC4D6.Magnitude > _0xEFFE then
_0xC4D6 = _0xC4D6.Unit * _0xEFFE
end
_0xFF23.yaw = math.clamp(_0xC4D6.X / _0xEFFE, -1, 1)
_0xFF23.throttle = math.clamp(-_0xC4D6.Y / _0xEFFE, -1, 1)
_0x3E4A.Position = UDim2.new(0.5, _0xC4D6.X, 0.5, _0xC4D6.Y)
end
table.insert(_0x348B, _0x248F.InputBegan:Connect(function(input)
if not _0x4F22 and input.UserInputType == Enum.UserInputType.Touch then
_0x4F22 = input
_0xDE59(input)
end
end))
table.insert(_0x348B, _0x63F8.InputChanged:Connect(function(input)
if input == _0x4F22 then
_0xDE59(input)
end
end))
table.insert(_0x348B, _0x63F8.InputEnded:Connect(function(input)
if input == _0x4F22 then
_0xA7BA()
end
end))
local _0x3E4C = _0x81A6(string.char(70,114,97,109,101), {
Position = UDim2.fromScale(0.38, 0),
Size = UDim2.new(0.62, 0, 1, -190),
BackgroundTransparency = 1,
Active = true,
ZIndex = 19,
Parent = _0x46D7,
})
_0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
AnchorPoint = Vector2.new(1, 0),
Position = UDim2.new(1, -18, 0, 18),
Size = UDim2.fromOffset(130, 22),
BackgroundTransparency = 1,
Font = Enum.Font.GothamBold,
Text =string.char(68,82,65,71,32,84,79,32,65,73,77),
TextSize = 12,
TextColor3 = Color3.fromRGB(225, 225, 230),
TextTransparency = 0.35,
ZIndex = 20,
Parent = _0x3E4C,
})
local _0x85E8
table.insert(_0x348B, _0x3E4C.InputBegan:Connect(function(input)
if not _0x85E8 and input.UserInputType == Enum.UserInputType.Touch then
_0x85E8 = input
end
end))
table.insert(_0x348B, _0x63F8.InputChanged:Connect(function(input)
if input == _0x85E8 then
_0xFF23.lookDelta += Vector2.new(input.Delta.X, input.Delta.Y)
end
end))
table.insert(_0x348B, _0x63F8.InputEnded:Connect(function(input)
if input == _0x85E8 then
_0x85E8 = nil
end
end))
local function _0xC8C9(_0xD85E, _0xA051, _0xD4A2, callback, holdKey)
local _0x82AA = _0x81A6(string.char(84,101,120,116,66,117,116,116,111,110), {
AnchorPoint = Vector2.new(1, 1),
Position = UDim2.new(1, _0xA051, 1, _0xD4A2),
Size = UDim2.fromOffset(82, 54),
BackgroundColor3 = Color3.fromRGB(18, 18, 23),
BackgroundTransparency = 0.16,
AutoButtonColor = false,
Font = Enum.Font.GothamBold,
Text = _0xD85E,
TextSize = 12,
TextColor3 = Color3.fromRGB(245, 245, 248),
ZIndex = 22,
Parent = _0x46D7,
})
_0x81A6(string.char(85,73,67,111,114,110,101,114), { CornerRadius = UDim.new(0, 12), Parent = _0x82AA })
_0x81A6(string.char(85,73,83,116,114,111,107,101), { Color = _0xD85E ==string.char(66,79,79,77)and Color3.fromRGB(255, 75, 60) or _0x0333, Thickness = 1.5, Transparency = 0.3, Parent = _0x82AA })
if holdKey then
local _0x23B3
table.insert(_0x348B, _0x82AA.InputBegan:Connect(function(input)
if input.UserInputType == Enum.UserInputType.Touch then
_0x23B3 = input
_0xFF23[holdKey] = true
_0x82AA.BackgroundColor3 = _0x0333
end
end))
table.insert(_0x348B, _0x63F8.InputEnded:Connect(function(input)
if input == _0x23B3 then
_0x23B3 = nil
_0xFF23[holdKey] = false
_0x82AA.BackgroundColor3 = Color3.fromRGB(18, 18, 23)
end
end))
else
table.insert(_0x348B, _0x82AA.Activated:Connect(callback))
end
end
_0xC8C9(string.char(66,79,79,83,84), -212, -92, nil,string.char(98,111,111,115,116))
_0xC8C9(string.char(85,80), -122, -92, nil,string.char(117,112))
_0xC8C9(string.char(68,79,87,78), -32, -92, nil,string.char(100,111,119,110))
_0xC8C9(string.char(86,73,69,87), -212, -28, function()
_0xCB86 = not _0xCB86
end)
_0xC8C9(string.char(66,79,79,77), -122, -28, function()
if os.clock() - _0x8F96 > 0.5 then
_0xBBD9(_0x16A1)
end
end)
_0xC8C9(string.char(69,88,73,84), -32, -28, _0xD1A9)
end
table.insert(_0x348B, _0x63F8.InputBegan:Connect(function(input, _0x60D8)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
if not _0x60D8 and os.clock() - _0x8F96 > 0.5 then
_0xBBD9(_0x16A1)
end
elseif input.KeyCode == Enum.KeyCode.X then
_0xD1A9()
elseif not _0x60D8 then
_0x5AEE[input.KeyCode] = true
end
end))
table.insert(_0x348B, _0x63F8.InputEnded:Connect(function(input)
_0x5AEE[input.KeyCode] = nil
end))
table.insert(_0x348B, _0xBD98.Died:Connect(_0xD1A9))
local _0xB215 = Vector3.zero
local function _0xE812(_0xB2D1)
local _0x16C4 = workspace:Spherecast(_0x16A1, 1.4, _0xB2D1, _0xFF78)
for _0xBFE6 = 1, 8 do
if not _0x16C4 then
break
end
local _0xAA59 = _0x16C4.Instance
local _0xE6E2 = _0xAA59:FindFirstAncestorOfClass(string.char(77,111,100,101,108))
local _0x86F1 = _0xE6E2 and _0xE6E2:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if not (_0xAA59.Transparency >= 0.9 or not _0xAA59.CanCollide or _0x86F1) then
break
end
table.insert(_0xEE9A, _0x86F1 and _0xE6E2 or _0xAA59)
_0xFF78.FilterDescendantsInstances = _0xEE9A
_0x16C4 = workspace:Spherecast(_0x16A1, 1.4, _0xB2D1, _0xFF78)
end
return _0x16C4
end
local function _0x3FED(_0xB2D1)
for _0xBFE6 = 1, 3 do
if _0xB2D1.Magnitude < 0.001 then
return
end
local _0x16C4 = _0xE812(_0xB2D1)
if not _0x16C4 then
_0x16A1 += _0xB2D1
return
end
local _0xDDE9 = _0x16C4.Normal
local _0xD4C2 = math.max(_0x16C4.Distance - 0.05, 0)
_0x16A1 += _0xB2D1.Unit * _0xD4C2 + _0xDDE9 * 0.02
_0xB2D1 -= _0xB2D1.Unit * _0xD4C2
_0xB2D1 -= _0xDDE9 * _0xB2D1:Dot(_0xDDE9)
_0xB215 -= _0xDDE9 * math.min(_0xB215:Dot(_0xDDE9), 0)
end
end
local _0x371C = RaycastParams.new()
_0x371C.FilterType = Enum.RaycastFilterType.Exclude
_0x371C.FilterDescendantsInstances = { _0x4245, _0x8C06 }
local _0x2450 = _0x4245.CFrame
local function _0xB5BA(_0x3FFC)
return _0x63F8:IsKeyDown(_0x3FFC)
end
_0x7FDD:BindToRenderStep(string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,104,97,104,101,100,80,105,108,111,116), Enum.RenderPriority.Last.Value + 5, function(_0xF45E)
if _0x37B6 then
return
end
_0xF45E = math.min(_0xF45E, 0.05)
if not _0x191C then
_0x63F8.MouseBehavior = Enum.MouseBehavior.LockCenter
_0x63F8.MouseIconEnabled = false
end
_0x4245.CameraType = Enum.CameraType.Scriptable
local _0x3E3C = _0x191C and _0xFF23.lookDelta or _0x63F8:GetMouseDelta()
_0xFF23.lookDelta = Vector2.zero
local _0xD651 = 0
if _0xB5BA(Enum.KeyCode.A) then
_0xD651 += 1
end
if _0xB5BA(Enum.KeyCode.D) then
_0xD651 -= 1
end
_0xD651 -= _0xFF23.yaw
local _0xCDDE = -_0x3E3C.X * (_0x191C and 0.0045 or 0.0035) + _0xD651 * 1.8 * _0xF45E
_0x2454 += _0xCDDE
_0xCC86 = math.clamp(_0xCC86 - _0x3E3C.Y * (_0x191C and 0.0045 or 0.0035), -1.45, 1.3)
local _0xBE50 = _0xB5BA(Enum.KeyCode.V)
if _0xBE50 and not _0x81B7 then
_0xCB86 = not _0xCB86
end
_0x81B7 = _0xBE50
local _0x3F18 = CFrame.Angles(0, _0x2454, 0) * CFrame.Angles(_0xCC86, 0, 0)
local _0x2D51 = _0x3F18.LookVector
local _0xB07F = 0
if _0xB5BA(Enum.KeyCode.W) then
_0xB07F = _0x8FD5 and (_0xB5BA(Enum.KeyCode.LeftShift) and 150 or 90) or (_0xB5BA(Enum.KeyCode.LeftShift) and 110 or 60)
end
if _0xB5BA(Enum.KeyCode.S) then
_0xB07F = _0x8FD5 and -30 or -25
end
if _0x191C and math.abs(_0xFF23.throttle) > 0.04 then
if _0xFF23.throttle > 0 then
_0xB07F = _0xFF23.throttle * (_0x8FD5 and (_0xFF23.boost and 150 or 90) or (_0xFF23.boost and 110 or 60))
else
_0xB07F = _0xFF23.throttle * (_0x8FD5 and 30 or 25)
end
end
local _0xF3CD, _0xD222 = 0, _0x8FD5 and 40 or 28
if _0xB5BA(Enum.KeyCode.Space) or _0xFF23.up then
_0xF3CD += _0xD222
end
if _0xB5BA(Enum.KeyCode.LeftControl) or _0xB5BA(Enum.KeyCode.Q) or _0xFF23.down then
_0xF3CD -= _0xD222
end
_0xB215 = _0xB215:Lerp(_0x2D51 * _0xB07F + Vector3.yAxis * _0xF3CD, math.min(_0xF45E * (_0x8FD5 and 4.5 or 3), 1))
_0x96F5 += (math.clamp(_0xCDDE / math.max(_0xF45E, 0.001) * 0.35, -0.9, 0.9) - _0x96F5) * math.min(_0xF45E * 5, 1)
local _0x98EA = _0xB215 * _0xF45E
for _0xBFE6, _0x9B31 in ipairs(_0x5B95(false, _0x16A1, true)) do
local _0xB6CB = _0x2E92(_0x9B31.p)
if _0xB6CB and (_0xB6CB.Position - _0x16A1).Magnitude < 6 then
_0xBBD9(_0xB6CB.Position)
return
end
end
_0x3FED(_0x98EA)
local _0x7800 = CFrame.new(_0x16A1) * _0x3F18
local _0xA888 = _0x8FD5 and -math.clamp(_0xB215:Dot(_0x2D51) / 150, -0.4, 1) * 0.45 or 0
local _0xADC2 = _0x7800 * CFrame.Angles(_0xA888, 0, _0x96F5 * (_0x8FD5 and 1.2 or 1))
_0x834B:PivotTo(_0xADC2)
local _0xA237 = _0x8FD5 and _0xADC2.UpVector or _0xADC2.LookVector
for _0xBFE6, _0x4066 in ipairs(_0x476F) do
_0x4066.CFrame = CFrame.new(_0x4066.Position) * CFrame.fromAxisAngle(_0xA237, _0xF45E * 45) * (_0x4066.CFrame - _0x4066.Position)
end
if _0x6DDD and _0x8FD5 then
_0x6DDD.PlaybackSpeed = 0.9 + _0xB215.Magnitude / 170
end
local _0x08A6
if _0xCB86 then
_0x08A6 = _0x8FD5 and _0x7800 * CFrame.new(0, 0.45, -0.9) * CFrame.Angles(0.1, 0, _0x96F5 * 0.6) or _0x7800 * CFrame.new(0, 0.3, -3) * CFrame.Angles(0, 0, _0x96F5 * 0.5)
else
_0x08A6 = _0x8FD5 and _0x7800 * CFrame.new(0, 0.8, 2.8) * CFrame.Angles(-0.1, 0, 0) or _0x7800 * CFrame.new(0, 1.1, 4) * CFrame.Angles(-0.08, 0, 0)
end
if _0x9314 then
local _0x888E = os.clock() - _0x8F96
local _0x82D5 = workspace:Raycast(_0x16A1, Vector3.new(0, -400, 0), _0x371C)
_0x9314.bat.Text = (string.char(66,65,84,32,37,46,49,102,86)):format(16.8 - _0x888E * 0.05)
_0x9314.time.Text = (string.char(37,48,50,100,58,37,48,50,100)):format(math.floor(_0x888E / 60), math.floor(_0x888E % 60))
_0x9314.alt.Text = (string.char(65,76,84,32,37,100,109)):format(_0x82D5 and math.floor(_0x82D5.Distance * 0.28) or 99)
_0x9314.spd.Text = (string.char(37,100,32,107,109,47,104)):format(math.floor(_0xB215.Magnitude * 0.28 * 3.6))
end
_0x2450 = _0x2450:Lerp(_0x08A6, math.min(_0xF45E * (_0xCB86 and 25 or 12), 1))
_0x4245.CFrame = _0x2450
local _0xCDC3, _0x266E
for _0xBFE6, _0x9B31 in ipairs(_0x5B95(false, _0x16A1, true)) do
local _0xB6CB = _0x2E92(_0x9B31.p)
if _0xB6CB then
local _0xC4D6 = _0xB6CB.Position - _0x16A1
local _0x66BE = _0xC4D6.Magnitude > 0.1 and _0xB215:Dot(_0xC4D6.Unit) or 0
if _0x66BE > 4 then
local _0x360F = _0xC4D6.Magnitude / _0x66BE
if not _0x266E or _0x360F < _0x266E then
_0xCDC3, _0x266E = _0x9B31.p, _0x360F
end
end
end
endif _0x921D and _0x921D.p ~= _0xCDC3 then
_0x9465()
end
if not _0x921D and _0xCDC3 then
_0x12DB(_0xCDC3)
end
if _0x921D then
_0xC222(_0xADC2)
end
local _0x2700 = 45 - (os.clock() - _0x8F96)
if _0x191C then
_0x0746.Text = (string.char(115,116,105,99,107,32,45,32,102,108,121,32,32,194,183,32,32,100,114,97,103,32,45,32,97,105,109,32,32,194,183,32,32,98,117,116,116,111,110,115,32,45,32,97,99,116,105,111,110,115,32,32,194,183,32,32,37,100,115)):format(math.max(0, math.ceil(_0x2700)))
else
_0x0746.Text = (string.char(109,111,117,115,101,32,45,32,97,105,109,32,32,194,183,32,32,87,32,102,108,121,32,32,194,183,32,32,83,104,105,102,116,32,102,97,115,116,32,32,194,183,32,32,83,32,98,97,99,107,32,32,194,183,32,32,83,112,97,99,101,47,67,116,114,108,32,117,112,47,100,111,119,110,32,32,194,183,32,32,86,32,118,105,101,119,32,32,194,183,32,32,76,77,66,32,98,111,111,109,32,32,194,183,32,32,88,32,101,120,105,116,32,32,194,183,32,32,37,100,115)):format(math.max(0, math.ceil(_0x2700)))
end
if _0x2700 <= 0 then
_0xBBD9(_0x16A1)
end
end)
end
local function _0x4D0A()
local _0x3E35, _0x7FEF = xpcall(_0x5B06, debug.traceback)
if _0x3E35 then
return
end
warn(string.char(91,99,108,117,109,115,121,115,99,114,105,112,116,93,32,83,104,97,104,101,100,58,32).. tostring(_0x7FEF))
_0xE835(string.char(83,104,97,104,101,100,32,101,114,114,111,114), tostring(_0x7FEF):match(string.char(94,91,94,10,93,42)):sub(-110))
_0x893B, _0x014B = false, false
if _0xA52C then
_0xA52C = false
_0x0F18()
end
pcall(function()
_0x7FDD:UnbindFromRenderStep(string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,104,97,104,101,100,80,105,108,111,116))
end)
for _0xBFE6, _0xDDE9 in ipairs({string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,104,97,104,101,100,72,117,100),string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,104,97,104,101,100,67,114,111,115,115),string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,104,97,104,101,100,79,115,100),string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,104,97,104,101,100,82,101,99),string.char(67,108,117,109,115,121,83,99,114,105,112,116,68,114,111,110,101,77,111,98,105,108,101),string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,105,103,110,97,108,76,111,115,116),string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,104,97,104,101,100,80,105,112)}) do
local _0x82D5 = _0x4696:FindFirstChild(_0xDDE9)
if _0x82D5 then
_0x82D5:Destroy()
end
end
for _0xBFE6, _0x819A in ipairs(workspace.CurrentCamera:GetChildren()) do
if _0x819A.Name ==string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,104,97,104,101,100)then
_0x819A:Destroy()
end
end
_0x63F8.MouseBehavior = Enum.MouseBehavior.Default
_0x63F8.MouseIconEnabled = true
task.spawn(pcall, function()
require(_0xD33F.PlayerScripts.PlayerModule):GetControls():Enable()
end)
local _0x8C06 = _0xD33F.Character
local _0xBD98 = _0x8C06 and _0x8C06:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if _0x8C06 then
_0x4432(_0x8C06, false)
end
if _0xBD98 and _0xBD98.WalkSpeed == 0 then
_0xBD98.WalkSpeed, _0xBD98.JumpPower = 16, 50
end
local _0x4245 = workspace.CurrentCamera
_0x4245.CameraType = Enum.CameraType.Custom
if _0xBD98 then
_0x4245.CameraSubject = _0xBD98
end
end
local _0xDBF6 = _0x78B0(_0xDBCA,string.char(77,117,114,100,101,114,101,114))
_0xDBF6:Button(string.char(75,105,108,108,32,65,108,108),string.char(116,101,108,101,112,111,114,116,32,116,111,32,101,118,101,114,121,111,110,101,32,97,110,100,32,115,116,97,98,32,116,104,101,109), function()
_0x81C0(false)
end)
_0xDBF6:Button(string.char(75,105,108,108,32,83,104,101,114,105,102,102),string.char(111,110,108,121,32,116,104,101,32,111,110,101,32,119,105,116,104,32,116,104,101,32,103,117,110), function()
_0x81C0(true)
end)
_0xDBF6:Toggle(string.char(65,117,116,111,32,75,105,108,108,32,65,108,108),string.char(121,111,117,32,103,101,116,32,116,104,101,32,107,110,105,102,101,32,45,32,101,118,101,114,121,111,110,101,32,100,105,101,115), function(_0x9B7B)
_0x49BD = _0x9B7B
_0xA3EA = 0
_0xE835(string.char(65,117,116,111,32,75,105,108,108,32,65,108,108,58,32).. (_0x9B7B andstring.char(79,110)orstring.char(79,102,102)), _0x9B7B andstring.char(119,97,105,116,105,110,103,32,102,111,114,32,116,104,101,32,107,110,105,102,101)orstring.char(100,105,115,97,98,108,101,100))
end)
local _0x8B51 = _0x78B0(_0x09BD,string.char(68,114,111,110,101))
_0x8B51:Segmented(string.char(84,121,112,101), {string.char(83,104,97,104,101,100),string.char(70,80,86)}, _0x401E, function(_0xBE50)
_0x401E = _0xBE50
_0x23CB = _0x0A4D[_0xBE50]
end)
_0x8B51:Segmented(string.char(73,109,112,97,99,116), {string.char(75,105,108,108),string.char(70,108,105,110,103)}, _0xBFFB, function(_0xBE50)
_0xBFFB = _0xBE50
end)
_0x8B51:Button(string.char(76,97,117,110,99,104,32,68,114,111,110,101),string.char(75,105,108,108,32,110,101,101,100,115,32,116,104,101,32,107,110,105,102,101,59,32,70,108,105,110,103,32,119,111,114,107,115,32,102,111,114,32,101,118,101,114,121,32,114,111,108,101), function()
task.spawn(_0x4D0A)
end)
end
do
local _0x8AE6, _0xADDA
local _0xC22D, _0x903E = {}, {}
_0xF709(_0x7FDD.Heartbeat, function()
local _0x9494 = os.clock()
for _0xBFE6, _0x0D18 in ipairs(_0x9A21:GetPlayers()) do
if _0x0D18 ~= _0xD33F then
local _0xD51E = _0x0D18.Character
local _0x98C3 = _0xD51E and _0xD51E:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if _0x98C3 then
local _0x092C = _0xC22D[_0x0D18]
local _0xDD0A = _0x092C and (_0x98C3.Position - _0x092C).Magnitude or 0
if _0xDD0A > 30 or _0x98C3.AssemblyLinearVelocity.Magnitude > 150 then
_0x903E[_0x0D18] = _0x9494 + 1.5
end
_0xC22D[_0x0D18] = _0x98C3.Position
else
_0xC22D[_0x0D18] = nil
end
end
end
for _0x0D18 in pairs(_0xC22D) do
if not _0x0D18.Parent then
_0xC22D[_0x0D18], _0x903E[_0x0D18] = nil, nil
end
end
end)
local function _0xBF00(_0x0D18)
return _0x0D18 and (_0x903E[_0x0D18] or 0) > os.clock()
end
local function _0xE686(_0x04C7)
if not _0x04C7 or not _0x04C7.Parent then
return function() end
end
local _0xCA34 = { _0x52F8 = _0x04C7.Size, transp = _0x04C7.Transparency, collide = _0x04C7.CanCollide }
pcall(function()
_0x04C7.CanCollide = false
_0x04C7.Transparency = 1
_0x04C7.Size = Vector3.one * 50
end)
local _0x37B6 = false
return function()
if _0x37B6 then
return
end
_0x37B6 = true
if _0x04C7.Parent then
pcall(function()
_0x04C7.Size = _0xCA34.size
_0x04C7.Transparency = _0xCA34.transp
_0x04C7.CanCollide = _0xCA34.collide
end)
end
end
end
local _0xA9C5 = {
_0x9B7B = false,
_0xF0B8 = true,
pred = 100,
_0x3066 =string.char(84,111,114,115,111),
auto = true,
quiet = true,
_0xE692 =string.char(82,101,109,111,116,101),
}
local _0xFDEA = false
local _0xE646 = 0
local _0x5BC2 = 0
local _0x07E5 = 0
local _0x215F = RaycastParams.new()
_0x215F.FilterType = Enum.RaycastFilterType.Exclude
local _0x7BF2 = {
Vector3.new(0, 0, 4),
Vector3.new(0, 0, -4),
Vector3.new(4, 0, 0),
Vector3.new(-4, 0, 0),
Vector3.new(0, 5, 3),
Vector3.new(0, 2, 2),
}
local _0xCB22 = {
Vector3.new(0, 4, 0),
Vector3.new(0, 7, 0),
Vector3.new(3, 0, 0),
Vector3.new(-3, 0, 0),
Vector3.new(3, 4, 0),
Vector3.new(-3, 4, 0),
Vector3.new(0, 0, -3),
Vector3.new(0, 10, 0),
}
local function _0x8FFA(_0x04C7, _0xF9CE)
local _0xB7F6 = _0xF9CE and _0xF9CE:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0xB7F6 then
return nil
end
_0x215F.FilterDescendantsInstances = { _0xF9CE, _0x04C7.Parent, workspace.CurrentCamera }
local _0xC266 = CFrame.lookAt(_0xB7F6.Position, Vector3.new(_0x04C7.Position.X, _0xB7F6.Position.Y, _0x04C7.Position.Z))
for _0xBFE6, _0x18EF in ipairs(_0xCB22) do
local _0x16A1 = (_0xC266 * CFrame.new(_0x18EF)).Position
if not _0xADDA(_0xB7F6.Position, _0x16A1) and not _0xADDA(_0x16A1, _0x04C7.Position) then
return CFrame.lookAt(_0x16A1, _0x04C7.Position)
end
end
end
local function _0x737E()
local _0x8C06 = _0xD33F.Character
local _0xE4E7 = _0x8C06 and _0x8C06:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
return _0xE4E7 and _0xE4E7:FindFirstChild(string.char(71,117,110,82,97,121,99,97,115,116,65,116,116,97,99,104,109,101,110,116))
end
local function _0x854A(_0x84D7)
local _0x7D74 = _0x737E()
return _0x7D74 and _0x7D74.WorldPosition or _0x84D7
end
_0x8AE6 = function(_0x4804, _0x80AB, fromOrigin)
local _0x7D74 = _0x737E()
local _0x1205 = not fromOrigin and _0x7D74 and _0x7D74.WorldCFrame or CFrame.lookAt(_0x4804, _0x80AB)
local _0x2D51 = _0x80AB - _0x1205.Position
if _0x2D51.Magnitude < 0.01 then
_0x2D51 = Vector3.new(0, 0, -1)
end
return _0x1205, CFrame.lookAt(_0x80AB, _0x80AB + _0x2D51.Unit)
end
_0xADDA = function(_0x7D74, _0xBB9C, extraIgnore)
local _0xC494 = { workspace.CurrentCamera }
for _0xBFE6, _0xA051 in ipairs(extraIgnore or {}) do
table.insert(_0xC494, _0xA051)
end
for _0xBFE6, pl in ipairs(_0x9A21:GetPlayers()) do
if pl.Character then
table.insert(_0xC494, pl.Character)
end
end
local _0x2671 = RaycastParams.new()
_0x2671.FilterType = Enum.RaycastFilterType.Exclude
for _0xBFE6 = 1, 8 do
_0x2671.FilterDescendantsInstances = _0xC494
local _0x6F00 = workspace:Raycast(_0x7D74, _0xBB9C - _0x7D74, _0x2671)
if not _0x6F00 then
return false
end
local _0xA85E = _0x6F00.Instance
if _0xA85E.Transparency >= 0.9 or not _0xA85E.CanCollide then
table.insert(_0xC494, _0xA85E)
else
return true
end
end
return true
end
local function _0x680D(_0x04C7, _0x5AAC)
local _0xA33B = _0x5AAC - _0x04C7.Position
_0xA33B = _0xA33B.Magnitude > 0.1 and _0xA33B.Unit or Vector3.new(0, 0, 1)
for _0xBFE6, _0x819A in ipairs({ 3, 2, 5, 1.5 }) do
local _0xA9B0 = _0x04C7.Position + _0xA33B * _0x819A + Vector3.new(0, 1, 0)
if not _0xADDA(_0xA9B0, _0x04C7.Position) then
return _0xA9B0
end
end
for _0xBFE6, _0x18EF in ipairs(_0x7BF2) do
local _0xA9B0 = (_0x04C7.CFrame * CFrame.new(_0x18EF)).Position
if not _0xADDA(_0xA9B0, _0x04C7.Position) then
return _0xA9B0
end
end
return _0x04C7.Position + Vector3.new(0, 3, 0)
end
local function _0xAEC2(_0x6F00)
if _0x6F00 then
_0xE646 = 0
return
end
_0xE646 = _0xE646 + 1
if _0xE646 == 2 then
_0xE835(string.char(87,97,108,108,66,97,110,103),string.char(109,105,115,115,101,100,32,116,119,105,99,101,32,116,104,114,111,117,103,104,32,119,97,108,108,115,32,45,32,115,101,110,100,32,116,104,101,32,115,104,111,116,32,108,111,103))
end
end
local function _0x23E4(_0x04C7, _0xF9CE)
if _0xA9C5.quiet then
local _0x334A = _0x8FFA(_0x04C7, _0xF9CE)
if _0x334A then
return _0x334A
end
end
_0x215F.FilterDescendantsInstances = { _0xF9CE, _0x04C7.Parent, workspace.CurrentCamera }
for _0xBFE6, _0x18EF in ipairs(_0x7BF2) do
local _0x16A1 = (_0x04C7.CFrame * CFrame.new(_0x18EF)).Position
if not _0xADDA(_0x16A1, _0x04C7.Position) then
return CFrame.lookAt(_0x16A1, _0x04C7.Position)
end
end
local _0x83AD = _0x04C7.CFrame * CFrame.new(0, 0, 3)
return CFrame.lookAt(_0x83AD.Position, _0x04C7.Position)
end
local function _0xD814()
for _0xBFE6, _0x0D18 in ipairs(_0x9A21:GetPlayers()) do
if _0x0D18 ~= _0xD33F and _0xBF86(_0x0D18,string.char(75,110,105,102,101)) then
local _0x8C06 = _0x0D18.Character
local _0xE4E7 = _0x8C06 and _0x8C06:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xBD98 = _0x8C06 and _0x8C06:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if _0xE4E7 and _0xBD98 and _0xBD98.Health > 0 then
return _0x0D18, _0xE4E7
end
end
end
end
local function _0x37E7(_0xF33E)
local _0x76E4 = _0xF33E:FindFirstChild(string.char(75,110,105,102,101,76,111,99,97,108))
local _0x171F = _0x76E4 and _0x76E4:FindFirstChild(string.char(67,114,101,97,116,101,66,101,97,109))
local _0x324D = _0x171F and _0x171F:FindFirstChild(string.char(82,101,109,111,116,101,70,117,110,99,116,105,111,110))
if _0x324D then
return _0x324D,string.char(98,101,97,109)end
for _0xBFE6, _0x819A in ipairs(_0xF33E:GetDescendants()) do
if (_0x819A:IsA(string.char(82,101,109,111,116,101,69,118,101,110,116)) or _0x819A:IsA(string.char(82,101,109,111,116,101,70,117,110,99,116,105,111,110))) and _0x819A.Name:lower():find(string.char(115,104,111,111,116)) then
return _0x819A,string.char(115,104,111,111,116)end
end
end
local function _0x3362()
local _0x8C06 = _0xD33F.Character
local _0xBD98 = _0x8C06 and _0x8C06:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if not _0xBD98 then
return
end
local _0xF33E = _0x8C06:FindFirstChild(string.char(71,117,110))
if _0xF33E then
return _0xF33E
end
local _0xCBAB = _0xD33F:FindFirstChildOfClass(string.char(66,97,99,107,112,97,99,107))
_0xF33E = _0xCBAB and _0xCBAB:FindFirstChild(string.char(71,117,110))
if not _0xF33E then
return
end
_0xBD98:EquipTool(_0xF33E)
for _0xBFE6 = 1, 10 do
if _0xF33E.Parent == _0x8C06 then
break
end
_0x7FDD.Heartbeat:Wait()
end
return _0xF33E
end
local function _0xE140(manual)
if _0xFDEA then
return
end
local _0x8C06 = _0xD33F.Character
local _0xE4E7 = _0x8C06 and _0x8C06:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xBD98 = _0x8C06 and _0x8C06:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if not _0xE4E7 or not _0xBD98 or _0xBD98.Health <= 0 then
return
end
if not _0xBF86(_0xD33F,string.char(71,117,110)) then
if manual then
_0xE835(string.char(83,104,111,111,116,32,77,117,114,100,101,114,101,114),string.char(121,111,117,32,100,111,110,39,116,32,104,97,118,101,32,116,104,101,32,103,117,110))
end
return
end
local _0xBFE6, _0x04C7 = _0xD814()
if not _0x04C7 then
if manual then
_0xE835(string.char(83,104,111,111,116,32,77,117,114,100,101,114,101,114),string.char(109,117,114,100,101,114,101,114,32,110,111,116,32,102,111,117,110,100))
end
return
end
local _0xF33E = _0x3362()
if not _0xF33E then
return
end
if _0xA9C5.mode ==string.char(77,111,100,117,108,101)then
_0x5BC2 = os.clock() + 0.5
pcall(function()
_0xF33E:Activate()
end)
return
end
local _0x5977, _0x8442 = _0x37E7(_0xF33E)
local _0x2984 = os.clock()
while not _0x5977 and os.clock() - _0x2984 < 1 do
_0x7FDD.Heartbeat:Wait()
_0x5977, _0x8442 = _0x37E7(_0xF33E)
end
if not _0x5977 then
_0xE835(string.char(83,104,111,111,116,32,77,117,114,100,101,114,101,114),string.char(103,117,110,32,114,101,109,111,116,101,32,110,111,116,32,102,111,117,110,100))
return
end
_0xFDEA = true
_0xE4E6(_0xE4E7)
local _0x7BF7 = _0xE4E7.CFrame
local _0x4245 = workspace.CurrentCamera
local _0xEF2F = _0x4245.CameraType
local _0xF0B8 = _0xA9C5.wallbang
local _0xC550 = _0xD855() / 1000
local _0x9607 = _0x04C7.Parent
local _0x5699 = _0x9A21:GetPlayerFromCharacter(_0x9607)
local _0xCF73 = _0xBF00(_0x5699)
local function _0xD7CA()
if _0xCF73 then
return _0x04C7.Position
end
local _0xA213 = _0x04C7
if _0xA9C5.part ==string.char(72,101,97,100)then
_0xA213 = _0x9607:FindFirstChild(string.char(72,101,97,100)) or _0x04C7
else
_0xA213 = _0x9607:FindFirstChild(string.char(85,112,112,101,114,84,111,114,115,111)) or _0x9607:FindFirstChild(string.char(84,111,114,115,111)) or _0x04C7
end
local _0xBE50 = _0x04C7.AssemblyLinearVelocity
local _0xA44A = _0xA9C5.pred / 1000
return _0xA213.Position + Vector3.new(_0xBE50.X, _0xBE50.Y * 0.5, _0xBE50.Z) * _0xA44A
end
local _0x1952, _0x721B
local _0x87BC
if _0xF0B8 then
local _0x5AAC = _0x854A(_0xF33E:FindFirstChild(string.char(72,97,110,100,108,101)) and _0xF33E.Handle.Position or _0xE4E7.Position)
if not _0xADDA(_0x5AAC, _0x04C7.Position) then
_0xF0B8 = false
else
_0x87BC = _0x680D(_0x04C7, _0x5AAC)
_0xF0B8 = false
end
end
if _0xF0B8 then
_0x4245.CameraType = Enum.CameraType.Scriptable
_0x1952 = _0x23E4(_0x04C7, _0x8C06)
_0xE4E7.CFrame = _0x1952
_0xE4E7.AssemblyLinearVelocity = Vector3.zero
_0x721B = _0x7FDD.Stepped:Connect(function()
if _0x1952 and _0xE4E7.Parent then
if _0x04C7.Parent and not _0xA9C5.quiet then
_0x1952 = _0x23E4(_0x04C7, _0x8C06)
end
_0xE4E7.CFrame = _0x1952
_0xE4E7.AssemblyLinearVelocity = Vector3.zero
end
end)
end
local _0x98C5 = os.clock() - (_0x4CBA.lastFakeAt or 0) < 0.6
if _0xF0B8 and not _0x98C5 then
_0x7FDD.Heartbeat:Wait()
end
if _0x98C5 then
local _0x1459 = (_0x4CBA.lastFakeAt or 0) + math.clamp(_0xC550 / 2, 0.02, 0.2) + 0.05
while os.clock() < _0x1459 do
_0x7FDD.Heartbeat:Wait()
end
end
local _0x80AB = _0xD7CA()
local _0x1457 = _0xF33E:FindFirstChild(string.char(72,97,110,100,108,101))
local _0x4804 = _0x87BC or (_0x1457 and _0x1457.Position or _0xE4E7.Position)
local _0x3C2B = _0x9607 and _0x9607:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if _0x3C2B then
task.spawn(function()
local _0x4903 = os.clock()
while os.clock() - _0x4903 < 1.2 do
if _0x3C2B.Health <= 0 or not _0x3C2B.Parent then
if _0x87BC then
_0xAEC2(true)
end
_0xE835(string.char(83,105,108,101,110,116,32,65,105,109,98,111,116),string.char(104,105,116))
return
end
_0x7FDD.Heartbeat:Wait()
end
if _0x87BC then
_0xAEC2(false)
end
_0xE835(string.char(83,105,108,101,110,116,32,65,105,109,98,111,116), _0xA9C5.auto andstring.char(109,105,115,115)orstring.char(109,105,115,115,32,45,32,116,114,121,32,99,104,97,110,103,105,110,103,32,80,114,101,100,105,99,116,105,111,110))
end)
end
local _0x5A29 = _0xE686(_0x04C7)
task.delay(0.4, _0x5A29)
task.spawn(function()
local _0x3E35, _0x308C = pcall(function()
if _0x8442 ==string.char(98,101,97,109)then
return _0x5977:InvokeServer(1, _0x80AB,string.char(65,72,50))
elseif _0x5977:IsA(string.char(82,101,109,111,116,101,70,117,110,99,116,105,111,110)) then
return _0x5977:InvokeServer(_0x8AE6(_0x4804, _0x80AB, _0x87BC ~= nil))
else
_0x5977:FireServer(_0x8AE6(_0x4804, _0x80AB, _0x87BC ~= nil))
returnstring.char(40,101,118,101,110,116,44,32,110,111,32,114,101,112,108,121,41)end
end)
if not _0x3E35 then
warn(string.char(91,99,108,117,109,115,121,115,99,114,105,112,116,93,32,115,104,111,116,32,102,97,105,108,101,100,58,32).. tostring(_0x308C))
end
end)
if _0xF0B8 then
local _0x4903 = os.clock()
local _0xCF55 = math.clamp(_0xC550 / 2 + 0.03333333333333333, 0.05, 0.18)
repeat
_0x7FDD.Heartbeat:Wait()
until os.clock() - _0x4903 >= _0xCF55
_0x721B:Disconnect()
if _0xE4E7.Parent and _0xBD98.Health > 0 then
_0xE4E7.CFrame = _0x7BF7
_0xE4E7.AssemblyLinearVelocity = Vector3.zero
end
_0x4245.CameraType = _0xEF2F
_0x4245.CameraSubject = _0xBD98
end
_0xFDEA = false
_0x0F18()
end
_0x3C30 = function(_0xA213)
if not _0xA213 or not _0xBF86(_0xA213,string.char(75,110,105,102,101)) then
_0xE835(string.char(75,105,108,108),string.char(116,104,101,32,115,104,101,114,105,102,102,32,99,97,110,32,111,110,108,121,32,115,104,111,111,116,32,116,104,101,32,109,117,114,100,101,114,101,114))
return
end
_0xE140(true)
end
local _0x68C5 = {}
local function _0xDCC3(_0xF33E)
for _0xBFE6, _0x819A in ipairs(_0xF33E:GetDescendants()) do
if _0x819A:IsA(string.char(76,111,99,97,108,83,99,114,105,112,116)) and not _0x819A.Disabled then
_0x68C5[_0x819A] = true
_0x819A.Disabled = true
end
end
end
local function _0x225D()
for ls in pairs(_0x68C5) do
if ls.Parent then
ls.Disabled = false
end
end
table.clear(_0x68C5)
end
table.insert(_0x7E96, {
Disconnect = function()
_0x225D()
for _0xBFE6, _0x1DD1 in ipairs({ _0xD33F.Character, _0xD33F:FindFirstChildOfClass(string.char(66,97,99,107,112,97,99,107)) }) do
local _0x82D5 = _0x1DD1 and _0x1DD1:FindFirstChild(string.char(71,117,110))
if _0x82D5 then
pcall(function()
_0x82D5.ManualActivationOnly = false
end)
end
end
end,
})
local _0x45F8, _0xB67E
_0xF709(_0x7FDD.Heartbeat, function()
local _0x8C06 = _0xD33F.Character
local _0xF33E = _0x8C06 and _0x8C06:FindFirstChild(string.char(71,117,110))
if _0xA9C5.on and _0xF33E and _0xA9C5.mode ==string.char(82,101,109,111,116,101)then
_0xDCC3(_0xF33E)
end
if _0xF33E then
local _0xC03D = _0xA9C5.on and _0xA9C5.mode ==string.char(78,97,116,105,118,101)if _0xF33E.ManualActivationOnly ~= _0xC03D then
_0xF33E.ManualActivationOnly = _0xC03D
end
end
if _0xF33E == _0xB67E then
return
end
if _0x45F8 then
_0x45F8:Disconnect()
_0x45F8 = nil
end
_0xB67E = _0xF33E
if _0xF33E then
_0x45F8 = _0xF33E.Activated:Connect(function()
if _0xA9C5.on and _0x4696.Parent and _0xA9C5.mode ==string.char(77,111,100,117,108,101)and _0xD814() then
local _0x4903 = os.clock()
task.delay(0.3, function()
if _0xA9C5.mode ==string.char(77,111,100,117,108,101)and _0x07E5 < _0x4903 then
_0xA9C5.mode =string.char(82,101,109,111,116,101)_0xE835(string.char(83,105,108,101,110,116,32,65,105,109,98,111,116),string.char(115,119,105,116,99,104,101,100,32,116,111,32,98,97,99,107,117,112,32,109,111,100,101,32,45,32,115,104,111,111,116,32,97,103,97,105,110))
end
end)
end
if _0xA9C5.on and _0x4696.Parent and _0xA9C5.mode ==string.char(82,101,109,111,116,101)then
if _0xD814() then
task.spawn(_0xE140, false)
else
task.spawn(function()
local _0x5977, _0x8442 = _0x37E7(_0xF33E)
if not _0x5977 then
return
end
local _0x80AB = _0xD33F:GetMouse().Hit.Position
local _0x1457 = _0xF33E:FindFirstChild(string.char(72,97,110,100,108,101))
local _0x4804 = _0x1457 and _0x1457.Position or _0x80AB
pcall(function()
if _0x8442 ==string.char(98,101,97,109)then
_0x5977:InvokeServer(1, _0x80AB,string.char(65,72,50))
elseif _0x5977:IsA(string.char(82,101,109,111,116,101,70,117,110,99,116,105,111,110)) then
_0x5977:InvokeServer(_0x8AE6(_0x4804, _0x80AB))
else
_0x5977:FireServer(_0x8AE6(_0x4804, _0x80AB))
end
end)
end)
end
end
end)
table.insert(_0x7E96, _0x45F8)
end
end)
local _0x21BF = false
local function _0x7484()
if _0x21BF then
return
end
local _0x8C06 = _0xD33F.Character
local _0xF33E = _0x8C06 and _0x8C06:FindFirstChild(string.char(71,117,110))
local _0xE4E7 = _0x8C06 and _0x8C06:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0xF33E or not _0xE4E7 then
return
end
local _0xBFE6, _0x04C7 = _0xD814()
if not _0x04C7 then
pcall(function()
_0xF33E:Activate()
end)
return
end
local _0x1457 = _0xF33E:FindFirstChild(string.char(72,97,110,100,108,101))
local _0x5AAC = _0x854A(_0x1457 and _0x1457.Position or _0xE4E7.Position)
if _0xADDA(_0x5AAC, _0x04C7.Position) and _0xA9C5.wallbang then
task.spawn(_0xE140, false)
return
end
_0x21BF = true
local _0x9607 = _0x04C7.Parent
local _0xA213 = _0x9607:FindFirstChild(string.char(85,112,112,101,114,84,111,114,115,111)) or _0x9607:FindFirstChild(string.char(84,111,114,115,111)) or _0x04C7
local _0xBE50 = _0x04C7.AssemblyLinearVelocity
local _0xA44A = _0xA9C5.pred / 1000
local _0x80AB = _0xA213.Position + Vector3.new(_0xBE50.X, _0xBE50.Y * 0.5, _0xBE50.Z) * _0xA44A
local _0x4245 = workspace.CurrentCamera
local _0x775E = _0x63F8.MouseBehavior == Enum.MouseBehavior.LockCenter
if _0x775E or not mousemoveabs then
_0x4245.CFrame = CFrame.lookAt(_0x4245.CFrame.Position, _0x80AB)
_0x7FDD.RenderStepped:Wait()
_0x4245.CFrame = CFrame.lookAt(_0x4245.CFrame.Position, _0x80AB)
pcall(function()
_0xF33E:Activate()
end)
else
local _0x0D18 = _0x4245:WorldToViewportPoint(_0x80AB)
local _0x6355 = _0x63F8:GetMouseLocation()
mousemoveabs(_0x0D18.X, _0x0D18.Y)
_0x7FDD.RenderStepped:Wait()
_0x7FDD.RenderStepped:Wait()
pcall(function()
_0xF33E:Activate()
end)
_0x7FDD.RenderStepped:Wait()
mousemoveabs(_0x6355.X, _0x6355.Y)
end
local _0x3C2B = _0x9607:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if _0x3C2B then
task.spawn(function()
local _0x4903 = os.clock()
while os.clock() - _0x4903 < 1.2 do
if _0x3C2B.Health <= 0 or not _0x3C2B.Parent then
_0xE835(string.char(83,105,108,101,110,116,32,65,105,109,98,111,116),string.char(104,105,116))
return
end
_0x7FDD.Heartbeat:Wait()
end
_0xE835(string.char(83,105,108,101,110,116,32,65,105,109,98,111,116),string.char(109,105,115,115))
end)
end
task.delay(0.15, function()
_0x21BF = false
end)
end
_0xF709(_0x63F8.InputBegan, function(input, gameProcessed)
if gameProcessed or not _0xA9C5.on or _0xA9C5.mode ~=string.char(78,97,116,105,118,101)then
return
end
if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch then
return
end
local _0x8C06 = _0xD33F.Character
if _0x8C06 and _0x8C06:FindFirstChild(string.char(71,117,110)) then
task.spawn(_0x7484)
end
end)
;(function()
local _0x3E35, _0xAD0D = pcall(function()
return require(game:GetService(string.char(82,101,112,108,105,99,97,116,101,100,83,116,111,114,97,103,101)):WaitForChild(string.char(67,108,105,101,110,116,83,101,114,118,105,99,101,115), 5):WaitForChild(string.char(87,101,97,112,111,110,83,101,114,118,105,99,101), 5))
end)
if not _0x3E35 or type(_0xAD0D) ~=string.char(116,97,98,108,101)then
return
end
local _0xB740, _0x2A24 = _0xAD0D.GetMouseTargetCFrame, _0xAD0D.GetTargetPosition
if type(_0xB740) ~=string.char(102,117,110,99,116,105,111,110)then
return
end
local _0xC499 = {string.char(85,112,112,101,114,84,111,114,115,111),string.char(84,111,114,115,111),string.char(76,111,119,101,114,84,111,114,115,111),string.char(72,101,97,100),string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116),string.char(82,105,103,104,116,85,112,112,101,114,65,114,109),string.char(76,101,102,116,85,112,112,101,114,65,114,109),string.char(82,105,103,104,116,32,65,114,109),string.char(76,101,102,116,32,65,114,109),string.char(82,105,103,104,116,85,112,112,101,114,76,101,103),string.char(76,101,102,116,85,112,112,101,114,76,101,103),string.char(82,105,103,104,116,32,76,101,103),string.char(76,101,102,116,32,76,101,103)}
local _0x300A = {string.char(72,101,97,100),string.char(85,112,112,101,114,84,111,114,115,111),string.char(84,111,114,115,111),string.char(76,111,119,101,114,84,111,114,115,111),string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116),string.char(82,105,103,104,116,85,112,112,101,114,65,114,109),string.char(76,101,102,116,85,112,112,101,114,65,114,109),string.char(82,105,103,104,116,32,65,114,109),string.char(76,101,102,116,32,65,114,109),string.char(82,105,103,104,116,85,112,112,101,114,76,101,103),string.char(76,101,102,116,85,112,112,101,114,76,101,103),string.char(82,105,103,104,116,32,76,101,103),string.char(76,101,102,116,32,76,101,103)}
local _0xAF98 = RaycastParams.new()
_0xAF98.FilterType = Enum.RaycastFilterType.Exclude
local _0xE6CF = game:GetService(string.char(67,111,108,108,101,99,116,105,111,110,83,101,114,118,105,99,101))
local _0x3892, _0xA270 = {}, 0
local function _0xD15C(...)
if os.clock() - _0xA270 > 1 then
_0xA270 = os.clock()
_0x3892 = _0xE6CF:GetTagged(string.char(87,101,97,112,111,110,80,97,115,115,116,104,114,111,117,103,104))
end
local _0xC494 = { ... }
for _0xBFE6, _0xA051 in ipairs(_0x3892) do
table.insert(_0xC494, _0xA051)
end
return _0xC494
end
local _0x579B = {}
_0xF709(_0x7FDD.Heartbeat, function()
if not _0xA9C5.on then
table.clear(_0x579B)
return
end
local _0xBFE6, _0xD12C = _0xD814()
local _0x9494 = os.clock()
for _0x98C3 in pairs(_0x579B) do
if _0x98C3 ~= _0xD12C then
_0x579B[_0x98C3] = nil
end
end
if not _0xD12C then
return
end
local _0xC494 = _0x579B[_0xD12C] or {}
_0x579B[_0xD12C] = _0xC494
table.insert(_0xC494, { _0x9494, _0xD12C.Position })
while #_0xC494 > 2 and _0x9494 - _0xC494[1][1] > 0.5 do
table.remove(_0xC494, 1)
end
end)
local function _0x2D15(_0x04C7)
local _0xC494 = _0x579B[_0x04C7]
if not _0xC494 or #_0xC494 < 2 then
return _0x04C7.AssemblyLinearVelocity
end
local _0x7D74, _0xBB9C = _0xC494[1], _0xC494[#_0xC494]
local _0xF45E = _0xBB9C[1] - _0x7D74[1]
if _0xF45E < 0.15 then
return _0x04C7.AssemblyLinearVelocity
end
return (_0xBB9C[2] - _0x7D74[2]) / _0xF45E
end
local function _0x0555(_0x04C7, _0x1205)
local _0x9607 = _0x04C7.Parent
if _0xBF00(_0x9A21:GetPlayerFromCharacter(_0x9607)) then
return _0x04C7.Position
end
local _0xBE50 = _0x2D15(_0x04C7)
local _0xA44A = _0xA9C5.auto and math.clamp(_0xD855() / 2000 + 0.1, 0, 0.45) or _0xA9C5.pred / 1000
local _0x3C2B = _0x9607:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0xDEA5 = _0x3C2B and _0x3C2B.FloorMaterial == Enum.Material.Air
local _0xD132 = 0
if _0xDEA5 then
local _0xB56E = _0x04C7.AssemblyLinearVelocity.Y
_0xD132 = _0xB56E * _0xA44A - 0.5 * workspace.Gravity * _0xA44A * _0xA44A
if _0xD132 < 0 then
_0xAF98.FilterDescendantsInstances = _0xD15C(_0x9607, _0xD33F.Character, workspace.CurrentCamera)
local _0xA49A = workspace:Raycast(_0x04C7.Position, Vector3.new(0, -60, 0), _0xAF98)
if _0xA49A then
_0xD132 = math.max(_0xD132, -(_0x04C7.Position.Y - _0xA49A.Position.Y - 3))
end
end
end
local _0x948B = Vector3.new(_0xBE50.X * _0xA44A, _0xD132, _0xBE50.Z * _0xA44A)
local _0xEF03
_0xAF98.FilterDescendantsInstances = _0xD15C(_0xD33F.Character, workspace.CurrentCamera)
for _0xBFE6, _0xDDE9 in ipairs(_0xA9C5.part ==string.char(72,101,97,100)and _0x300A or _0xC499) do
local _0x3066 = _0x9607:FindFirstChild(_0xDDE9)
if _0x3066 and _0x3066:IsA(string.char(66,97,115,101,80,97,114,116)) then
local _0xA213 = _0x3066.Position + _0x948B
_0xEF03 = _0xEF03 or _0xA213
if not _0x1205 then
return _0xA213
end
local _0x2D51 = _0xA213 - _0x1205
local _0x6F00 = workspace:Raycast(_0x1205, _0x2D51.Unit * (_0x2D51.Magnitude + 2), _0xAF98)
if not _0x6F00 or _0x6F00.Instance:IsDescendantOf(_0x9607) then
return _0xA213
end
end
end
return _0xEF03 or _0x04C7.Position + _0x948B
end
local function _0x5FE2(_0x9607, _0x2E7F)
local _0x3C2B = _0x9607 and _0x9607:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if not _0x3C2B then
return
end
task.spawn(function()
local _0x4903 = os.clock()
while os.clock() - _0x4903 < 1.2 do
if _0x3C2B.Health <= 0 or not _0x3C2B.Parent then
if _0x2E7F then
_0xAEC2(true)
end
_0xE835(string.char(83,105,108,101,110,116,32,65,105,109,98,111,116),string.char(104,105,116))
return
end
_0x7FDD.Heartbeat:Wait()
end
if _0x2E7F then
_0xAEC2(false)
end
_0xE835(string.char(83,105,108,101,110,116,32,65,105,109,98,111,116), _0xA9C5.auto andstring.char(109,105,115,115)orstring.char(109,105,115,115,32,45,32,116,114,121,32,99,104,97,110,103,105,110,103,32,80,114,101,100,105,99,116,105,111,110))
end)
end
local function _0xC5BA(_0x4804, _0x9607, _0xA213)
_0xAF98.FilterDescendantsInstances = _0xD15C(_0xD33F.Character, workspace.CurrentCamera)
local _0x819A = _0xA213 - _0x4804
local _0x6F00 = workspace:Raycast(_0x4804, _0x819A.Unit * (_0x819A.Magnitude + 2), _0xAF98)
return not _0x6F00 or _0x6F00.Instance:IsDescendantOf(_0x9607)
end
local function _0xB0FB(_0x9607, _0x4804)
for _0xBFE6, _0xDDE9 in ipairs(_0xC499) do
local _0x3066 = _0x9607:FindFirstChild(_0xDDE9)
if _0x3066 and _0x3066:IsA(string.char(66,97,115,101,80,97,114,116)) and _0xC5BA(_0x4804, _0x9607, _0x3066.Position) then
return true
end
end
return false
end
local function _0xA79D(_0x4804, to)
_0xAF98.FilterDescendantsInstances = _0xD15C(_0xD33F.Character, workspace.CurrentCamera)
local _0x819A = to - _0x4804
if _0x819A.Magnitude < 0.05 then
return false
end
return workspace:Raycast(_0x4804, _0x819A, _0xAF98) ~= nil
end
local function _0xD6E2(_0x04C7, _0x5AAC)
local _0x9607 = _0x04C7.Parent
local _0xA33B = _0x5AAC - _0x04C7.Position
local _0xD10F = math.atan2(_0xA33B.Z, _0xA33B.X)
for _0xBFE6, _0xEB84 in ipairs({ 3, 5, 7 }) do
for _0x3FFC = 0, 11 do
local _0x4DD6 = _0xD10F + (_0x3FFC % 2 == 0 and 1 or -1) * math.ceil(_0x3FFC / 2) * (math.pi / 6)
for _0xBFE6, _0x98C3 in ipairs({ 1.5, 3.5 }) do
local _0x0D18 = _0x04C7.Position + Vector3.new(math.cos(_0x4DD6) * _0xEB84, _0x98C3, math.sin(_0x4DD6) * _0xEB84)
if _0xC5BA(_0x0D18, _0x9607, _0x04C7.Position) and _0xB0FB(_0x9607, _0x0D18) then
return _0x0D18
end
end
end
end
end
local function _0xCB04(_0x308C)
_0x07E5 = os.clock()
if not ((_0xA9C5.on or os.clock() < _0x5BC2) and _0x4696.Parent) then
return _0x308C
end
if _0xFDEA then
local _0xBFE6, _0xD12C = _0xD814()
local _0x0995 = _0x737E()
if not _0xD12C or not _0x0995 or typeof(_0x308C) ~=string.char(67,70,114,97,109,101)then
return _0x308C
end
local _0x1EDF = _0x0555(_0xD12C, _0x0995.WorldPosition)
local _0x9A08 = _0x1EDF - _0x0995.WorldPosition
if _0x9A08.Magnitude < 0.01 then
return _0x308C
end
return CFrame.lookAt(_0x1EDF, _0x1EDF + _0x9A08.Unit)
end
local _0xB463 = _0x4CBA.lastFakeAt or 0
if os.clock() - _0xB463 < 0.6 then
local _0x1459 = _0xB463 + math.clamp(_0xD855() / 2000, 0.02, 0.25) + 0.05
while os.clock() < _0x1459 do
_0x7FDD.Heartbeat:Wait()
end
end
local _0xBFE6, _0x04C7 = _0xD814()
local _0x8C06 = _0xD33F.Character
local _0xE4E7 = _0x8C06 and _0x8C06:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xBD98 = _0x8C06 and _0x8C06:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if not _0x04C7 or not _0xE4E7 or not _0xBD98 then
return _0x308C
end
local _0x7D74 = _0x737E()
local _0x5AAC = _0x7D74 and _0x7D74.WorldPosition or _0xE4E7.Position
local _0x2E7F = false
local _0x210D = _0x8C06:FindFirstChild(string.char(72,101,97,100))
local _0x12BB = _0xA79D(_0x210D and _0x210D.Position or _0xE4E7.Position, _0x5AAC) or _0xA79D(_0xE4E7.Position, _0x5AAC)
local _0xAFC2 = _0xB0FB(_0x04C7.Parent, _0x5AAC)
if not _0xAFC2 and not _0x12BB and (_0x04C7.Position - _0x5AAC).Magnitude < 6 then
_0xAFC2 = true
end
local _0x2D90 = false
if _0x7D74 then
local _0x9607 = _0x04C7.Parent
local _0xD12C = _0x9607:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0xA111 = _0xD12C and _0xD12C.FloorMaterial ~= Enum.Material.Air
local _0xD222 = _0x2D15(_0x04C7)
local _0xB04A = Vector3.new(_0xD222.X, 0, _0xD222.Z)
if _0xA111 and _0xB04A.Magnitude > 4 and (_0xA9C5.wallbang or not _0x12BB and _0xAFC2) then
local _0xD3D4 = _0x0555(_0x04C7, nil)
local _0x012B = (_0x9607:FindFirstChild(string.char(85,112,112,101,114,84,111,114,115,111)) or _0x9607:FindFirstChild(string.char(84,111,114,115,111)) or _0x04C7).Position
local _0x2190 = _0xD3D4 - _0x012B
local _0x2D51 = _0x2190.Magnitude > 0.5 and _0x2190.Unit or _0xB04A.Unit
local _0xCA34 = _0x012B - _0x2D51 * 5
if (_0xCA34 - _0x04C7.Position).Magnitude >= 4 and _0xC5BA(_0xCA34, _0x9607, _0x012B) and _0xC5BA(_0xCA34, _0x9607, _0xD3D4) then
_0x2D90 = true
_0x2E7F = _0x12BB or not _0xAFC2
local _0xE581 = _0x7D74.CFrame
_0x7D74.WorldPosition = _0xCA34
task.defer(function()
if _0x7D74.Parent then
_0x7D74.CFrame = _0xE581
end
end)
_0x5AAC = _0xCA34
end
end
end
if not _0x2D90 and _0xA9C5.wallbang and (_0x12BB or not _0xAFC2) and _0x7D74 then
local _0x0D18 = _0xD6E2(_0x04C7, _0x5AAC)
if _0x0D18 then
_0x2E7F = true
local _0xE581 = _0x7D74.CFrame
_0x7D74.WorldPosition = _0x0D18
task.defer(function()
if _0x7D74.Parent then
_0x7D74.CFrame = _0xE581
end
end)
_0x5AAC = _0x0D18
end
end
local _0x80AB = _0x0555(_0x04C7, _0x5AAC)
_0x5FE2(_0x04C7.Parent, _0x2E7F)
if typeof(_0x308C) ==string.char(86,101,99,116,111,114,51)then
return _0x80AB
end
local _0x1205 = _0x7D74 and _0x7D74.WorldPosition or _0x5AAC
local _0x2D51 = _0x80AB - _0x1205
if _0x2D51.Magnitude < 0.01 then
_0x2D51 = Vector3.new(0, 0, -1)
end
return CFrame.lookAt(_0x80AB, _0x80AB + _0x2D51.Unit)
end
local function _0x74DC(_0x308C)
local _0x52CE, _0x5ED5 = pcall(_0xCB04, _0x308C)
if _0x52CE then
return _0x5ED5
end
warn(string.char(91,99,108,117,109,115,121,115,99,114,105,112,116,93,32,97,105,109,32,114,101,100,105,114,101,99,116,32,102,97,105,108,101,100,58,32).. tostring(_0x5ED5))
return _0x308C
end
_0xAD0D.GetMouseTargetCFrame = function(...)
return _0x74DC(_0xB740(...))
end
if type(_0x2A24) ==string.char(102,117,110,99,116,105,111,110)then
_0xAD0D.GetTargetPosition = function(...)
return _0x74DC(_0x2A24(...))
end
end
_0xA9C5.mode =string.char(77,111,100,117,108,101)table.insert(_0x7E96, {
Disconnect = function()
_0xAD0D.GetMouseTargetCFrame = _0xB740
if _0x2A24 then
_0xAD0D.GetTargetPosition = _0x2A24
end
end,
})
end)()
local _0xDBF6 = _0x78B0(_0xDBCA,string.char(83,104,101,114,105,102,102))
_0xDBF6:Toggle(string.char(83,105,108,101,110,116,32,65,105,109),string.char(115,104,111,111,116,32,97,110,121,119,104,101,114,101,32,45,32,116,104,101,32,98,117,108,108,101,116,32,104,105,116,115,32,116,104,101,32,109,117,114,100,101,114,101,114), function(_0x9B7B)
_0xA9C5.on = _0x9B7B
if not _0x9B7B then
_0x225D()
local _0x82D5 = _0xD33F.Character and _0xD33F.Character:FindFirstChild(string.char(71,117,110))
if _0x82D5 then
_0x82D5.ManualActivationOnly = false
end
end
_0xE835(string.char(83,105,108,101,110,116,32,65,105,109,58,32).. (_0x9B7B andstring.char(79,110)orstring.char(79,102,102)), _0x9B7B andstring.char(101,118,101,114,121,32,115,104,111,116,32,103,111,101,115,32,116,111,32,116,104,101,32,109,117,114,100,101,114,101,114)orstring.char(100,105,115,97,98,108,101,100))
end)
local _0x8893 = _0xDBF6:Toggle(string.char(87,97,108,108,66,97,110,103),string.char(115,104,111,116,115,32,103,111,32,115,116,114,97,105,103,104,116,32,116,104,114,111,117,103,104,32,119,97,108,108,115), function(_0x9B7B)
_0xA9C5.wallbang = _0x9B7B
_0xE646 = 0
end)
_0x8893.Set(true, true)
local _0x56E5
local function _0x415D()
local _0xBE50 = math.clamp(math.floor((_0xD855() / 2 + 100) / 10 + 0.5) * 10, 0, 700)
_0xA9C5.pred = _0xBE50
if _0x56E5 then
_0x56E5.Set(_0xBE50, true)
end
end
local _0x4776 = _0xDBF6:Toggle(string.char(65,117,116,111,32,112,114,101,100,105,99,116,105,111,110),string.char(115,101,116,115,32,80,114,101,100,105,99,116,105,111,110,32,102,114,111,109,32,121,111,117,114,32,112,105,110,103,32,101,118,101,114,121,32,115,101,99,111,110,100), function(_0x9B7B)
_0xA9C5.auto = _0x9B7B
if _0x9B7B then
_0x415D()
end
end)
_0x4776.Set(true, true)
_0x56E5 = _0xDBF6:Slider(string.char(80,114,101,100,105,99,116,105,111,110), 0, 700, _0xA9C5.pred, function(_0xBE50)
_0xA9C5.pred = _0xBE50
end, function(_0xBE50)
return _0xBE50 ..string.char(109,115)end)
local _0xF719 = 0
_0xF709(_0x7FDD.Heartbeat, function()
if not _0xA9C5.auto or os.clock() - _0xF719 < 1 then
return
end
_0xF719 = os.clock()
_0x415D()
end)
local _0x664F = false
local _0xA3EA = 0
_0xF709(_0x7FDD.Heartbeat, function()
if not _0x664F or _0xFDEA or os.clock() - _0xA3EA < 2 then
return
end
local _0x8C06 = _0xD33F.Character
local _0xE4E7 = _0x8C06 and _0x8C06:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xBD98 = _0x8C06 and _0x8C06:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if not _0xE4E7 or not _0xBD98 or _0xBD98.Health <= 0 or _0x90B5(_0xE4E7.Position) then
return
end
if not _0xBF86(_0xD33F,string.char(71,117,110)) or not _0xD814() then
return
end
_0xA3EA = os.clock()
task.spawn(_0xE140, false)
end)
_0xDBF6:Toggle(string.char(65,117,116,111,32,83,104,111,111,116,32,77,117,114,100,101,114,101,114),string.char(121,111,117,32,104,97,118,101,32,116,104,101,32,103,117,110,32,45,32,116,104,101,32,109,117,114,100,101,114,101,114,32,103,101,116,115,32,115,104,111,116), function(_0x9B7B)
_0x664F = _0x9B7B
_0xA3EA = 0
_0xE835(string.char(65,117,116,111,32,83,104,111,111,116,58,32).. (_0x9B7B andstring.char(79,110)orstring.char(79,102,102)), _0x9B7B andstring.char(119,97,105,116,105,110,103,32,102,111,114,32,116,104,101,32,103,117,110)orstring.char(100,105,115,97,98,108,101,100))
end)
_0xDBF6:Button(string.char(83,104,111,111,116,32,77,117,114,100,101,114,101,114),string.char(116,97,107,101,32,111,117,116,32,116,104,101,32,103,117,110,32,97,110,100,32,102,105,114,101), function()
_0xE140(true)
end)
end
do
local _0x9B7B = false
local _0xC22D = {}
local _0xA17B = 0
local _0x2E55 = false
local _0xE692 =string.char(86,50)local _0x7BF7, _0xEF2F
local function _0xFFE4(_0xE4E7, _0xBD98)
if _0xE4E7 and _0xE4E7.Parent and _0x7BF7 then
_0xE4E7.CFrame = _0x7BF7
_0xE4E7.AssemblyLinearVelocity = Vector3.zero
end
if _0x7BF7 then
_0x0F18()
end
_0x7BF7 = nil
local _0x4245 = workspace.CurrentCamera
_0x4245.CameraType = _0xEF2F or Enum.CameraType.Custom
if _0xBD98 then
_0x4245.CameraSubject = _0xBD98
end
end
_0xF709(_0x7FDD.Heartbeat, function()
if not _0x9B7B then
if _0x4CBA.force then
_0x4CBA.force = false
end
_0x4CBA.v2 = false
if _0x7BF7 then
local _0xD51E = _0xD33F.Character
_0xFFE4(_0xD51E and _0xD51E:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)), _0xD51E and _0xD51E:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100)))
end
return
end
local _0x8C06 = _0xD33F.Character
local _0xE4E7 = _0x8C06 and _0x8C06:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xBD98 = _0x8C06 and _0x8C06:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0x9494 = os.clock()
if not _0xE4E7 or not _0xBD98 or _0xBD98.Health <= 0 or _0xBF86(_0xD33F,string.char(75,110,105,102,101)) or _0x90B5(_0xE4E7.Position) or _0x8C06:FindFirstChild(string.char(71,117,110)) then
_0x4CBA.force = false
_0x4CBA.v2 = false
_0x2E55 = false
if _0x7BF7 then
_0xFFE4(_0xE4E7, _0xBD98)
end
return
end
for _0xBFE6, _0x0D18 in ipairs(_0x9A21:GetPlayers()) do
if _0x0D18 ~= _0xD33F then
local _0xD51E = _0x0D18.Character
local _0xD12C = _0xD51E and _0xD51E:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if _0xD12C and _0xBF86(_0x0D18,string.char(75,110,105,102,101)) then
local _0x16A1 = _0xD12C.Position
if _0xD51E:FindFirstChild(string.char(75,110,105,102,101)) and (_0x16A1 - _0xE4E7.Position).Magnitude < 20 then
_0xA17B = math.max(_0xA17B, _0x9494 + 0.8)
end
local _0x092C = _0xC22D[_0x0D18]
if _0x092C and (_0x16A1 - _0x092C).Magnitude > 25 and not _0x90B5(_0x092C) and not _0x90B5(_0x16A1) then
_0xA17B = _0x9494 + 2
end
_0xC22D[_0x0D18] = _0x16A1
else
_0xC22D[_0x0D18] = nil
end
end
end
local _0x0FA0 = _0x9494 < _0xA17B
if _0xE692 ==string.char(86,49)and _0x0FA0 and not _0x2E55 then
_0x2E55 = true
_0xE835(string.char(65,110,116,105,32,75,105,108,108,32,65,108,108),string.char(109,117,114,100,101,114,101,114,32,105,115,32,99,111,109,105,110,103,32,45,32,121,111,117,39,114,101,32,117,110,116,111,117,99,104,97,98,108,101))
elseif not _0x0FA0 then
_0x2E55 = false
end
if _0xE692 ==string.char(86,50)then
local _0x16A1
for _0xBFE6, _0x0D18 in ipairs(_0x9A21:GetPlayers()) do
if _0x0D18 ~= _0xD33F and _0xBF86(_0x0D18,string.char(75,110,105,102,101)) and _0x0D18.Character and _0x0D18.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)) then
_0x16A1 = _0x0D18.Character.HumanoidRootPart.Position
end
end
_0x4CBA.murdererPos = _0x16A1
_0x4CBA.force = true
_0x4CBA.v2 = true
return
end
_0x4CBA.v2 = false
_0x4CBA.force = false
if _0x0FA0 then
if not _0x7BF7 then
_0xE4E6(_0xE4E7)
_0x7BF7 = _0xE4E7.CFrame
local _0x4245 = workspace.CurrentCamera
_0xEF2F = _0x4245.CameraType
_0x4245.CameraType = Enum.CameraType.Scriptable
end
_0xE4E7.CFrame = CFrame.new(_0x7BF7.Position + Vector3.new(math.random(-30, 30), math.random(60, 90), math.random(-30, 30)))
_0xE4E7.AssemblyLinearVelocity = Vector3.zero
elseif _0x7BF7 then
_0xFFE4(_0xE4E7, _0xBD98)
end
end)
local _0xDBF6 = _0x78B0(_0xDBCA,string.char(68,101,102,101,110,115,101))
_0xDBF6:Toggle(string.char(65,110,116,105,32,75,105,108,108,32,65,108,108),string.char(67,108,117,109,115,121,83,99,114,105,112,116,32,112,114,111,116,101,99,116,105,111,110), function(_0xBE50)
_0x9B7B = _0xBE50
if not _0xBE50 then
_0x4CBA.force = false
end
_0xE835(string.char(65,110,116,105,32,75,105,108,108,32,65,108,108,58,32).. (_0xBE50 andstring.char(79,110)orstring.char(79,102,102)), _0xBE50 andstring.char(119,97,116,99,104,105,110,103,32,116,104,101,32,109,117,114,100,101,114,101,114)orstring.char(100,105,115,97,98,108,101,100))
end)
_0xDBF6:Segmented(string.char(77,111,100,101), {string.char(86,49),string.char(86,50)}, _0xE692, function(_0xBE50)
_0xE692 = _0xBE50
_0x4CBA.force = false
if _0xBE50 ~=string.char(86,49)and _0x7BF7 then
local _0xD51E = _0xD33F.Character
_0xFFE4(_0xD51E and _0xD51E:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)), _0xD51E and _0xD51E:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100)))
end
end)
end
do
local _0xCA72 = { _0x9B7B = false, _0xE692 =string.char(82,97,110,100,111,109), _0xEFFE = 80, interval = 30, tracer = true }
local _0x2F6E
local _0xB37E = 0
local _0xAF98 = RaycastParams.new()
_0xAF98.FilterType = Enum.RaycastFilterType.Exclude
local function _0xEAF7(_0xF89E, _0x8C06)
_0xAF98.FilterDescendantsInstances = { _0x8C06, workspace.CurrentCamera }
for _0xBFE6 = 1, 8 do
local _0x7D74 = math.random() * math.pi * 2
local _0x819A = _0xCA72.radius * (0.4 + 0.6 * math.random())
local _0x0D18 = _0xF89E + Vector3.new(math.cos(_0x7D74) * _0x819A, 0, math.sin(_0x7D74) * _0x819A)
local _0x6F00 = workspace:Raycast(_0x0D18 + Vector3.new(0, 40, 0), Vector3.new(0, -120, 0), _0xAF98)
if _0x6F00 then
return _0x6F00.Position + Vector3.new(0, 3, 0)
end
end
return _0xF89E + Vector3.new(0, 0, _0xCA72.radius)
end
_0xF709(_0x7FDD.Heartbeat, function()
if not (_0xCA72.on or _0x4CBA.force) or _0x4CBA.pause > 0 then
return
end
local _0x8C06 = _0xD33F.Character
local _0xE4E7 = _0x8C06 and _0x8C06:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xBD98 = _0x8C06 and _0x8C06:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if not _0xE4E7 or not _0xBD98 or _0xBD98.Health <= 0 then
return
end
_0x4CBA.gunHold = _0x8C06:FindFirstChild(string.char(71,117,110)) ~= nil
if _0x4CBA.gunHold then
_0x4CBA.fakeCF = nil
return
end
local _0x9494 = os.clock()
local _0x16A1 = _0xE4E7.Position
if _0x4CBA.force and _0x4CBA.v2 then
local _0x613C, _0xC6A6
for _0xBFE6 = 1, 6 do
local _0x2D51 = Vector3.new(math.random() * 2 - 1, (math.random() * 2 - 1) * 0.4, math.random() * 2 - 1)
if _0x2D51.Magnitude < 0.05 then
_0x2D51 = Vector3.xAxis
end
local _0xA9B0 = _0x16A1 + _0x2D51.Unit * (40 + math.random() * 60)
local _0x819A = _0x4CBA.murdererPos and (_0xA9B0 - _0x4CBA.murdererPos).Magnitude or 999
if _0x819A >= 40 and (not _0xC6A6 or _0x819A > _0xC6A6) then
_0x613C, _0xC6A6 = _0xA9B0, _0x819A
end
end
_0x2F6E = _0x613C or _0x16A1 + Vector3.new(0, 80, 0)
elseif _0xCA72.mode ==string.char(82,97,110,100,111,109)then
if not _0x2F6E or _0x9494 >= _0xB37E then
_0x2F6E = _0xEAF7(_0x16A1, _0x8C06)
_0xB37E = _0x9494 + _0xCA72.interval / 1000
end
elseif _0xCA72.mode ==string.char(79,114,98,105,116)then
local _0x7D74 = _0x9494 * 3
_0x2F6E = _0x16A1 + Vector3.new(math.cos(_0x7D74) * _0xCA72.radius * 0.3, 0, math.sin(_0x7D74) * _0xCA72.radius * 0.3)
else
_0x2F6E = _0x16A1 + Vector3.new(0, 200, 0)
end
local _0xA6A9 = _0xE4E7.CFrame
_0x4CBA.real = _0xA6A9
_0x4CBA.lastFakeAt = os.clock()
local _0xA1A9 = _0x9494 * 40
_0x4CBA.fakeCF = CFrame.new(_0x2F6E) * CFrame.Angles(_0xA1A9 * 1.3 + math.random() * 6.28, _0xA1A9 + math.random() * 6.28, _0xA1A9 * 0.7 + math.random() * 6.28)
_0xE4E7.CFrame = _0x4CBA.fakeCF
if sethiddenproperty then
pcall(sethiddenproperty, _0xE4E7,string.char(78,101,116,119,111,114,107,73,115,83,108,101,101,112,105,110,103), false)
end
local _0xBE50 = _0xE4E7.AssemblyLinearVelocity
_0x4CBA.realVel = _0xBE50
if _0xBE50.Magnitude < 8 then
local _0x7D74 = math.random() * math.pi * 2
_0xE4E7.AssemblyLinearVelocity = Vector3.new(math.cos(_0x7D74) * 12, 6, math.sin(_0x7D74) * 12)
end
end)
pcall(function()
_0x7FDD:UnbindFromRenderStep(string.char(67,108,117,109,115,121,83,99,114,105,112,116,68,101,115,121,110,99))
end)
_0x7FDD:BindToRenderStep(string.char(67,108,117,109,115,121,83,99,114,105,112,116,68,101,115,121,110,99), Enum.RenderPriority.First.Value, function()
if not _0x4CBA.real then
return
end
local _0x8C06 = _0xD33F.Character
local _0xE4E7 = _0x8C06 and _0x8C06:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if _0xE4E7 then
_0xE4E7.CFrame = _0x4CBA.real
if _0x4CBA.realVel then
_0xE4E7.AssemblyLinearVelocity = _0x4CBA.realVel
end
end
_0x4CBA.real, _0x4CBA.realVel = nil, nil
end)
local _0xD172 = { _0x8C06 = nil, _0x6340 = nil, _0xEE00 = {}, _0x46BA = nil, _0x622A = nil }
local function _0x025B()
if _0xD172.folder then
_0xD172.folder:Destroy()
end
_0xD172.folder, _0xD172.char = nil, nil
table.clear(_0xD172.parts)
end
local function _0xF5D4(_0x8C06)
_0x025B()
_0xD172.char = _0x8C06
_0xD172.folder = _0x81A6(string.char(77,111,100,101,108), { Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,68,101,115,121,110,99,71,104,111,115,116), Parent = workspace.CurrentCamera })
for _0xBFE6, _0x9DCF in ipairs(_0x8C06:GetChildren()) do
if _0x9DCF:IsA(string.char(66,97,115,101,80,97,114,116)) and _0x9DCF.Name ~=string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)then
local _0x3E35, _0x82D5 = pcall(function()
return _0x9DCF:Clone()
end)
if _0x3E35 and _0x82D5 then
for _0xBFE6, _0xD51E in ipairs(_0x82D5:GetChildren()) do
if not _0xD51E:IsA(string.char(68,97,116,97,77,111,100,101,108,77,101,115,104)) then
_0xD51E:Destroy()
end
end
pcall(function()
_0x82D5.TextureID =""end)
_0x82D5.Anchored, _0x82D5.CanCollide, _0x82D5.CanQuery, _0x82D5.CanTouch, _0x82D5.CastShadow = true, false, false, false, false
_0x82D5.Material = Enum.Material.ForceField
_0x82D5.Color = _0x0333
_0x82D5.Transparency = 0.2
_0x82D5.Parent = _0xD172.folder
_0xD172.parts[_0x9DCF] = _0x82D5
end
end
end
_0x81A6(string.char(72,105,103,104,108,105,103,104,116), {
Adornee = _0xD172.folder,
FillTransparency = 1,
OutlineColor = _0x0333,
OutlineTransparency = 0.3,
DepthMode = Enum.HighlightDepthMode.AlwaysOnTop,
Parent = _0xD172.folder,
})
local function _0xC31D()
local _0xA85E = _0x81A6(string.char(80,97,114,116), {
Anchored = true,
CanCollide = false,
CanQuery = false,
CanTouch = false,
Transparency = 1,
Size = Vector3.new(0.1, 0.1, 0.1),
Parent = _0xD172.folder,
})
return _0x81A6(string.char(65,116,116,97,99,104,109,101,110,116), { Parent = _0xA85E }), _0xA85E
end
local _0x46BA, _0xDE52 = _0xC31D()
local _0x622A, _0x0046 = _0xC31D()
_0xD172.p0, _0xD172.p1 = _0xDE52, _0x0046
_0x81A6(string.char(66,101,97,109), {
Attachment0 = _0x46BA,
Attachment1 = _0x622A,
FaceCamera = true,
LightEmission = 1,
LightInfluence = 0,
Width0 = 0.14,
Width1 = 0.14,
Segments = 1,
Color = ColorSequence.new(_0x0333),
Transparency = NumberSequence.new(0.15, 0.55),
Parent = _0xDE52,
})
end
pcall(function()
_0x7FDD:UnbindFromRenderStep(string.char(67,108,117,109,115,121,83,99,114,105,112,116,68,101,115,121,110,99,86,105,115))
end)
_0x7FDD:BindToRenderStep(string.char(67,108,117,109,115,121,83,99,114,105,112,116,68,101,115,121,110,99,86,105,115), Enum.RenderPriority.First.Value + 1, function()
local _0x8C06 = _0xD33F.Character
local _0xE4E7 = _0x8C06 and _0x8C06:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not (_0xCA72.on or _0x4CBA.force) or not _0xCA72.tracer or _0x4CBA.pause > 0 or _0x4CBA.gunHold or not _0xE4E7 or not _0x4CBA.fakeCF then
if _0xD172.folder then
_0x025B()
end
return
end
if _0xD172.char ~= _0x8C06 or not _0xD172.folder or not _0xD172.folder.Parent then
_0xF5D4(_0x8C06)
end
local _0x7392 = _0x4CBA.fakeCF
local _0x2682 = _0xE4E7.CFrame
for _0x9DCF, _0x82D5 in pairs(_0xD172.parts) do
if _0x9DCF.Parent then
_0x82D5.CFrame = _0x7392 * _0x2682:ToObjectSpace(_0x9DCF.CFrame)
end
end
_0xD172.p0.CFrame = _0x2682
_0xD172.p1.CFrame = _0x7392
end)
table.insert(_0x7E96, {
Disconnect = function()
pcall(function()
_0x7FDD:UnbindFromRenderStep(string.char(67,108,117,109,115,121,83,99,114,105,112,116,68,101,115,121,110,99,86,105,115))
end)
_0x025B()
end,
})
table.insert(_0x7E96, {
Disconnect = function()
pcall(function()
_0x7FDD:UnbindFromRenderStep(string.char(67,108,117,109,115,121,83,99,114,105,112,116,68,101,115,121,110,99))
end)
end,
})
local _0xDBF6 = _0x78B0(_0xDBCA,string.char(68,101,115,121,110,99))
_0xDBF6:Toggle(string.char(69,110,97,98,108,101),string.char(67,108,117,109,115,121,83,99,114,105,112,116,32,101,120,99,108,117,115,105,118,101), function(_0x9B7B)
_0xCA72.on = _0x9B7B
_0x4CBA.on = _0x9B7B
_0x2F6E = nil
if not _0x9B7B then
_0x4CBA.fakeCF = nil
end
_0xE835(string.char(68,101,115,121,110,99,58,32).. (_0x9B7B andstring.char(79,110)orstring.char(79,102,102)), _0x9B7B andstring.char(121,111,117,39,114,101,32,101,118,101,114,121,119,104,101,114,101,32,97,110,100,32,110,111,119,104,101,114,101)orstring.char(98,97,99,107,32,116,111,32,110,111,114,109,97,108))
end)
local _0xAD23 = _0xDBF6:Toggle(string.char(84,114,97,99,101,114),string.char(115,104,111,119,32,119,104,101,114,101,32,111,116,104,101,114,115,32,115,101,101,32,121,111,117), function(_0x9B7B)
_0xCA72.tracer = _0x9B7B
end)
_0xAD23.Set(true, true)
end
dodo
local _0xE6CF = game:GetService(string.char(67,111,108,108,101,99,116,105,111,110,83,101,114,118,105,99,101))
local _0x55F5 = _0xD33F
local _0x7C57 = workspace
local function _0x0D63()
local _0xD51E = _0x55F5.Character
return _0xD51E and _0xD51E:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
end
local function _0x1C0D()
local _0xD51E = _0x55F5.Character
return _0xD51E and _0xD51E:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
end
local function _0xC8E3(_0x7D74, _0xBB9C)
local _0x558B, _0x2E0B = _0x7D74.X - _0xBB9C.X, _0x7D74.Z - _0xBB9C.Z
return math.sqrt(_0x558B * _0x558B + _0x2E0B * _0x2E0B)
end
local _0x3DA3 = (function()
local _0xA686 = { _0x9B7B=false, _0xB07F=25, depth=14, rise_xz=4, auto_reset=false, collect_only=false, coin_limit=40, max_distance=600, was_down=false, down_ref_y=nil, last_touch=0, collected=0, noclip_cache={} }
local _0x8C29 = 0.05
local _0x88E0 = RaycastParams.new()
_0x88E0.FilterType = Enum.RaycastFilterType.Exclude
_0x88E0.IgnoreWater = true
local function _0x7F12()
local _0x9494=os.clock()
if _0x9494-_0xA686.last_touch<_0x8C29 then return false end
_0xA686.last_touch=_0x9494
return true
end
local function _0x9258(_0x9B7B)
local _0x8C06=_0x55F5.Character if not _0x8C06 then return end
local _0xBD98=_0x8C06:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if _0x9B7B then
if _0xBD98 then pcall(function() _0xBD98.PlatformStand=true end) end
for _0xBFE6,_0x0D18 in ipairs(_0x8C06:GetDescendants()) do
if _0x0D18:IsA(string.char(66,97,115,101,80,97,114,116)) and _0x0D18.CanCollide then
if _0xA686.noclip_cache[_0x0D18]==nil then _0xA686.noclip_cache[_0x0D18]=true end
_0x0D18.CanCollide=false
end
end
else
if _0xBD98 then pcall(function() _0xBD98.PlatformStand=false _0xBD98.AutoRotate=true end) end
for _0x0D18 in pairs(_0xA686.noclip_cache) do if _0x0D18 and _0x0D18.Parent then pcall(function() _0x0D18.CanCollide=true end) end end
_0xA686.noclip_cache={}
end
end
local function _0x8DB8()
local _0xE4E7=_0x0D63() if not _0xE4E7 then return end
_0x88E0.FilterDescendantsInstances={_0x55F5.Character}
local _0x6F00=_0x7C57:Raycast(_0xE4E7.Position,Vector3.new(0,400,0),_0x88E0)
local _0xD4A2=_0x6F00 and (_0x6F00.Position.Y+5) or (_0xA686.down_ref_y and _0xA686.down_ref_y+5)
if _0xD4A2 then pcall(function() _0xE4E7.CFrame=CFrame.new(_0xE4E7.Position.X,_0xD4A2,_0xE4E7.Position.Z) _0xE4E7.AssemblyLinearVelocity=Vector3.zero _0xE4E7.AssemblyAngularVelocity=Vector3.zero end) end
end
local function _0xC58B()
if _0xA686.was_down then _0xA686.was_down=false _0x8DB8() end
_0x9258(false)
local _0x98C3=_0x1C0D() if _0x98C3 then _0x98C3.AutoRotate=true end
end
local function _0xA9AE(_0xBE50)
return _0xBE50 and _0xBE50.Parent and _0xBE50:IsA(string.char(66,97,115,101,80,97,114,116)) and not _0xBE50:GetAttribute(string.char(67,111,108,108,101,99,116,101,100)) and not _0xBE50:GetAttribute(string.char(68,101,108,101,116,101))
end
local function _0x2B68()
local _0xC494={}
for _0xBFE6,_0xBE50 in ipairs(_0xE6CF:GetTagged(string.char(67,111,105,110,86,105,115,117,97,108))) do if _0xA9AE(_0xBE50) then _0xC494[#_0xC494+1]=_0xBE50 end end
if #_0xC494==0 then
for _0xBFE6,_0xBE50 in ipairs(_0x7C57:GetDescendants()) do
if _0xBE50:IsA(string.char(66,97,115,101,80,97,114,116)) then
local _0xDDE9=string.lower(_0xBE50.Name)
if (_0xDDE9==string.char(99,111,105,110)or _0xDDE9==string.char(99,111,105,110,118,105,115,117,97,108)or _0xDDE9:find(string.char(99,111,105,110),1,true)) and _0xA9AE(_0xBE50) then _0xC494[#_0xC494+1]=_0xBE50 end
end
end
end
return _0xC494
end
local function _0x5EF7(_0x1205,_0xC494)
local _0x613C,_0x07A0=nil,math.huge
for _0xBFE6,_0xBE50 in ipairs(_0xC494) do local _0x819A=(_0xBE50.Position-_0x1205).Magnitude if _0x819A<_0x07A0 then _0x07A0=_0x819A _0x613C=_0xBE50 end end
return _0x613C
end
local function _0x3071(coin)
if type(firetouchinterest)~=string.char(102,117,110,99,116,105,111,110)or not coin or not coin.Parent or not _0x7F12() then return end
local _0xE4E7=_0x0D63() if not _0xE4E7 then return end
pcall(firetouchinterest,_0xE4E7,coin,0)
pcall(firetouchinterest,_0xE4E7,coin,1)
end
local function _0x8E4E()
local _0x58DD=_0x55F5:FindFirstChild(string.char(80,108,97,121,101,114,71,117,105))
local _0x2D1C=_0x58DD and _0x58DD:FindFirstChild(string.char(77,97,105,110,71,85,73))
local _0x8789=_0x2D1C and _0x2D1C:FindFirstChild(string.char(71,97,109,101))
local _0xE2C3=_0x8789 and _0x8789:FindFirstChild(string.char(67,111,105,110,66,97,103,115))
local _0x1DD1=_0xE2C3 and _0xE2C3:FindFirstChild(string.char(67,111,110,116,97,105,110,101,114))
if not _0x1DD1 then return false end
local _0x36C8=false
for _0xBFE6,_0xBE50 in ipairs(_0x1DD1:GetChildren()) do
if _0xBE50:IsA(string.char(70,114,97,109,101)) and _0xBE50.Visible then _0x36C8=true local _0x98B8=_0xBE50:FindFirstChild(string.char(70,117,108,108)) if not (_0x98B8 and _0x98B8.Visible) then return false end end
end
return _0x36C8
end
_0xF709(_0x7FDD.Stepped,function(_0xBFE6,_0xF45E)
if not _0xA686.on then _0xC58B() return end
if _0xA686.collect_only then return end
local _0xE4E7,_0xBD98=_0x0D63(),_0x1C0D()
if not _0xE4E7 or not _0xBD98 or _0xBD98.Health<=0 then _0x9258(false) return end
local _0xC494=_0x2B68()
if _0xA686.max_distance and _0xA686.max_distance > 0 then
local _0xB977={}
for _0xBFE6,coin in ipairs(_0xC494) do
if (coin.Position-_0xE4E7.Position).Magnitude <= _0xA686.max_distance then _0xB977[#_0xB977+1]=coin end
end
_0xC494=_0xB977
end
if #_0xC494==0 then _0xC58B() return end
if _0xA686.coin_limit > 0 and _0xA686.collected >= _0xA686.coin_limit then
_0xC58B()
if _0xA686.auto_reset then _0xA686.collected=0 end
return
end
local _0xA213=_0x5EF7(_0xE4E7.Position,_0xC494)
if not _0xA213 then _0xC58B() return end
_0x9258(true) _0xA686.was_down=true _0xA686.down_ref_y=_0xA213.Position.Y
local _0x4837=_0xA213.Position
local _0x8B3C=_0xC8E3(_0xE4E7.Position,_0x4837)<=_0xA686.rise_xz and _0x4837 or Vector3.new(_0x4837.X,_0x4837.Y-_0xA686.depth,_0x4837.Z)
local _0x2D51=_0x8B3C-_0xE4E7.Position local _0x819A=_0x2D51.Magnitude
local _0xFCAD=_0x819A>0.1 and _0xE4E7.Position+_0x2D51.Unit*math.min(_0xA686.speed*_0xF45E,_0x819A) or _0x8B3C
pcall(function() _0xBD98.AutoRotate=false _0xE4E7.CFrame=CFrame.new(_0xFCAD)*CFrame.Angles(-math.pi*0.5,0,0) _0xE4E7.AssemblyLinearVelocity=Vector3.zero _0xE4E7.AssemblyAngularVelocity=Vector3.zero end)
_0x3071(_0xA213)
if _0xA213:GetAttribute(string.char(67,111,108,108,101,99,116,101,100)) then _0xA686.collected = _0xA686.collected + 1 end
if _0xA686.auto_reset and _0x8E4E() then pcall(function() _0xBD98.Health=0 end) end
end)
_0xF709(_0x55F5.CharacterAdded,function() _0xA686.noclip_cache={} _0xA686.was_down=false end)
return {
_0xB828=function(_0xBE50) _0xA686.on=_0xBE50 if not _0xBE50 then _0xC58B() end end,
set_speed=function(_0xBE50) _0xA686.speed=tonumber(_0xBE50) or 25 end,
set_depth=function(_0xBE50) _0xA686.depth=tonumber(_0xBE50) or 14 end,
set_rise_xz=function(_0xBE50) _0xA686.rise_xz=tonumber(_0xBE50) or 4 end,
set_collect_only=function(_0xBE50) _0xA686.collect_only=_0xBE50 end,
set_auto_reset=function(_0xBE50) _0xA686.auto_reset=_0xBE50 end,
set_coin_limit=function(_0xBE50) _0xA686.coin_limit=math.max(0, tonumber(_0xBE50) or 40) _0xA686.collected=0 end,
set_max_distance=function(_0xBE50) _0xA686.max_distance=math.max(0, tonumber(_0xBE50) or 600) end,
}
end)()
local _0x810F=_0x78B0(_0x0EC1,string.char(65,117,116,111,32,70,97,114,109,32,67,111,105,110,115))
_0x810F:Toggle(string.char(65,117,116,111,32,70,97,114,109,32,67,111,105,110,115),string.char(99,111,108,108,101,99,116,32,99,111,105,110,115,32,97,117,116,111,109,97,116,105,99,97,108,108,121),function(_0x9B7B)
_0x3DA3.set(_0x9B7B)
_0xE835(string.char(65,117,116,111,32,70,97,114,109,32,67,111,105,110,115,58,32)..(_0x9B7B andstring.char(79,110)orstring.char(79,102,102)),_0x9B7B andstring.char(99,111,108,108,101,99,116,105,110,103,32,99,111,105,110,115)orstring.char(115,116,111,112,112,101,100))
end)
_0x810F:Slider(string.char(83,112,101,101,100),10,80,25,function(_0xBE50) _0x3DA3.set_speed(_0xBE50) end)
_0x810F:Slider(string.char(68,101,112,116,104),6,40,14,function(_0xBE50) _0x3DA3.set_depth(_0xBE50) end)
_0x810F:Slider(string.char(82,105,115,101,32,88,90),1,15,4,function(_0xBE50) _0x3DA3.set_rise_xz(_0xBE50) end)
_0x810F:Segmented(string.char(67,111,108,108,101,99,116,32,79,110,108,121),{string.char(79,102,102),string.char(79,110)},string.char(79,102,102),function(_0xBE50) _0x3DA3.set_collect_only(_0xBE50==string.char(79,110)) end)
_0x810F:Segmented(string.char(65,117,116,111,32,82,101,115,101,116),{string.char(79,102,102),string.char(79,110)},string.char(79,102,102),function(_0xBE50) _0x3DA3.set_auto_reset(_0xBE50==string.char(79,110)) end)
_0x810F:Slider(string.char(67,111,105,110,32,76,105,109,105,116),0,100,40,function(_0xBE50) _0x3DA3.set_coin_limit(_0xBE50) end)
_0x810F:Slider(string.char(77,97,120,32,68,105,115,116,97,110,99,101),50,1200,600,function(_0xBE50) _0x3DA3.set_max_distance(_0xBE50) end)
local _0x6CCB=false
local _0x7BD6
local function _0x98F0()
local _0xD51E=_0x55F5.Character
local _0x2AD8=_0xD51E and _0xD51E:FindFirstChildOfClass(string.char(84,111,111,108))
local function _0xC512(_0x4903)
if not _0x4903 or not _0x4903:IsA(string.char(84,111,111,108)) then return false end
local _0xDDE9=string.lower(_0x4903.Name)
return _0xDDE9:find(string.char(112,105,115,116,111,108),1,true) or _0xDDE9:find(string.char(114,101,118,111,108,118,101,114),1,true) or _0xDDE9:find(string.char(103,117,110),1,true)
end
if _0xC512(_0x2AD8) then return _0x2AD8 end
local _0xC2DE=_0x55F5:FindFirstChildOfClass(string.char(66,97,99,107,112,97,99,107))
if _0xC2DE then for _0xBFE6,_0x1592 in ipairs(_0xC2DE:GetChildren()) do if _0xC512(_0x1592) then return _0x1592 end end end
end
local function _0x41A6()
if not _0x6CCB then return end
local _0xD51E=_0x55F5.Character local _0xBD98=_0xD51E and _0xD51E:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100)) local _0xF33E=_0x98F0()
if not _0xD51E or not _0xBD98 or not _0xF33E then return end
if _0xF33E.Parent~=_0xD51E then pcall(function() _0xBD98:EquipTool(_0xF33E) end) task.wait(0.12) end
if _0xF33E.Parent==_0xD51E then pcall(function() _0xF33E:Activate() end) end
end
local function _0x9FB4(_0xBE50)
_0x6CCB=_0xBE50
if _0x7BD6 then _0x7BD6:Disconnect() _0x7BD6=nil end
if _0xBE50 then
_0x7BD6=_0x63F8.InputBegan:Connect(function(input,processed)
if processed or not _0x6CCB then return end
if input.UserInputType==Enum.UserInputType.MouseButton1 or input.UserInputType==Enum.UserInputType.Touch then task.spawn(_0x41A6) end
end)
end
end
local _0x1A84=_0x78B0(_0xDBCA,string.char(87,97,108,108,32,83,104,111,116))
_0x1A84:Toggle(string.char(87,97,108,108,32,83,104,111,116),string.char(102,105,114,101,32,116,104,101,32,112,105,115,116,111,108,32,116,104,114,111,117,103,104,32,119,97,108,108,115),function(_0x9B7B)
_0x9FB4(_0x9B7B)
_0xE835(string.char(87,97,108,108,32,83,104,111,116,58,32)..(_0x9B7B andstring.char(79,110)orstring.char(79,102,102)),_0x9B7B andstring.char(101,110,97,98,108,101,100)orstring.char(100,105,115,97,98,108,101,100))
end)
local _0x7D60={
Blue=Color3.fromRGB(0,140,255), White=Color3.fromRGB(255,255,255),
Red=Color3.fromRGB(255,20,50), Purple=Color3.fromRGB(190,80,255), Green=Color3.fromRGB(80,255,180)
}
local _0xFDD7={_0x9B7B=false,effect=string.char(71,104,111,115,116),duration=4,_0xA213=string.char(69,118,101,114,121,111,110,101),clones={},_0x2C5A={}}
local _0x0453={}
local function _0x95C6()
for _0x60FA=#_0xFDD7.clones,1,-1 do local _0xA051=_0xFDD7.clones[_0x60FA] if _0xA051 and _0xA051.Parent then _0xA051:Destroy() end _0xFDD7.clones[_0x60FA]=nil end
for _0x60FA=#_0xFDD7.emitters,1,-1 do local _0xA051=_0xFDD7.emitters[_0x60FA] if _0xA051 and _0xA051.Parent then _0xA051:Destroy() end _0xFDD7.emitters[_0x60FA]=nil end
endlocal function _0xC156()
return _0x0333
end
local _0xF857={_0x210D=true,torso=true,[string.char(108,101,102,116,32,97,114,109)]=true,[string.char(114,105,103,104,116,32,97,114,109)]=true,[string.char(108,101,102,116,32,108,101,103)]=true,[string.char(114,105,103,104,116,32,108,101,103)]=true,uppertorso=true,lowertorso=true,leftupperarm=true,leftlowerarm=true,lefthand=true,rightupperarm=true,rightlowerarm=true,righthand=true,leftupperleg=true,leftlowerleg=true,leftfoot=true,rightupperleg=true,rightlowerleg=true,rightfoot=true}
local function _0x7B36(_0x3066)
if not _0x3066:IsA(string.char(66,97,115,101,80,97,114,116)) or _0x3066.Name==string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)then return false end
if _0x3066:FindFirstAncestorOfClass(string.char(65,99,99,101,115,115,111,114,121)) then return false end
local _0xDDE9=_0x3066.Name:lower()
if not _0xF857[_0xDDE9] then return false end
local _0x4FEA=_0x3066.Parent and _0x3066.Parent.Name:lower() or""return not (_0xDDE9:find(string.char(104,97,110,100,108,101),1,true) or _0x4FEA:find(string.char(112,101,116),1,true) or _0x4FEA:find(string.char(107,110,105,102,101),1,true) or _0x4FEA:find(string.char(103,117,110),1,true))
end
local function _0xE048(_0xBA21,dur)
task.delay(math.max(0.1,dur-0.8),function()
if not _0xBA21.Parent then return end
for _0xBFE6,_0xAA59 in ipairs(_0xBA21:GetDescendants()) do
if _0xAA59:IsA(string.char(66,97,115,101,80,97,114,116)) then pcall(function() _0x85C3:Create(_0xAA59,TweenInfo.new(0.8),{Transparency=1}):Play() end)
elseif _0xAA59:IsA(string.char(72,105,103,104,108,105,103,104,116)) then pcall(function() _0x85C3:Create(_0xAA59,TweenInfo.new(0.8),{FillTransparency=1,OutlineTransparency=1}):Play() end)
elseif _0xAA59:IsA(string.char(70,114,97,109,101)) then pcall(function() _0x85C3:Create(_0xAA59,TweenInfo.new(0.8),{BackgroundTransparency=1}):Play() end) end
end
task.delay(0.9,function() if _0xBA21.Parent then _0xBA21:Destroy() end end)
end)
end
local function _0x8E20(_0x8C06,_0x6634,dur)
local _0x2B10=_0x8C06.Archivable
local _0x3E35,_0x8125=pcall(function() _0x8C06.Archivable=true return _0x8C06:Clone() end)
pcall(function() _0x8C06.Archivable=_0x2B10 end)
if not _0x3E35 or not _0x8125 then return end
for _0xBFE6,_0xAA59 in ipairs(_0x8125:GetDescendants()) do
if _0xAA59:IsA(string.char(66,97,115,101,80,97,114,116)) then
if _0x7B36(_0xAA59) then _0xAA59.Anchored=true _0xAA59.CanCollide=false _0xAA59.CanQuery=false _0xAA59.CanTouch=false _0xAA59.CastShadow=false _0xAA59.Material=Enum.Material.Neon _0xAA59.Color=_0x6634 _0xAA59.Transparency=0
else _0xAA59:Destroy() end
elseif _0xAA59:IsA(string.char(68,101,99,97,108)) or _0xAA59:IsA(string.char(84,101,120,116,117,114,101)) or _0xAA59:IsA(string.char(80,97,114,116,105,99,108,101,69,109,105,116,116,101,114)) or _0xAA59:IsA(string.char(84,114,97,105,108)) or _0xAA59:IsA(string.char(66,101,97,109)) or _0xAA59:IsA(string.char(83,99,114,105,112,116)) or _0xAA59:IsA(string.char(76,111,99,97,108,83,99,114,105,112,116)) or _0xAA59:IsA(string.char(72,117,109,97,110,111,105,100)) or _0xAA59:IsA(string.char(65,110,105,109,97,116,111,114)) or _0xAA59:IsA(string.char(84,111,111,108)) or _0xAA59:IsA(string.char(65,99,99,101,115,115,111,114,121)) then _0xAA59:Destroy() end
end
_0x8125.Name=string.char(67,108,117,109,115,121,95,68,101,97,116,104,67,108,111,110,101)_0x8125.Parent=_0x7C57 _0xFDD7.clones[#_0xFDD7.clones+1]=_0x8125
local _0xEC58=Instance.new(string.char(72,105,103,104,108,105,103,104,116)) _0xEC58.Name=string.char(67,108,117,109,115,121,95,68,101,97,116,104,88,82,97,121)_0xEC58.Adornee=_0x8125 _0xEC58.FillColor=_0x6634 _0xEC58.OutlineColor=_0x6634 _0xEC58.FillTransparency=0.18 _0xEC58.OutlineTransparency=0 _0xEC58.DepthMode=Enum.HighlightDepthMode.AlwaysOnTop _0xEC58.Parent=_0x8125
_0xE048(_0x8125,dur)
end
local function _0xD0F8(_0x8C06,_0x6634,dur)
local _0x6340=Instance.new(string.char(70,111,108,100,101,114)) _0x6340.Name=string.char(67,108,117,109,115,121,95,68,101,97,116,104,68,111,116,115)_0x6340.Parent=_0x7C57 _0xFDD7.emitters[#_0xFDD7.emitters+1]=_0x6340
local _0x98EA=0.42local _0x3139=320 local _0x3006=0
for _0xBFE6,_0x3066 in ipairs(_0x8C06:GetDescendants()) do
if _0x3006>=_0x3139 then break end
if _0x7B36(_0x3066) then
local _0x52F8=_0x3066.Size local _0x7800=_0x3066.CFrame
local _0xDC27=math.max(1,math.floor(_0x52F8.X/_0x98EA)) local _0x4146=math.max(1,math.floor(_0x52F8.Y/_0x98EA)) local _0xD6E0=math.max(1,math.floor(_0x52F8.Z/_0x98EA))
local function _0xA64E(_0xA051,_0xD4A2,_0x36DB)
if _0x3006>=_0x3139 then return end
local _0x93F4=Instance.new(string.char(80,97,114,116)) _0x93F4.Name=string.char(68,101,97,116,104,68,111,116)_0x93F4.Shape=Enum.PartType.Ball _0x93F4.Size=Vector3.new(0.075,0.075,0.075) _0x93F4.Material=Enum.Material.Neon _0x93F4.Color=_0x6634 _0x93F4.Anchored=true _0x93F4.CanCollide=false _0x93F4.CanQuery=false _0x93F4.CanTouch=false _0x93F4.CastShadow=false _0x93F4.Transparency=0 _0x93F4.CFrame=_0x7800*CFrame.new(_0xA051,_0xD4A2,_0x36DB) _0x93F4.Parent=_0x6340 _0x3006+=1
local _0x6359=Instance.new(string.char(66,105,108,108,98,111,97,114,100,71,117,105)) _0x6359.Name=string.char(68,101,97,116,104,68,111,116,66,105,108,108,98,111,97,114,100)_0x6359.AlwaysOnTop=true _0x6359.LightInfluence=0 _0x6359.Size=UDim2.fromOffset(7,7) _0x6359.Adornee=_0x93F4 _0x6359.Parent=_0x93F4
local _0x23BB=Instance.new(string.char(70,114,97,109,101)) _0x23BB.Size=UDim2.fromScale(1,1) _0x23BB.BackgroundColor3=_0x6634 _0x23BB.BorderSizePixel=0 _0x23BB.Parent=_0x6359
local _0x5FD9=Instance.new(string.char(85,73,67,111,114,110,101,114)) _0x5FD9.CornerRadius=UDim.new(1,0) _0x5FD9.Parent=_0x23BB
end
for ix=0,_0xDC27 do for iy=0,_0x4146 do for iz=0,_0xD6E0 do
if _0x3006>=_0x3139 then break endif ix==0 or ix==_0xDC27 or iy==0 or iy==_0x4146 or iz==0 or iz==_0xD6E0 then
_0xA64E(-_0x52F8.X/2+_0x52F8.X*ix/_0xDC27,-_0x52F8.Y/2+_0x52F8.Y*iy/_0x4146,-_0x52F8.Z/2+_0x52F8.Z*iz/_0xD6E0)
end
end end end
end
end
_0xE048(_0x6340,dur)
end
local function _0x7B80(pl)
local _0xD51E=pl and pl.Character
if _0xD51E and _0xD51E:FindFirstChild(string.char(75,110,105,102,101)) then returnstring.char(109,117,114,100,101,114,101,114)end
local _0xC2DE=pl and pl:FindFirstChildOfClass(string.char(66,97,99,107,112,97,99,107))
if _0xC2DE and _0xC2DE:FindFirstChild(string.char(75,110,105,102,101)) then returnstring.char(109,117,114,100,101,114,101,114)end
returnstring.char(111,116,104,101,114)end
local function _0x7483(pl,_0x8C06)
if not _0xFDD7.on or _0xFDD7.effect==string.char(79,102,102)then return end
if _0xFDD7.target==string.char(77,117,114,100,101,114,101,114)and _0x7B80(pl)~=string.char(109,117,114,100,101,114,101,114)then return end
local _0x6634=_0xC156()
if _0xFDD7.effect==string.char(71,104,111,115,116)then _0x8E20(_0x8C06,_0x6634,_0xFDD7.duration)
elseif _0xFDD7.effect==string.char(68,111,116,115)then _0xD0F8(_0x8C06,_0x6634,_0xFDD7.duration) end
end
local function _0x12A6(pl)
if _0x0453[pl] then return end
_0x0453[pl]=true
local function _0x3D23(_0x8C06)
local _0xBD98=_0x8C06:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100)) or _0x8C06:WaitForChild(string.char(72,117,109,97,110,111,105,100),5)
if _0xBD98 then _0xF709(_0xBD98.Died,function() _0x7483(pl,_0x8C06) end) end
end
if pl.Character then task.spawn(_0x3D23,pl.Character) end
_0xF709(pl.CharacterAdded,function(_0xD51E) task.spawn(_0x3D23,_0xD51E) end)
end
_0xF709(_0x7FDD.Heartbeat,function()
if not _0xFDD7.on then return end
for _0xBFE6,pl in ipairs(_0x9A21:GetPlayers()) do _0x12A6(pl) end
end)do
local _0x51FE = false
local _0x9046 = Color3.fromRGB(0, 220, 255)
local _0x2536 = 0.35
local _0x58D3 =string.char(65,108,108)local _0xE797 = {}
local _0xBBD5 = false
local _0x530E = Color3.fromRGB(0, 230, 255)
local _0xE70F = 0
local _0x65D9 = {}
local _0x6ADF = {}
local _0xD838 = {}
local function _0xDC8E(_0xC3A4)
if not _0xC3A4 or not _0xC3A4:IsA(string.char(84,111,111,108)) then return nil end
local _0xDDE9 = _0xC3A4.Name:lower()
if _0xDDE9:find(string.char(107,110,105,102,101), 1, true) or _0xDDE9:find(string.char(98,108,97,100,101), 1, true) or _0xDDE9:find(string.char(107,97,114,97,109,98,105,116), 1, true) or _0xDDE9:find(string.char(98,111,119,105,101), 1, true) or _0xDDE9:find(string.char(107,117,110,97,105), 1, true) then
returnstring.char(75,110,105,102,101)end
if _0xDDE9:find(string.char(103,117,110), 1, true) or _0xDDE9:find(string.char(112,105,115,116,111,108), 1, true) or _0xDDE9:find(string.char(114,101,118,111,108,118,101,114), 1, true) or _0xDDE9:find(string.char(115,104,101,114,105,102,102), 1, true) then
returnstring.char(80,105,115,116,111,108)end
returnstring.char(79,116,104,101,114)end
local function _0xF5C9(_0xC3A4)
local _0xC494 = _0xE797[_0xC3A4]
if _0xC494 then
for _0xBFE6, _0x98C3 in ipairs(_0xC494) do
if _0x98C3 and _0x98C3.Parent then _0x98C3:Destroy() end
end
end
_0xE797[_0xC3A4] = nil
end
local function _0xEA03()
for _0xC3A4 in pairs(_0xE797) do
_0xF5C9(_0xC3A4)
end
end
local function _0x944B(_0xC3A4)
if not _0x51FE or not _0xC3A4 or not _0xC3A4:IsA(string.char(84,111,111,108)) or not _0xC3A4.Parent then return end
local _0x8442 = _0xDC8E(_0xC3A4)
if _0x58D3 ~=string.char(65,108,108)and _0x8442 ~= _0x58D3 and _0xC3A4.Name ~= _0x58D3 then return end
_0xF5C9(_0xC3A4)
local _0xC494 = {}
for _0xBFE6, _0x3066 in ipairs(_0xC3A4:GetDescendants()) do
if _0x3066:IsA(string.char(66,97,115,101,80,97,114,116)) and _0x3066.Transparency < 1 then
local _0x98C3 = Instance.new(string.char(72,105,103,104,108,105,103,104,116))
_0x98C3.Name =string.char(67,108,117,109,115,121,87,101,97,112,111,110,67,104,97,109,115)_0x98C3.Adornee = _0x3066
_0x98C3.FillColor = _0x9046
_0x98C3.OutlineColor = _0x9046
_0x98C3.FillTransparency = math.clamp(_0x2536, 0, 1)
_0x98C3.OutlineTransparency = 0
_0x98C3.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
_0x98C3.Parent = _0x3066
_0xC494[#_0xC494 + 1] = _0x98C3
end
end
if #_0xC494 > 0 then _0xE797[_0xC3A4] = _0xC494 end
end
local function _0xC988()
_0xEA03()
if not _0x51FE then return end
local _0x8C06 = _0xD33F.Character
local _0xCBAB = _0xD33F:FindFirstChildOfClass(string.char(66,97,99,107,112,97,99,107))
for _0xBFE6, _0x1DD1 in ipairs({_0x8C06, _0xCBAB}) do
if _0x1DD1 then
for _0xBFE6, child in ipairs(_0x1DD1:GetChildren()) do
if child:IsA(string.char(84,111,111,108)) then _0x944B(child) end
end
end
end
end
local function _0xC42F(_0xAA59, model)
if not _0xD838[model] then _0xD838[model] = {} end
for _0xBFE6, backup in ipairs(_0xD838[model]) do
if backup.Original == _0xAA59 then return end
end
local _0x3E35, _0x8125 = pcall(function() return _0xAA59:Clone() end)
if _0x3E35 and _0x8125 then
_0x8125.Parent = nil
_0xD838[model][#_0xD838[model] + 1] = {Original = _0xAA59, Clone = _0x8125, Parent = _0xAA59.Parent}
end
pcall(function() _0xAA59:Destroy() end)
end
local function _0x0C48(model)
if not _0xBBD5 or not model or not model.Parent then return end
for _0xBFE6, _0xAA59 in ipairs(model:GetDescendants()) do
pcall(function()
if _0xAA59:IsA(string.char(72,105,103,104,108,105,103,104,116)) or _0xAA59:IsA(string.char(83,101,108,101,99,116,105,111,110,66,111,120)) then
if _0xAA59.Name ==string.char(67,108,117,109,115,121,67,104,97,114,97,99,116,101,114,67,104,97,109,115)or _0xAA59:IsA(string.char(83,101,108,101,99,116,105,111,110,66,111,120)) then _0xAA59:Destroy() end
elseif _0xAA59:IsA(string.char(83,117,114,102,97,99,101,65,112,112,101,97,114,97,110,99,101)) or _0xAA59:IsA(string.char(84,101,120,116,117,114,101)) or _0xAA59:IsA(string.char(68,101,99,97,108)) or _0xAA59:IsA(string.char(87,114,97,112,76,97,121,101,114)) or _0xAA59:IsA(string.char(87,114,97,112,84,97,114,103,101,116)) then
_0xC42F(_0xAA59, model)
elseif _0xAA59:IsA(string.char(83,104,105,114,116)) or _0xAA59:IsA(string.char(80,97,110,116,115)) or _0xAA59:IsA(string.char(83,104,105,114,116,71,114,97,112,104,105,99)) or _0xAA59:IsA(string.char(66,111,100,121,67,111,108,111,114,115)) or _0xAA59:IsA(string.char(67,104,97,114,97,99,116,101,114,77,101,115,104)) then
_0xC42F(_0xAA59, model)
elseif _0xAA59:IsA(string.char(83,112,101,99,105,97,108,77,101,115,104)) then
if not _0x6ADF[_0xAA59] then _0x6ADF[_0xAA59] = _0xAA59.TextureId end
_0xAA59.TextureId =""elseif _0xAA59:IsA(string.char(77,101,115,104,80,97,114,116)) then
if not _0x6ADF[_0xAA59] then _0x6ADF[_0xAA59] = _0xAA59.TextureID end
if not _0x65D9[_0xAA59] then
_0x65D9[_0xAA59] = {Material=_0xAA59.Material, Color=_0xAA59.Color, Transparency=_0xAA59.Transparency, LocalTransparencyModifier=_0xAA59.LocalTransparencyModifier, CastShadow=_0xAA59.CastShadow}
end
_0xAA59.Material = Enum.Material.ForceField
_0xAA59.Color = _0x530E
_0xAA59.Transparency = math.clamp(_0xE70F, 0, 1)
_0xAA59.LocalTransparencyModifier = 0
_0xAA59.CastShadow = false
_0xAA59.TextureID =""elseif _0xAA59:IsA(string.char(66,97,115,101,80,97,114,116)) and _0xAA59.Name ~=string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)then
if not _0x65D9[_0xAA59] then
_0x65D9[_0xAA59] = {Material=_0xAA59.Material, Color=_0xAA59.Color, Transparency=_0xAA59.Transparency, LocalTransparencyModifier=_0xAA59.LocalTransparencyModifier, CastShadow=_0xAA59.CastShadow}
end
_0xAA59.Material = Enum.Material.ForceField
_0xAA59.Color = _0x530E
_0xAA59.Transparency = math.clamp(_0xE70F, 0, 1)
_0xAA59.LocalTransparencyModifier = 0
_0xAA59.CastShadow = false
end
end)
end
end
local function _0xF83B()
for _0x3066, _0x6355 in pairs(_0x65D9) do
if _0x3066 and _0x3066.Parent then
pcall(function()
_0x3066.Material = _0x6355.Material
_0x3066.Color = _0x6355.Color
_0x3066.Transparency = _0x6355.Transparency
_0x3066.LocalTransparencyModifier = _0x6355.LocalTransparencyModifier
_0x3066.CastShadow = _0x6355.CastShadow
end)
end
end
for _0xAA59, oldTexture in pairs(_0x6ADF) do
if _0xAA59 and _0xAA59.Parent then pcall(function() _0xAA59.TextureId = oldTexture end) end
end
for model, backups in pairs(_0xD838) do
if model and model.Parent then
for _0xBFE6, _0xD660 in ipairs(backups) do
if _0xD660.Clone then pcall(function() _0xD660.Clone.Parent = _0xD660.Parent or model end) end
end
end
end
_0x65D9 = {}
_0x6ADF = {}
_0xD838 = {}
end
_0x828B = function()
_0xBBD5 = false
_0xF83B()
end
_0xF709(_0x7FDD.RenderStepped, function()
if _0xBBD5 and _0xD33F.Character then
_0x0C48(_0xD33F.Character)
end
end)
_0xF709(_0xD33F.CharacterAdded, function(_0x289D)
_0x65D9 = {}
_0x6ADF = {}
_0xD838 = {}
if _0xBBD5 then
task.defer(function()
if _0x289D and _0x289D.Parent then _0x0C48(_0x289D) end
end)
end
end)
local _0xF314 = _0x78B0(_0x27DE,string.char(87,101,97,112,111,110,32,67,104,97,109,115),string.char(77,111,100,101,108,115))
_0xF314:Toggle(string.char(87,101,97,112,111,110,32,67,104,97,109,115),string.char(115,105,110,103,108,101,32,99,104,97,109,115,32,102,111,114,32,116,104,101,32,115,101,108,101,99,116,101,100,32,119,101,97,112,111,110), function(_0x9B7B)
_0x51FE = _0x9B7B
_0xC988()
_0xE835(string.char(87,101,97,112,111,110,32,67,104,97,109,115), _0x9B7B andstring.char(101,110,97,98,108,101,100)orstring.char(100,105,115,97,98,108,101,100))
end)
_0xF314:Segmented(string.char(87,101,97,112,111,110), {string.char(65,108,108),string.char(80,105,115,116,111,108),string.char(75,110,105,102,101)},string.char(65,108,108), function(_0x8F5D)
_0x58D3 = _0x8F5D
_0xC988()
_0xE835(string.char(87,101,97,112,111,110,32,67,104,97,109,115), _0x8F5D)
end)
_0xF314:ColorPicker(string.char(67,111,108,111,114),string.char(119,101,97,112,111,110,32,99,104,97,109,115,32,99,111,108,111,114), _0x9046, function(_0xD51E)
_0x9046 = _0xD51E
if _0x51FE then _0xC988() end
end)
_0xF314:Slider(string.char(84,114,97,110,115,112,97,114,101,110,99,121), 0, 100, 35, function(_0xBE50)
_0x2536 = _0xBE50 / 100
if _0x51FE then _0xC988() end
end, function(_0xBE50) return _0xBE50 ..string.char(37)end)do
local _0x993B = false
local _0x7BEA =string.char(82,97,105,110)local _0x9C22, _0xD0CD, _0xAAD9
local function _0xBBD7()
if _0xAAD9 then
pcall(function() _0xAAD9:Disconnect() end)
_0xAAD9 = nil
end
if _0x9C22 then
pcall(function() _0x9C22:Destroy() end)
_0x9C22 = nil
end
_0xD0CD = nil
end
local function _0xB8EA()
_0xBBD7()
if not _0x993B or _0x7BEA ==string.char(79,102,102)then return end
local _0xDF16 = workspace.CurrentCamera
if not _0xDF16 then return end
local _0x3066 = Instance.new(string.char(80,97,114,116))
_0x3066.Name =string.char(67,108,117,109,115,121,95,76,111,99,97,108,87,101,97,116,104,101,114)_0x3066.Size = Vector3.new(100, 1, 100)
_0x3066.Anchored = true
_0x3066.CanCollide = false
_0x3066.CanTouch = false
_0x3066.CanQuery = false
_0x3066.Transparency = 1
_0x3066.CastShadow = false
_0x3066.CFrame = CFrame.new(_0xDF16.CFrame.Position + Vector3.new(0, 32, 0))
_0x3066.Parent = workspace
_0x9C22 = _0x3066
local _0x0623 = Instance.new(string.char(80,97,114,116,105,99,108,101,69,109,105,116,116,101,114))
_0x0623.Name =string.char(67,108,117,109,115,121,87,101,97,116,104,101,114,80,97,114,116,105,99,108,101,115)_0x0623.Texture =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,50,52,49,56,55,54,52,50,56)_0x0623.Enabled = true
_0x0623.LockedToPart = false
_0x0623.EmissionDirection = Enum.NormalId.Bottom
_0x0623.Shape = Enum.ParticleEmitterShape.Box
_0x0623.ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume
_0x0623.SpreadAngle = Vector2.new(10, 10)
if _0x7BEA ==string.char(82,97,105,110)then
_0x0623.Rate = 650
_0x0623.Lifetime = NumberRange.new(0.65, 1.0)
_0x0623.Speed = NumberRange.new(90, 115)
_0x0623.Acceleration = Vector3.new(0, -20, 0)
_0x0623.Size = NumberSequence.new(0.25)
_0x0623.Transparency = NumberSequence.new(0.15)
_0x0623.Color = ColorSequence.new(Color3.fromRGB(175, 200, 235))
_0x0623.Orientation = Enum.ParticleOrientation.VelocityParallel
else_0x0623.Rate = 220
_0x0623.Lifetime = NumberRange.new(3, 5)
_0x0623.Speed = NumberRange.new(7, 13)
_0x0623.Acceleration = Vector3.new(0, -2, 0)
_0x0623.SpreadAngle = Vector2.new(25, 25)
_0x0623.RotSpeed = NumberRange.new(-35, 35)
_0x0623.Size = NumberSequence.new(0.35)
_0x0623.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.1), NumberSequenceKeypoint.new(1, 0.4)})
_0x0623.Color = ColorSequence.new(Color3.fromRGB(255, 255, 255))
end
_0x0623.Parent = _0x3066
_0xD0CD = _0x0623
_0xAAD9 = _0x7FDD.RenderStepped:Connect(function()
if not _0x993B or not _0x9C22 or not _0x9C22.Parent then return end
local _0x8C89 = workspace.CurrentCamera
if _0x8C89 then
_0x9C22.CFrame = CFrame.new(_0x8C89.CFrame.Position + Vector3.new(0, 32, 0))
end
end)
end
local _0x8EB8 = _0x78B0(_0x27DE,string.char(87,101,97,116,104,101,114,32,69,102,102,101,99,116,115,32,194,183,32,83,104,97,100,101,114),string.char(83,104,97,100,101,114))
_0x8EB8:Toggle(string.char(69,110,97,98,108,101,32,87,101,97,116,104,101,114),string.char(116,117,114,110,32,108,111,99,97,108,32,119,101,97,116,104,101,114,32,112,97,114,116,105,99,108,101,115,32,111,110,32,111,114,32,111,102,102), function(_0x9B7B)
_0x993B = _0x9B7B == true
if _0x993B then _0xB8EA() else _0xBBD7() end
if _0xE835 then _0xE835(string.char(87,101,97,116,104,101,114), _0x993B and _0x7BEA orstring.char(79,102,102)) end
end)
_0x8EB8:Dropdown(string.char(87,101,97,116,104,101,114,32,84,121,112,101),string.char(99,104,111,111,115,101,32,82,97,105,110,44,32,83,110,111,119,44,32,111,114,32,79,102,102), {string.char(82,97,105,110),string.char(83,110,111,119),string.char(79,102,102)},string.char(82,97,105,110), function(_0x8F5D)
_0x7BEA = _0x8F5D
if _0x993B then
if _0x7BEA ==string.char(79,102,102)then _0xBBD7() else _0xB8EA() end
end
end)
local _0x245A = _0x087D
_0x087D = function()
_0x993B = false
_0xBBD7()
if _0x245A then pcall(_0x245A) end
end
end
local _0x7943 = _0x78B0(_0x27DE,string.char(83,104,97,100,101,114,115),string.char(83,104,97,100,101,114))
_0x7943:Toggle(string.char(67,104,97,114,97,99,116,101,114,32,67,104,97,109,115),string.char(99,108,101,97,110,32,70,111,114,99,101,70,105,101,108,100,32,99,104,97,109,115,32,111,110,32,121,111,117,114,32,99,104,97,114,97,99,116,101,114), function(_0x9B7B)
_0xBBD5 = _0x9B7B
if _0x9B7B then
if _0xD33F.Character then _0x0C48(_0xD33F.Character) end
else
_0xF83B()
end
_0xE835(string.char(67,104,97,114,97,99,116,101,114,32,67,104,97,109,115), _0x9B7B andstring.char(101,110,97,98,108,101,100)orstring.char(100,105,115,97,98,108,101,100))
end)
_0x7943:ColorPicker(string.char(67,111,108,111,114),string.char(99,104,97,114,97,99,116,101,114,32,99,104,97,109,115,32,99,111,108,111,114), _0x530E, function(_0xD51E)
_0x530E = _0xD51E
if _0xBBD5 and _0xD33F.Character then _0x0C48(_0xD33F.Character) end
end)
_0x7943:Slider(string.char(84,114,97,110,115,112,97,114,101,110,99,121), 0, 100, 0, function(_0xBE50)
_0xE70F = _0xBE50 / 100
if _0xBBD5 and _0xD33F.Character then _0x0C48(_0xD33F.Character) end
end, function(_0xBE50) return _0xBE50 ..string.char(37)end)do
local _0x18FD = {
enabled = false,
_0x9C5B = Color3.fromRGB(120, 75, 40),
_0xEE00 = {},
tweens = {},
originals = {},
transitionId = 0,
}
local function _0x9137(_0x3066)
if not _0x3066 or not _0x3066:IsA(string.char(66,97,115,101,80,97,114,116)) then return true endif _0x3066:FindFirstAncestorOfClass(string.char(84,111,111,108)) then return true endfor _0xBFE6, plr in ipairs(_0x9A21:GetPlayers()) do
local _0x289D = plr.Character
if _0x289D and (_0x3066 == _0x289D or _0x3066:IsDescendantOf(_0x289D)) then return true end
endlocal _0x7D74 = _0x3066
while _0x7D74 and _0x7D74 ~= workspace do
local _0xD6C1 = string.lower(_0x7D74.Name)
if _0x7D74.Name ==string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,104,97,104,101,100)or _0x7D74.Name ==string.char(67,108,117,109,115,121,83,99,114,105,112,116,68,114,111,110,101)or _0x7D74.Name ==string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,104,97,104,101,100,82,101,112,108,97,121,84,97,98,108,101,116)or _0x7D74.Name ==string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,104,97,104,101,100,82,101,99)or _0x7D74.Name ==string.char(67,108,117,109,115,121,95,68,101,97,116,104,67,108,111,110,101)or _0x7D74.Name ==string.char(67,108,117,109,115,121,95,68,101,97,116,104,80,97,114,116,105,99,108,101,115)or string.find(_0xD6C1,string.char(100,101,97,116,104,102,120), 1, true)
or string.find(_0xD6C1,string.char(100,101,97,116,104,95,101,102,102,101,99,116), 1, true)
or string.find(_0xD6C1,string.char(114,97,103,100,111,108,108), 1, true)
or string.find(_0xD6C1,string.char(99,111,114,112,115,101), 1, true) then
return true
endif _0x7D74:IsA(string.char(77,111,100,101,108)) and _0x7D74:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100)) then return true end
_0x7D74 = _0x7D74.Parent
end
return false
end
local function _0x656A()
for _0x3066, _0x3F0B in pairs(_0x18FD.tweens) do
pcall(function() _0x3F0B:Cancel() end)
_0x18FD.tweens[_0x3066] = nil
end
end
local function _0x8413(_0x3066)
if _0x9137(_0x3066) then return false end
if not _0x18FD.originals[_0x3066] then
local _0x522F = {
Color = _0x3066.Color,
Material = _0x3066.Material,
Transparency = _0x3066.Transparency,
Reflectance = _0x3066.Reflectance,
CastShadow = _0x3066.CastShadow,
TextureID = _0x3066:IsA(string.char(77,101,115,104,80,97,114,116)) and _0x3066.TextureID or nil,
children = {},
meshTextures = {},
}
for _0xBFE6, child in ipairs(_0x3066:GetChildren()) do
if child:IsA(string.char(83,117,114,102,97,99,101,65,112,112,101,97,114,97,110,99,101)) or child:IsA(string.char(84,101,120,116,117,114,101)) or child:IsA(string.char(68,101,99,97,108)) then
local _0x3E35, _0x8125 = pcall(function() return child:Clone() end)
if _0x3E35 and _0x8125 then table.insert(_0x522F.children, _0x8125) end
elseif child:IsA(string.char(83,112,101,99,105,97,108,77,101,115,104)) or child:IsA(string.char(66,108,111,99,107,77,101,115,104)) or child:IsA(string.char(67,121,108,105,110,100,101,114,77,101,115,104)) then
local _0x3E35, _0x0E85 = pcall(function() return child.TextureId end)
if _0x3E35 then _0x522F.meshTextures[child] = _0x0E85 end
end
end
_0x18FD.originals[_0x3066] = _0x522F
end
pcall(function()
if _0x3066:IsA(string.char(77,101,115,104,80,97,114,116)) then _0x3066.TextureID =""end
for _0xBFE6, child in ipairs(_0x3066:GetChildren()) do
if child:IsA(string.char(83,112,101,99,105,97,108,77,101,115,104)) or child:IsA(string.char(66,108,111,99,107,77,101,115,104)) or child:IsA(string.char(67,121,108,105,110,100,101,114,77,101,115,104)) then
pcall(function() child.TextureId =""end)
elseif child:IsA(string.char(83,117,114,102,97,99,101,65,112,112,101,97,114,97,110,99,101)) or child:IsA(string.char(84,101,120,116,117,114,101)) or child:IsA(string.char(68,101,99,97,108)) then
child:Destroy()
end
end
_0x3066.Material = Enum.Material.SmoothPlastic
end)
return true
end
local function _0x977D()
for _0x3066, _0x522F in pairs(_0x18FD.originals) do
pcall(function()
if _0x3066 and _0x3066.Parent then
_0x3066.Color = _0x522F.Color
_0x3066.Material = _0x522F.Material
_0x3066.Transparency = _0x522F.Transparency
_0x3066.Reflectance = _0x522F.Reflectance
_0x3066.CastShadow = _0x522F.CastShadow
if _0x3066:IsA(string.char(77,101,115,104,80,97,114,116)) and _0x522F.TextureID ~= nil then _0x3066.TextureID = _0x522F.TextureID end
for child, _0x0E85 in pairs(_0x522F.meshTextures) do
if child and child.Parent then child.TextureId = _0x0E85 end
end
for _0xBFE6, _0x8125 in ipairs(_0x522F.children) do
if _0x8125 then _0x8125.Parent = _0x3066 end
end
end
end)
_0x18FD.originals[_0x3066] = nil
end
_0x18FD.parts = {}
end
local function _0xB41B()
_0x18FD.parts = {}
for _0xBFE6, _0xAA59 in ipairs(workspace:GetDescendants()) do
if _0xAA59:IsA(string.char(66,97,115,101,80,97,114,116)) and _0x8413(_0xAA59) then
_0x18FD.parts[#_0x18FD.parts + 1] = _0xAA59
end
end
end
local function _0xE3AE(_0x9C5B)
if not _0x18FD.enabled then return end
_0x18FD.transitionId += 1
local _0xABD9 = _0x18FD.transitionId
_0x656A()local _0xE783 = 1
local _0x2D55 = 90
local _0x432A
_0x432A = _0x7FDD.Heartbeat:Connect(function()
if _0xABD9 ~= _0x18FD.transitionId or not _0x18FD.enabled then
_0x432A:Disconnect()
return
end
local _0x64B6 = math.min(_0xE783 + _0x2D55 - 1, #_0x18FD.parts)
for _0x60FA = _0xE783, _0x64B6 do
local _0x3066 = _0x18FD.parts[_0x60FA]
if _0x3066 and _0x3066.Parent and not _0x9137(_0x3066) then
local _0x3F0B = _0x85C3:Create(_0x3066, TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Color = _0x9C5B})
_0x18FD.tweens[_0x3066] = _0x3F0B
_0x3F0B.Completed:Connect(function()
if _0x18FD.tweens[_0x3066] == _0x3F0B then _0x18FD.tweens[_0x3066] = nil end
end)
_0x3F0B:Play()
end
end
_0xE783 = _0x64B6 + 1
if _0xE783 > #_0x18FD.parts then
_0x432A:Disconnect()
end
end)
end
local function _0xF351()
if not _0x18FD.enabled then return end
_0xB41B()
_0xE3AE(_0x18FD.color)
end
_0xF709(workspace.DescendantAdded, function(_0xAA59)
if not _0x18FD.enabled then return end
task.defer(function()
if not _0xAA59 or not _0xAA59.Parent then return end
if _0xAA59:IsA(string.char(66,97,115,101,80,97,114,116)) then
if _0x8413(_0xAA59) then
table.insert(_0x18FD.parts, _0xAA59)
local _0x3F0B = _0x85C3:Create(_0xAA59, TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Color = _0x18FD.color})
_0x3F0B:Play()
end
end
end)
end)
local _0x7CB1 = _0x78B0(_0x27DE,string.char(87,97,108,108,32,83,104,97,100,101,114,115),string.char(83,104,97,100,101,114))
_0x7CB1:Toggle(string.char(87,97,108,108,32,83,104,97,100,101,114),string.char(108,111,99,97,108,32,119,97,108,108,32,99,111,108,111,114,32,115,104,97,100,101,114,59,32,112,108,97,121,101,114,115,44,32,119,101,97,112,111,110,115,32,97,110,100,32,100,114,111,110,101,115,32,97,114,101,32,112,114,111,116,101,99,116,101,100), function(_0x9B7B)
_0x18FD.enabled = _0x9B7B
if _0x9B7B then
_0xF351()
_0xE835(string.char(87,97,108,108,32,83,104,97,100,101,114),string.char(101,110,97,98,108,101,100))
else
_0x18FD.transitionId += 1
_0x656A()
_0x977D()
_0xE835(string.char(87,97,108,108,32,83,104,97,100,101,114),string.char(100,105,115,97,98,108,101,100))
end
end)
_0x7CB1:ColorPicker(string.char(67,111,108,111,114),string.char(115,109,111,111,116,104,32,119,97,108,108,32,99,111,108,111,114), _0x18FD.color, function(_0xD51E)
_0x18FD.color = _0xD51E
if _0x18FD.enabled then _0xE3AE(_0xD51E) end
end)_0x9DA0 = function()
_0x18FD.enabled = false
_0x18FD.transitionId += 1
_0x656A()
_0x977D()
end
end
_0xF709(_0xD33F.CharacterAdded, function()
task.wait(0.25)
if _0x51FE then _0xC988() end
if _0xBBD5 and _0xD33F.Character then _0x0C48(_0xD33F.Character) end
end)
_0xF709(_0xD33F.ChildAdded, function(child)
if child:IsA(string.char(66,97,99,107,112,97,99,107)) then
task.wait(0.1)
if _0x51FE then _0xC988() end
end
end)
end
local _0x4408=_0x78B0(_0x27DE,string.char(68,101,97,116,104,32,69,102,102,101,99,116,115))
_0x4408:Toggle(string.char(68,101,97,116,104,32,69,102,102,101,99,116,115),string.char(110,101,119,32,88,45,82,97,121,32,100,101,97,116,104,32,118,105,115,117,97,108,115),function(_0x9B7B)
_0xFDD7.on=_0x9B7B
if not _0x9B7B then _0x95C6() end
_0xE835(string.char(68,101,97,116,104,32,69,102,102,101,99,116,115,58,32)..(_0x9B7B andstring.char(79,110)orstring.char(79,102,102)),_0x9B7B andstring.char(101,110,97,98,108,101,100)orstring.char(100,105,115,97,98,108,101,100))
end)
_0x4408:Segmented(string.char(69,102,102,101,99,116),{string.char(71,104,111,115,116),string.char(68,111,116,115),string.char(79,102,102)},string.char(71,104,111,115,116),function(_0xBE50) _0xFDD7.effect=_0xBE50 end)
_0x4408:Segmented(string.char(84,97,114,103,101,116),{string.char(69,118,101,114,121,111,110,101),string.char(77,117,114,100,101,114,101,114)},string.char(69,118,101,114,121,111,110,101),function(_0xBE50) _0xFDD7.target=_0xBE50 end)
_0x4408:Slider(string.char(68,117,114,97,116,105,111,110),1,8,4,function(_0xBE50) _0xFDD7.duration=_0xBE50 end,function(_0xBE50) return string.format(string.char(37,46,49,102,115),_0xBE50) end)
enddo
local _0x1077 = {
[string.char(80,117,114,112,108,101,32,78,101,98,117,108,97)] = {string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,51,54,57,52,57,53,50,56,54,55),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,51,54,57,52,57,54,56,51,50,53),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,51,54,57,52,57,56,48,54,53,52),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,51,54,57,52,57,57,56,49,49,51),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,51,54,57,53,48,48,50,55,48,48),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,51,54,57,53,48,48,55,49,48,51),3000},
[string.char(82,101,100,32,78,105,103,104,116)] = {string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,52,48,49,54,54,52,56,51,57),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,52,48,49,54,54,52,56,54,50),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,52,48,49,54,54,52,57,54,48),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,52,48,49,54,54,52,56,56,49),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,52,48,49,54,54,52,57,48,49),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,52,48,49,54,54,52,57,51,54),3000},
[string.char(71,97,108,97,120,121)] = {string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,53,57,52,53,52,50,57,57),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,53,57,52,53,52,50,57,54),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,53,57,52,53,52,50,57,51),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,53,57,52,53,52,50,56,54),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,53,57,52,53,52,51,48,48),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,53,57,52,53,52,50,56,56),5000},
[string.char(66,108,111,115,115,111,109)] = {string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,50,55,49,48,52,50,53,49,54),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,50,55,49,48,55,55,50,52,51),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,50,55,49,48,52,50,53,53,54),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,50,55,49,48,52,50,51,49,48),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,50,55,49,48,52,50,52,54,55),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,50,55,49,48,55,55,57,53,56),3000},
[string.char(74,117,110,103,108,101)] = {string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,50,49,52,51,57,57,56,57,49),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,50,49,52,51,57,57,56,56,55),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,50,49,52,51,57,57,56,57,52),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,50,49,52,52,48,53,54,54,56),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,50,49,52,51,57,57,56,57,57),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,50,49,52,51,57,57,56,56,57),3000},
[string.char(70,111,103,103,121)] = {string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,51,55,48,55,49,55,50,52,52),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,51,55,48,55,49,55,51,51,54),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,51,55,48,55,49,55,52,51,56),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,51,55,48,55,49,55,53,54,55),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,51,55,48,55,49,55,54,57,56),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,51,55,48,55,49,55,55,56,50),1000},
[string.char(83,117,110,115,101,116)] = {string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,54,48,48,56,51,48,52,52,54),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,54,48,48,56,51,49,54,51,53),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,54,48,48,56,51,48,52,52,54),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,54,48,48,56,51,48,52,52,54),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,54,48,48,56,51,48,52,52,54),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,54,48,48,56,51,49,54,51,53),3000},
[string.char(83,116,97,114,114,121,32,78,105,103,104,116)] = {string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,50,48,54,52,49,48,55),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,50,48,54,52,49,53,50),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,50,48,54,52,49,50,49),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,50,48,54,51,57,56,52),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,50,48,54,52,49,49,53),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,50,48,54,52,49,52,53),8000},
}
local _0x53F2, _0xDEE1, _0x5C1D = false, {}, nil
local _0x3FB8 =string.char(80,105,99,116,117,114,101,115)local _0x13B9 =string.char(80,117,114,112,108,101,32,78,101,98,117,108,97)local _0xD2F0 = Color3.fromRGB(200, 0, 255)
local _0xE36A
local function _0xD198()
for _0xBFE6, _0x6355 in ipairs(_0xE922:GetChildren()) do
if _0x6355:IsA(string.char(83,107,121)) and _0x6355 ~= _0x5C1D then
pcall(function() _0x6355:Destroy() end)
end
end
end
local _0x6645 = {}
local _0x5373 = Color3.fromRGB(0, 115, 255)
local _0x6A95 = 250
local function _0x6C37()
for _0xBFE6, _0x3066 in ipairs(_0x6645) do pcall(function() _0x3066:Destroy() end) end
table.clear(_0x6645)
end
local function _0x35A8()
_0x6C37()
local _0x819A, _0x52F8 = _0x6A95, _0x6A95 * 2
local _0x2C7E = {Vector3.new(0,_0x819A,0),Vector3.new(0,-_0x819A,0),Vector3.new(0,0,-_0x819A),Vector3.new(0,0,_0x819A),Vector3.new(-_0x819A,0,0),Vector3.new(_0x819A,0,0)}
local _0x090C = {Vector3.new(_0x52F8,1,_0x52F8),Vector3.new(_0x52F8,1,_0x52F8),Vector3.new(_0x52F8,_0x52F8,1),Vector3.new(_0x52F8,_0x52F8,1),Vector3.new(1,_0x52F8,_0x52F8),Vector3.new(1,_0x52F8,_0x52F8)}
local _0x4245 = workspace.CurrentCamera
local _0xF89E = _0x4245 and _0x4245.CFrame.Position or Vector3.zero
for _0x60FA = 1, 6 do
local _0x3066 = Instance.new(string.char(80,97,114,116))
_0x3066.Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,95,77,77,50,67,117,98,101,87,97,108,108).. _0x60FA
_0x3066.Material = Enum.Material.Neon
_0x3066.Anchored = true
_0x3066.CanCollide = false
_0x3066.CanTouch = false
_0x3066.CanQuery = false
_0x3066.CastShadow = false
_0x3066.Size = _0x090C[_0x60FA]
_0x3066.Color = _0x5373
_0x3066.CFrame = CFrame.new(_0xF89E + _0x2C7E[_0x60FA])
_0x3066.Parent = workspace
table.insert(_0x6645, _0x3066)
end
end
local function _0x5C43()
_0x6C37()
if _0x5C1D then
pcall(function() _0x5C1D:Destroy() end)
_0x5C1D = nil
end
end
local function _0x6F82()
if not _0x53F2 then return end
_0x5C43()
if _0x3FB8 ~=string.char(80,105,99,116,117,114,101,115)then
_0xD198()
end
if _0x3FB8 ==string.char(80,105,99,116,117,114,101,115)then
local _0x819A = _0x1077[_0x13B9] or _0x1077[string.char(80,117,114,112,108,101,32,78,101,98,117,108,97)]
_0x5C1D = Instance.new(string.char(83,107,121))
_0x5C1D.Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,95,83,107,121,98,111,120)_0x5C1D.SkyboxBk = _0x819A[1]
_0x5C1D.SkyboxDn = _0x819A[2]
_0x5C1D.SkyboxFt = _0x819A[3]
_0x5C1D.SkyboxLf = _0x819A[4]
_0x5C1D.SkyboxRt = _0x819A[5]
_0x5C1D.SkyboxUp = _0x819A[6]
_0x5C1D.StarCount = _0x819A[7]
_0x5C1D.CelestialBodiesShown = false
_0x5C1D.Parent = _0xE922
_0xD198()
else_0x35A8()
end
end
local function _0xCCA4(_0x9B7B)
if _0x9B7B and not _0x53F2 then
table.clear(_0xDEE1)
for _0xBFE6, _0x6355 in ipairs(_0xE922:GetChildren()) do
if _0x6355:IsA(string.char(83,107,121)) then table.insert(_0xDEE1, _0x6355:Clone()) end
end
_0x53F2 = true
elseif not _0x9B7B and _0x53F2 then
_0x53F2 = false
if _0xE36A then pcall(function() _0xE36A:Disconnect() end) _0xE36A=nil end
_0x5C43()
for _0xBFE6, _0x6355 in ipairs(_0xDEE1) do pcall(function() _0x6355.Parent = _0xE922 end) end
table.clear(_0xDEE1)
return
end
_0x6F82()
if _0x53F2 and not _0xE36A then
_0xE36A = _0xE922.ChildAdded:Connect(function(_0xAA59)
if _0x53F2 and _0xAA59:IsA(string.char(83,107,121)) and _0xAA59 ~= _0x5C1D then
task.defer(function()
if _0x53F2 and _0xAA59.Parent then pcall(function() _0xAA59:Destroy() end) end
end)
end
end)
end
end
_0xD7DE = function()
_0x53F2 = false
if _0xE36A then pcall(function() _0xE36A:Disconnect() end) _0xE36A=nil end
_0x5C43()
for _0xBFE6, _0xAA59 in ipairs(_0xE922:GetChildren()) do
if _0xAA59:IsA(string.char(83,107,121)) and _0xAA59.Name ==string.char(67,108,117,109,115,121,83,99,114,105,112,116,95,83,107,121,98,111,120)then
pcall(function() _0xAA59:Destroy() end)
end
end
for _0xBFE6, _0x6355 in ipairs(_0xDEE1) do
if _0x6355 and _0x6355.Parent == nil then pcall(function() _0x6355.Parent = _0xE922 end) end
end
table.clear(_0xDEE1)
end
_0xF709(_0x7FDD.Heartbeat, function()
if not _0x53F2 then return end
if _0x3FB8 ==string.char(80,105,99,116,117,114,101,115)and (not _0x5C1D or not _0x5C1D.Parent) then
_0x6F82()
elseif _0x3FB8 ==string.char(67,117,98,101)then
local _0x4245 = workspace.CurrentCamera
if not _0x4245 or #_0x6645 < 6 then
_0x35A8()
else
local _0xF89E, _0x819A = _0x4245.CFrame.Position, _0x6A95
local _0x2C7E = {Vector3.new(0,_0x819A,0),Vector3.new(0,-_0x819A,0),Vector3.new(0,0,-_0x819A),Vector3.new(0,0,_0x819A),Vector3.new(-_0x819A,0,0),Vector3.new(_0x819A,0,0)}
for _0x60FA, _0x3066 in ipairs(_0x6645) do
if _0x3066 and _0x3066.Parent then
_0x3066.Color = _0x5373
_0x3066.CFrame = CFrame.new(_0xF89E + _0x2C7E[_0x60FA])
end
end
end
end
end)
local _0x9A8E = _0x78B0(_0x27DE,string.char(83,107,121,98,111,120),string.char(77,111,100,101,108,115))
_0x9A8E:Toggle(string.char(83,107,121,98,111,120),string.char(112,105,99,116,117,114,101,115,32,111,114,32,116,104,101,32,77,77,50,32,99,117,98,101), function(_0xBE50)
_0xCCA4(_0xBE50)
_0xE835(string.char(83,107,121,98,111,120), _0xBE50 and _0x3FB8 orstring.char(100,105,115,97,98,108,101,100))
end)
_0x9A8E:Select(string.char(84,121,112,101),string.char(99,104,111,111,115,101,32,112,105,99,116,117,114,101,115,32,111,114,32,116,104,101,32,77,77,50,32,99,117,98,101), {string.char(80,105,99,116,117,114,101,115),string.char(67,117,98,101)}, _0x3FB8, function(_0xBE50)
_0x3FB8 = _0xBE50
if _0x53F2 then _0xCCA4(true) end
_0xE835(string.char(83,107,121,98,111,120), _0xBE50)
end)
_0x9A8E:Select(string.char(80,105,99,116,117,114,101),string.char(99,104,111,111,115,101,32,116,104,101,32,115,107,121,32,112,105,99,116,117,114,101), {string.char(80,117,114,112,108,101,32,78,101,98,117,108,97),string.char(82,101,100,32,78,105,103,104,116),string.char(71,97,108,97,120,121),string.char(66,108,111,115,115,111,109),string.char(74,117,110,103,108,101),string.char(70,111,103,103,121),string.char(83,117,110,115,101,116),string.char(83,116,97,114,114,121,32,78,105,103,104,116)}, _0x13B9, function(_0xBE50)
_0x13B9 = _0xBE50
if _0x53F2 and _0x3FB8 ==string.char(80,105,99,116,117,114,101,115)then _0xCCA4(true) end
_0xE835(string.char(83,107,121,98,111,120), _0xBE50)
end)
_0x9A8E:ColorPicker(string.char(67,117,98,101,32,67,111,108,111,114),string.char(99,104,111,111,115,101,32,116,104,101,32,99,111,108,111,114,32,102,111,114,32,116,104,101,32,77,77,50,32,99,117,98,101), _0xD2F0, function(_0xD51E)
_0xD2F0 = _0xD51E
_0x5373 = _0xD51E
if _0x53F2 and _0x3FB8 ==string.char(67,117,98,101)then
for _0xBFE6, _0x3066 in ipairs(_0x6645) do
if _0x3066 and _0x3066.Parent then _0x3066.Color = _0xD51E end
end
end
end)
enddo
local _0x9807 = {
White = Color3.fromRGB(235,235,235),
Orange = Color3.fromRGB(255,140,0),
Red = Color3.fromRGB(255,70,70),
Purple = Color3.fromRGB(190,100,255),
Blue = Color3.fromRGB(90,160,255),
Green = Color3.fromRGB(90,255,150),
}
local _0xBEE0 = _0x9807.White
local _0x5EAC = false
local _0xDE7B = 50
local _0x0E2F = nil
local function _0x73E9(_0x9B7B)
if _0x9B7B and not _0x5EAC then
_0x0E2F = {_0xE922.FogColor, _0xE922.FogStart, _0xE922.FogEnd}
_0x5EAC = true
elseif not _0x9B7B and _0x5EAC then
_0x5EAC = false
if _0x0E2F then
_0xE922.FogColor = _0x0E2F[1]
_0xE922.FogStart = _0x0E2F[2]
_0xE922.FogEnd = _0x0E2F[3]
end
return
end
if _0x5EAC then
_0xE922.FogColor = _0xBEE0
_0xE922.FogStart = 0
_0xE922.FogEnd = _0xDE7B
end
end
local _0x3B2D = _0x78B0(_0x27DE,string.char(70,111,103),string.char(77,111,100,101,108,115))
_0x3B2D:Toggle(string.char(70,111,103),string.char(108,111,99,97,108,32,102,111,103,32,101,102,102,101,99,116), function(_0xBE50)
_0x73E9(_0xBE50)
_0xE835(string.char(70,111,103), _0xBE50 andstring.char(101,110,97,98,108,101,100)orstring.char(100,105,115,97,98,108,101,100))
end)
_0x3B2D:Segmented(string.char(67,111,108,111,114), {string.char(87,104,105,116,101),string.char(79,114,97,110,103,101),string.char(82,101,100),string.char(80,117,114,112,108,101),string.char(66,108,117,101),string.char(71,114,101,101,110)},string.char(87,104,105,116,101), function(_0xBE50)
_0xBEE0 = _0x9807[_0xBE50] or _0x9807.White
if _0x5EAC then
_0xE922.FogColor = _0xBEE0
end
end)
_0x3B2D:Slider(string.char(68,105,115,116,97,110,99,101), 25, 1500, _0xDE7B, function(_0xBE50)
_0xDE7B = math.floor(_0xBE50 + 0.5)
if _0x5EAC then
_0xE922.FogEnd = _0xDE7B
end
end, function(_0xBE50)
return tostring(math.floor(_0xBE50 + 0.5))
end)
_0x4EFE = function()
_0x5EAC = false
if _0x0E2F then
pcall(function()
_0xE922.FogColor = _0x0E2F[1]
_0xE922.FogStart = _0x0E2F[2]
_0xE922.FogEnd = _0x0E2F[3]
end)
end
_0x0E2F = nil
end
local _0x18C4 = false
local _0x1A60 = Color3.fromRGB(255,70,70)
local _0x2CCA = 7
local _0x610D = true
local _0x678F = 0
local _0x477D = {
Red=Color3.fromRGB(255,70,70),
Orange=Color3.fromRGB(255,140,0),
Purple=Color3.fromRGB(190,100,255),
White=Color3.fromRGB(255,255,255),
Blue=Color3.fromRGB(90,160,255),
Green=Color3.fromRGB(90,255,150),
}
_0xF709(_0x7FDD.Heartbeat, function()
if not _0x18C4 then
_0x610D = true
return
end
local _0x8C06 = _0xD33F.Character
local _0xBD98 = _0x8C06 and _0x8C06:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0xB7F6 = _0x8C06 and _0x8C06:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0xBD98 or not _0xB7F6 then return end
local _0xA111 = _0xBD98.FloorMaterial ~= Enum.Material.Air
if _0xA111 then _0x610D = true end
if not _0xA111 and _0x610D and os.clock() - _0x678F >= 0.4 then
_0x678F = os.clock()
_0x610D = false
local _0xFF78 = RaycastParams.new()
_0xFF78.FilterType = Enum.RaycastFilterType.Exclude
_0xFF78.FilterDescendantsInstances = {_0x8C06}
local _0x6F00 = workspace:Raycast(_0xB7F6.Position, Vector3.new(0,-10,0), _0xFF78)
local _0xD4A2 = _0x6F00 and _0x6F00.Position.Y + 0.05 or _0xB7F6.Position.Y - 3
local _0xFD8E = Instance.new(string.char(80,97,114,116))
_0xFD8E.Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,95,74,117,109,112,82,105,110,103)_0xFD8E.Shape = Enum.PartType.Cylinder
_0xFD8E.Size = Vector3.new(0.05, 1.5, 1.5)
_0xFD8E.CFrame = CFrame.new(_0xB7F6.Position.X, _0xD4A2, _0xB7F6.Position.Z) * CFrame.Angles(0,0,math.rad(90))
_0xFD8E.Anchored = true
_0xFD8E.CanCollide = false
_0xFD8E.CanQuery = false
_0xFD8E.CanTouch = false
_0xFD8E.Transparency = 0.15
_0xFD8E.Material = Enum.Material.Neon
_0xFD8E.Color = _0x1A60
_0xC896(_0xFD8E, 0.7)
_0xFD8E.Parent = workspace
local _0x3F0B = _0x85C3:Create(
_0xFD8E,
TweenInfo.new(0.9, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
{Size = Vector3.new(0.05, _0x2CCA, _0x2CCA), Transparency = 1}
)
_0x3F0B:Play()
task.delay(0.95, function()
if _0xFD8E.Parent then _0xFD8E:Destroy() end
end)
end
end)
local _0x80A7 = _0x78B0(_0x27DE,string.char(74,117,109,112,32,69,102,102,101,99,116),string.char(77,111,100,101,108,115))
_0x80A7:Toggle(string.char(74,117,109,112,32,82,105,110,103),string.char(111,108,100,32,67,108,117,109,115,121,32,106,117,109,112,32,101,102,102,101,99,116), function(_0xBE50)
_0x18C4 = _0xBE50
end)
_0x80A7:Segmented(string.char(67,111,108,111,114), {string.char(82,101,100),string.char(79,114,97,110,103,101),string.char(80,117,114,112,108,101),string.char(87,104,105,116,101),string.char(66,108,117,101),string.char(71,114,101,101,110)},string.char(82,101,100), function(_0xBE50)
_0x1A60 = _0x477D[_0xBE50] or _0x477D.Red
end)
_0x80A7:Slider(string.char(82,97,100,105,117,115), 2, 18, _0x2CCA, function(_0xBE50)
_0x2CCA = math.floor(_0xBE50 + 0.5)
end, function(_0xBE50)
return tostring(math.floor(_0xBE50 + 0.5))
end)
end
local _0x4783 = _0xD3DD.page
_0xD3DD.custom = true
local _0x178B = {}
local _0x0756 = {}
local _0xB542
local _0x70B3
local _0x3E36, _0x256F
local _0xEB75 = 0
local function _0xA34B(_0x0D18)
if _0xBF86(_0x0D18,string.char(75,110,105,102,101)) then
returnstring.char(77,117,114,100,101,114,101,114), Color3.fromRGB(255, 80, 80)
end
if _0xBF86(_0x0D18,string.char(71,117,110)) then
returnstring.char(83,104,101,114,105,102,102), Color3.fromRGB(80, 160, 255)
end
local _0x439E = _0x0756[_0x0D18.Name]
if _0x439E ==string.char(77,117,114,100,101,114,101,114)then
returnstring.char(77,117,114,100,101,114,101,114), Color3.fromRGB(255, 80, 80)
end
if _0x439E ==string.char(83,104,101,114,105,102,102)or _0x439E ==string.char(72,101,114,111)then
return _0x439E, Color3.fromRGB(80, 160, 255)
end
returnstring.char(73,110,110,111,99,101,110,116), _0x08BE
end
local function _0xDB8F()
_0x70B3 = nil
local _0xBD98 = _0xA6D4()
local _0x4245 = workspace.CurrentCamera
if _0xBD98 and _0x4245 then
_0x4245.CameraType = Enum.CameraType.Custom
_0x4245.CameraSubject = _0xBD98
end
end
local function _0x9F91(_0xA213)
if _0x70B3 == _0xA213 then
_0xDB8F()
_0xE835(string.char(83,112,101,99,116,97,116,101),string.char(98,97,99,107,32,116,111,32,121,111,117,114,32,99,104,97,114,97,99,116,101,114))
return
end
local _0x8C06 = _0xA213.Character
local _0xBD98 = _0x8C06 and _0x8C06:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if not _0xBD98 then
_0xE835(string.char(83,112,101,99,116,97,116,101),string.char(112,108,97,121,101,114,32,105,115,32,110,111,116,32,97,108,105,118,101))
return
end
_0x70B3 = _0xA213
workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
workspace.CurrentCamera.CameraSubject = _0xBD98
_0xE835(string.char(83,112,101,99,116,97,116,101), _0xA213.DisplayName)
end
local function _0xBEDA()
_0x3E36 = nil
if _0x256F then
pcall(function()
_0x256F:Stop(0.15)
_0x256F:Destroy()
end)
_0x256F = nil
end
end
local function _0xCD6D(_0xA213)
if _0x3E36 == _0xA213 then
_0xBEDA()
_0xE835(string.char(66,97,110,103),string.char(115,116,111,112,112,101,100))
return
end
local _0x98C2 = _0xA213.Character
local _0xA267 = _0x98C2 and _0x98C2:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0x3B1F = _0x98C2 and _0x98C2:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xBD98 = _0xA6D4()
if not (_0xA267 and _0xA267.Health > 0 and _0x3B1F and _0xBD98 and _0xBD98.Health > 0) then
_0xE835(string.char(66,97,110,103),string.char(112,108,97,121,101,114,32,105,115,32,110,111,116,32,97,118,97,105,108,97,98,108,101))
return
end
_0xBEDA()
_0x3E36 = _0xA213
_0xEB75 = os.clock()
local _0x92FF = Instance.new(string.char(65,110,105,109,97,116,105,111,110))
_0x92FF.AnimationId = _0xBD98.RigType == Enum.HumanoidRigType.R15 andstring.char(114,98,120,97,115,115,101,116,105,100,58,47,47,53,57,49,56,55,50,54,54,55,52)orstring.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,52,56,56,52,48,51,55,49)local _0x3E35, _0xB86F = pcall(function()
return (_0xBD98:FindFirstChildOfClass(string.char(65,110,105,109,97,116,111,114)) or _0xBD98):LoadAnimation(_0x92FF)
end)
_0x92FF:Destroy()
if _0x3E35 and _0xB86F then
_0xB86F.Priority = Enum.AnimationPriority.Action4
_0xB86F.Looped = true
_0xB86F:Play(0.15)
_0x256F = _0xB86F
end
_0xE835(string.char(66,97,110,103), _0xA213.DisplayName ..string.char(32,45,32,112,114,101,115,115,32,97,103,97,105,110,32,116,111,32,115,116,111,112))
end
_0xF709(_0x7FDD.Heartbeat, function()
if _0x70B3 then
local _0x8C06 = _0x70B3.Character
local _0xBD98 = _0x8C06 and _0x8C06:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if not _0xBD98 or _0xBD98.Health <= 0 then
_0xDB8F()
end
end
if not _0x3E36 then
return
end
local _0xF9CE, _0x98C2 = _0xD33F.Character, _0x3E36.Character
local _0x56FE = _0xF9CE and _0xF9CE:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0x47CD = _0xF9CE and _0xF9CE:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0x3B1F = _0x98C2 and _0x98C2:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xA267 = _0x98C2 and _0x98C2:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if not (_0x56FE and _0x47CD and _0x47CD.Health > 0 and _0x3B1F and _0xA267 and _0xA267.Health > 0) then
_0xBEDA()
return
end
local _0xB723 = math.sin((os.clock() - _0xEB75) * 12) * 0.18
_0x56FE.CFrame = _0x3B1F.CFrame * CFrame.new(0, 0, 1.15 + _0xB723)
_0x56FE.AssemblyLinearVelocity = Vector3.zero
end)
local function _0xF56F(_0x4FEA, _0xD85E, _0xA051, width, callback)
local _0x82AA = _0x81A6(string.char(84,101,120,116,66,117,116,116,111,110), {
Text = _0xD85E,
Font = Enum.Font.GothamBold,
TextSize = 9,
TextColor3 = _0x9CF4,
BackgroundColor3 = _0xD583,
AutoButtonColor = false,
Position = UDim2.fromOffset(_0xA051, 54),
Size = UDim2.fromOffset(width, 22),
Parent = _0x4FEA,
})
_0x46F9(_0x82AA, 6)
local _0x6D2C = _0x39A4(_0x82AA)
_0xF709(_0x82AA.MouseEnter, function()
_0x0ED9(_0x82AA, 0.15, { BackgroundColor3 = _0x9245, TextColor3 = _0x0333 })
_0x0ED9(_0x6D2C, 0.15, { Color = _0x0333 })
end)
_0xF709(_0x82AA.MouseLeave, function()
_0x0ED9(_0x82AA, 0.15, { BackgroundColor3 = _0xD583, TextColor3 = _0x9CF4 })
_0x0ED9(_0x6D2C, 0.15, { Color = _0x7988 })
end)
_0xF709(_0x82AA.MouseButton1Click, function()
task.spawn(callback)
end)
return _0x82AA
end
local function _0xAD88()
for _0xBFE6, _0xFCDE in pairs(_0x178B) do
_0xFCDE.frame:Destroy()
end
table.clear(_0x178B)
local _0xC494 = _0x9A21:GetPlayers()
table.sort(_0xC494, function(_0x7D74, _0xBB9C)
return _0x7D74.DisplayName:lower() < _0xBB9C.DisplayName:lower()
end)
local _0xD4A2 = 48
for _0xBFE6, _0xA213 in ipairs(_0xC494) do
if _0xA213 == _0xD33F then
continue
end
local _0xEF1C = _0x81A6(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(0, _0xD4A2),
Size = UDim2.new(1, -8, 0, 84),
BackgroundColor3 = _0x2CF9,
Parent = _0x4783,
})
_0x46F9(_0xEF1C, 9)
_0x39A4(_0xEF1C)
local _0xA283 = _0x81A6(string.char(73,109,97,103,101,76,97,98,101,108), {
Image ="",
BackgroundColor3 = _0x3922,
AnchorPoint = Vector2.new(1, 0.5),
Position = UDim2.new(1, -8, 0.5, 0),
Size = UDim2.fromOffset(66, 66),
Parent = _0xEF1C,
})
_0x46F9(_0xA283, 9)
_0x39A4(_0xA283)
_0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text = _0xA213.DisplayName,
Font = Enum.Font.GothamBold,
TextSize = 14,
TextColor3 = _0x0333,
TextXAlignment = Enum.TextXAlignment.Left,
TextTruncate = Enum.TextTruncate.AtEnd,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(12, 7),
Size = UDim2.new(1, -240, 0, 17),
Parent = _0xEF1C,
})
_0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(64).. _0xA213.Name,
Font = Enum.Font.Gotham,
TextSize = 10,
TextColor3 = _0xEE3F,
TextXAlignment = Enum.TextXAlignment.Left,
TextTruncate = Enum.TextTruncate.AtEnd,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(12, 25),
Size = UDim2.new(1, -240, 0, 14),
Parent = _0xEF1C,
})
local _0xC474 = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(73,110,110,111,99,101,110,116),
Font = Enum.Font.GothamBold,
TextSize = 10,
TextColor3 = _0x08BE,
TextXAlignment = Enum.TextXAlignment.Right,
BackgroundTransparency = 1,
Position = UDim2.new(1, -218, 0, 10),
Size = UDim2.fromOffset(130, 16),
Parent = _0xEF1C,
})
_0xF56F(_0xEF1C,string.char(70,76,73,78,71), 12, 54, function()
if _0xF027 then
_0xF027(_0xA213)
end
end)
_0xF56F(_0xEF1C,string.char(83,80,69,67,84,65,84,69), 72, 68, function()
_0x9F91(_0xA213)
end)
_0xF56F(_0xEF1C,string.char(66,65,78,71), 146, 50, function()
_0xCD6D(_0xA213)
end)
_0xF56F(_0xEF1C,string.char(75,73,76,76), 202, 48, function()
if _0xBF86(_0xD33F,string.char(75,110,105,102,101)) and _0xC638 then
_0xC638(_0xA213)
elseif _0xBF86(_0xD33F,string.char(71,117,110)) and _0x3C30 then
_0x3C30(_0xA213)
else
_0xE835(string.char(75,105,108,108),string.char(121,111,117,32,110,101,101,100,32,116,104,101,32,107,110,105,102,101,32,111,114,32,103,117,110))
end
end)
_0x178B[_0xA213] = { _0xEF1C = _0xEF1C, _0x439E = _0xC474 }
task.spawn(function()
local _0x3E35, _0xDC93 = pcall(_0x9A21.GetUserThumbnailAsync, _0x9A21, _0xA213.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150)
if _0x3E35 and _0xEF1C.Parent then
_0xA283.Image = _0xDC93
end
end)
_0xD4A2 += 92
end
_0x4783.CanvasSize = UDim2.fromOffset(0, _0xD4A2 + 8)
end
_0xF709(_0x9A21.PlayerAdded, _0xAD88)
_0xF709(_0x9A21.PlayerRemoving, function(leaving)
if _0x70B3 == leaving then
_0xDB8F()
end
if _0x3E36 == leaving then
_0xBEDA()
end
task.defer(_0xAD88)
end)
task.spawn(function()
while _0x4696.Parent do
if _0x6EAD == _0xD3DD then
if not _0xB542 or not _0xB542.Parent then
_0xB542 = game:GetService(string.char(82,101,112,108,105,99,97,116,101,100,83,116,111,114,97,103,101)):FindFirstChild(string.char(71,101,116,80,108,97,121,101,114,68,97,116,97), true)
end
if _0xB542 and _0xB542:IsA(string.char(82,101,109,111,116,101,70,117,110,99,116,105,111,110)) then
local _0x3E35, _0xC352 = pcall(_0xB542.InvokeServer, _0xB542)
if _0x3E35 and type(_0xC352) ==string.char(116,97,98,108,101)then
local _0xBE1C = {}
for _0xBD62, _0xD38E in pairs(_0xC352) do
if type(_0xD38E) ==string.char(116,97,98,108,101)and type(_0xD38E.Role) ==string.char(115,116,114,105,110,103)and not _0xD38E.Dead and not _0xD38E.Killed then
_0xBE1C[_0xBD62] = _0xD38E.Role
end
end
_0x0756 = _0xBE1C
end
end
for _0xA213, _0xFCDE in pairs(_0x178B) do
if _0xA213.Parent and _0xFCDE.frame.Parent then
local _0x439E, _0x9C5B = _0xA34B(_0xA213)
_0xFCDE.role.Text = _0x439E
_0xFCDE.role.TextColor3 = _0x9C5B
end
end
end
task.wait(1)
end
end)
_0xAD88()
_0xE929 = function()
_0xDB8F()
_0xBEDA()
end
end
do
local _0x60F3 = UDim2.new(0.55, 0, 0, 0)
local _0x88B3 = _0x81A6(string.char(70,114,97,109,101), {
Name =string.char(83,101,97,114,99,104),
AnchorPoint = Vector2.new(0.5, 0),
Position = UDim2.new(0.5, 0, 1, 10),
Size = _0x60F3 + UDim2.fromOffset(0, 32),
BackgroundColor3 = _0xD583,
ZIndex = 20,
Parent = _0x2D1C,
})
_0x46F9(_0x88B3, 10)
local _0xA928 = _0x81A6(string.char(85,73,83,116,114,111,107,101), { Color = _0x0333, Transparency = 0.45, Thickness = 1, Parent = _0x88B3 })
_0x9B45(_0xA928)
local _0x18AA = _0x81A6(string.char(85,73,83,99,97,108,101), { Parent = _0x88B3 })
local _0x0D93 = _0x81A6(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(12, 9.5),
Size = UDim2.fromOffset(13, 13),
BackgroundTransparency = 1,
ZIndex = 21,
Parent = _0x88B3,
})
local _0x4527 = _0x81A6(string.char(70,114,97,109,101), { Size = UDim2.fromOffset(9, 9), BackgroundTransparency = 1, ZIndex = 21, Parent = _0x0D93 })
_0x1692(_0x4527)
local _0xB72D = _0x81A6(string.char(85,73,83,116,114,111,107,101), { Color = _0x08BE, Thickness = 1.5, Parent = _0x4527 })
local _0x1457 = _0x39BD(_0x0D93, 7.8, 7.8, 12, 12, 1.5, _0x08BE)
_0x1457.ZIndex = 21
local _0x4C3A = _0x81A6(string.char(85,73,83,99,97,108,101), { Parent = _0x0D93 })
local _0x0A80 = _0x81A6(string.char(84,101,120,116,66,111,120), {
Text ="",
PlaceholderText =string.char(83,101,97,114,99,104,46,46,46),
Font = Enum.Font.GothamMedium,
TextSize = 12,
TextColor3 = _0x0333,
PlaceholderColor3 = _0xEE3F,
TextXAlignment = Enum.TextXAlignment.Left,
ClearTextOnFocus = false,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(32, 0),
Size = UDim2.new(1, -100, 1, 0),
ZIndex = 21,
Parent = _0x88B3,
})
local _0x0746 = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(67,116,114,108,32,32,70),
Font = Enum.Font.GothamBold,
TextSize = 9,
TextColor3 = _0x08BE,
BackgroundColor3 = _0x3922,
AnchorPoint = Vector2.new(1, 0.5),
Position = UDim2.new(1, -8, 0.5, 0),
Size = UDim2.fromOffset(46, 18),
Visible = _0x63F8.KeyboardEnabled,
ZIndex = 21,
Parent = _0x88B3,
})
_0x46F9(_0x0746, 5)
_0x39A4(_0x0746)
local _0x266B = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text ="",
Font = Enum.Font.GothamMedium,
TextSize = 10,
TextColor3 = _0x08BE,
TextXAlignment = Enum.TextXAlignment.Right,
BackgroundTransparency = 1,
AnchorPoint = Vector2.new(1, 0.5),
Position = UDim2.new(1, -12, 0.5, 0),
Size = UDim2.fromOffset(80, 18),
Visible = false,
ZIndex = 21,
Parent = _0x88B3,
})
local function _0x24FD(_0x4C40)
if _0x4C40.custom then
return 0
end
local _0xDDE9 = 0
for _0xBFE6, _0xDBF6 in ipairs(_0x4C40.sections) do
for _0xBFE6, _0x1592 in ipairs(_0xDBF6.items) do
if _0x6DEE(_0x1592, _0xDBF6, _0x4C40) then
_0xDDE9 += 1
end
end
end
return _0xDDE9
end
local function _0x27DB(_0x4C40)
for _0xBFE6, _0xDBF6 in ipairs(_0x4C40.sections) do
if _0xDBF6.card.Visible then
for _0xBFE6, _0x1592 in ipairs(_0xDBF6.items) do
if _0x1592.row.Visible then
return _0x1592.row
end
end
end
end
end
local function _0x0EC3(_0x741F)
if not _0x741F then
return
end
local _0xCFC0 = _0x81A6(string.char(85,73,83,116,114,111,107,101), { Color = _0x0333, Thickness = 2, Parent = _0x741F })
local _0xBD06 = _0x81A6(string.char(70,114,97,109,101), {
Size = UDim2.fromScale(1, 1),
BackgroundColor3 = _0x0333,
BackgroundTransparency = 0.8,
BorderSizePixel = 0,
ZIndex = 3,
Parent = _0x741F,
})
_0x46F9(_0xBD06, 7)
task.delay(0.15, function()
_0x0ED9(_0xBD06, 0.9, { BackgroundTransparency = 1 })
_0x0ED9(_0xCFC0, 1.2, { Transparency = 1 })
end)
task.delay(1.4, function()
_0xCFC0:Destroy()
_0xBD06:Destroy()
end)
end
local function _0x71E6()
local _0x7B05 = _0x0A80.Text:lower():gsub(string.char(94,37,115,43),""):gsub(string.char(37,115,43,36),"")
if _0x7B05 ==""then
_0xD650 = nil
_0x266B.Visible = false
_0x0746.Visible = _0x63F8.KeyboardEnabled and not _0x0A80:IsFocused()
for _0xBFE6, _0x4903 in ipairs(_0xB605) do
_0x7700(_0x4903)
end
return
end
local _0x7546 = {}
for _0x42FB in _0x7B05:gmatch(string.char(37,83,43)) do
table.insert(_0x7546, _0x42FB)
end
_0xD650 = _0x7546
_0x0746.Visible = false
local _0xB5C7, _0x613C, _0xB695 = 0, nil, 0
for _0xBFE6, _0x4903 in ipairs(_0xB605) do
local _0xDDE9 = _0x24FD(_0x4903)
_0xB5C7 += _0xDDE9
if _0xDDE9 > _0xB695 then
_0x613C, _0xB695 = _0x4903, _0xDDE9
end
end
if _0x6EAD and _0x24FD(_0x6EAD) == 0 and _0x613C then
_0x2B90(_0x613C)
end
for _0xBFE6, _0x4903 in ipairs(_0xB605) do
_0x7700(_0x4903)
end
if _0x6EAD then
_0x6EAD.page.CanvasPosition = Vector2.zero
end
_0x266B.Visible = true
_0x266B.Text = _0xB5C7 == 0 andstring.char(110,111,116,104,105,110,103)or _0xB5C7 ..string.char(32,102,111,117,110,100)_0x266B.TextColor3 = _0xB5C7 == 0 and Color3.fromRGB(255, 120, 120) or _0x08BE
end
_0xF709(_0x0A80:GetPropertyChangedSignal(string.char(84,101,120,116)), _0x71E6)
_0xF709(_0x0A80.Focused, function()
_0x0ED9(_0xA928, 0.2, { Transparency = 0 })
_0x0ED9(_0xB72D, 0.2, { Color = _0x0333 })
_0x0ED9(_0x1457, 0.2, { BackgroundColor3 = _0x0333 })
_0x4C3A.Scale = 0.8
_0x0ED9(_0x4C3A, 0.35, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
_0x18AA.Scale = 0.97
_0x0ED9(_0x18AA, 0.3, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
_0x0746.Visible = false
end)
_0xF709(_0x0A80.FocusLost, function(enter)
_0x0ED9(_0xA928, 0.2, { Transparency = 0.45 })
_0x0ED9(_0xB72D, 0.2, { Color = _0x08BE })
_0x0ED9(_0x1457, 0.2, { BackgroundColor3 = _0x08BE })
if _0x0A80.Text ==""then
_0x0746.Visible = _0x63F8.KeyboardEnabled
end
if enter and _0xD650 and _0x6EAD then
_0x0EC3(_0x27DB(_0x6EAD))
end
end)
_0xF709(_0x63F8.InputBegan, function(input)
if input.UserInputType ~= Enum.UserInputType.Keyboard then
return
end
local _0x3FFC = input.KeyCode
if _0x3FFC == Enum.KeyCode.F and (_0x63F8:IsKeyDown(Enum.KeyCode.LeftControl) or _0x63F8:IsKeyDown(Enum.KeyCode.RightControl) or _0x63F8:IsKeyDown(Enum.KeyCode.LeftSuper) or _0x63F8:IsKeyDown(Enum.KeyCode.RightSuper)) then
if not _0x9B26 then
_0x003D(true)
end
task.defer(function()
_0x0A80:CaptureFocus()
end)
return
end
if _0x3FFC == Enum.KeyCode.Escape and (_0x0A80:IsFocused() or _0x0A80.Text ~="") then
_0x0A80.Text =""_0x0A80:ReleaseFocus()
end
end)
end
_0x2B90(_0x0EC1)
for _0xBFE6, _0x5ED5 in ipairs(_0x34DB) do
local _0xBE50 = _0x4FF7[_0x5ED5.key]
if _0xBE50 ~= nil then
pcall(_0x5ED5.set, _0xBE50)
end
end
_0x82A4 = false
_0xF810 = false
_G.ClumsyScriptUnload = function()
pcall(_0x3BE5)
for _0xBFE6, _0xD51E in ipairs(_0x7E96) do
_0xD51E:Disconnect()
end
table.clear(_0x7E96)
_0x5102 = nil
if _0x087D then
pcall(_0x087D)
end
if _0x9DA0 then
pcall(_0x9DA0)
end
if _0x828B then
pcall(_0x828B)
end
if _0xDAFC then
pcall(_0xDAFC)
end
if _0x66A6 then
pcall(_0x66A6)
end
if _0x4E33 then
pcall(_0x4E33)
end
if _0xE929 then
pcall(_0xE929)
end
pcall(_0x7804)
pcall(_0xB8F5)
if _0x88FE then
pcall(_0x88FE)
end
if _0x7202 then
pcall(_0x7202)
end
if _0xC90D then
pcall(_0xC90D)
end
if _0xDF0F then
pcall(_0xDF0F)
end
if _0x4EFE then
pcall(_0x4EFE)
end
if stopAspectRatio then
pcall(stopAspectRatio)
end
if _0x43C5 then
pcall(_0x43C5)
end
if _0xD7DE then
pcall(_0xD7DE)
end
if _0x4EFE then
pcall(_0x4EFE)
end
pcall(function()
for _0xBFE6, _0xAA59 in ipairs(_0xE922:GetChildren()) do
if _0xAA59:IsA(string.char(65,116,109,111,115,112,104,101,114,101)) and _0xAA59.Name ==string.char(67,108,117,109,115,121,83,99,114,105,112,116,95,70,111,103)then _0xAA59:Destroy() end
end
end)
if _0xB1DA then
pcall(_0xB1DA)
end
if _0xB9AB then
pcall(_0xB9AB)
end
if _0xF49D then
pcall(_0xF49D)
end
if _0x5DCB then
pcall(_0x5DCB)
end
if _0x422B then
pcall(_0x422B)
end
if _0x5137 then
pcall(_0x5137)
end
if _0x82A4 then
_0x0C7C()
end
if _0xF2E7 then
pcall(_0xF2E7)
end
if _0xF5BA then
pcall(_0xF5BA)
end
if _0xABCC then
_0xABCC:Destroy()
_0xABCC = nil
end
local _0xBD98 = _0xA6D4()
if _0xBD98 then
if _0x0EBB.speed then
_0xBD98.WalkSpeed = 16
end
if _0x0EBB.jump then
_0xBD98.JumpPower = 50
end
endpcall(function()
for _0xBFE6, _0xAA59 in ipairs(_0xE922:GetChildren()) do
if _0xAA59.Name ==string.char(67,108,117,109,115,121,83,99,114,105,112,116,95,83,107,121,98,111,120)or _0xAA59.Name ==string.char(67,108,117,109,115,121,83,99,114,105,112,116,95,70,111,103)then
_0xAA59:Destroy()
end
end
end)
pcall(function()
local _0x8C06 = _0xD33F.Character
if _0x8C06 then
for _0xBFE6, _0xAA59 in ipairs(_0x8C06:GetChildren()) do
if _0xAA59.Name:find(string.char(67,108,117,109,115,121,83,99,114,105,112,116,95,83,111,117,114,99,101,65,117,114,97,95), 1, true) then _0xAA59:Destroy() end
end
end
end)
if _0xAF92 then pcall(function() _0xAF92:Destroy() end) end
if _0xA737 then pcall(function() _0xA737:Destroy() end) end
_0xCF0E:Destroy()
_0x4696:Destroy()
_G.ClumsyScriptUnload = nil
end
local _0xDB55 = game:GetService(string.char(84,101,120,116,83,101,114,118,105,99,101))
local function _0x4A29()
_0x9B01 = true
_0x4696.IgnoreGuiInset = true
local _0x3B00 = _0x81A6(string.char(70,114,97,109,101), {
Name =string.char(73,110,116,114,111),
Size = UDim2.fromScale(1, 1),
BackgroundColor3 = Color3.fromRGB(0, 0, 0),
BackgroundTransparency = 1,
BorderSizePixel = 0,
ZIndex = 200,
Parent = _0x4696,
})
local _0xF89E = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromScale(0.5, 0.5),
Size = UDim2.fromOffset(420, 130),
BackgroundTransparency = 1,
Parent = _0x3B00,
})
local _0x6AA6 = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(420, 130)
_0x81A6(string.char(85,73,83,99,97,108,101), { Scale = math.clamp((_0x6AA6.X - 24) / 420, 0.55, 1), Parent = _0xF89E })
local _0xDBF5 = Enum.Font.GothamBlack
local _0xF3FD, _0xB5C7 = {}, 0
for _0x60FA = 1, #string.char(67,76,85,77,83,89,83,67,82,73,80,84)do
local _0x9AA7 = (string.char(67,76,85,77,83,89,83,67,82,73,80,84)):sub(_0x60FA, _0x60FA)
local _0x42FB = _0x9AA7 ==string.char(32)and 16.099999999999998 or _0xDB55:GetTextSize(_0x9AA7, 46, _0xDBF5, Vector2.new(200, 200)).X
_0xF3FD[_0x60FA] = _0x42FB
_0xB5C7 += _0x42FB + (_0x60FA < #string.char(67,76,85,77,83,89,83,67,82,73,80,84)and 4 or 0)
end
local _0x2700 = (420 - _0xB5C7) / 2
local _0x68A8 = {}
local _0xA051 = _0x2700
for _0x60FA = 1, #string.char(67,76,85,77,83,89,83,67,82,73,80,84)do
local _0x9AA7 = (string.char(67,76,85,77,83,89,83,67,82,73,80,84)):sub(_0x60FA, _0x60FA)
if _0x9AA7 ~=string.char(32)then
local _0x69D6 = _0x81A6(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(_0xA051, 14),
Size = UDim2.fromOffset(_0xF3FD[_0x60FA], 56),
BackgroundTransparency = 1,
Parent = _0xF89E,
})
local _0x4AFF = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text = _0x9AA7,
Font = _0xDBF5,
TextSize = 46,
TextColor3 = _0x0333,
TextTransparency = 1,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(0, -26),
Size = UDim2.fromScale(1, 1),
Parent = _0x69D6,
})
local _0xFF4E = _0x81A6(string.char(85,73,83,99,97,108,101), { Scale = 1.6, Parent = _0x4AFF })
table.insert(_0x68A8, { _0x4AFF = _0x4AFF, sc = _0xFF4E, _0x60FA = _0x60FA })
end
_0xA051 += _0xF3FD[_0x60FA] + 4
end
local _0x88B3 = _0x81A6(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0),
Position = UDim2.new(0.5, 0, 0, 86),
Size = UDim2.fromOffset(0, 2),
BackgroundColor3 = _0x7988,
BorderSizePixel = 0,
Parent = _0xF89E,
})
_0x1692(_0x88B3)
local _0xE487 = _0x81A6(string.char(70,114,97,109,101), { Size = UDim2.fromScale(0, 1), BackgroundColor3 = _0x0333, BorderSizePixel = 0, Parent = _0x88B3 })
_0x1692(_0xE487)
local _0x3A05 = _0x81A6(string.char(85,73,71,114,97,100,105,101,110,116), { Parent = _0xE487 })
local _0xD51C = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text ="",
Font = Enum.Font.Gotham,
TextSize = 12,
TextColor3 = _0x08BE,
TextTransparency = 1,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(_0x2700, 96),
Size = UDim2.fromOffset(_0xB5C7 - 44, 16),
Parent = _0xF89E,
})
local _0xCFF6 = _0x81A6(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(48,37),
Font = Enum.Font.GothamMedium,
TextSize = 12,
TextColor3 = _0x9CF4,
TextTransparency = 1,
TextXAlignment = Enum.TextXAlignment.Right,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(_0x2700 + _0xB5C7 - 44, 96),
Size = UDim2.fromOffset(44, 16),
Parent = _0xF89E,
})
local _0xA9D7 = os.clock()
local _0xB228 = _0xF709(_0x7FDD.RenderStepped, function()
local _0x4903 = os.clock() - _0xA9D7
for _0xBFE6, letter in ipairs(_0x68A8) do
local _0xBE50 = 0.5 + 0.5 * math.sin(_0x4903 * 3 - letter.i * 0.55)
local _0xD51E = math.floor(110 + _0xBE50 * 145)
letter.lbl.TextColor3 = Color3.fromRGB(_0xD51E, _0xD51E, _0xD51E)
end
_0x3A05.Color = _0x2F28(_0x4903 * 0.6)
end)
local _0x0AFD = Instance.new(string.char(78,117,109,98,101,114,86,97,108,117,101))
_0x0AFD.Changed:Connect(function(_0xBE50)
_0xCFF6.Text = math.floor(_0xBE50 * 100 + 0.5) ..string.char(37)end)
local _0x2504, _0xF911, _0x9549 = Enum.EasingDirection.Out, Enum.EasingDirection.In, Enum.EasingDirection.InOut
_0x0ED9(_0x3B00, 0.4, { BackgroundTransparency = 0.35 })
_0x0ED9(_0xCF0E, 0.5, { Size = 24 })
task.wait(0.3)
for _0xBFE6, letter in ipairs(_0x68A8) do
_0x0ED9(letter.lbl, 0.55, { TextTransparency = 0, Position = UDim2.fromOffset(0, 0) }, _0x2504, Enum.EasingStyle.Back)
_0x0ED9(letter.sc, 0.55, { Scale = 1 }, _0x2504, Enum.EasingStyle.Back)
task.wait(0.06)
end
task.wait(0.3)
_0x0ED9(_0x88B3, 0.45, { Size = UDim2.fromOffset(_0xB5C7, 2) }, _0x2504, Enum.EasingStyle.Quint)
_0x0ED9(_0xD51C, 0.3, { TextTransparency = 0 })
_0x0ED9(_0xCFF6, 0.3, { TextTransparency = 0 })
task.wait(0.35)
local _0xCBF3 = {
{string.char(108,111,97,100,105,110,103,32,105,110,116,101,114,102,97,99,101), 0.3 },
{string.char(108,111,97,100,105,110,103,32,109,111,118,101,109,101,110,116), 0.55 },
{string.char(108,111,97,100,105,110,103,32,118,105,115,117,97,108,115), 0.8 },
{string.char(100,111,110,101), 1 },
}
for _0xBFE6, _0x334A in ipairs(_0xCBF3) do
if not _0x4696.Parent then
break
end
_0xD51C.Text = _0x334A[1]
_0x0ED9(_0xE487, 0.45, { Size = UDim2.fromScale(_0x334A[2], 1) }, _0x9549)
_0x0ED9(_0x0AFD, 0.45, { Value = _0x334A[2] }, _0x9549)
task.wait(0.5)
end
_0xD51C.Text =string.char(119,101,108,99,111,109,101,44,32).. _0xD33F.DisplayName
task.wait(0.6)
for _0xBFE6, letter in ipairs(_0x68A8) do
_0x0ED9(letter.lbl, 0.35, { TextTransparency = 1, Position = UDim2.fromOffset(0, -18) }, _0xF911)
task.wait(0.03)
end
_0x0ED9(_0xD51C, 0.3, { TextTransparency = 1 })
_0x0ED9(_0xCFF6, 0.3, { TextTransparency = 1 })
_0x0ED9(_0x88B3, 0.35, { Size = UDim2.fromOffset(0, 2) }, _0xF911, Enum.EasingStyle.Quint)
_0x0ED9(_0xE487, 0.3, { BackgroundTransparency = 1 })
_0x0ED9(_0x3B00, 0.45, { BackgroundTransparency = 1 })
task.wait(0.25)
_0x9B01 = false
if not _0x4696.Parent then
return
end
_0x4696.IgnoreGuiInset = false
pcall(function()
_0x4696.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
_0x4696.ClipToDeviceSafeArea = true
end)
_0x1D56()
_0x003D(true)
task.wait(0.4)
_0xB228:Disconnect()
_0x0AFD:Destroy()
_0x3B00:Destroy()
end
task.spawn(_0x4A29)
end)(...)
end)(...)
