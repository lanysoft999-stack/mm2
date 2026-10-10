local _0xD101 = game:GetService(string.char(80,108,97,121,101,114,115))
local _0x8185 = game:GetService(string.char(84,119,101,101,110,83,101,114,118,105,99,101))
local _0x24DA = game:GetService(string.char(85,115,101,114,73,110,112,117,116,83,101,114,118,105,99,101))
local _0xB197 = game:GetService(string.char(82,117,110,83,101,114,118,105,99,101))
local _0x8639 = game:GetService(string.char(76,105,103,104,116,105,110,103))
local _0x48B6 = game:GetService(string.char(84,101,120,116,83,101,114,118,105,99,101))
local _0x6A72 = game:GetService(string.char(71,117,105,83,101,114,118,105,99,101))
local _0x197F = game:GetService(string.char(83,111,117,110,100,83,101,114,118,105,99,101))
local _0x0ACB = game:GetService(string.char(67,111,110,116,101,110,116,80,114,111,118,105,100,101,114))
local _0xBB91 = game:GetService(string.char(68,101,98,114,105,115))
local _0x8E3D = _0xD101.LocalPlayer
if _G.ClumsyScriptUnload then
pcall(_G.ClumsyScriptUnload)
end
local _0xC48C = Enum.KeyCode.RightShift
local _0x1080 = 16
local _0xF269
local _0xAA5A = Color3.fromRGB(14, 14, 14)
local _0x7D00 = Color3.fromRGB(20, 20, 20)
local _0x6274 = Color3.fromRGB(27, 27, 27)
local _0xF139 = Color3.fromRGB(36, 36, 36)
local _0x2F00 = Color3.fromRGB(42, 42, 42)
local _0xDC52 = Color3.fromRGB(230, 230, 230)
local _0x2E02 = Color3.fromRGB(120, 120, 120)
local _0xD6E4 = Color3.fromRGB(85, 85, 85)
local _0xA925 = Color3.fromRGB(255, 255, 255)
local _0x523A = {}
local _0x4CF2 _0xB374 = {}
local _0x0041 = 24
local function _0x0961(_0x830D, ttl)
if not _0x830D then return _0x830D end
_0xB374[#_0xB374 + 1] = _0x830D
while #_0xB374 > _0x0041 do
local _0xF7C5 = table.remove(_0xB374, 1)
if _0xF7C5 and _0xF7C5.Parent then pcall(function() _0xF7C5:Destroy() end) end
end
if ttl then
task.delay(ttl, function()
if _0x830D and _0x830D.Parent then pcall(function() _0x830D:Destroy() end) end
end)
end
return _0x830D
end
local function _0x12D9()
for _0x269E = #_0xB374, 1, -1 do
local _0x4244 = _0xB374[_0x269E]
if _0x4244 and _0x4244.Parent then pcall(function() _0x4244:Destroy() end) end
_0xB374[_0x269E] = nil
end
end
local function _0xB9EB(signal, fn)
local _0x242F = signal:Connect(fn)
table.insert(_0x523A, _0x242F)
return _0x242F
end
local function _0x504E(_0xF85F, _0x4DE9)
local _0x830D = Instance.new(_0xF85F)
local _0xDF1D = _0x4DE9.Parent
_0x4DE9.Parent = nil
for _0x2DD2, _0xEB0B in pairs(_0x4DE9) do
_0x830D[_0x2DD2] = _0xEB0B
end
_0x830D.Parent = _0xDF1D
return _0x830D
end
local function _0xF153(_0x830D, _0x00EA)
_0x504E(string.char(85,73,67,111,114,110,101,114), { CornerRadius = UDim.new(0, _0x00EA or 6), Parent = _0x830D })
end
local function _0x9A43(_0x830D)
_0x504E(string.char(85,73,67,111,114,110,101,114), { CornerRadius = UDim.new(1, 0), Parent = _0x830D })
end
local function _0x24BA(_0x830D, _0x15D8)
return _0x504E(string.char(85,73,83,116,114,111,107,101), {
Color = _0x15D8 or _0x2F00,
Thickness = 1,
ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
Parent = _0x830D,
})
end
local function _0x0903(_0x830D, _0x634C, _0x4DE9, _0x0447, _0x2250)
local _0xAD43 = _0x8185:Create(_0x830D, TweenInfo.new(_0x634C, _0x2250 or Enum.EasingStyle.Quad, _0x0447 or Enum.EasingDirection.Out), _0x4DE9)
_0xAD43:Play()
return _0xAD43
end
local _0xD910 = {}
local function _0x3B7F(_0xCC3C)
local _0x7B8B = _0x504E(string.char(85,73,71,114,97,100,105,101,110,116), { Parent = _0xCC3C })
table.insert(_0xD910, _0x7B8B)
return _0x7B8B
end
local function _0x835C(_0x634C)
local _0x3B50 = {}
for _0x269E = 0, 8 do
local _0x4244 = _0x269E / 8
local _0xEB0B = 0.5 + 0.5 * math.sin((_0x4244 - _0x634C) * math.pi * 2)
local _0x242F = math.floor(80 + _0xEB0B * 175)
_0x3B50[#_0x3B50 + 1] = ColorSequenceKeypoint.new(_0x4244, Color3.fromRGB(_0x242F, _0x242F, _0x242F))
end
return ColorSequence.new(_0x3B50)
end
local function _0x9E1D(_0xDF1D, _0xE51D, _0x58E9, x2, y2, _0x2F74, _0x15D8)
local _0xEC9D, _0x1466 = x2 - _0xE51D, y2 - _0x58E9
local _0xF52D = math.sqrt(_0xEC9D * _0xEC9D + _0x1466 * _0x1466)
local _0xF0CB = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromOffset((_0xE51D + x2) / 2, (_0x58E9 + y2) / 2),
Size = UDim2.fromOffset(_0xF52D + _0x2F74 * 0.6, _0x2F74),
Rotation = math.deg(math.atan2(_0x1466, _0xEC9D)),
BackgroundColor3 = _0x15D8 or _0x2E02,
BorderSizePixel = 0,
Parent = _0xDF1D,
})
_0x9A43(_0xF0CB)
return _0xF0CB
end
local function _0x1B16(_0xDF1D, _0x4244, _0x546B, _0x428B)
local _0xF0CB = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromOffset(_0x4244, _0x546B),
Size = UDim2.fromOffset(_0x428B, _0x428B),
BackgroundColor3 = _0x2E02,
BorderSizePixel = 0,
Parent = _0xDF1D,
})
_0x9A43(_0xF0CB)
return _0xF0CB
end
local function _0x98B4(_0x7969, _0xDF1D)
local _0x9121 = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0, 0.5),
Position = UDim2.new(0, 10, 0.5, 0),
Size = UDim2.fromOffset(18, 18),
BackgroundTransparency = 1,
ZIndex = 3,
Parent = _0xDF1D,
})
local _0x08CD = _0x504E(string.char(85,73,83,99,97,108,101), { Parent = _0x9121 })
local _0x0341 = {}
local function _0x2329(_0x830D, _0x2573)
table.insert(_0x0341, { _0x830D, _0x2573 })
end
if _0x7969 ==string.char(109,111,118,101)then
_0x2329(_0x1B16(_0x9121, 11.5, 2.8, 4.6),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
local _0x1F5C = {
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
for _0x624F, _0xE157 in ipairs(_0x1F5C) do
_0x2329(_0x9E1D(_0x9121, _0xE157[1], _0xE157[2], _0xE157[3], _0xE157[4], 2),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
end
elseif _0x7969 ==string.char(101,121,101)then
local _0xE988 = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromOffset(9, 9),
Size = UDim2.fromOffset(16, 10),
BackgroundTransparency = 1,
Parent = _0x9121,
})
_0x9A43(_0xE988)
_0x2329(_0x504E(string.char(85,73,83,116,114,111,107,101), { Color = _0x2E02, Thickness = 1.6, Parent = _0xE988 }),string.char(67,111,108,111,114))
_0x2329(_0x1B16(_0x9121, 9, 9, 5),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
elseif _0x7969 ==string.char(119,105,110,103)then
_0x2329(_0x1B16(_0x9121, 3, 15, 3.4),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
local _0x1F5C = { { 3, 15, 9, 3 }, { 9, 3, 16.5, 5 }, { 7.4, 6.4, 15.5, 9.6 }, { 5.6, 9.8, 13, 14.2 } }
for _0x624F, _0xE157 in ipairs(_0x1F5C) do
_0x2329(_0x9E1D(_0x9121, _0xE157[1], _0xE157[2], _0xE157[3], _0xE157[4], 1.8),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
end
elseif _0x7969 ==string.char(115,108,105,100,101,114,115)then
local _0xE690 = { { 4, 6 }, { 9, 12 }, { 14, 8 } }
for _0x624F, _0x00EA in ipairs(_0xE690) do
_0x2329(_0x9E1D(_0x9121, 2, _0x00EA[1], 16, _0x00EA[1], 1.6),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
_0x2329(_0x1B16(_0x9121, _0x00EA[2], _0x00EA[1], 5),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
end
elseif _0x7969 ==string.char(115,116,97,114)then
_0x2329(_0x9E1D(_0x9121, 9, 1.5, 9, 16.5, 2),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
_0x2329(_0x9E1D(_0x9121, 1.5, 9, 16.5, 9, 2),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
_0x2329(_0x9E1D(_0x9121, 5, 5, 13, 13, 1.4),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
_0x2329(_0x9E1D(_0x9121, 13, 5, 5, 13, 1.4),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
_0x2329(_0x1B16(_0x9121, 9, 9, 5),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
elseif _0x7969 ==string.char(103,101,97,114)then
local _0x6CBE = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromOffset(9, 9),
Size = UDim2.fromOffset(10, 10),
BackgroundTransparency = 1,
Parent = _0x9121,
})
_0x9A43(_0x6CBE)
_0x2329(_0x504E(string.char(85,73,83,116,114,111,107,101), { Color = _0x2E02, Thickness = 2.6, Parent = _0x6CBE }),string.char(67,111,108,111,114))
for _0x269E = 0, 7 do
local _0xDA08 = math.rad(_0x269E * 45)
_0x2329(_0x9E1D(_0x9121, 9 + math.cos(_0xDA08) * 5.5, 9 + math.sin(_0xDA08) * 5.5, 9 + math.cos(_0xDA08) * 8, 9 + math.sin(_0xDA08) * 8, 3),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
end
elseif _0x7969 ==string.char(116,97,114,103,101,116)then
local _0x6CBE = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromOffset(9, 9),
Size = UDim2.fromOffset(12, 12),
BackgroundTransparency = 1,
Parent = _0x9121,
})
_0x9A43(_0x6CBE)
_0x2329(_0x504E(string.char(85,73,83,116,114,111,107,101), { Color = _0x2E02, Thickness = 1.6, Parent = _0x6CBE }),string.char(67,111,108,111,114))
_0x2329(_0x9E1D(_0x9121, 9, 0.5, 9, 4.5, 1.6),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
_0x2329(_0x9E1D(_0x9121, 9, 13.5, 9, 17.5, 1.6),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
_0x2329(_0x9E1D(_0x9121, 0.5, 9, 4.5, 9, 1.6),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
_0x2329(_0x9E1D(_0x9121, 13.5, 9, 17.5, 9, 1.6),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
_0x2329(_0x1B16(_0x9121, 9, 9, 3),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
elseif _0x7969 ==string.char(99,97,114,116)then
local _0x1F5C = {
{ 1, 3, 4, 3 },
{ 4, 3, 6.2, 11.5 },
{ 4.8, 5.5, 16.5, 5.5 },
{ 16.5, 5.5, 14.8, 11.5 },
{ 6.2, 11.5, 14.8, 11.5 },
{ 5.5, 8.5, 15.8, 8.5 },
}
for _0x624F, _0xE157 in ipairs(_0x1F5C) do
_0x2329(_0x9E1D(_0x9121, _0xE157[1], _0xE157[2], _0xE157[3], _0xE157[4], 1.7),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
end
_0x2329(_0x1B16(_0x9121, 7.2, 15, 3.2),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
_0x2329(_0x1B16(_0x9121, 13.8, 15, 3.2),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
elseif _0x7969 ==string.char(112,105,110)then
local _0x6CBE = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromOffset(9, 7),
Size = UDim2.fromOffset(10, 10),
BackgroundTransparency = 1,
Parent = _0x9121,
})
_0x9A43(_0x6CBE)
_0x2329(_0x504E(string.char(85,73,83,116,114,111,107,101), { Color = _0x2E02, Thickness = 1.8, Parent = _0x6CBE }),string.char(67,111,108,111,114))
_0x2329(_0x9E1D(_0x9121, 4.8, 9.6, 9, 16.5, 1.8),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
_0x2329(_0x9E1D(_0x9121, 13.2, 9.6, 9, 16.5, 1.8),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
_0x2329(_0x1B16(_0x9121, 9, 7, 3),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
elseif _0x7969 ==string.char(115,109,105,108,101)then
_0x2329(_0x1B16(_0x9121, 5.5, 6, 3.4),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
_0x2329(_0x1B16(_0x9121, 12.5, 6, 3.4),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
_0x2329(_0x9E1D(_0x9121, 4, 11, 6.8, 13.8, 2),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
_0x2329(_0x9E1D(_0x9121, 6.8, 13.8, 11.2, 13.8, 2),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
_0x2329(_0x9E1D(_0x9121, 11.2, 13.8, 14, 11, 2),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
elseif _0x7969 ==string.char(98,111,108,116)then
_0x2329(_0x9E1D(_0x9121, 12, 1.5, 5.5, 10, 2.4),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
_0x2329(_0x9E1D(_0x9121, 5.5, 10, 12.5, 8, 2.4),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
_0x2329(_0x9E1D(_0x9121, 12.5, 8, 6, 16.5, 2.4),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
elseif _0x7969 ==string.char(103,108,111,98,101)then
local _0x6CBE = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromOffset(9, 9),
Size = UDim2.fromOffset(16, 16),
BackgroundTransparency = 1,
Parent = _0x9121,
})
_0x9A43(_0x6CBE)
_0x2329(_0x504E(string.char(85,73,83,116,114,111,107,101), { Color = _0x2E02, Thickness = 1.5, Parent = _0x6CBE }),string.char(67,111,108,111,114))
local _0x4C24 = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromOffset(9, 9),
Size = UDim2.fromOffset(7, 16),
BackgroundTransparency = 1,
Parent = _0x9121,
})
_0x9A43(_0x4C24)
_0x2329(_0x504E(string.char(85,73,83,116,114,111,107,101), { Color = _0x2E02, Thickness = 1.3, Parent = _0x4C24 }),string.char(67,111,108,111,114))
_0x2329(_0x9E1D(_0x9121, 1.5, 9, 16.5, 9, 1.3),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
_0x2329(_0x9E1D(_0x9121, 3, 5, 15, 5, 1.1),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
_0x2329(_0x9E1D(_0x9121, 3, 13, 15, 13, 1.1),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
elseif _0x7969 ==string.char(100,114,111,110,101)then
for _0x624F, _0x242F in ipairs({ { 4, 4 }, { 14, 4 }, { 4, 14 }, { 14, 14 } }) do
_0x2329(_0x9E1D(_0x9121, 9, 9, _0x242F[1], _0x242F[2], 1.8),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
local _0x00EA = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromOffset(_0x242F[1], _0x242F[2]),
Size = UDim2.fromOffset(6, 6),
BackgroundTransparency = 1,
Parent = _0x9121,
})
_0x9A43(_0x00EA)
_0x2329(_0x504E(string.char(85,73,83,116,114,111,107,101), { Color = _0x2E02, Thickness = 1.4, Parent = _0x00EA }),string.char(67,111,108,111,114))
end
_0x2329(_0x1B16(_0x9121, 9, 9, 5),string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
elseif _0x7969 ==string.char(103,114,105,100)then
for _0x624F, _0x09CD in ipairs({ { 4.5, 4.5 }, { 13.5, 4.5 }, { 4.5, 13.5 }, { 13.5, 13.5 } }) do
local _0xAA13 = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromOffset(_0x09CD[1], _0x09CD[2]),
Size = UDim2.fromOffset(6.5, 6.5),
BackgroundColor3 = _0x2E02,
BorderSizePixel = 0,
Parent = _0x9121,
})
_0xF153(_0xAA13, 2)
_0x2329(_0xAA13,string.char(66,97,99,107,103,114,111,117,110,100,67,111,108,111,114,51))
end
end
local _0x2C1E = {}
_0x2C1E.color = function(_0x242F, _0x634C)
for _0x624F, _0x09CD in ipairs(_0x0341) do
_0x0903(_0x09CD[1], _0x634C or 0.2, { [_0x09CD[2]] = _0x242F })
end
end
_0x2C1E.pop = function()
_0x08CD.Scale = 0.7
_0x0903(_0x08CD, 0.35, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
end
return _0x2C1E
end
local _0x0155 = _0x504E(string.char(83,99,114,101,101,110,71,117,105), {
Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116),
ResetOnSpawn = false,
ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
DisplayOrder = 100,
})
local _0xB78F = false
if gethui then
_0xB78F = pcall(function()
_0x0155.Parent = gethui()
end)
end
if not _0xB78F then
_0xB78F = pcall(function()
_0x0155.Parent = game:GetService(string.char(67,111,114,101,71,117,105))
end)
end
if not _0xB78F then
_0x0155.Parent = _0x8E3D:WaitForChild(string.char(80,108,97,121,101,114,71,117,105))
end
pcall(function()
_0x0155.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
_0x0155.ClipToDeviceSafeArea = true
end)local _0x8AE1 = _0x8E3D:WaitForChild(string.char(80,108,97,121,101,114,71,117,105))
local _0xC8E8 = Instance.new(string.char(83,99,114,101,101,110,71,117,105))
_0xC8E8.Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,70,117,108,108,86,105,101,119,112,111,114,116)_0xC8E8.ResetOnSpawn = false
_0xC8E8.IgnoreGuiInset = true
_0xC8E8.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
_0xC8E8.DisplayOrder = 9998
pcall(function()
_0xC8E8.ScreenInsets = Enum.ScreenInsets.None
_0xC8E8.ClipToDeviceSafeArea = false
end)
_0xC8E8.Parent = _0x50F4local _0xA737 = Instance.new(string.char(83,99,114,101,101,110,71,117,105))
_0xA737.Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,70,105,120,101,100,83,99,114,101,101,110)_0xA737.ResetOnSpawn = false
_0xA737.IgnoreGuiInset = true
_0xA737.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
_0xA737.DisplayOrder = 10000
pcall(function()
_0xA737.ScreenInsets = Enum.ScreenInsets.None
_0xA737.ClipToDeviceSafeArea = false
end)
_0xA737.Parent = _0x8AE1
local function _0x7637()
local _0xFC29 = workspace:FindFirstChild(string.char(82,101,103,117,108,97,114,76,111,98,98,121))
local _0x48F6 = _0xFC29 and _0xFC29:FindFirstChild(string.char(77,97,105,110,76,111,98,98,121))
local _0x0341 = _0x48F6 and _0x48F6:FindFirstChild(string.char(80,97,114,116,115))
if not _0x0341 then
return
end
for _0x624F, _0x6F67 in ipairs(_0x0341:GetChildren()) do
if _0x6F67:IsA(string.char(66,97,115,101,80,97,114,116)) then
local _0x428B = _0x6F67.Size
if math.abs(_0x428B.X - 13.7) < 0.3 and math.abs(_0x428B.Y - 14.5) < 0.3 and math.abs(_0x428B.Z - 0.5) < 0.2 then
return _0x6F67
end
end
end
end
local function _0xACFC()
local _0x086D = _0x7637()
if not _0x086D then
return
end
local _0xF7C5 = _0x086D:FindFirstChild(string.char(67,108,117,109,115,121,83,99,114,105,112,116,87,97,108,108,66,114,97,110,100))
if _0xF7C5 then
_0xF7C5:Destroy()
end
_0xABCC = _0x504E(string.char(80,97,114,116), {
Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,87,97,108,108,66,114,97,110,100),
Anchored = true,
CanCollide = false,
CanQuery = false,
CanTouch = false,
CastShadow = false,
Transparency = 1,
Size = Vector3.new(24, 4, 0.1),
CFrame = _0x086D.CFrame * CFrame.new(0, _0x086D.Size.Y / 2 + 3.2, _0x086D.Size.Z / 2 + 0.06),
Parent = _0x086D,
})
local _0x052A = _0x504E(string.char(83,117,114,102,97,99,101,71,117,105), {
Name =string.char(83,117,114,102,97,99,101),
Face = Enum.NormalId.Back,
AlwaysOnTop = false,
LightInfluence = 0,
SizingMode = Enum.SurfaceGuiSizingMode.PixelsPerStud,
PixelsPerStud = 60,
Parent = _0xABCC,
})
_0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1,
Font = Enum.Font.GothamBlack,
RichText = true,
Text =string.char(60,102,111,110,116,32,99,111,108,111,114,61,34,35,70,70,70,70,70,70,34,62,67,76,85,77,83,89,60,47,102,111,110,116,62,32,60,102,111,110,116,32,99,111,108,111,114,61,34,35,65,56,70,70,51,69,34,62,83,67,82,73,80,84,60,47,102,111,110,116,62),
TextScaled = true,
TextColor3 = Color3.new(1, 1, 1),
TextStrokeColor3 = Color3.new(0, 0, 0),
TextStrokeTransparency = 0,
Parent = _0x052A,
})
end
task.spawn(function()
while _0x0155.Parent do
if not _0xABCC or not _0xABCC.Parent then
_0xACFC()
end
task.wait(2)
end
end)
local _0xDEC0 = _0x504E(string.char(66,108,117,114,69,102,102,101,99,116), { Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,66,108,117,114), Size = 0, Parent = _0x8639 })
local _0xFF96 = _0x504E(string.char(70,114,97,109,101), {
Name =string.char(77,97,105,110),
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromScale(0.5, 0.5),
Size = UDim2.fromOffset(680, 470),
BackgroundColor3 = _0xAA5A,
BackgroundTransparency = 0.04,
BorderSizePixel = 0,
Visible = false,
ZIndex = 2,
Parent = _0x0155,
})
_0xF153(_0xFF96, 10)
local _0x760D = _0x504E(string.char(85,73,83,116,114,111,107,101), { Thickness = 1, Color = _0xA925, Transparency = 0.3, Parent = _0xFF96 })
_0x3B7F(_0x760D)
local _0x214C = _0x504E(string.char(85,73,83,99,97,108,101), { Scale = 0, Parent = _0xFF96 })
local _0x952B = false
local _0xA20B = 1
local _0x5E37 = 1
local _0x67AD = 1
local _0xDFA0 = false
local _0xBDA5 = nil
local _0x2A11 = nil
local _0x9056 = nil
local _0x25FA = _0x504E(string.char(84,101,120,116,66,117,116,116,111,110), {
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
Parent = _0xFF96,
})
local _0xDDBC = _0x504E(string.char(85,73,83,116,114,111,107,101), {
Thickness = 0,
Transparency = 1,
Parent = _0x2949,
})
_0xB9EB(_0x2949.MouseEnter, function()
if not _0xDFA0 then
_0x0903(_0x2949, 0.12, { TextTransparency = 0.15 })
end
end)
_0xB9EB(_0x2949.MouseLeave, function()
if not _0xDFA0 then
_0x0903(_0x2949, 0.12, { TextTransparency = 0 })
end
end)
_0xB9EB(_0x2949.InputBegan, function(input)
if input.UserInputType ~= Enum.UserInputType.MouseButton1
and input.UserInputType ~= Enum.UserInputType.Touch then
return
end
if _0xDFA0 then
return
end
_0xDFA0 = true
_0xBDA5 = Vector2.new(input.Position.X, input.Position.Y)
_0x9056 = input_0xD770 = Vector2.new(_0xFF96.Size.X.Offset, _0xFF96.Size.Y.Offset)
_0x2949.TextTransparency = 0.08
end)
_0xB9EB(_0x24DA.InputChanged, function(input)
if not _0xDFA0 or not _0xBDA5 or not _0x2A11 or (_0x9056 and input.UserInputType == Enum.UserInputType.Touch and input ~= _0x9056) then
return
end
if input.UserInputType ~= Enum.UserInputType.MouseMovement
and input.UserInputType ~= Enum.UserInputType.Touch then
return
end
local _0x8C28 = Vector2.new(input.Position.X, input.Position.Y)
local _0xE45F = _0x8C28 - _0xBDA5
local _0xB4BC, _0x60D0 = 430, 320
local _0x8AB2, _0x8556 = 1000, 760if math.abs(_0xE45F.X) < 1 and math.abs(_0xE45F.Y) < 1 then
return
end
local _0x7E3A = math.clamp(_0x2A11.X + _0xE45F.X, _0xB4BC, _0x8AB2)
local _0x994E = math.clamp(_0x2A11.Y + _0xE45F.Y, _0x60D0, _0x8556)
_0xFF96.Size = UDim2.fromOffset(_0x7E3A, _0x994E)
_0x5E37 = _0x7E3A / 680
_0x67AD = _0x994E / 470
_0x214C.Scale = _0xA20B
end)
_0xB9EB(_0x24DA.InputEnded, function(input)
if not _0xDFA0 then
return
end
if input.UserInputType ~= Enum.UserInputType.MouseButton1
and input.UserInputType ~= Enum.UserInputType.Touch then
return
end
_0xDFA0 = false
_0xBDA5 = nil
_0x2A11 = nil
_0x9056 = nil
_0x2949.TextTransparency = 0
end)
local _0xB041
local _0x5DCD
local function _0xC44A()
local _0x04CE = workspace.CurrentCamera
if not _0x04CE then
return
end
local _0x203D = _0x04CE.ViewportSize
local _0x9BF5, _0xC2F2 = Vector2.zero, Vector2.zero
pcall(function()
_0x9BF5, _0xC2F2 = _0x6A72:GetGuiInset()
end)
local _0x1ED3 = _0x24DA.TouchEnabled and 16 or 24
local _0xFD70 = math.max(1, _0x203D.X - _0x9BF5.X - _0xC2F2.X - _0x1ED3)
local _0xEEA3 = math.max(1, _0x203D.Y - _0x9BF5.Y - _0xC2F2.Y - _0x1ED3)
local _0x78E7 = math.max(1, _0xFF96.Size.X.Offset)
local _0x3381 = math.max(1, _0xFF96.Size.Y.Offset)
_0xA20B = math.clamp(math.min(_0xFD70 / _0x78E7, _0xEEA3 / _0x3381), 0.35, 1)
if _0x24DA.TouchEnabled then
_0xFF96.Position = UDim2.fromScale(0.5, 0.5)
end
if _0x952B then
_0x214C.Scale = _0xA20B
end
if _0x5DCD then
_0x5DCD()
end
end
local function _0x2D5A()
if _0xB041 then
_0xB041:Disconnect()
end
local _0x04CE = workspace.CurrentCamera
if _0x04CE then
_0xB041 = _0xB9EB(_0x04CE:GetPropertyChangedSignal(string.char(86,105,101,119,112,111,114,116,83,105,122,101)), _0xC44A)
end
_0xC44A()
end
_0xB9EB(workspace:GetPropertyChangedSignal(string.char(67,117,114,114,101,110,116,67,97,109,101,114,97)), _0x2D5A)
_0xB9EB(_0x0155:GetPropertyChangedSignal(string.char(65,98,115,111,108,117,116,101,83,105,122,101)), _0xC44A)
_0x2D5A()
local _0x6850 = _0x504E(string.char(70,114,97,109,101), { Size = UDim2.new(1, 0, 0, 38), BackgroundTransparency = 1, Parent = _0xFF96 })
local _0xFF30 = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(64,99,108,117,109,115,121,95,99,102,103),
Font = Enum.Font.GothamBold,
TextSize = 16,
TextColor3 = _0xA925,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(14, 0),
Size = UDim2.new(0, 205, 1, 0),
Parent = _0x6850,
})
_0x3B7F(_0xFF30)
local _0x1019 = _0x504E(string.char(84,101,120,116,66,117,116,116,111,110), {
Text =string.char(120),
Font = Enum.Font.GothamBold,
TextSize = 13,
TextColor3 = _0x2E02,
BackgroundColor3 = _0x6274,
BackgroundTransparency = 1,
AutoButtonColor = false,
AnchorPoint = Vector2.new(1, 0.5),
Position = UDim2.new(1, -8, 0.5, 0),
Size = UDim2.fromOffset(24, 24),
Parent = _0x6850,
})
_0xF153(_0x1019, 6)
_0xB9EB(_0x1019.MouseEnter, function()
_0x0903(_0x1019, 0.15, { TextColor3 = _0xA925, BackgroundTransparency = 0 })
end)
_0xB9EB(_0x1019.MouseLeave, function()
_0x0903(_0x1019, 0.15, { TextColor3 = _0x2E02, BackgroundTransparency = 1 })
end)
local _0xB9C6 = _0x504E(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(0, 38),
Size = UDim2.new(1, 0, 0, 1),
BackgroundColor3 = _0xA925,
BorderSizePixel = 0,
Parent = _0xFF96,
})
_0x3B7F(_0xB9C6)
local _0x825D = 10
local _0x756D = 0
local _0xEE85 = _0x504E(string.char(83,99,114,111,108,108,105,110,103,70,114,97,109,101), {
Position = UDim2.fromOffset(0, 39),
Size = UDim2.new(0, 170, 1, -39),
BackgroundTransparency = 1,
BorderSizePixel = 0,
ScrollBarThickness = 4,
ScrollBarImageColor3 = _0xA925,
ScrollBarImageTransparency = 0.15,
VerticalScrollBarInset = Enum.ScrollBarInset.Always,
ScrollingDirection = Enum.ScrollingDirection.Y,
ElasticBehavior = Enum.ElasticBehavior.Never,
ScrollingEnabled = true,
Active = true,
CanvasSize = UDim2.new(),
Parent = _0xFF96,
})
local _0x9728 = _0x504E(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(8, 10),
Size = UDim2.new(1, -16, 0, 32),
BackgroundColor3 = _0xA925,
BorderSizePixel = 0,
ZIndex = 1,
Parent = _0xEE85,
})
_0xF153(_0x9728, 8)
_0x504E(string.char(85,73,71,114,97,100,105,101,110,116), {
Color = ColorSequence.new(Color3.fromRGB(105, 105, 105), Color3.fromRGB(62, 62, 62)),
Parent = _0x9728,
})
local _0x0F6A = _0x504E(string.char(85,73,83,116,114,111,107,101), {
Color = _0xA925,
Thickness = 1,
Transparency = 0.75,
ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
Parent = _0x9728,
})
local _0x5E16 = _0x504E(string.char(85,73,71,114,97,100,105,101,110,116), { Parent = _0x0F6A })
local _0xDCAA = NumberSequence.new(0)
local _0x38A2 = NumberSequence.new({
NumberSequenceKeypoint.new(0, 1),
NumberSequenceKeypoint.new(0.5, 1),
NumberSequenceKeypoint.new(0.85, 0.2),
NumberSequenceKeypoint.new(1, 0),
})
local _0x3CC3 = 0
local _0xFAB7
local function _0xBED3()
_0x3CC3 += 1
local _0x4FE3 = _0x3CC3
if _0xFAB7 then
_0xFAB7:Cancel()
end
_0x5E16.Transparency = _0x38A2
_0x5E16.Rotation = -90
_0xFAB7 = _0x0903(_0x5E16, 0.5, { Rotation = 270 }, Enum.EasingDirection.InOut, Enum.EasingStyle.Sine)
_0xFAB7.Completed:Connect(function(_0xFB60)
if _0x4FE3 ~= _0x3CC3 or _0xFB60 ~= Enum.PlaybackState.Completed then
return
end
_0x5E16.Transparency = _0xDCAA
_0x0F6A.Transparency = 0.4
_0x0903(_0x0F6A, 0.4, { Transparency = 0.75 })
end)
end
local _0x7864 = _0x504E(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(8, 10),
Size = UDim2.new(1, -16, 1, -10),
BackgroundTransparency = 1,
ZIndex = 2,
Parent = _0xEE85,
})
local _0x758E = _0x504E(string.char(85,73,76,105,115,116,76,97,121,111,117,116), { Padding = UDim.new(0, 3), SortOrder = Enum.SortOrder.LayoutOrder, Parent = _0x7864 })
local function _0x5683()
_0xEE85.CanvasSize = UDim2.fromOffset(0, 10 + _0x758E.AbsoluteContentSize.Y + 24)
end
_0x758E:GetPropertyChangedSignal(string.char(65,98,115,111,108,117,116,101,67,111,110,116,101,110,116,83,105,122,101)):Connect(_0x5683)
_0x504E(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(170, 39),
Size = UDim2.new(0, 1, 1, -39),
BackgroundColor3 = _0x2F00,
BorderSizePixel = 0,
Parent = _0xFF96,
})
_0xEE85.ZIndex = 5
local _0x43E7 = _0x504E(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(184, 50),
Size = UDim2.new(1, -196, 1, -60),
BackgroundTransparency = 1,
ClipsDescendants = true,
ZIndex = 1,
Parent = _0xFF96,
})
local _0x9823 = _0x504E(string.char(70,114,97,109,101), {
Size = UDim2.fromScale(1, 1),
BackgroundColor3 = _0xAA5A,
BackgroundTransparency = 1,
BorderSizePixel = 0,
ZIndex = 50,
Parent = _0x43E7,
})
local _0x29A5
local _0x805E = {}
local _0x95DC
local function _0xE0BC(_0xAD45)
if _0x95DC == _0xAD45 then
return
end
local _0xF7C5 = _0x95DC
_0x95DC = _0xAD45
for _0x624F, _0x634C in ipairs(_0x805E) do
if _0x634C ~= _0xAD45 then
_0x634C.page.Visible = false
end
end
local _0x546B = _0xAD45.y
if _0xF7C5 then
_0x0903(_0x9728, 0.3, { Position = UDim2.fromOffset(8, _0x546B) }, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
else
_0x9728.Position = UDim2.fromOffset(8, _0x546B)
end
_0xBED3()
if _0xF7C5 then
_0x0903(_0xF7C5.label, 0.2, { TextColor3 = _0x2E02 })
_0xF7C5.label.Font = Enum.Font.GothamMedium
_0xF7C5.icon.color(_0x2E02)
_0xF7C5.chev(false)
end
_0x0903(_0xAD45.label, 0.2, { TextColor3 = _0xA925 })
_0xAD45.label.Font = Enum.Font.GothamBold
_0xAD45.icon.color(_0xA925)
_0xAD45.icon.pop()
_0xAD45.chev(true)
_0xAD45.page.CanvasPosition = Vector2.zero
_0xAD45.page.Position = UDim2.fromOffset(0, 14)
_0xAD45.page.Visible = true
_0x0903(_0xAD45.page, 0.35, { Position = UDim2.fromOffset(0, 0) }, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
if _0x29A5 then
_0x29A5:Cancel()
end
_0x9823.BackgroundTransparency = 0
_0x29A5 = _0x0903(_0x9823, 0.3, { BackgroundTransparency = 1 })
end
return (function(...)
local _0xAB5D
local function _0x3B7C(_0x2B4F, _0xE157, _0xAD45)
local _0xD4D9 = _0x2B4F.key ..string.char(32).. _0xE157.name:lower() ..string.char(32).. _0xAD45.label.Text:lower()
for _0x624F, _0xCDE9 in ipairs(_0xAB5D) do
if not _0xD4D9:find(_0xCDE9, 1, true) then
return false
end
end
return true
end
local function _0xEA27(_0xAD45)
if _0xAD45.custom then
return
end
local _0x546B = 46
if _0xAB5D then
for _0x624F, _0xE157 in ipairs(_0xAD45.sections) do
local _0xD555 = 30
local _0xA5F1 = false
for _0x624F, _0x2B4F in ipairs(_0xE157.items) do
local _0xD828 = _0x3B7C(_0x2B4F, _0xE157, _0xAD45)
_0x2B4F.row.Visible = _0xD828
if _0xD828 then
_0x2B4F.row.Position = UDim2.fromOffset(8, _0xD555)
_0xD555 += _0x2B4F.h + 6
_0xA5F1 = true
end
end
_0xE157.card.Visible = _0xA5F1
if _0xA5F1 then
local _0xF171 = _0xD555 + 8 - 6
_0xE157.card.Position = UDim2.fromOffset(2, _0x546B)
_0xE157.card.Size = UDim2.new(1, -8, 0, _0xF171)
_0x546B += _0xF171 + 10
end
end
_0xAD45.page.CanvasSize = UDim2.fromOffset(0, _0x546B - 10 + 2 + 4)
return
end
for _0x624F, _0xE157 in ipairs(_0xAD45.sections) do
local _0x9A05 = not _0xAD45.subs or _0xE157.group == _0xAD45.sub
local _0xC8BC = not _0xE157.collapsible or _0xE157.isOpen or _0xE157.open > 0.001
for _0x624F, _0x2B4F in ipairs(_0xE157.items) do
_0x2B4F.row.Position = UDim2.fromOffset(8, _0x2B4F.y)
_0x2B4F.row.Visible = _0xC8BC
end
local _0xF171 = _0xE157.height
if _0xE157.collapsible then
_0xF171 = math.floor(30 + (_0xE157.height - 30) * _0xE157.open + 0.5)
end
_0xE157.card.Visible = _0x9A05
if _0x9A05 then
_0xE157.card.Position = UDim2.fromOffset(2, _0x546B)
_0xE157.card.Size = UDim2.new(1, -8, 0, _0xF171)
_0x546B += _0xF171 + 10
end
end
_0xAD45.page.CanvasSize = UDim2.fromOffset(0, _0x546B - 10 + 2 + 4)
end
local function _0x0160()
_0x756D += 1
local _0x9121 = _0x504E(string.char(70,114,97,109,101), {
Size = UDim2.new(1, 0, 0, 9),
BackgroundTransparency = 1,
LayoutOrder = _0x756D,
Parent = _0x7864,
})
_0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromScale(0.5, 0.5),
Size = UDim2.new(1, 4, 0, 1),
BackgroundColor3 = _0x2F00,
BorderSizePixel = 0,
Parent = _0x9121,
})
_0x825D += 12
end
local function _0xEBCC(_0x893F, iconName, desc)
local _0xBD79 = #_0x805E + 1
_0x756D += 1
local _0x546B = _0x825D
_0x825D += 35
local _0x60F5 = _0x504E(string.char(84,101,120,116,66,117,116,116,111,110), {
Text ="",
BackgroundColor3 = _0x6274,
BackgroundTransparency = 1,
AutoButtonColor = false,
Size = UDim2.new(1, 0, 0, 32),
LayoutOrder = _0x756D,
Parent = _0x7864,
})
_0xF153(_0x60F5, 7)
local _0x2C1E = _0x98B4(iconName, _0x60F5)
local _0x7963 = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text = _0x893F,
Font = Enum.Font.GothamMedium,
TextSize = 13,
TextColor3 = _0x2E02,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(38, 0),
Size = UDim2.new(1, -60, 1, 0),
ZIndex = 3,
Parent = _0x60F5,
})
local _0x7BA1 = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.new(1, -14, 0.5, 0),
Size = UDim2.fromOffset(6, 10),
BackgroundTransparency = 1,
ZIndex = 3,
Parent = _0x60F5,
})
local _0x676F = _0x9E1D(_0x7BA1, 1, 1.5, 4.5, 5, 1.5, _0xD6E4)
local _0xF506 = _0x9E1D(_0x7BA1, 4.5, 5, 1, 8.5, 1.5, _0xD6E4)
_0x676F.ZIndex, _0xF506.ZIndex = 3, 3
local function _0xB415(_0xE496)
_0x0903(_0x7BA1, 0.3, { Rotation = _0xE496 and 90 or 0 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
_0x0903(_0x676F, 0.2, { BackgroundColor3 = _0xE496 and _0xA925 or _0xD6E4 })
_0x0903(_0xF506, 0.2, { BackgroundColor3 = _0xE496 and _0xA925 or _0xD6E4 })
end
local _0x46D0 = _0x504E(string.char(83,99,114,111,108,108,105,110,103,70,114,97,109,101), {
Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1,
BorderSizePixel = 0,
ScrollBarThickness = 2,
ScrollBarImageColor3 = _0x2E02,
CanvasSize = UDim2.new(),
ScrollingDirection = Enum.ScrollingDirection.Y,
ElasticBehavior = Enum.ElasticBehavior.Never,
VerticalScrollBarInset = Enum.ScrollBarInset.Always,
ScrollBarImageTransparency = 0.4,
ClipsDescendants = true,
Visible = false,
ZIndex = 1,
Parent = _0x43E7,
})
local _0x6920 = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text = _0x893F,
Font = Enum.Font.GothamBold,
TextSize = 18,
TextColor3 = _0xA925,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Size = UDim2.new(1, -8, 0, 22),
Parent = _0x46D0,
})
local _0x5F60 = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text = desc or"",
Font = Enum.Font.Gotham,
TextSize = 12,
TextColor3 = _0x2E02,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(0, 22),
Size = UDim2.new(1, -8, 0, 16),
Parent = _0x46D0,
})
local _0xAD45 = {
_0xBD79 = _0xBD79,
_0x546B = _0x546B,
btn = _0x60F5,
_0x7963 = _0x7963,
_0x2C1E = _0x2C1E,
chev = _0xB415,
_0x46D0 = _0x46D0,
sections = {},
title = _0x6920,
desc = _0x5F60,
}
table.insert(_0x805E, _0xAD45)
_0xB9EB(_0x60F5.MouseButton1Click, function()
_0xE0BC(_0xAD45)
end)
_0xB9EB(_0x60F5.MouseEnter, function()
if _0x95DC ~= _0xAD45 then
_0x0903(_0x7963, 0.15, { TextColor3 = _0xDC52 })
_0x2C1E.color(_0xDC52, 0.15)
end
end)
_0xB9EB(_0x60F5.MouseLeave, function()
if _0x95DC ~= _0xAD45 then
_0x0903(_0x7963, 0.15, { TextColor3 = _0x2E02 })
_0x2C1E.color(_0x2E02, 0.15)
end
end)
return _0xAD45
end
local _0xE73A = {}
_0xE73A.__index = _0xE73A
local function _0x45F1(_0xAD45, _0x893F, group)
local _0x5C29 = _0x504E(string.char(70,114,97,109,101), { BackgroundColor3 = _0x7D00, Parent = _0xAD45.page })
_0xF153(_0x5C29, 10)
local _0xBC19 = _0x24BA(_0x5C29)
_0x504E(string.char(85,73,71,114,97,100,105,101,110,116), {
Rotation = 90,
Color = ColorSequence.new(_0xA925, Color3.fromRGB(190, 190, 190)),
Parent = _0x5C29,
})
local _0x7DE7 = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0, 0.5),
Position = UDim2.new(0, 12, 0, 15),
Size = UDim2.fromOffset(3, 12),
BackgroundColor3 = _0xA925,
BorderSizePixel = 0,
Parent = _0x5C29,
})
_0x9A43(_0x7DE7)
_0x3B7F(_0x7DE7)
_0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text = string.upper(_0x893F),
Font = Enum.Font.GothamBold,
TextSize = 11,
TextColor3 = _0xDC52,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(22, 0),
Size = UDim2.new(1, -34, 0, 30),
Parent = _0x5C29,
})
_0xB9EB(_0x5C29.MouseEnter, function()
_0x0903(_0xBC19, 0.2, { Color = Color3.fromRGB(56, 56, 56) })
end)
_0xB9EB(_0x5C29.MouseLeave, function()
_0x0903(_0xBC19, 0.2, { Color = _0x2F00 })
end)
local _0xE157 = setmetatable({
_0xAD45 = _0xAD45,
_0x5C29 = _0x5C29,
_0x893F = _0x893F,
_0x0E34 = {},
_0x546B = 30,
_0xFE1D = 32,
_0xE690 = {},
open = 1,
group = group or _0xAD45.subs and _0xAD45.subs[1],
}, _0xE73A)
table.insert(_0xAD45.sections, _0xE157)
_0xEA27(_0xAD45)
return _0xE157
end
local function _0x2C22(_0xAD45, _0x0E34)
_0xAD45.subs = _0x0E34
_0xAD45.sub = _0x0E34[1]
local _0xC126 = 1
local _0x69CA = _0x48B6:GetTextSize(_0xAD45.title.Text, 18, Enum.Font.GothamBold, Vector2.new(400, 40)).X
_0xAD45.desc.Visible = false
_0xAD45.title.Size = UDim2.fromOffset(_0x69CA + 4, 40)
local _0xDBC6 = _0x504E(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(_0x69CA + 16, 6),
Size = UDim2.new(1, -(_0x69CA + 16) - 8, 0, 28),
BackgroundTransparency = 1,
ZIndex = 3,
Parent = _0xAD45.page,
})
local _0x1CBF = {}
local _0x4244 = 0
for _0x269E, sub in ipairs(_0x0E34) do
local _0xAD43 = _0x48B6:GetTextSize(sub, 12, Enum.Font.GothamMedium, Vector2.new(300, 40)).X
local _0xCDE9 = _0xAD43 + 34
local _0xBF1F = _0x504E(string.char(84,101,120,116,66,117,116,116,111,110), {
Text ="",
AutoButtonColor = false,
BackgroundColor3 = Color3.fromRGB(90, 90, 90),
BackgroundTransparency = _0x269E == _0xC126 and 0.35 or 1,
Position = UDim2.fromOffset(_0x4244, 0),
Size = UDim2.fromOffset(_0xCDE9, 28),
ZIndex = 3,
Parent = _0xDBC6,
})
_0xF153(_0xBF1F, 9)
local _0xCEA3 = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.new(0, 13, 0.5, 0),
Size = UDim2.fromOffset(_0x269E == _0xC126 and 6 or 0, _0x269E == _0xC126 and 6 or 0),
BackgroundColor3 = _0xA925,
BorderSizePixel = 0,
ZIndex = 4,
Parent = _0xBF1F,
})
_0x9A43(_0xCEA3)
local _0xFE81 = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text = sub,
Font = Enum.Font.GothamMedium,
TextSize = 12,
TextColor3 = _0x269E == _0xC126 and _0xA925 or _0x2E02,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(_0x269E == _0xC126 and 22 or 12, 0),
Size = UDim2.new(1, -22, 1, 0),
TextXAlignment = Enum.TextXAlignment.Left,
ZIndex = 4,
Parent = _0xBF1F,
})
_0x1CBF[_0x269E] = { _0xBF1F = _0xBF1F, _0x1B16 = _0xCEA3, _0xFE81 = _0xFE81, _0xCDE9 = _0xCDE9 }
_0x4244 += _0xCDE9 + 4
end
local function _0x609D(_0x269E, _0xE496)
local _0x012C = _0x1CBF[_0x269E]
_0x0903(_0x012C.b, 0.25, { BackgroundTransparency = _0xE496 and 0.35 or 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
_0x0903(_0x012C.dot, 0.25, { Size = UDim2.fromOffset(_0xE496 and 6 or 0, _0xE496 and 6 or 0) }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
_0x0903(_0x012C.lbl, 0.25, { TextColor3 = _0xE496 and _0xA925 or _0x2E02, Position = UDim2.fromOffset(_0xE496 and 22 or 12, 0) }, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
end
local function _0xA4EA(_0x2EDF)
_0xEA27(_0xAD45)
if _0x2EDF then
_0xAD45.page.CanvasPosition = Vector2.zero
_0xAD45.page.Position = UDim2.fromOffset(0, 14)
_0x0903(_0xAD45.page, 0.35, { Position = UDim2.fromOffset(0, 0) }, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
if _0x29A5 then
_0x29A5:Cancel()
end
_0x9823.BackgroundTransparency = 0
_0x29A5 = _0x0903(_0x9823, 0.3, { BackgroundTransparency = 1 })
end
end
local function _0x0A30(_0x269E)
if _0x269E == _0xC126 then
return
end
_0x609D(_0xC126, false)
_0xC126 = _0x269E
_0xAD45.sub = _0x0E34[_0x269E]
_0x609D(_0x269E, true)
_0xA4EA(true)
end
_0xAD45.setSub = function(sub)
local _0x269E = table.find(_0x0E34, sub)
if _0x269E then
_0x0A30(_0x269E)
end
end
for _0x269E, _0x012C in ipairs(_0x1CBF) do
_0xB9EB(_0x012C.b.MouseEnter, function()
if _0x269E ~= _0xC126 then
_0x0903(_0x012C.b, 0.15, { BackgroundTransparency = 0.8 })
_0x0903(_0x012C.lbl, 0.15, { TextColor3 = _0xDC52 })
end
end)
_0xB9EB(_0x012C.b.MouseLeave, function()
if _0x269E ~= _0xC126 then
_0x0903(_0x012C.b, 0.15, { BackgroundTransparency = 1 })
_0x0903(_0x012C.lbl, 0.15, { TextColor3 = _0x2E02 })
end
end)
_0xB9EB(_0x012C.b.MouseButton1Click, function()
_0x0A30(_0x269E)
end)
end
_0xEA27(_0xAD45)
end
_0xE73A.Collapsible = function(self2, startOpen)
self2.collapsible = true
self2.isOpen = startOpen and true or false
self2.open = self2.isOpen and 1 or 0
self2.card.ClipsDescendants = true
local _0xBC19 = self2.card:FindFirstChildOfClass(string.char(85,73,83,116,114,111,107,101))
local _0x35BE = _0x504E(string.char(84,101,120,116,66,117,116,116,111,110), {
Text ="",
BackgroundColor3 = _0x6274,
BackgroundTransparency = 1,
AutoButtonColor = false,
Size = UDim2.new(1, 0, 0, 30),
ZIndex = 4,
Parent = self2.card,
})
local _0xE77A = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text = self2.isOpen andstring.char(104,105,100,101)orstring.char(111,112,101,110),
Font = Enum.Font.GothamMedium,
TextSize = 10,
TextColor3 = _0xD6E4,
TextXAlignment = Enum.TextXAlignment.Right,
BackgroundTransparency = 1,
AnchorPoint = Vector2.new(1, 0.5),
Position = UDim2.new(1, -30, 0, 15),
Size = UDim2.fromOffset(40, 14),
ZIndex = 5,
Parent = self2.card,
})
local _0x2DC4 = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.new(1, -18, 0, 15),
Size = UDim2.fromOffset(10, 6),
BackgroundTransparency = 1,
Rotation = self2.isOpen and 180 or 0,
ZIndex = 5,
Parent = self2.card,
})
local _0x66AB = _0x9E1D(_0x2DC4, 1, 1, 5, 5, 1.6)
local _0xDD0F = _0x9E1D(_0x2DC4, 5, 5, 9, 1, 1.6)
_0x66AB.ZIndex, _0xDD0F.ZIndex = 5, 5
local _0x2EDF = Instance.new(string.char(78,117,109,98,101,114,86,97,108,117,101))
_0x2EDF.Value = self2.open
_0xB9EB(_0x2EDF.Changed, function(_0xEB0B)
self2.open = _0xEB0B
_0xEA27(self2.tab)
end)
local _0x5C60
local function _0x7E94()
self2.isOpen = not self2.isOpen
local _0xE496 = self2.isOpen
if _0xE496 then
for _0x624F, _0x00EA in ipairs(self2.rows) do
_0x00EA.Visible = true
end
end
if _0x5C60 then
_0x5C60:Cancel()
end
_0x5C60 = _0x0903(_0x2EDF, _0xE496 and 0.4 or 0.3, { Value = _0xE496 and 1 or 0 }, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
_0x5C60.Completed:Connect(function(_0x61F0)
if _0x61F0 == Enum.PlaybackState.Completed and not self2.isOpen then
for _0x624F, _0x00EA in ipairs(self2.rows) do
_0x00EA.Visible = false
end
end
end)
_0x0903(_0x2DC4, 0.35, { Rotation = _0xE496 and 180 or 0 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
_0xE77A.Text = _0xE496 andstring.char(104,105,100,101)orstring.char(111,112,101,110)if _0xBC19 then
_0xBC19.Color = _0xA925
_0x0903(_0xBC19, 0.5, { Color = _0x2F00 })
end
end
_0xB9EB(_0x35BE.MouseButton1Click, _0x7E94)
self2.expand = function()
if not self2.isOpen then
_0x7E94()
end
end
_0xB9EB(_0x35BE.MouseEnter, function()
_0x0903(_0x66AB, 0.15, { BackgroundColor3 = _0xA925 })
_0x0903(_0xDD0F, 0.15, { BackgroundColor3 = _0xA925 })
_0x0903(_0xE77A, 0.15, { TextColor3 = _0xDC52 })
end)
_0xB9EB(_0x35BE.MouseLeave, function()
_0x0903(_0x66AB, 0.15, { BackgroundColor3 = _0x2E02 })
_0x0903(_0xDD0F, 0.15, { BackgroundColor3 = _0x2E02 })
_0x0903(_0xE77A, 0.15, { TextColor3 = _0xD6E4 })
end)
_0xEA27(self2.tab)
return self2
end
local _0x09F2 = {}
local _0x278B = {}
local _0x42B0 = true
local _0x1379 = game:GetService(string.char(72,116,116,112,83,101,114,118,105,99,101))
local _0xE3F2 =string.char(67,108,117,109,115,121,83,99,114,105,112,116)local _0xE604 = _0xE3F2 ..string.char(47,99,117,114,114,101,110,116,46,106,115,111,110)local _0xFCF6 = _0xE3F2 ..string.char(47,99,111,110,102,105,103,115,46,106,115,111,110)if makefolder and not (isfolder and isfolder(_0xE3F2)) then
pcall(makefolder, _0xE3F2)
end
pcall(function()
local _0xAB38 = isfile and isfile(_0xE604) and _0xE604 orstring.char(99,108,117,109,115,121,115,99,114,105,112,116,95,99,111,110,102,105,103,46,106,115,111,110)if isfile and isfile(_0xAB38) then
local _0xA65E = _0x1379:JSONDecode(readfile(_0xAB38))
if type(_0xA65E) ==string.char(116,97,98,108,101)then
_0x09F2 = _0xA65E
end
end
end)
local _0xA661 = {}
pcall(function()
local _0xAB38 = isfile and isfile(_0xFCF6) and _0xFCF6 orstring.char(99,108,117,109,115,121,115,99,114,105,112,116,95,99,111,110,102,105,103,115,46,106,115,111,110)if isfile and isfile(_0xAB38) then
local _0xA65E = _0x1379:JSONDecode(readfile(_0xAB38))
if type(_0xA65E) ==string.char(116,97,98,108,101)then
_0xA661 = _0xA65E
end
end
end)
local _0x3E73, _0x8269 = false, 0
local _0xD4DE = { [string.char(84,114,111,108,108,32,70,117,110,47,72,117,103,47,72,117,103)] = true }
local function _0xD34C(_0xD4D9, _0xEB0B)
if _0xD4DE[_0xD4D9] then
return
end
if _0x42B0 or _0x09F2[_0xD4D9] == _0xEB0B then
return
end
_0x09F2[_0xD4D9] = _0xEB0B
_0x3E73 = true
_0x8269 = os.clock()
end
local function _0xC44C()
_0x3E73 = false
if not writefile then
return
end
pcall(function()
writefile(_0xE604, _0x1379:JSONEncode(_0x09F2))
end)
end
local function _0x8CCF(source)
local _0xD828, _0x9F24 = pcall(function()
return _0x1379:JSONDecode(_0x1379:JSONEncode(source))
end)
return _0xD828 and _0x9F24 or {}
endlocal _0x49C9 =string.char(67,83,67,70,71,49,58)local _0x0008 =string.char(65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,48,49,50,51,52,53,54,55,56,57,43,47)local function _0x4DFA(_0x5E99)
local _0x1AC6 = {}
local _0xF52D = #_0x5E99
for _0x269E = 1, _0xF52D, 3 do
local _0xDA08 = string.byte(_0x5E99, _0x269E) or 0
local _0xBF1F = string.byte(_0x5E99, _0x269E + 1)
local _0x242F = string.byte(_0x5E99, _0x269E + 2)
local _0xE9D1 = _0xDA08 * 65536 + (_0xBF1F or 0) * 256 + (_0x242F or 0)
_0x1AC6[#_0x1AC6 + 1] = _0x0008:sub(math.floor(_0xE9D1 / 262144) % 64 + 1, math.floor(_0xE9D1 / 262144) % 64 + 1)
_0x1AC6[#_0x1AC6 + 1] = _0x0008:sub(math.floor(_0xE9D1 / 4096) % 64 + 1, math.floor(_0xE9D1 / 4096) % 64 + 1)
if _0xBF1F then
_0x1AC6[#_0x1AC6 + 1] = _0x0008:sub(math.floor(_0xE9D1 / 64) % 64 + 1, math.floor(_0xE9D1 / 64) % 64 + 1)
else
_0x1AC6[#_0x1AC6 + 1] =string.char(61)end
if _0x242F then
_0x1AC6[#_0x1AC6 + 1] = _0x0008:sub(_0xE9D1 % 64 + 1, _0xE9D1 % 64 + 1)
else
_0x1AC6[#_0x1AC6 + 1] =string.char(61)end
end
return table.concat(_0x1AC6)
end
local function _0x5464(_0x5E99)
_0x5E99 = tostring(_0x5E99 or""):gsub(string.char(37,115,43),"")
if _0x5E99 ==""or #_0x5E99 % 4 ~= 0 or _0x5E99:find(string.char(91,94,37,119,37,43,47,61,93)) then
return nil,string.char(105,110,118,97,108,105,100,32,115,104,97,114,101,32,73,68)end
local _0x4E0A = {}
for _0x269E = 1, #_0x0008 do
_0x4E0A[_0x0008:sub(_0x269E, _0x269E)] = _0x269E - 1
end
local _0x1AC6 = {}
for _0x269E = 1, #_0x5E99, 4 do
local _0x38A5, _0xA5A8, _0x2064, _0x6ABC = _0x5E99:sub(_0x269E, _0x269E), _0x5E99:sub(_0x269E + 1, _0x269E + 1), _0x5E99:sub(_0x269E + 2, _0x269E + 2), _0x5E99:sub(_0x269E + 3, _0x269E + 3)
local _0xDA08, _0xBF1F = _0x4E0A[_0x38A5], _0x4E0A[_0xA5A8]
if _0xDA08 == nil or _0xBF1F == nil then
return nil,string.char(105,110,118,97,108,105,100,32,115,104,97,114,101,32,73,68)end
local _0x242F = _0x2064 ==string.char(61)and 0 or _0x4E0A[_0x2064]
local _0xA65E = _0x6ABC ==string.char(61)and 0 or _0x4E0A[_0x6ABC]
if _0x242F == nil or _0xA65E == nil then
return nil,string.char(105,110,118,97,108,105,100,32,115,104,97,114,101,32,73,68)end
local _0xE9D1 = _0xDA08 * 262144 + _0xBF1F * 4096 + _0x242F * 64 + _0xA65E
_0x1AC6[#_0x1AC6 + 1] = string.char(math.floor(_0xE9D1 / 65536) % 256)
if _0x2064 ~=string.char(61)then
_0x1AC6[#_0x1AC6 + 1] = string.char(math.floor(_0xE9D1 / 256) % 256)
end
if _0x6ABC ~=string.char(61)then
_0x1AC6[#_0x1AC6 + 1] = string.char(_0xE9D1 % 256)
end
end
return table.concat(_0x1AC6)
end
local function _0xC469(_0x893F, _0x5E99)
local _0x603A = {
version = 1,
_0x893F = tostring(_0x893F orstring.char(83,104,97,114,101,100,32,67,111,110,102,105,103)),
_0x09F2 = _0x8CCF(_0x5E99),
}
local _0xD828, _0x8F82 = pcall(function()
return _0x1379:JSONEncode(_0x603A)
end)
if not _0xD828 then
return nil,string.char(99,111,117,108,100,32,110,111,116,32,101,110,99,111,100,101,32,99,111,110,102,105,103)end
return _0x49C9 .. _0x4DFA(_0x8F82)
end
local function _0xC04B(_0x4FE3)
_0x4FE3 = tostring(_0x4FE3 or""):match(string.char(94,37,115,42,40,46,45,41,37,115,42,36))
if _0x4FE3:sub(1, #_0x49C9) ~= _0x49C9 then
return nil,string.char(105,110,118,97,108,105,100,32,99,111,110,102,105,103,32,73,68)end
local _0xBE48, _0xDFBC = _0x5464(_0x4FE3:sub(#_0x49C9 + 1))
if not _0xBE48 then
return nil, _0xDFBC
end
local _0xD828, _0x603A = pcall(function()
return _0x1379:JSONDecode(_0xBE48)
end)
if not _0xD828 or type(_0x603A) ~=string.char(116,97,98,108,101)or _0x603A.version ~= 1 or type(_0x603A.config) ~=string.char(116,97,98,108,101)then
return nil,string.char(98,114,111,107,101,110,32,111,114,32,117,110,115,117,112,112,111,114,116,101,100,32,99,111,110,102,105,103,32,73,68)end
return _0x603A
end
local function _0x0E17()
local _0x4463 = _0x8CCF(_0x09F2)
for _0x624F, _0x00EA in ipairs(_0x278B) do
if _0x00EA.get then
local _0xD828, _0x08C2 = pcall(_0x00EA.get)
if _0xD828 and _0x08C2 ~= nil then
_0x4463[_0x00EA.key] = _0x08C2
end
end
end_0x35BB[string.char(77,101,110,117,47,87,105,100,116,104)] = math.floor(_0xFF96.Size.X.Offset + 0.5)
_0x4463[string.char(77,101,110,117,47,72,101,105,103,104,116)] = math.floor(_0xFF96.Size.Y.Offset + 0.5)
return _0x4463
end
local function _0x4714()
if not writefile then
return false,string.char(102,105,108,101,32,65,80,73,32,105,115,32,117,110,97,118,97,105,108,97,98,108,101)end
local _0xD828, _0xDFBC = pcall(function()
writefile(_0xFCF6, _0x1379:JSONEncode(_0xA661))
end)
return _0xD828, _0xDFBC
end
local function _0x7FCE(_0x893F)
_0x893F = tostring(_0x893F or""):match(string.char(94,37,115,42,40,46,45,41,37,115,42,36))
if _0x893F ==""then
return nil,string.char(101,110,116,101,114,32,97,32,99,111,110,102,105,103,32,110,97,109,101)end
if (utf8.len(_0x893F) or #_0x893F) > 32 then
return nil,string.char(110,97,109,101,32,109,117,115,116,32,98,101,32,51,50,32,99,104,97,114,97,99,116,101,114,115,32,111,114,32,108,101,115,115)end
if _0x893F:find(string.char(91,37,99,93)) then
return nil,string.char(110,97,109,101,32,99,111,110,116,97,105,110,115,32,117,110,115,117,112,112,111,114,116,101,100,32,99,104,97,114,97,99,116,101,114,115)end
return _0x893F
end
local function _0xB6F8(_0x5E99)
_0x09F2 = _0x8CCF(_0x5E99)local _0x71EF = tonumber(_0x09F2[string.char(77,101,110,117,47,87,105,100,116,104)])
local _0x77A2 = tonumber(_0x09F2[string.char(77,101,110,117,47,72,101,105,103,104,116)])
if _0x71EF or _0x77A2 then
local _0xCDE9 = math.clamp(_0x71EF or _0xFF96.Size.X.Offset, 430, 1000)
local _0xF171 = math.clamp(_0x77A2 or _0xFF96.Size.Y.Offset, 320, 760)
_0xFF96.Size = UDim2.fromOffset(_0xCDE9, _0xF171)
_0x5E37 = _0xCDE9 / 680
_0x67AD = _0xF171 / 470
_0x214C.Scale = _0xA20B
elseif next(_0x09F2) == nil then
_0xFF96.Size = UDim2.fromOffset(680, 470)
_0x5E37 = 1
_0x67AD = 1
_0x214C.Scale = _0xA20B
end
_0x42B0 = true
for _0x624F, _0x00EA in ipairs(_0x278B) do
local _0x08C2 = _0x09F2[_0x00EA.key]
if _0x08C2 == nil then
_0x08C2 = _0x00EA.default
end
if _0x08C2 ~= nil then
pcall(_0x00EA.set, _0x08C2)
end
end
_0x42B0 = false
_0x3E73 = false
_0xC44C()
end
_0xB9EB(_0xB197.Heartbeat, function()
if _0x3E73 and os.clock() - _0x8269 > 1 then
_0xC44C()
end
end)
local function _0x4B9C(_0x61C4, itemName)
return _0x61C4.tab.label.Text ..string.char(47).. _0x61C4.name ..string.char(47).. itemName
end
local function _0x04EF(_0xD4D9, _0x0A30, get, default)
if _0xD4DE[_0xD4D9] then
return
end
table.insert(_0x278B, { _0xD4D9 = _0xD4D9, _0x0A30 = _0x0A30, get = get, default = default })
end
local _0xCD2A = Color3.fromRGB(62, 62, 62)
local _0x9BC3 = Color3.fromRGB(88, 88, 88)
_0xE73A._row = function(self2, _0x893F, desc, _0xFE1D)
local _0xF171 = _0xFE1D or (desc and 40 or 32)
local _0x7D41 = _0x504E(string.char(84,101,120,116,66,117,116,116,111,110), {
Text ="",
BackgroundColor3 = _0x6274,
AutoButtonColor = false,
Position = UDim2.fromOffset(8, self2.y),
Size = UDim2.new(1, -16, 0, _0xF171),
ClipsDescendants = true,
Parent = self2.card,
})
_0xF153(_0x7D41, 7)
local _0xD41C = _0x24BA(_0x7D41)
table.insert(self2.rows, _0x7D41)
table.insert(self2.items, {
_0x7D41 = _0x7D41,
_0x546B = self2.y,
_0xF171 = _0xF171,
_0x893F = _0x893F,
desc = desc,
_0xD4D9 = (_0x893F ..string.char(32).. (desc or"")):lower(),
})
if self2.collapsible and not self2.isOpen then
_0x7D41.Visible = false
end
self2.y += _0xF171 + 6
self2.height = self2.y + 8 - 6
_0xEA27(self2.tab)
local _0x087C = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0, 0.5),
Position = UDim2.new(0, 0, 0.5, 0),
Size = UDim2.fromOffset(2, 0),
BackgroundColor3 = _0xA925,
BorderSizePixel = 0,
ZIndex = 2,
Parent = _0x7D41,
})
_0xF153(_0x087C, 1)
local _0x4A93 = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text = _0x893F,
Font = Enum.Font.GothamMedium,
TextSize = 12,
TextColor3 = _0xDC52,
TextXAlignment = Enum.TextXAlignment.Left,
TextTruncate = Enum.TextTruncate.AtEnd,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(12, desc and 6 or 0),
Size = UDim2.new(1, -150, 0, desc and 15 or _0xF171),
Parent = _0x7D41,
})
if desc then
_0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text = desc,
Font = Enum.Font.Gotham,
TextSize = 10,
TextColor3 = _0xD6E4,
TextXAlignment = Enum.TextXAlignment.Left,
TextTruncate = Enum.TextTruncate.AtEnd,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(12, 21),
Size = UDim2.new(1, -150, 0, 13),
Parent = _0x7D41,
})
end
local _0xDFA4, _0x9CCE = false, false
local function _0x609D()
local _0xAFC8 = _0xDFA4 or _0x9CCE
_0x0903(_0x087C, 0.3, { Size = UDim2.fromOffset(2, _0x9CCE and _0xF171 - 14 or (_0xDFA4 and 12 or 0)) }, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
_0x0903(_0x7D41, 0.15, { BackgroundColor3 = _0xDFA4 and _0xF139 or _0x6274 })
_0x0903(_0x4A93, 0.2, {
TextColor3 = _0xAFC8 and _0xA925 or _0xDC52,
Position = UDim2.fromOffset(_0xDFA4 and 15 or 12, _0x4A93.Position.Y.Offset),
}, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
_0x0903(_0xD41C, 0.2, { Color = _0x9CCE and _0x9BC3 or (_0xDFA4 and _0xCD2A or _0x2F00) })
end
_0xB9EB(_0x7D41.MouseEnter, function()
_0xDFA4 = true
_0x609D()
end)
_0xB9EB(_0x7D41.MouseLeave, function()
_0xDFA4 = false
_0x609D()
end)
local function _0x7DE7(_0xE496)
_0x9CCE = _0xE496
_0x609D()
end
return _0x7D41, _0x4A93, _0xD41C, _0x7DE7
endlocal _0x3DF5 = {
[string.char(69,110,97,98,108,101,32,49)] =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,48,48,55,55,50,53,48,57,53,56,51,51,51,54),
Sparkle =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,49,48,50,52,49,57,51,54,57,54,54,48,56,57),
[string.char(76,97,115,101,114,32,67,108,105,99,107)] =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,56,57,49,51,48,48,54,51,52,49),
[string.char(69,110,97,98,108,101,32,50)] =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,56,52,54,50,54,48,51,54,56,54,56,48,54,55),
Notify =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,48,51,52,50,49,51,48,52,48,50,48,48,51,57),
}
local _0xCCDB = true
local _0xCABF =string.char(69,110,97,98,108,101,32,49)local _0x7D12 =string.char(69,110,97,98,108,101,32,49)local _0xF8DC =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,56,55,54,57,51,57,56,51,48)local _0x65D4 = 0
local function _0x393E(enabled)
if not _0xCCDB then return end
local _0x4FE3 = _0x3DF5[enabled and _0xCABF or _0x7D12] or _0xF8DC
_0x65D4 = _0x65D4 + 1
local _0xED0B = _0x65D4
task.spawn(function()
local function _0xD9D1(_0xDF1D, _0x1E47)
local _0x9396 = Instance.new(string.char(83,111,117,110,100))
_0x9396.Name =string.char(67,108,117,109,115,121,95,85,73,95,84,111,103,103,108,101,83,111,117,110,100)_0x9396.SoundId = _0x1E47
_0x9396.Volume = 1
_0x9396.Looped = false
_0x9396.PlaybackSpeed = 1
_0x9396.Parent = _0xDF1D
return _0x9396
endlocal _0x9396 = _0xD9D1(_0x197F, _0x4FE3)
local _0x82DF = false
local _0xD828 = pcall(function()
_0x9396:Play()
_0x82DF = true
end)if not _0xD828 or not _0x82DF then
pcall(function() _0x9396:Destroy() end)
local _0x45C3 = workspace.CurrentCamera
if _0x45C3 then
local _0x5CFF = _0xD9D1(_0x45C3, _0x4FE3)
pcall(function() _0x5CFF:Play() end)
_0xBB91:AddItem(_0x5CFF, 5)
return
end
end
_0xBB91:AddItem(_0x9396, 5)task.delay(0.35, function()
if _0xED0B ~= _0x65D4 then return end
if _0x9396.Parent and not _0x9396.IsPlaying then
local _0x14F1 = _0xD9D1(workspace.CurrentCamera or _0x197F, _0xF8DC)
pcall(function() _0x14F1:Play() end)
_0xBB91:AddItem(_0x14F1, 5)
end
end)
end)
end
_0xE73A.Toggle = function(self2, _0x893F, desc, callback)
local _0xFB60 = false
local _0xD4D9 = _0x4B9C(self2, _0x893F)
local _0x7D41, _0x624F, _0x624F, _0x7DE7 = self2:_row(_0x893F, desc)
local _0x4517 = _0x504E(string.char(84,101,120,116,66,117,116,116,111,110), {
AnchorPoint = Vector2.new(1, 0.5),
Position = UDim2.new(1, -10, 0.5, 0),
Size = UDim2.fromOffset(34, 18),
BackgroundColor3 = _0xAA5A,
BorderSizePixel = 0,
AutoButtonColor = false,
Text ="",
Parent = _0x7D41,
})
_0x9A43(_0x4517)
local _0x1602 = _0x24BA(_0x4517)
local _0x9470 = _0x504E(string.char(70,114,97,109,101), {
Size = UDim2.fromScale(1, 1),
BackgroundColor3 = _0xA925,
BackgroundTransparency = 1,
BorderSizePixel = 0,
Parent = _0x4517,
})
_0x9A43(_0x9470)
_0x504E(string.char(85,73,71,114,97,100,105,101,110,116), { Color = ColorSequence.new(Color3.fromRGB(150, 150, 150), _0xA925), Parent = _0x9470 })
local _0x2AF9 = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.new(0, 9, 0.5, 0),
Size = UDim2.fromOffset(12, 12),
BackgroundColor3 = _0x2E02,
BorderSizePixel = 0,
ZIndex = 2,
Parent = _0x4517,
})
_0x9A43(_0x2AF9)
local function _0xBD2B(_0xEB0B, silent)
_0xFB60 = _0xEB0B
_0x2AF9.Size = UDim2.fromOffset(18, 12)
_0x0903(_0x2AF9, 0.35, {
Position = UDim2.new(0, _0xFB60 and 25 or 9, 0.5, 0),
Size = UDim2.fromOffset(12, 12),
BackgroundColor3 = _0xFB60 and _0xAA5A or _0x2E02,
}, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
_0x0903(_0x9470, 0.25, { BackgroundTransparency = _0xFB60 and 0 or 1 })
_0x0903(_0x1602, 0.25, { Color = _0xFB60 and _0xA925 or _0x2F00 })
_0x7DE7(_0xFB60)
_0xD34C(_0xD4D9, _0xFB60)
if not silent then
_0x393E(_0xFB60)
task.spawn(callback, _0xFB60)
end
end_0xF709(_0x4517.MouseButton1Click, function()
_0xBD2B(not _0xFB60)
end)
_0x04EF(_0xD4D9, function(_0xEB0B)
if type(_0xEB0B) ==string.char(98,111,111,108,101,97,110)and _0xEB0B ~= _0xFB60 then
_0xBD2B(_0xEB0B)
end
end, function()
return _0xFB60
end, false)
return {
Set = function(_0xEB0B, silent)
if _0xEB0B ~= _0xFB60 then
_0xBD2B(_0xEB0B, silent)
end
end,
Get = function()
return _0xFB60
end,
}
end
_0xE73A.Segmented = function(self2, _0x893F, _0x6649, default, callback)
local _0xC126 = table.find(_0x6649, default) or 1
local _0xE9D1 = #_0x6649
local _0xD4D9 = _0x4B9C(self2, _0x893F)
local _0x7D41, _0x4A93 = self2:_row(_0x893F, nil, 34)
local _0xECAC = _0xE9D1 * 60
_0x4A93.Size = UDim2.new(1, -(_0xECAC + 24), 1, 0)
local _0xDC54 = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(1, 0.5),
Position = UDim2.new(1, -6, 0.5, 0),
Size = UDim2.fromOffset(_0xECAC, 24),
BackgroundColor3 = _0xAA5A,
Parent = _0x7D41,
})
_0xF153(_0xDC54, 7)
local _0x6C4D = _0x24BA(_0xDC54)
local _0x9D21 = _0x504E(string.char(70,114,97,109,101), {
Position = UDim2.new((_0xC126 - 1) / _0xE9D1, 2, 0, 2),
Size = UDim2.new(1 / _0xE9D1, -4, 1, -4),
BackgroundColor3 = _0xA925,
BorderSizePixel = 0,
ZIndex = 2,
Parent = _0xDC54,
})
_0xF153(_0x9D21, 6)
_0x504E(string.char(85,73,71,114,97,100,105,101,110,116), {
Rotation = 90,
Color = ColorSequence.new(_0xA925, Color3.fromRGB(185, 185, 185)),
Parent = _0x9D21,
})
local _0xEB8E = _0x504E(string.char(85,73,83,99,97,108,101), { Parent = _0x9D21 })
local _0xE32F = {}
local function _0x0A30(_0x269E, silent)
if _0x269E == _0xC126 then
return
end
_0x0903(_0xE32F[_0xC126], 0.2, { TextColor3 = _0x2E02 })
_0xE32F[_0xC126].Font = Enum.Font.GothamMedium
_0xC126 = _0x269E
_0x0903(_0xE32F[_0x269E], 0.2, { TextColor3 = _0xAA5A })
_0xE32F[_0x269E].Font = Enum.Font.GothamBold
_0x0903(_0x9D21, 0.35, { Position = UDim2.new((_0x269E - 1) / _0xE9D1, 2, 0, 2) }, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
_0xEB8E.Scale = 0.86
_0x0903(_0xEB8E, 0.4, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
_0x6C4D.Color = _0xA925
_0x0903(_0x6C4D, 0.45, { Color = _0x2F00 })
_0xD34C(_0xD4D9, _0x6649[_0x269E])
if not silent then
task.spawn(callback, _0x6649[_0x269E])
end
end
_0x04EF(_0xD4D9, function(_0xEB0B)
local _0x269E = table.find(_0x6649, _0xEB0B)
if _0x269E then
_0x0A30(_0x269E)
end
end, function()
return _0x6649[_0xC126]
end, _0x6649[table.find(_0x6649, default) or 1])
for _0x269E, opt in ipairs(_0x6649) do
local _0xBF1F = _0x504E(string.char(84,101,120,116,66,117,116,116,111,110), {
Text = opt,
Font = _0x269E == _0xC126 and Enum.Font.GothamBold or Enum.Font.GothamMedium,
TextSize = 11,
TextColor3 = _0x269E == _0xC126 and _0xAA5A or _0x2E02,
BackgroundTransparency = 1,
AutoButtonColor = false,
Position = UDim2.fromScale((_0x269E - 1) / _0xE9D1, 0),
Size = UDim2.fromScale(1 / _0xE9D1, 1),
ZIndex = 3,
Parent = _0xDC54,
})
_0xE32F[_0x269E] = _0xBF1F
_0xB9EB(_0xBF1F.MouseEnter, function()
if _0x269E ~= _0xC126 then
_0x0903(_0xBF1F, 0.15, { TextColor3 = _0xDC52 })
end
end)
_0xB9EB(_0xBF1F.MouseLeave, function()
if _0x269E ~= _0xC126 then
_0x0903(_0xBF1F, 0.15, { TextColor3 = _0x2E02 })
end
end)
_0xB9EB(_0xBF1F.MouseButton1Click, function()
_0x0A30(_0x269E)
end)
end
return {
Set = function(opt, silent)
local _0x269E = table.find(_0x6649, opt)
if _0x269E then
_0x0A30(_0x269E, silent)
end
end,
Get = function()
return _0x6649[_0xC126]
end,
}
end
_0xE73A.Button = function(self2, _0x893F, desc, callback)
local _0x7D41 = self2:_row(_0x893F, desc)
local _0x9121 = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(1, 0.5),
Position = UDim2.new(1, -8, 0.5, 0),
Size = UDim2.fromOffset(22, 22),
BackgroundColor3 = _0xAA5A,
ZIndex = 2,
Parent = _0x7D41,
})
_0x9A43(_0x9121)
local _0x13E2 = _0x24BA(_0x9121)
local _0x7B08 = _0x504E(string.char(85,73,83,99,97,108,101), { Parent = _0x9121 })
local _0x2DC4 = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.new(0.5, 1, 0.5, 0),
Size = UDim2.fromOffset(6, 10),
BackgroundTransparency = 1,
ZIndex = 2,
Parent = _0x9121,
})
local _0x9784 = _0x9E1D(_0x2DC4, 1, 1, 5, 5, 1.6)
local _0x5904 = _0x9E1D(_0x2DC4, 5, 5, 1, 9, 1.6)
_0x9784.ZIndex, _0x5904.ZIndex = 3, 3
_0xB9EB(_0x7D41.MouseEnter, function()
_0x0903(_0x9121, 0.2, { BackgroundColor3 = _0xA925 })
_0x0903(_0x13E2, 0.2, { Color = _0xA925 })
_0x0903(_0x9784, 0.2, { BackgroundColor3 = _0xAA5A })
_0x0903(_0x5904, 0.2, { BackgroundColor3 = _0xAA5A })
end)
_0xB9EB(_0x7D41.MouseLeave, function()
_0x0903(_0x9121, 0.2, { BackgroundColor3 = _0xAA5A })
_0x0903(_0x13E2, 0.2, { Color = _0x2F00 })
_0x0903(_0x9784, 0.2, { BackgroundColor3 = _0x2E02 })
_0x0903(_0x5904, 0.2, { BackgroundColor3 = _0x2E02 })
end)
_0xB9EB(_0x7D41.MouseButton1Click, function()
local _0xCDE9 = _0x7D41.AbsoluteSize.X * 1.15
local _0x6FF6 = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromScale(0.5, 0.5),
Size = UDim2.fromOffset(0, 0),
BackgroundColor3 = _0xA925,
BackgroundTransparency = 0.82,
BorderSizePixel = 0,
Parent = _0x7D41,
})
_0x9A43(_0x6FF6)
_0x0903(_0x6FF6, 0.55, { Size = UDim2.fromOffset(_0xCDE9, _0xCDE9), BackgroundTransparency = 1 })
task.delay(0.6, function()
_0x6FF6:Destroy()
end)
_0x7B08.Scale = 0.75
_0x0903(_0x7B08, 0.4, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
task.spawn(callback)
end)
end
_0xE73A.Input = function(self2, _0x893F, desc, placeholder)
local _0x7D41 = self2:_row(_0x893F, desc)
local _0x025A = _0x504E(string.char(84,101,120,116,66,111,120), {
Text ="",
PlaceholderText = placeholder orstring.char(101,110,116,101,114,32,116,101,120,116),
PlaceholderColor3 = _0xD6E4,
Font = Enum.Font.GothamMedium,
TextSize = 11,
TextColor3 = _0xDC52,
TextXAlignment = Enum.TextXAlignment.Left,
ClearTextOnFocus = false,
BackgroundColor3 = _0xAA5A,
AnchorPoint = Vector2.new(1, 0.5),
Position = UDim2.new(1, -10, 0.5, 0),
Size = UDim2.fromOffset(130, 24),
Parent = _0x7D41,
})
_0xF153(_0x025A, 6)
local _0x4233 = _0x24BA(_0x025A)
_0x504E(string.char(85,73,80,97,100,100,105,110,103), { PaddingLeft = UDim.new(0, 8), PaddingRight = UDim.new(0, 8), Parent = _0x025A })
_0xB9EB(_0x025A.Focused, function()
_0x0903(_0x4233, 0.15, { Color = _0xA925 })
end)
_0xB9EB(_0x025A.FocusLost, function()
_0x0903(_0x4233, 0.25, { Color = _0x2F00 })
end)
return {
Get = function()
return _0x025A.Text
end,
Set = function(_0x08C2)
_0x025A.Text = tostring(_0x08C2 or"")
end,
SetPlaceholder = function(_0x08C2)
_0x025A.PlaceholderText = tostring(_0x08C2 or"")
end,
Focus = function()
_0x025A:CaptureFocus()
end,
}
end
_0xE73A.Dropdown = function(self2, _0x893F, desc, _0x6649, placeholder, callback)
local _0x7D41 = self2:_row(_0x893F, desc)
local _0x66B9 = table.clone(_0x6649 or {})
local _0x0A40
local _0x347C
local _0x2168 = _0x504E(string.char(84,101,120,116,66,117,116,116,111,110), {
Text = placeholder orstring.char(115,101,108,101,99,116,46,46,46),
Font = Enum.Font.GothamMedium,
TextSize = 11,
TextColor3 = _0x2E02,
TextXAlignment = Enum.TextXAlignment.Left,
TextTruncate = Enum.TextTruncate.AtEnd,
BackgroundColor3 = _0xAA5A,
AutoButtonColor = false,
AnchorPoint = Vector2.new(1, 0.5),
Position = UDim2.new(1, -10, 0.5, 0),
Size = UDim2.fromOffset(130, 24),
Parent = _0x7D41,
})
_0xF153(_0x2168, 6)
local _0xA1AA = _0x24BA(_0x2168)
_0x504E(string.char(85,73,80,97,100,100,105,110,103), { PaddingLeft = UDim.new(0, 8), PaddingRight = UDim.new(0, 20), Parent = _0x2168 })
local _0x2DC4 = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(118),
Font = Enum.Font.GothamBold,
TextSize = 10,
TextColor3 = _0xD6E4,
BackgroundTransparency = 1,
AnchorPoint = Vector2.new(1, 0.5),
Position = UDim2.new(1, -6, 0.5, -1),
Size = UDim2.fromOffset(12, 16),
ZIndex = 3,
Parent = _0x2168,
})
local function _0xD991(_0x08C2, silent)
if _0x08C2 ~= nil and not table.find(_0x66B9, _0x08C2) then
return
end
_0x0A40 = _0x08C2
_0x2168.Text = _0x08C2 or placeholder orstring.char(115,101,108,101,99,116,46,46,46)_0x2168.TextColor3 = _0x08C2 and _0xDC52 or _0x2E02
if _0x08C2 and not silent then
task.spawn(callback, _0x08C2)
end
end
_0xB9EB(_0x2168.MouseButton1Click, function()
if _0x347C then
_0x347C()
return
end
local _0xE349 = _0x504E(string.char(84,101,120,116,66,117,116,116,111,110), {
Text ="",
BackgroundTransparency = 1,
AutoButtonColor = false,
Size = UDim2.fromScale(1, 1),
ZIndex = 149,
Parent = _0x0155,
})
local _0xBA41 = math.max(1, math.min(#_0x66B9, 5))
local _0x9128 = _0xBA41 * 26 + 8
local _0x7514 = _0x2168.AbsolutePosition - _0x0155.AbsolutePosition
local _0x4244 = math.clamp(_0x7514.X, 4, math.max(4, _0x0155.AbsoluteSize.X - 134))
local _0x32D8 = _0x7514.Y + _0x2168.AbsoluteSize.Y + 4
local _0x546B = _0x32D8 + _0x9128 <= _0x0155.AbsoluteSize.Y - 4 and _0x32D8 or math.max(4, _0x7514.Y - _0x9128 - 4)
local _0x87E2 = _0x504E(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(_0x4244, _0x546B),
Size = UDim2.fromOffset(130, _0x9128),
BackgroundColor3 = _0x7D00,
ZIndex = 150,
Parent = _0x0155,
})
_0xF153(_0x87E2, 7)
_0x504E(string.char(85,73,83,116,114,111,107,101), { Color = _0xA925, Transparency = 0.45, Thickness = 1, Parent = _0x87E2 })
local _0xDFBA = _0x504E(string.char(83,99,114,111,108,108,105,110,103,70,114,97,109,101), {
Position = UDim2.fromOffset(4, 4),
Size = UDim2.new(1, -8, 1, -8),
BackgroundTransparency = 1,
BorderSizePixel = 0,
ScrollBarThickness = #_0x66B9 > 5 and 2 or 0,
CanvasSize = UDim2.fromOffset(0, math.max(22, #_0x66B9 * 26)),
ZIndex = 151,
Parent = _0x87E2,
})
_0x347C = function()
_0x347C = nil
if _0xE349.Parent then
_0xE349:Destroy()
end
if _0x87E2.Parent then
_0x87E2:Destroy()
end
_0x0903(_0xA1AA, 0.2, { Color = _0x2F00 })
_0x0903(_0x2DC4, 0.2, { Rotation = 0, TextColor3 = _0xD6E4 })
end
_0xE349.MouseButton1Click:Connect(_0x347C)
_0x0903(_0xA1AA, 0.15, { Color = _0xA925 })
_0x0903(_0x2DC4, 0.2, { Rotation = 180, TextColor3 = _0xA925 })
if #_0x66B9 == 0 then
_0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(110,111,32,99,111,110,102,105,103,115),
Font = Enum.Font.GothamMedium,
TextSize = 10,
TextColor3 = _0xD6E4,
BackgroundTransparency = 1,
Size = UDim2.new(1, 0, 0, 22),
ZIndex = 152,
Parent = _0xDFBA,
})
else
for _0x269E, _0x08C2 in ipairs(_0x66B9) do
local _0x2062 = _0x504E(string.char(84,101,120,116,66,117,116,116,111,110), {
Text = _0x08C2,
Font = _0x0A40 == _0x08C2 and Enum.Font.GothamBold or Enum.Font.GothamMedium,
TextSize = 10,
TextColor3 = _0x0A40 == _0x08C2 and _0xA925 or _0xDC52,
TextTruncate = Enum.TextTruncate.AtEnd,
BackgroundColor3 = _0x0A40 == _0x08C2 and _0xF139 or _0x6274,
AutoButtonColor = false,
Position = UDim2.fromOffset(0, (_0x269E - 1) * 26),
Size = UDim2.new(1, -2, 0, 22),
ZIndex = 152,
Parent = _0xDFBA,
})
_0xF153(_0x2062, 5)
_0x2062.MouseButton1Click:Connect(function()
_0xD991(_0x08C2)
_0x347C()
end)
end
end
end)
return {
Get = function()
return _0x0A40
end,
Set = _0xD991,
Update = function(newOptions)
_0x66B9 = table.clone(newOptions or {})
if _0x0A40 and not table.find(_0x66B9, _0x0A40) then
_0xD991(nil, true)
end
if _0x347C then
_0x347C()
end
end,
}
end
local _0x1AC3
_0xE73A.Slider = function(self2, _0x893F, min, _0xFAA8, default, callback, fmt)
fmt = fmt or tostring
local _0xD4D9 = _0x4B9C(self2, _0x893F)
local _0x7D41, _0x4A93 = self2:_row(_0x893F, nil, 44)
_0x4A93.Position = UDim2.fromOffset(12, 7)
local _0x5C12 = 40
for _0x624F, _0xEB0B in ipairs({ min, _0xFAA8, default }) do
_0x5C12 = math.max(_0x5C12, _0x48B6:GetTextSize(fmt(_0xEB0B), 10, Enum.Font.GothamBold, Vector2.new(200, 20)).X + 16)
end
_0x4A93.Size = UDim2.new(1, -(_0x5C12 + 30), 0, 16)
local _0x6908 = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text = fmt(default),
Font = Enum.Font.GothamBold,
TextSize = 10,
TextColor3 = _0xDC52,
BackgroundColor3 = _0xAA5A,
AnchorPoint = Vector2.new(1, 0),
Position = UDim2.new(1, -10, 0, 6),
Size = UDim2.fromOffset(_0x5C12, 18),
Parent = _0x7D41,
})
_0xF153(_0x6908, 6)
local _0xFBD8 = _0x24BA(_0x6908)
local _0xDBC6 = _0x504E(string.char(70,114,97,109,101), {
Position = UDim2.new(0, 12, 0, 31),
Size = UDim2.new(1, -24, 0, 5),
BackgroundColor3 = _0xAA5A,
BorderSizePixel = 0,
Parent = _0x7D41,
})
_0x9A43(_0xDBC6)
_0x24BA(_0xDBC6)
local _0x1959 = (default - min) / (_0xFAA8 - min)
local _0x5B17 = _0x504E(string.char(70,114,97,109,101), {
Size = UDim2.new(_0x1959, 6 - 12 * _0x1959, 1, 0),
BackgroundColor3 = _0xA925,
BorderSizePixel = 0,
Parent = _0xDBC6,
})
_0x9A43(_0x5B17)
_0x504E(string.char(85,73,71,114,97,100,105,101,110,116), { Color = ColorSequence.new(Color3.fromRGB(95, 95, 95), _0xA925), Parent = _0x5B17 })
local _0x4517 = _0x504E(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(6, 0),
Size = UDim2.new(1, -12, 1, 0),
BackgroundTransparency = 1,
ZIndex = 2,
Parent = _0xDBC6,
})
local _0x2AF9 = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromScale(_0x1959, 0.5),
Size = UDim2.fromOffset(12, 12),
BackgroundColor3 = _0xA925,
BorderSizePixel = 0,
ZIndex = 2,
Parent = _0x4517,
})
_0x9A43(_0x2AF9)
_0x504E(string.char(85,73,83,116,114,111,107,101), { Color = _0x6274, Thickness = 2, Parent = _0x2AF9 })
local _0x621E = _0x504E(string.char(85,73,83,99,97,108,101), { Parent = _0x2AF9 })
local _0x9E39 = _0x504E(string.char(84,101,120,116,66,117,116,116,111,110), {
Text ="",
BackgroundTransparency = 1,
Position = UDim2.new(0, 0, 0, 22),
Size = UDim2.new(1, 0, 0, 22),
ZIndex = 3,
Parent = _0x7D41,
})
local _0x3133 = default
local _0xA50B = false
local function _0x57F2(_0xCA73, _0x634C)
local _0x00EA = (_0xCA73 - min) / (_0xFAA8 - min)
_0x0903(_0x2AF9, _0x634C, { Position = UDim2.fromScale(_0x00EA, 0.5) }, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
_0x0903(_0x5B17, _0x634C, { Size = UDim2.new(_0x00EA, 6 - 12 * _0x00EA, 1, 0) }, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
_0x6908.Text = fmt(_0xCA73)
end
local function _0x0A30(_0x4244)
local _0xCDE9 = math.max(_0x4517.AbsoluteSize.X, 1)
local _0x7514 = math.clamp((_0x4244 - _0x4517.AbsolutePosition.X) / _0xCDE9, 0, 1)
local _0xCA73 = math.floor(min + (_0xFAA8 - min) * _0x7514 + 0.5)
_0x57F2(_0xCA73, 0.08)
if _0xCA73 ~= _0x3133 then
_0x3133 = _0xCA73
_0xD34C(_0xD4D9, _0xCA73)
task.spawn(callback, _0xCA73)
end
end
_0xB9EB(_0x7D41.MouseEnter, function()
if not _0xA50B then
_0x0903(_0x621E, 0.2, { Scale = 1.15 })
end
end)
_0xB9EB(_0x7D41.MouseLeave, function()
if not _0xA50B then
_0x0903(_0x621E, 0.2, { Scale = 1 })
end
end)
_0xB9EB(_0x9E39.InputBegan, function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
_0x1AC3 = _0x0A30
_0xA50B = true
_0x0903(_0x621E, 0.2, { Scale = 1.35 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
_0x0903(_0xFBD8, 0.15, { Color = _0xA925 })
_0x0903(_0x6908, 0.15, { TextColor3 = _0xA925 })
_0x0A30(input.Position.X)
end
end)
_0xB9EB(_0x24DA.InputEnded, function(input)
if not _0xA50B then
return
end
if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
_0xA50B = false
_0x0903(_0x621E, 0.25, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
_0x0903(_0xFBD8, 0.3, { Color = _0x2F00 })
_0x0903(_0x6908, 0.3, { TextColor3 = _0xDC52 })
end
end)
local function _0x9298(_0xEB0B, silent)
_0xEB0B = math.clamp(_0xEB0B, min, _0xFAA8)
_0x57F2(_0xEB0B, 0.3)
if _0xEB0B ~= _0x3133 then
_0x3133 = _0xEB0B
_0xD34C(_0xD4D9, _0xEB0B)
if not silent then
task.spawn(callback, _0xEB0B)
end
end
end
_0x04EF(_0xD4D9, function(_0xEB0B)
if type(_0xEB0B) ==string.char(110,117,109,98,101,114)then
_0x9298(_0xEB0B)
end
end, function()
return _0x3133
end, default)
return {
Set = _0x9298,
Get = function()
return _0x3133
end,
}
end
_0xE73A.Keybind = function(self2, _0x893F, desc, getKey, setKey)
local _0xD4D9 = _0x4B9C(self2, _0x893F)
local _0x7D41 = self2:_row(_0x893F, desc)
local _0x2168 = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text = getKey().Name,
Font = Enum.Font.GothamBold,
TextSize = 10,
TextColor3 = _0xDC52,
TextTruncate = Enum.TextTruncate.AtEnd,
BackgroundColor3 = _0xAA5A,
AnchorPoint = Vector2.new(1, 0.5),
Position = UDim2.new(1, -10, 0.5, 0),
Size = UDim2.fromOffset(84, 22),
Parent = _0x7D41,
})
_0xF153(_0x2168, 6)
local _0xA1AA = _0x24BA(_0x2168)
_0xB9EB(_0x7D41.MouseButton1Click, function()
if _0xF269 then
return
end
_0x2168.Text =string.char(112,114,101,115,115,32,97,32,107,101,121,46,46,46)_0x0903(_0xA1AA, 0.15, { Color = _0xA925 })
_0x0903(_0x2168, 0.15, { BackgroundColor3 = _0xF139 })
_0xF269 = function(_0x2DD2)
if _0x2DD2 and _0x2DD2 ~= Enum.KeyCode.Escape then
setKey(_0x2DD2)
_0xD34C(_0xD4D9, _0x2DD2.Name)
end
_0x2168.Text = getKey().Name
_0x0903(_0xA1AA, 0.3, { Color = _0x2F00 })
_0x0903(_0x2168, 0.3, { BackgroundColor3 = _0xAA5A })
end
end)
_0x04EF(_0xD4D9, function(_0xEB0B)
local _0xD828, _0x2DD2 = pcall(function()
return Enum.KeyCode[_0xEB0B]
end)
if _0xD828 and _0x2DD2 then
setKey(_0x2DD2)
_0x2168.Text = _0x2DD2.Name
end
end, function()
return getKey().Name
end, getKey().Name)
end
_0xE73A.Select = function(self2, _0x893F, desc, _0x6649, default, callback)
local _0xC126 = table.find(_0x6649, default) or 1
local _0xE9D1 = #_0x6649
local _0xD4D9 = _0x4B9C(self2, _0x893F)
local _0x7D41 = self2:_row(_0x893F, desc)
local _0x2168 = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(1, 0.5),
Position = UDim2.new(1, -10, 0.5, 0),
Size = UDim2.fromOffset(130, 24),
BackgroundColor3 = _0xAA5A,
ClipsDescendants = true,
Parent = _0x7D41,
})
_0xF153(_0x2168, 6)
local _0xA1AA = _0x24BA(_0x2168)
local _0x616B = {}
for _0x624F, _0x0447 in ipairs({ -1, 1 }) do
local _0xDA08 = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.new(_0x0447 < 0 and 0 or 1, _0x0447 < 0 and 10 or -10, 0.5, -1),
Size = UDim2.fromOffset(5, 8),
BackgroundTransparency = 1,
ZIndex = 2,
Parent = _0x2168,
})
local _0xAC0B, _0xF69A
if _0x0447 < 0 then
_0xAC0B, _0xF69A = _0x9E1D(_0xDA08, 4, 0.5, 1, 4, 1.4), _0x9E1D(_0xDA08, 1, 4, 4, 7.5, 1.4)
else
_0xAC0B, _0xF69A = _0x9E1D(_0xDA08, 1, 0.5, 4, 4, 1.4), _0x9E1D(_0xDA08, 4, 4, 1, 7.5, 1.4)
end
_0xAC0B.ZIndex, _0xF69A.ZIndex = 2, 2
_0x616B[_0x0447] = { _0x6E55 = _0xDA08, _0xAC0B = _0xAC0B, _0xF69A = _0xF69A }
end
local _0x8753 = {}
if _0xE9D1 <= 8 then
for _0x269E = 1, _0xE9D1 do
local _0xA65E = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 1),
Position = UDim2.new(0.5, (_0x269E - (_0xE9D1 + 1) / 2) * 6, 1, -3),
Size = UDim2.fromOffset(_0x269E == _0xC126 and 5 or 2, 2),
BackgroundColor3 = _0x269E == _0xC126 and _0xA925 or _0xD6E4,
BorderSizePixel = 0,
ZIndex = 2,
Parent = _0x2168,
})
_0x9A43(_0xA65E)
_0x8753[_0x269E] = _0xA65E
end
end
local function _0xD9E7(_0xEE8A, yScale, transp)
return _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text = _0xEE8A,
Font = Enum.Font.GothamMedium,
TextSize = 11,
TextColor3 = _0xDC52,
TextTransparency = transp,
TextTruncate = Enum.TextTruncate.AtEnd,
BackgroundTransparency = 1,
Position = UDim2.new(0, 18, yScale, #_0x8753 > 0 and -2 or 0),
Size = UDim2.new(1, -36, 1, 0),
Parent = _0x2168,
})
end
local _0xFE81 = _0xD9E7(_0x6649[_0xC126], 0, 0)
local _0x1755 = #_0x8753 > 0 and -2 or 0
local function _0x056B(_0x269E, _0x0447, silent)
if _0x269E == _0xC126 then
return
end
if _0x8753[_0xC126] then
_0x0903(_0x8753[_0xC126], 0.25, { Size = UDim2.fromOffset(2, 2), BackgroundColor3 = _0xD6E4 })
end
_0xC126 = _0x269E
if _0x8753[_0xC126] then
_0x0903(_0x8753[_0xC126], 0.25, { Size = UDim2.fromOffset(5, 2), BackgroundColor3 = _0xA925 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
end
local _0xF7C5 = _0xFE81
_0x0903(_0xF7C5, 0.15, { Position = UDim2.new(0, 18, -_0x0447, _0x1755), TextTransparency = 1 })
task.delay(0.16, function()
_0xF7C5:Destroy()
end)
_0xFE81 = _0xD9E7(_0x6649[_0xC126], _0x0447, 1)
_0x0903(_0xFE81, 0.25, { Position = UDim2.new(0, 18, 0, _0x1755), TextTransparency = 0 }, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
local _0x67B1 = _0x616B[_0x0447]
local _0x12EF = _0x67B1.frame.Position
_0x67B1.frame.Position = _0x12EF + UDim2.fromOffset(_0x0447 * 3, 0)
_0x0903(_0x67B1.frame, 0.3, { Position = _0x12EF }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
_0xA1AA.Color = _0xA925
_0x0903(_0xA1AA, 0.4, { Color = _0x2F00 })
_0xD34C(_0xD4D9, _0x6649[_0xC126])
if not silent then
task.spawn(callback, _0x6649[_0xC126])
end
end
_0x04EF(_0xD4D9, function(_0xEB0B)
local _0x269E = table.find(_0x6649, _0xEB0B)
if _0x269E and _0x269E ~= _0xC126 then
_0x056B(_0x269E, _0x269E > _0xC126 and 1 or -1)
end
end, function()
return _0x6649[_0xC126]
end, _0x6649[table.find(_0x6649, default) or 1])
local function _0x8B16(_0x0447)
_0x056B((_0xC126 - 1 + _0x0447) % _0xE9D1 + 1, _0x0447)
end
_0xB9EB(_0x7D41.MouseButton1Click, function()
_0x8B16(1)
end)
_0xB9EB(_0x7D41.MouseButton2Click, function()
_0x8B16(-1)
end)
_0xB9EB(_0x7D41.MouseEnter, function()
for _0x624F, _0x67B1 in pairs(_0x616B) do
_0x0903(_0x67B1.l1, 0.15, { BackgroundColor3 = _0xA925 })
_0x0903(_0x67B1.l2, 0.15, { BackgroundColor3 = _0xA925 })
end
end)
_0xB9EB(_0x7D41.MouseLeave, function()
for _0x624F, _0x67B1 in pairs(_0x616B) do
_0x0903(_0x67B1.l1, 0.15, { BackgroundColor3 = _0x2E02 })
_0x0903(_0x67B1.l2, 0.15, { BackgroundColor3 = _0x2E02 })
end
end)
return {
Set = function(opt, silent)
local _0x269E = table.find(_0x6649, opt)
if _0x269E then
_0x056B(_0x269E, _0x269E > _0xC126 and 1 or -1, silent)
end
end,
Get = function()
return _0x6649[_0xC126]
end,
}
end
local _0x38CF
local _0xEB97 = {
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
local function _0x62E3(_0x830D)
return _0x830D.AbsolutePosition - _0x0155.AbsolutePosition
end
local function _0x1377(anchor, startColor, defaultColor, onChange)
local _0xF171, _0x81AA, _0xEB0B = startColor:ToHSV()
local _0x251A = startColor
local _0xE349 = _0x504E(string.char(84,101,120,116,66,117,116,116,111,110), {
Text ="",
AutoButtonColor = false,
BackgroundColor3 = Color3.new(0, 0, 0),
BackgroundTransparency = 1,
Size = UDim2.fromScale(1, 1),
ZIndex = 149,
Parent = _0xFF96,
})
_0xF153(_0xE349, 10)
_0x0903(_0xE349, 0.3, { BackgroundTransparency = 0.45 })
local _0x87E2 = _0x504E(string.char(67,97,110,118,97,115,71,114,111,117,112), {
Active = true,
AnchorPoint = Vector2.new(0.5, 0.5),
BackgroundColor3 = _0x7D00,
GroupTransparency = 1,
Size = UDim2.fromOffset(264, 344),
ZIndex = 150,
Parent = _0x0155,
})
_0xF153(_0x87E2, 12)
_0x504E(string.char(85,73,83,116,114,111,107,101), { Color = _0xA925, Transparency = 0.82, Thickness = 1, Parent = _0x87E2 })
local _0x6F3B = _0x504E(string.char(85,73,83,99,97,108,101), { Scale = 0.08, Parent = _0x87E2 })
local function _0x1822()
local _0x09CD, _0x3C5E = _0x62E3(anchor), anchor.AbsoluteSize
return UDim2.fromOffset(_0x09CD.X + _0x3C5E.X / 2, _0x09CD.Y + _0x3C5E.Y / 2)
end
local function _0x232F()
local _0x09CD, _0x3C5E = _0x62E3(_0xFF96), _0xFF96.AbsoluteSize
return UDim2.fromOffset(_0x09CD.X + _0x3C5E.X / 2, _0x09CD.Y + _0x3C5E.Y / 2)
end
_0x87E2.Position = _0x1822()
local _0xACDD = {}
local _0x8BF5 = {
{ Color3.fromRGB(255, 95, 87),string.char(195,151)},
{ Color3.fromRGB(254, 188, 46),string.char(226,128,147)},
{ Color3.fromRGB(40, 200, 64),string.char(43)},
}
local _0xB642 = _0x504E(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(12, 10),
Size = UDim2.fromOffset(56, 12),
BackgroundTransparency = 1,
ZIndex = 151,
Parent = _0x87E2,
})
for _0x269E, _0x3E3E in ipairs(_0x8BF5) do
local _0xBF1F = _0x504E(string.char(84,101,120,116,66,117,116,116,111,110), {
Text ="",
Font = Enum.Font.GothamBold,
TextSize = 10,
TextColor3 = Color3.fromRGB(60, 20, 10),
TextTransparency = 1,
AutoButtonColor = false,
BackgroundColor3 = _0x3E3E[1],
Position = UDim2.fromOffset((_0x269E - 1) * 19, 0),
Size = UDim2.fromOffset(12, 12),
ZIndex = 152,
Parent = _0xB642,
})
_0x9A43(_0xBF1F)
_0xBF1F.Text = _0x3E3E[2]
_0xACDD[_0x269E] = _0xBF1F
end
_0xB9EB(_0xB642.MouseEnter, function()
for _0x624F, _0xBF1F in ipairs(_0xACDD) do
_0x0903(_0xBF1F, 0.12, { TextTransparency = 0.2 })
end
end)
_0xB9EB(_0xB642.MouseLeave, function()
for _0x624F, _0xBF1F in ipairs(_0xACDD) do
_0x0903(_0xBF1F, 0.12, { TextTransparency = 1 })
end
end)
_0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(67,111,108,111,114),
Font = Enum.Font.GothamBold,
TextSize = 12,
TextColor3 = _0x2E02,
BackgroundTransparency = 1,
Size = UDim2.new(1, 0, 0, 32),
ZIndex = 151,
Parent = _0x87E2,
})
local _0xAA13 = _0x504E(string.char(70,114,97,109,101), {
Active = true,
Position = UDim2.fromOffset(14, 36),
Size = UDim2.fromOffset(236, 150),
BackgroundColor3 = Color3.fromHSV(_0xF171, 1, 1),
ZIndex = 151,
Parent = _0x87E2,
})
_0xF153(_0xAA13, 8)
local _0x6925 = _0x504E(string.char(70,114,97,109,101), { Size = UDim2.fromScale(1, 1), BackgroundColor3 = _0xA925, ZIndex = 152, Parent = _0xAA13 })
_0xF153(_0x6925, 8)
_0x504E(string.char(85,73,71,114,97,100,105,101,110,116), { Transparency = NumberSequence.new(0, 1), Parent = _0x6925 })
local _0x4C6A = _0x504E(string.char(70,114,97,109,101), { Size = UDim2.fromScale(1, 1), BackgroundColor3 = Color3.new(0, 0, 0), ZIndex = 153, Parent = _0xAA13 })
_0xF153(_0x4C6A, 8)
_0x504E(string.char(85,73,71,114,97,100,105,101,110,116), { Rotation = 90, Transparency = NumberSequence.new(1, 0), Parent = _0x4C6A })
local _0x19FC = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Size = UDim2.fromOffset(14, 14),
BackgroundTransparency = 1,
ZIndex = 155,
Parent = _0xAA13,
})
_0x9A43(_0x19FC)
_0x504E(string.char(85,73,83,116,114,111,107,101), { Color = _0xA925, Thickness = 2, Parent = _0x19FC })
local _0x97DE = _0x504E(string.char(85,73,83,99,97,108,101), { Parent = _0x19FC })
local _0xB3D8 = _0x504E(string.char(70,114,97,109,101), {
Active = true,
Position = UDim2.fromOffset(14, 198),
Size = UDim2.fromOffset(236, 12),
BackgroundColor3 = _0xA925,
ZIndex = 151,
Parent = _0x87E2,
})
_0x9A43(_0xB3D8)
local _0x59F1 = {}
for _0x269E = 0, 6 do
_0x59F1[#_0x59F1 + 1] = ColorSequenceKeypoint.new(_0x269E / 6, Color3.fromHSV(_0x269E / 6 % 1, 1, 1))
end
_0x504E(string.char(85,73,71,114,97,100,105,101,110,116), { Color = ColorSequence.new(_0x59F1), Parent = _0xB3D8 })
local _0x064C = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromScale(0, 0.5),
Size = UDim2.fromOffset(16, 16),
BackgroundColor3 = _0xA925,
ZIndex = 153,
Parent = _0xB3D8,
})
_0x9A43(_0x064C)
local _0x8F2B = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromScale(0.5, 0.5),
Size = UDim2.fromOffset(10, 10),
ZIndex = 154,
Parent = _0x064C,
})
_0x9A43(_0x8F2B)
local _0x52DD = _0x504E(string.char(85,73,83,99,97,108,101), { Parent = _0x064C })
local _0xD3D5 = _0x504E(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(14, 224),
Size = UDim2.fromOffset(56, 30),
BackgroundColor3 = _0x251A,
ClipsDescendants = true,
ZIndex = 151,
Parent = _0x87E2,
})
_0xF153(_0xD3D5, 8)
_0x24BA(_0xD3D5, _0xF139)
local _0x3140 = _0x504E(string.char(70,114,97,109,101), {
Position = UDim2.fromScale(0.5, 0),
Size = UDim2.fromScale(0.5, 1),
BorderSizePixel = 0,
ZIndex = 152,
Parent = _0xD3D5,
})
local _0x6A26 = _0x504E(string.char(84,101,120,116,66,111,120), {
Text ="",
PlaceholderText =string.char(35,70,70,70,70,70,70),
Font = Enum.Font.GothamMedium,
TextSize = 12,
TextColor3 = _0xDC52,
PlaceholderColor3 = _0xD6E4,
ClearTextOnFocus = false,
BackgroundColor3 = _0x6274,
Position = UDim2.fromOffset(78, 224),
Size = UDim2.new(1, -92, 0, 30),
ZIndex = 151,
Parent = _0x87E2,
})
_0xF153(_0x6A26, 8)
local _0x7C7C = _0x24BA(_0x6A26)
_0x504E(string.char(85,73,80,97,100,100,105,110,103), { PaddingLeft = UDim.new(0, 10), Parent = _0x6A26 })
_0x6A26.TextXAlignment = Enum.TextXAlignment.Left
local _0xAC86 = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text ="",
Font = Enum.Font.Gotham,
TextSize = 10,
TextColor3 = _0xD6E4,
TextXAlignment = Enum.TextXAlignment.Right,
BackgroundTransparency = 1,
AnchorPoint = Vector2.new(1, 0),
Position = UDim2.new(1, -8, 0, 0),
Size = UDim2.new(0, 90, 1, 0),
ZIndex = 152,
Parent = _0x6A26,
})
local _0x8BD3 = {}
local _0xE59E = (236 - #_0xEB97 * 20) / (#_0xEB97 - 1)
for _0x269E, _0x242F in ipairs(_0xEB97) do
local _0xBF1F = _0x504E(string.char(84,101,120,116,66,117,116,116,111,110), {
Text ="",
AutoButtonColor = false,
BackgroundColor3 = _0x242F,
Position = UDim2.fromOffset(14 + (_0x269E - 1) * (20 + _0xE59E), 266),
Size = UDim2.fromOffset(20, 20),
ZIndex = 151,
Parent = _0x87E2,
})
_0x9A43(_0xBF1F)
local _0x61F0 = _0x504E(string.char(85,73,83,116,114,111,107,101), { Color = _0xA925, Thickness = 1.5, Transparency = 1, Parent = _0xBF1F })
local _0x08CD = _0x504E(string.char(85,73,83,99,97,108,101), { Parent = _0xBF1F })
_0xB9EB(_0xBF1F.MouseEnter, function()
_0x0903(_0x08CD, 0.15, { Scale = 1.15 })
end)
_0xB9EB(_0xBF1F.MouseLeave, function()
_0x0903(_0x08CD, 0.15, { Scale = 1 })
end)
_0x8BD3[_0x269E] = { btn = _0xBF1F, _0xBC19 = _0x61F0, _0x15D8 = _0x242F, _0x08CD = _0x08CD }
end
local _0x86C4 = _0x504E(string.char(84,101,120,116,66,117,116,116,111,110), {
Text =string.char(68,111,110,101),
Font = Enum.Font.GothamBold,
TextSize = 12,
TextColor3 = _0xAA5A,
AutoButtonColor = false,
BackgroundColor3 = _0xA925,
Position = UDim2.fromOffset(14, 300),
Size = UDim2.new(1, -28, 0, 30),
ZIndex = 151,
Parent = _0x87E2,
})
_0xF153(_0x86C4, 8)
local _0x181F = _0x504E(string.char(85,73,83,99,97,108,101), { Parent = _0x86C4 })
_0xB9EB(_0x86C4.MouseEnter, function()
_0x0903(_0x86C4, 0.15, { BackgroundColor3 = Color3.fromRGB(215, 215, 215) })
end)
_0xB9EB(_0x86C4.MouseLeave, function()
_0x0903(_0x86C4, 0.15, { BackgroundColor3 = _0xA925 })
end)
local function _0x6DB8()
return Color3.fromHSV(_0xF171, _0x81AA, _0xEB0B)
end
local function _0x609D(keepText)
local _0x242F = _0x6DB8()
_0xAA13.BackgroundColor3 = Color3.fromHSV(_0xF171, 1, 1)
_0x19FC.Position = UDim2.fromScale(_0x81AA, 1 - _0xEB0B)
_0x064C.Position = UDim2.fromScale(_0xF171, 0.5)
_0x8F2B.BackgroundColor3 = Color3.fromHSV(_0xF171, 1, 1)
_0x3140.BackgroundColor3 = _0x242F
if not keepText then
_0x6A26.Text =string.char(35).. _0x242F:ToHex():upper()
end
_0xAC86.Text = (string.char(37,100,32,32,37,100,32,32,37,100)):format(math.floor(_0x242F.R * 255 + 0.5), math.floor(_0x242F.G * 255 + 0.5), math.floor(_0x242F.B * 255 + 0.5))
for _0x624F, sw in ipairs(_0x8BD3) do
local _0xF9FF = sw.color:ToHex() == _0x242F:ToHex()
sw.stroke.Transparency = _0xF9FF and 0 or 1
end
onChange(_0x242F)
end
_0x609D()
local _0xA50B
local _0xDB51 = 0
local _0xECD7 = false
local function _0x07F9(_0x3242)
if _0xA50B ==string.char(115,113)then
local _0x09CD, _0x3C5E = _0xAA13.AbsolutePosition, _0xAA13.AbsoluteSize
_0x81AA = math.clamp((_0x3242.X - _0x09CD.X) / _0x3C5E.X, 0, 1)
_0xEB0B = 1 - math.clamp((_0x3242.Y - _0x09CD.Y) / _0x3C5E.Y, 0, 1)
elseif _0xA50B ==string.char(104,117,101)then
local _0x09CD, _0x3C5E = _0xB3D8.AbsolutePosition, _0xB3D8.AbsoluteSize
_0xF171 = math.clamp((_0x3242.X - _0x09CD.X) / _0x3C5E.X, 0, 0.999)
end
_0x609D()
end
local function _0x476C(input)
return input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch
end
local _0x9747 = {}
local function _0x3AB5(signal, fn)
local _0x242F = signal:Connect(fn)
table.insert(_0x9747, _0x242F)
table.insert(_0x523A, _0x242F)
end
_0x3AB5(_0xAA13.InputBegan, function(input)
if not _0x476C(input) then
return
end
_0xA50B =string.char(115,113)_0x0903(_0x97DE, 0.15, { Scale = 1.3 })
_0x07F9(input.Position)
end)
_0x3AB5(_0xB3D8.InputBegan, function(input)
if not _0x476C(input) then
return
end
_0xA50B =string.char(104,117,101)_0x0903(_0x52DD, 0.15, { Scale = 1.2 })
_0x07F9(input.Position)
end)
_0x3AB5(_0x24DA.InputChanged, function(input)
if _0xA50B and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
_0x07F9(input.Position)
end
end)
_0x3AB5(_0x24DA.InputEnded, function(input)
if _0xA50B and _0x476C(input) then
_0xA50B = nil
_0xDB51 = os.clock()
_0x0903(_0x97DE, 0.2, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
_0x0903(_0x52DD, 0.2, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
end
end)
local function _0x9E25(_0x242F)
_0xF171, _0x81AA, _0xEB0B = _0x242F:ToHSV()
_0x609D()
end
for _0x624F, sw in ipairs(_0x8BD3) do
_0x3AB5(sw.btn.MouseButton1Click, function()
sw.scale.Scale = 0.8
_0x0903(sw.scale, 0.3, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
_0x9E25(sw.color)
end)
end
_0x3AB5(_0x6A26.Focused, function()
_0x0903(_0x7C7C, 0.15, { Color = _0xA925 })
end)
_0x3AB5(_0x6A26.FocusLost, function()
_0x0903(_0x7C7C, 0.15, { Color = _0x2F00 })
local _0xDE46 = _0x6A26.Text:gsub(string.char(91,94,37,120,93),"")
local _0xD828, _0x242F = pcall(Color3.fromHex, _0xDE46)
if _0xD828 and _0x242F and #_0xDE46 == 6 then
_0x9E25(_0x242F)
else
_0x609D()
end
end)
_0x0903(_0x87E2, 0.5, { Position = _0x232F() }, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
_0x0903(_0x6F3B, 0.55, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
_0x0903(_0x87E2, 0.25, { GroupTransparency = 0 })
local _0x8C40 = false
local function _0xA1D6(instant)
if _0x8C40 then
return
end
_0x8C40 = true
if _0x38CF == _0xA1D6 then
_0x38CF = nil
end
for _0x624F, _0x242F in ipairs(_0x9747) do
_0x242F:Disconnect()
end
if instant then
_0xE349:Destroy()
_0x87E2:Destroy()
return
end
_0x0903(_0xE349, 0.25, { BackgroundTransparency = 1 })
_0x0903(_0x87E2, 0.32, { Position = _0x1822() }, Enum.EasingDirection.In, Enum.EasingStyle.Quint)
_0x0903(_0x6F3B, 0.32, { Scale = 0.05 }, Enum.EasingDirection.In, Enum.EasingStyle.Quint)
local _0x634C = _0x0903(_0x87E2, 0.3, { GroupTransparency = 1 }, Enum.EasingDirection.In)
_0x634C.Completed:Connect(function()
_0xE349:Destroy()
_0x87E2:Destroy()
end)
end
_0x3AB5(_0x87E2.MouseEnter, function()
_0xECD7 = true
end)
_0x3AB5(_0x87E2.MouseLeave, function()
_0xECD7 = false
end)
_0x3AB5(_0xE349.MouseButton1Click, function()
if _0xECD7 or _0xA50B or os.clock() - _0xDB51 < 0.3 then
return
end
_0xA1D6()
end)
_0x3AB5(_0xACDD[1].MouseButton1Click, function()
_0x9E25(_0x251A)
_0xA1D6()
end)
_0x3AB5(_0xACDD[2].MouseButton1Click, function()
_0xA1D6()
end)
_0x3AB5(_0xACDD[3].MouseButton1Click, function()
_0x9E25(defaultColor)
end)
_0x3AB5(_0x86C4.MouseButton1Click, function()
_0x181F.Scale = 0.92
_0x0903(_0x181F, 0.2, { Scale = 1 })
_0xA1D6()
end)
return _0xA1D6
end
local _0x3A0F
local function _0xE8C6(_0x4A93, _0xEE8A, buttonText)
if _0x3A0F then
_0x3A0F()
end
local _0xE349 = _0x504E(string.char(84,101,120,116,66,117,116,116,111,110), {
Text ="",
AutoButtonColor = false,
BackgroundColor3 = Color3.new(0, 0, 0),
BackgroundTransparency = 1,
Size = UDim2.fromScale(1, 1),
ZIndex = 159,
Parent = _0xFF96,
})
_0xF153(_0xE349, 10)
_0x0903(_0xE349, 0.25, { BackgroundTransparency = 0.45 })
local _0x5C29 = _0x504E(string.char(67,97,110,118,97,115,71,114,111,117,112), {
Active = true,
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromScale(0.5, 0.5),
Size = UDim2.fromOffset(300, 176),
BackgroundColor3 = _0x7D00,
GroupTransparency = 1,
ZIndex = 160,
Parent = _0xFF96,
})
_0xF153(_0x5C29, 14)
local _0x61F0 = _0x504E(string.char(85,73,83,116,114,111,107,101), { Color = _0xA925, Transparency = 0.6, Parent = _0x5C29 })
_0x3B7F(_0x61F0)
local _0x08CD = _0x504E(string.char(85,73,83,99,97,108,101), { Scale = 0.85, Parent = _0x5C29 })
local _0x0C9A = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0),
Position = UDim2.new(0.5, 0, 0, 18),
Size = UDim2.fromOffset(38, 38),
BackgroundColor3 = _0xA925,
ZIndex = 161,
Parent = _0x5C29,
})
_0x9A43(_0x0C9A)
_0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(33),
Font = Enum.Font.GothamBlack,
TextSize = 22,
TextColor3 = _0xAA5A,
BackgroundTransparency = 1,
Size = UDim2.fromScale(1, 1),
ZIndex = 162,
Parent = _0x0C9A,
})
local _0xA987 = _0x504E(string.char(85,73,83,99,97,108,101), { Scale = 0.4, Parent = _0x0C9A })
_0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text = _0x4A93,
Font = Enum.Font.GothamBold,
TextSize = 15,
TextColor3 = _0xA925,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(16, 64),
Size = UDim2.new(1, -32, 0, 20),
ZIndex = 161,
Parent = _0x5C29,
})
_0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text = _0xEE8A,
Font = Enum.Font.Gotham,
TextSize = 12,
TextColor3 = _0x2E02,
TextWrapped = true,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(20, 86),
Size = UDim2.new(1, -40, 0, 34),
ZIndex = 161,
Parent = _0x5C29,
})
local _0x86C4 = _0x504E(string.char(84,101,120,116,66,117,116,116,111,110), {
Text = buttonText orstring.char(68,111,110,101),
Font = Enum.Font.GothamBold,
TextSize = 12,
TextColor3 = _0xAA5A,
AutoButtonColor = false,
BackgroundColor3 = _0xA925,
AnchorPoint = Vector2.new(0.5, 1),
Position = UDim2.new(0.5, 0, 1, -14),
Size = UDim2.new(1, -32, 0, 30),
ZIndex = 161,
Parent = _0x5C29,
})
_0xF153(_0x86C4, 8)
local _0x181F = _0x504E(string.char(85,73,83,99,97,108,101), { Parent = _0x86C4 })
_0xB9EB(_0x86C4.MouseEnter, function()
_0x0903(_0x86C4, 0.15, { BackgroundColor3 = Color3.fromRGB(215, 215, 215) })
end)
_0xB9EB(_0x86C4.MouseLeave, function()
_0x0903(_0x86C4, 0.15, { BackgroundColor3 = _0xA925 })
end)
_0x0903(_0x5C29, 0.25, { GroupTransparency = 0 })
_0x0903(_0x08CD, 0.45, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
task.delay(0.12, function()
_0x0903(_0xA987, 0.45, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
end)
local _0xA9A5 = false
local function _0xA1D6()
if _0xA9A5 then
return
end
_0xA9A5 = true
if _0x3A0F == _0xA1D6 then
_0x3A0F = nil
end
_0x0903(_0xE349, 0.2, { BackgroundTransparency = 1 })
_0x0903(_0x08CD, 0.2, { Scale = 0.9 }, Enum.EasingDirection.In)
local _0x634C = _0x0903(_0x5C29, 0.2, { GroupTransparency = 1 })
_0x634C.Completed:Connect(function()
_0xE349:Destroy()
_0x5C29:Destroy()
end)
end
_0x3A0F = _0xA1D6
_0xB9EB(_0x86C4.MouseButton1Click, function()
_0x181F.Scale = 0.92
_0x0903(_0x181F, 0.2, { Scale = 1 })
_0xA1D6()
end)
_0xB9EB(_0xE349.MouseButton1Click, _0xA1D6)
end
_0xE73A.ColorPicker = function(self2, _0x893F, desc, default, callback)
local _0x15D8 = default
local _0xD4D9 = _0x4B9C(self2, _0x893F)
local _0x7D41 = self2:_row(_0x893F, desc)
local _0xEEC6 = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(1, 0.5),
Position = UDim2.new(1, -10, 0.5, 0),
Size = UDim2.fromOffset(38, 22),
BackgroundColor3 = _0x15D8,
ZIndex = 2,
Parent = _0x7D41,
})
_0xF153(_0xEEC6, 6)
local _0x4233 = _0x24BA(_0xEEC6)
local _0xD730 = _0x504E(string.char(85,73,83,99,97,108,101), { Parent = _0xEEC6 })
local _0x02C5 = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(35).. _0x15D8:ToHex():upper(),
Font = Enum.Font.GothamMedium,
TextSize = 11,
TextColor3 = _0x2E02,
TextXAlignment = Enum.TextXAlignment.Right,
BackgroundTransparency = 1,
AnchorPoint = Vector2.new(1, 0.5),
Position = UDim2.new(1, -56, 0.5, 0),
Size = UDim2.fromOffset(70, 20),
ZIndex = 2,
Parent = _0x7D41,
})
local function _0xBD2B(_0x242F, silent)
_0x15D8 = _0x242F
_0xEEC6.BackgroundColor3 = _0x242F
_0x02C5.Text =string.char(35).. _0x242F:ToHex():upper()
_0xD34C(_0xD4D9, _0x242F:ToHex())
if not silent then
task.spawn(callback, _0x242F)
end
end
_0xB9EB(_0x7D41.MouseEnter, function()
_0x0903(_0x4233, 0.15, { Color = _0xA925 })
end)
_0xB9EB(_0x7D41.MouseLeave, function()
_0x0903(_0x4233, 0.15, { Color = _0x2F00 })
end)
_0xB9EB(_0x7D41.MouseButton1Click, function()
if _0x38CF then
_0x38CF(true)
end
_0xD730.Scale = 0.85
_0x0903(_0xD730, 0.3, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
_0x38CF = _0x1377(_0xEEC6, _0x15D8, default, function(_0x242F)
_0xBD2B(_0x242F)
end)
end)
_0x04EF(_0xD4D9, function(_0xEB0B)
if type(_0xEB0B) ~=string.char(115,116,114,105,110,103)then
return
end
local _0xD828, _0x242F = pcall(Color3.fromHex, _0xEB0B)
if _0xD828 and _0x242F then
_0xBD2B(_0x242F)
end
end, function()
return _0x15D8:ToHex()
end, default:ToHex())
return {
Set = function(_0x242F, silent)
_0xBD2B(_0x242F, silent)
end,
Get = function()
return _0x15D8
end,
}
end
local _0x7108 = { _0xAEA1 = nil, jump = nil, infJump = false }
local function _0xFFF1()
local _0xD534 = _0x8E3D.Character
return _0xD534 and _0xD534:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
end
_0xB9EB(_0xB197.Heartbeat, function()
local _0xC3CF = _0xFFF1()
if _0xC3CF then
if _0x7108.speed and _0xC3CF.WalkSpeed ~= _0x7108.speed then
_0xC3CF.WalkSpeed = _0x7108.speed
end
if _0x7108.jump then
_0xC3CF.UseJumpPower = true
if _0xC3CF.JumpPower ~= _0x7108.jump then
_0xC3CF.JumpPower = _0x7108.jump
end
end
end
end)
local _0xD0E4 = {}
_0xB9EB(_0xB197.Stepped, function()
if not _0x7108.noclip then
return
end
local _0xD95E = _0x8E3D.Character
if not _0xD95E then
return
end
for _0x624F, _0x6F67 in ipairs(_0xD95E:GetDescendants()) do
if _0x6F67:IsA(string.char(66,97,115,101,80,97,114,116)) and _0x6F67.CanCollide then
_0xD0E4[_0x6F67] = true
_0x6F67.CanCollide = false
end
end
end)
local function _0xF972()
_0x7108.noclip = false
for _0x6F67 in pairs(_0xD0E4) do
if _0x6F67.Parent then
_0x6F67.CanCollide = true
end
end
table.clear(_0xD0E4)
end
local _0x8482 = {}
local _0xDFAB, _0x429B = nil, 0
_0xB9EB(_0xB197.Stepped, function()
if not _0x7108.antiFling then
return
end
for _0x624F, _0x09CD in ipairs(_0xD101:GetPlayers()) do
if _0x09CD ~= _0x8E3D and _0x09CD.Character then
for _0x624F, _0x6F67 in ipairs(_0x09CD.Character:GetDescendants()) do
if _0x6F67:IsA(string.char(66,97,115,101,80,97,114,116)) and _0x6F67.CanCollide then
_0x8482[_0x6F67] = true
_0x6F67.CanCollide = false
end
end
end
end
end)
_0xB9EB(_0xB197.Heartbeat, function()
if not _0x7108.antiFling then
return
end
local _0xD95E = _0x8E3D.Character
local _0xB48C = _0xD95E and _0xD95E:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0xB48C then
return
end
local _0xEB0B, _0xCDE9 = _0xB48C.AssemblyLinearVelocity, _0xB48C.AssemblyAngularVelocity
if _0xEB0B.Magnitude > 200 or _0xCDE9.Magnitude > 60 then
for _0x624F, _0x6F67 in ipairs(_0xD95E:GetDescendants()) do
if _0x6F67:IsA(string.char(66,97,115,101,80,97,114,116)) then
_0x6F67.AssemblyLinearVelocity = Vector3.zero
_0x6F67.AssemblyAngularVelocity = Vector3.zero
end
end
if _0xDFAB then
_0xB48C.CFrame = _0xDFAB
end
elseif os.clock() - _0x429B > 0.1 then
_0xDFAB, _0x429B = _0xB48C.CFrame, os.clock()
end
end)
local function _0x8BCF()
_0x7108.antiFling = false
for _0x6F67 in pairs(_0x8482) do
if _0x6F67.Parent then
_0x6F67.CanCollide = true
end
end
table.clear(_0x8482)
end
_0xB9EB(_0x24DA.JumpRequest, function()
if not _0x7108.infJump then
return
end
local _0xC3CF = _0xFFF1()
if _0xC3CF and _0xC3CF.Health > 0 then
_0xC3CF:ChangeState(Enum.HumanoidStateType.Jumping)
end
end)
local _0xDBFE = 0
local _0x307E
local _0xE55E = {}
local _0x4E3B
local function _0xFF42(_0xFB60)
_0x952B = _0xFB60
if _0x307E then
_0x307E(_0xFB60)
end
if _0x4E3B then
_0x4E3B(_0xFB60)
end
if not _0xFB60 and _0x38CF then
_0x38CF(true)
end
_0xDBFE += 1
local _0x4FE3 = _0xDBFE
if _0xFB60 then
_0xFF96.Visible = true
_0x0903(_0x214C, 0.3, { Scale = _0xA20B }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
_0x0903(_0xDEC0, 0.3, { Size = _0x1080 })
if _0x95DC then
task.delay(0.15, function()
if _0x4FE3 == _0xDBFE then
_0xBED3()
end
end)
end
else
_0x0903(_0xDEC0, 0.2, { Size = 0 })
local _0x634C = _0x0903(_0x214C, 0.2, { Scale = 0 }, Enum.EasingDirection.In)
_0x634C.Completed:Connect(function()
if _0x4FE3 == _0xDBFE then
_0xFF96.Visible = false
end
end)
end
end
local _0x2AE0 = false
local function _0xC2FB()
if _0x2AE0 then
return
end
_0xFF42(not _0x952B)
end
_0xB9EB(_0x1019.MouseButton1Click, function()
_0xFF42(false)
end)
_0xB9EB(_0x24DA.InputBegan, function(input, gameProcessed)
if _0xF269 then
if input.UserInputType == Enum.UserInputType.Keyboard then
local _0xF0CB = _0xF269
_0xF269 = nil
_0xF0CB(input.KeyCode)
end
return
end
if gameProcessed then
return
end
if input.KeyCode == _0xC48C then
_0xC2FB()
end
end)
local _0xD1AC = {}
local function _0x3F1E(_0x830D, _0xD4D9, onClick, onRelease, _0xDD2C)
local _0xE5B7 = _0x09F2[_0xD4D9]
if type(_0xE5B7) ==string.char(116,97,98,108,101)and #_0xE5B7 == 4 then
_0x830D.Position = UDim2.new(_0xE5B7[1], _0xE5B7[2], _0xE5B7[3], _0xE5B7[4])
end
local _0x8AC9, _0x1226, _0x5EE9, _0xFBB3
_0xB9EB((_0xDD2C or _0x830D).InputBegan, function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
_0x8AC9, _0x1226, _0x5EE9, _0xFBB3 = input, input.Position, _0x830D.Position, false
end
end)
_0xB9EB(_0x24DA.InputChanged, function(input)
if not _0x8AC9 then
return
end
if input.UserInputType ~= Enum.UserInputType.MouseMovement and input ~= _0x8AC9 then
return
end
local _0xA65E = input.Position - _0x1226
if not _0xFBB3 and _0xA65E.Magnitude < 6 then
return
end
_0xFBB3 = true
_0x830D.Position = UDim2.new(_0x5EE9.X.Scale, _0x5EE9.X.Offset + _0xA65E.X, _0x5EE9.Y.Scale, _0x5EE9.Y.Offset + _0xA65E.Y)
local _0x317D, _0x5778, _0xFA27 = _0x830D.AbsolutePosition, _0x830D.AbsoluteSize, _0x0155.AbsoluteSize
local _0x8CF5 = math.clamp(_0x317D.X, 0, math.max(0, _0xFA27.X - _0x5778.X)) - _0x317D.X
local _0x04C0 = math.clamp(_0x317D.Y, 0, math.max(0, _0xFA27.Y - _0x5778.Y)) - _0x317D.Y
if _0x8CF5 ~= 0 or _0x04C0 ~= 0 then
_0x830D.Position = _0x830D.Position + UDim2.fromOffset(_0x8CF5, _0x04C0)
end
end)
_0xB9EB(_0x24DA.InputEnded, function(input)
if not _0x8AC9 then
return
end
if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input ~= _0x8AC9 then
return
end
_0x8AC9 = nil
if onRelease then
onRelease()
end
if _0xFBB3 then
local _0x09CD = _0x830D.Position
_0x09F2[_0xD4D9] = { _0x09CD.X.Scale, _0x09CD.X.Offset, _0x09CD.Y.Scale, _0x09CD.Y.Offset }
_0x3E73, _0x8269 = true, os.clock()
elseif onClick then
onClick()
end
end)
end
local function _0x2752(_0x6E55, _0x08CD, _0xE496, targetScale)
targetScale = targetScale or 1
_0x6E55:SetAttribute(string.char(112,122,79,110), _0xE496)
if _0xE496 then
_0x6E55.Visible = true
_0x08CD.Scale = targetScale * 0.6
_0x0903(_0x08CD, 0.35, { Scale = targetScale }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
else
local _0x883B = _0x0903(_0x08CD, 0.18, { Scale = 0 }, Enum.EasingDirection.In)
_0x883B.Completed:Connect(function()
if not _0x6E55:GetAttribute(string.char(112,122,79,110)) then
_0x6E55.Visible = false
end
end)
end
end
local _0x12BF = {}
local _0xB347 = _0x504E(string.char(70,114,97,109,101), {
Name =string.char(87,97,116,101,114,109,97,114,107,72,111,108,100,101,114),
BackgroundTransparency = 1,
AnchorPoint = Vector2.new(0.5, 1),
Position = UDim2.new(0.5, 0, 1, -18),
Size = UDim2.fromOffset(360, 42),
ZIndex = 50,
Parent = _0x0155,
})local _0x31A9 = os.clock()
local _0x9D2E = _0x504E(string.char(84,101,120,116,66,117,116,116,111,110), {
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
Parent = _0x0155,
})
_0xF153(_0x9D2E, 9)
local _0x9570 = _0x504E(string.char(85,73,71,114,97,100,105,101,110,116), {
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
Parent = _0x9D2E,
})
_0x504E(string.char(85,73,83,116,114,111,107,101), {
Color = Color3.fromRGB(180, 180, 190),
Thickness = 1,
Transparency = 0.45,
ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
Parent = _0x9D2E,
})
local _0x924E = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
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
Parent = _0x9D2E,
})local _0x1903 = _0x504E(string.char(85,73,71,114,97,100,105,101,110,116), {
Rotation = 0,
Color = _0x835C(0),
Parent = _0x924E,
})
_0x504E(string.char(85,73,80,97,100,100,105,110,103), {
PaddingLeft = UDim.new(0, 10),
PaddingRight = UDim.new(0, 10),
Parent = _0x9D2E,
})local _0x750B = 0
local _0x41A9 = false
local _0x09C8 = nil
local _0x2911 = nil
local _0x611E = nil
local function _0xECF1()
if not _0x2911 or not _0x2911.Parent then return end
_0x2911:SetAttribute(string.char(111,112,101,110), false)
if _0x611E then
_0x0903(_0x611E, 0.18, {Scale = 0}, Enum.EasingDirection.In)
end
task.delay(0.2, function()
if _0x2911 and _0x2911.Parent and _0x2911:GetAttribute(string.char(111,112,101,110)) ~= true then
_0x2911.Visible = false
end
end)
end
local function _0x7B73()
if _0x2911 and _0x2911.Parent then
_0x2911.Visible = true
_0x2911:SetAttribute(string.char(111,112,101,110), true)
_0x611E.Scale = 0.75
_0x0903(_0x611E, 0.3, {Scale = 1}, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
return
end
_0x2911 = _0x504E(string.char(70,114,97,109,101), {
Name =string.char(67,108,117,109,115,121,67,114,101,97,116,111,114,73,110,102,111),
AnchorPoint = Vector2.new(0.5, 1),
Position = UDim2.new(0.5, 0, 1, -48),
Size = UDim2.fromOffset(255, 92),
BackgroundColor3 = Color3.fromRGB(22, 22, 27),
BackgroundTransparency = 0.28,
BorderSizePixel = 0,
ZIndex = 80,
Parent = _0x0155,
})
_0xF153(_0x2911, 12)
_0x24BA(_0x2911, Color3.fromRGB(170, 170, 180))
_0x504E(string.char(85,73,71,114,97,100,105,101,110,116), {
Rotation = 90,
Color = ColorSequence.new({
ColorSequenceKeypoint.new(0, Color3.fromRGB(65, 65, 72)),
ColorSequenceKeypoint.new(0.5, Color3.fromRGB(24, 24, 29)),
ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 10, 13)),
}),
Transparency = NumberSequence.new(0.22),
Parent = _0x2911,
})
_0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(208,154,208,176,208,189,208,176,208,187,32,209,129,208,190,208,183,208,180,208,176,209,130,208,181,208,187,209,143), Font = Enum.Font.Arcade, TextSize = 13,
TextColor3 = Color3.fromRGB(255,255,255), TextXAlignment = Enum.TextXAlignment.Center,
BackgroundTransparency = 1, Position = UDim2.fromOffset(8, 10), Size = UDim2.new(1,-16,0,20),
ZIndex = 82, Parent = _0x2911,
})
_0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(64,99,108,117,109,115,121,95,99,102,103), Font = Enum.Font.Arcade, TextSize = 12,
TextColor3 = Color3.fromRGB(255,255,255), TextXAlignment = Enum.TextXAlignment.Center,
BackgroundTransparency = 1, Position = UDim2.fromOffset(8, 34), Size = UDim2.new(1,-16,0,20),
ZIndex = 82, Parent = _0x2911,
})
_0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(208,174,208,183,208,181,209,128,208,189,208,181,208,185,208,188,32,209,129,208,190,208,183,208,180,208,176,209,130,208,181,208,187,209,143,32,32,64,72,101,115,101,114,115), Font = Enum.Font.Arcade, TextSize = 11,
TextColor3 = Color3.fromRGB(205,205,210), TextXAlignment = Enum.TextXAlignment.Center,
BackgroundTransparency = 1, Position = UDim2.fromOffset(8, 58), Size = UDim2.new(1,-16,0,20),
ZIndex = 82, Parent = _0x2911,
})
_0x611E = _0x504E(string.char(85,73,83,99,97,108,101), {Scale = 0, Parent = _0x2911})
_0x2911:SetAttribute(string.char(111,112,101,110), true)
_0x0903(_0x611E, 0.32, {Scale = 1}, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
end_0xF709(_0x9D2E.Activated, function()
if _0x2911 and _0x2911.Parent and _0x2911:GetAttribute(string.char(111,112,101,110)) == true then
_0xECF1()
else
_0x7B73()
end
end)_0xB9EB(_0xB197.RenderStepped, function()
if not _0x924E or not _0x924E.Parent then
return
end
local _0x8C28 = os.clock()_0x1903.Color = _0x835C((_0x8C28 - _0x31A9) * 0.35)
end)
local _0x8329 = _0x504E(string.char(84,101,120,116,66,117,116,116,111,110), {
Name =string.char(87,97,116,101,114,109,97,114,107),
Text ="",
AutoButtonColor = false,
AutomaticSize = Enum.AutomaticSize.X,
BackgroundColor3 = Color3.fromRGB(24, 24, 28),
BackgroundTransparency = 0.22,
Size = UDim2.fromOffset(0, 38),
Visible = false,
ZIndex = 50,
Parent = _0xB347,
})
_0xF153(_0x8329, 12)
_0x504E(string.char(85,73,71,114,97,100,105,101,110,116), {
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
Parent = _0x8329,
})
local _0xB706 = _0x504E(string.char(85,73,83,99,97,108,101), { Scale = 0, Parent = _0x8329 })
local _0x4648 = 1
_0x5DCD = function()
local _0x04CE = workspace.CurrentCamera
local _0x203D = _0x04CE and _0x04CE.ViewportSize or Vector2.new(1280, 720)
if _0x24DA.TouchEnabled then
if math.min(_0x203D.X, _0x203D.Y) >= 600 then
_0x4648 = 0.85
else
_0x4648 = math.clamp(_0xA20B, 0.58, 0.75)
end
else
_0x4648 = 1
end
if _0x8329:GetAttribute(string.char(112,122,79,110)) then
_0xB706.Scale = _0x4648
end
end
_0x5DCD()
local _0x0DDA = _0x504E(string.char(85,73,83,116,114,111,107,101), {
Color = _0xA925,
Thickness = 1,
Transparency = 0.5,
ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
Parent = _0x8329,
})
table.insert(_0x12BF, _0x504E(string.char(85,73,71,114,97,100,105,101,110,116), { Parent = _0x0DDA }))
_0x504E(string.char(85,73,80,97,100,100,105,110,103), { PaddingLeft = UDim.new(0, 6), PaddingRight = UDim.new(0, 6), Parent = _0x8329 })
_0x504E(string.char(85,73,76,105,115,116,76,97,121,111,117,116), {
FillDirection = Enum.FillDirection.Horizontal,
VerticalAlignment = Enum.VerticalAlignment.Center,
SortOrder = Enum.SortOrder.LayoutOrder,
Padding = UDim.new(0, 9),
Parent = _0x8329,
})
local _0xB3A1 = 0
local function _0x3E28(_0xF85F, _0x4DE9)
_0xB3A1 += 1
_0x4DE9.LayoutOrder = _0xB3A1
if _0x4DE9.BackgroundTransparency == nil then
_0x4DE9.BackgroundTransparency = 1
end
_0x4DE9.BorderSizePixel = 0
_0x4DE9.ZIndex = _0x4DE9.ZIndex or 51
_0x4DE9.Parent = _0x4DE9.Parent or _0x8329
return _0x504E(_0xF85F, _0x4DE9)
end
local function _0x0440()
return _0x3E28(string.char(70,114,97,109,101), { Size = UDim2.fromOffset(1, 14), BackgroundTransparency = 0, BackgroundColor3 = _0x2F00 })
end
local function _0xF160(width)
return _0x3E28(string.char(84,101,120,116,76,97,98,101,108), {
Text ="",
RichText = true,
Font = Enum.Font.GothamMedium,
TextSize = 12,
TextColor3 = _0xDC52,
TextXAlignment = Enum.TextXAlignment.Left,
Size = UDim2.fromOffset(width, 36),
})
end
local _0x4A93 = _0x3E28(string.char(70,114,97,109,101), { Size = UDim2.fromOffset(24, 24), BackgroundTransparency = 0, BackgroundColor3 = _0xA925, ClipsDescendants = true })
_0xF153(_0x4A93, 7)
table.insert(_0x12BF, _0x504E(string.char(85,73,71,114,97,100,105,101,110,116), { Rotation = 45, Parent = _0x4A93 }))
local _0xD122 = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(114,104),
Font = Enum.Font.GothamBlack,
TextSize = 12,
TextColor3 = _0xAA5A,
BackgroundTransparency = 1,
Size = UDim2.fromScale(1, 1),
Position = UDim2.fromOffset(0, -1),
ZIndex = 52,
Parent = _0x4A93,
})
local _0x8402 = _0x504E(string.char(73,109,97,103,101,76,97,98,101,108), {
Image ="",
BackgroundTransparency = 1,
Size = UDim2.fromScale(1, 1),
ScaleType = Enum.ScaleType.Fit,
Visible = false,
ZIndex = 53,
Parent = _0x4A93,
})
task.spawn(function()
local _0xF497 = getcustomasset or getsynasset
if not (writefile and _0xF497) then
return
end
local _0xAB38 =string.char(99,108,117,109,115,121,115,99,114,105,112,116,95,108,111,103,111,46,112,110,103)if not (isfile and isfile(_0xAB38)) then
local _0xD828, _0x5E99 = pcall(game.HttpGet, game,string.char(104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,114,111,99,107,115,99,114,105,112,116,101,114,47,77,77,50,68,114,111,110,101,47,114,101,102,115,47,104,101,97,100,115,47,109,97,105,110,47,108,111,103,111,46,112,110,103))
if not _0xD828 or type(_0x5E99) ~=string.char(115,116,114,105,110,103)or #_0x5E99 == 0 or not pcall(writefile, _0xAB38, _0x5E99) then
return
end
end
local _0xD828, _0xFBDF = pcall(_0xF497, _0xAB38)
if _0xD828 and _0xFBDF then
_0x8402.Image = _0xFBDF
_0x8402.Visible = true
_0xD122.Visible = false
end
end)
local _0xFC86 = _0x3E28(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(64,99,108,117,109,115,121,95,99,102,103),
Font = Enum.Font.GothamSemibold,
TextSize = 14,
TextColor3 = Color3.fromRGB(245, 245, 248),
AutomaticSize = Enum.AutomaticSize.X,
Size = UDim2.fromOffset(0, 36),
})
table.insert(_0x12BF, _0x504E(string.char(85,73,71,114,97,100,105,101,110,116), { Parent = _0xFC86 }))
_0x0440()
local _0xB033 = _0xF160(50)
_0x0440()
local _0x7500 = _0x3E28(string.char(70,114,97,109,101), { Size = UDim2.fromOffset(13, 10) })
local _0xB325 = {}
for _0x269E = 1, 3 do
_0xB325[_0x269E] = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0, 1),
Position = UDim2.new(0, (_0x269E - 1) * 5, 1, 0),
Size = UDim2.fromOffset(3, 3 + _0x269E * 2.4),
BackgroundColor3 = _0xF139,
BorderSizePixel = 0,
ZIndex = 52,
Parent = _0x7500,
})
_0xF153(_0xB325[_0x269E], 1)
end
local _0x07FF = _0xF160(44)
_0x0440()
local _0x4633 = _0xF160(34)
local function _0xB0D5(_0x4323, _0x9DED)
return string.format(string.char(60,102,111,110,116,32,99,111,108,111,114,61,34,35,70,70,70,70,70,70,34,62,37,115,60,47,102,111,110,116,62,32,60,102,111,110,116,32,99,111,108,111,114,61,34,35,55,56,55,56,55,56,34,62,37,115,60,47,102,111,110,116,62), _0x4323, _0x9DED)
end
_0xB033.Text = _0xB0D5(string.char(45,45),string.char(102,112,115))
_0x07FF.Text = _0xB0D5(string.char(45,45),string.char(109,115))
_0x4633.Text =string.char(60,102,111,110,116,32,99,111,108,111,114,61,34,35,70,70,70,70,70,70,34,62).. os.date(string.char(37,72,58,37,77)) ..string.char(60,47,102,111,110,116,62)local _0x5737 = _0x3E28(string.char(70,114,97,109,101), {
AutomaticSize = Enum.AutomaticSize.X,
Size = UDim2.fromOffset(0, 24),
BackgroundTransparency = 0,
BackgroundColor3 = _0x6274,
})
_0xF153(_0x5737, 7)
local _0x4D8A = _0x504E(string.char(85,73,83,116,114,111,107,101), {
Color = _0xA925,
Transparency = 0.6,
Thickness = 1,
ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
Parent = _0x5737,
})
_0x504E(string.char(85,73,80,97,100,100,105,110,103), { PaddingLeft = UDim.new(0, 9), PaddingRight = UDim.new(0, 10), Parent = _0x5737 })
_0x504E(string.char(85,73,76,105,115,116,76,97,121,111,117,116), {
FillDirection = Enum.FillDirection.Horizontal,
VerticalAlignment = Enum.VerticalAlignment.Center,
SortOrder = Enum.SortOrder.LayoutOrder,
Padding = UDim.new(0, 7),
Parent = _0x5737,
})
local _0xFDD3 = _0x504E(string.char(70,114,97,109,101), {
Size = UDim2.fromOffset(12, 10),
BackgroundTransparency = 1,
LayoutOrder = 1,
Parent = _0x5737,
})
local _0x38F6 = {}
for _0x269E = 1, 3 do
_0x38F6[_0x269E] = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.new(0.5, 0, 0, 1 + (_0x269E - 1) * 4),
Size = UDim2.fromOffset(12, 2),
BackgroundColor3 = _0xDC52,
BorderSizePixel = 0,
ZIndex = 53,
Parent = _0xFDD3,
})
_0x9A43(_0x38F6[_0x269E])
end
local _0xF619 = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(109,101,110,117),
Font = Enum.Font.GothamBold,
TextSize = 11,
TextColor3 = _0xDC52,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Size = UDim2.fromOffset(32, 24),
LayoutOrder = 2,
ZIndex = 53,
Parent = _0x5737,
})
return (function(...)
local _0xB6CD = _0x504E(string.char(70,114,97,109,101), {
Name =string.char(87,97,116,101,114,109,97,114,107,84,105,112),
AnchorPoint = Vector2.new(1, 0),
AutomaticSize = Enum.AutomaticSize.XY,
BackgroundColor3 = _0x7D00,
BorderSizePixel = 0,
Visible = false,
ZIndex = 60,
Parent = _0xB347,
})
_0xF153(_0xB6CD, 8)
_0x24BA(_0xB6CD, _0xF139)
local _0x44A3 = _0x504E(string.char(85,73,83,99,97,108,101), { Scale = 0, Parent = _0xB6CD })
_0x504E(string.char(85,73,80,97,100,100,105,110,103), {
PaddingLeft = UDim.new(0, 10),
PaddingRight = UDim.new(0, 10),
PaddingTop = UDim.new(0, 7),
PaddingBottom = UDim.new(0, 7),
Parent = _0xB6CD,
})
_0x504E(string.char(85,73,76,105,115,116,76,97,121,111,117,116), { SortOrder = Enum.SortOrder.LayoutOrder, Padding = UDim.new(0, 2), Parent = _0xB6CD })
local _0xCAAA = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(99,108,105,99,107,32,116,111,32,111,112,101,110,32,116,104,101,32,109,101,110,117),
Font = Enum.Font.GothamBold,
TextSize = 12,
TextColor3 = _0xA925,
AutomaticSize = Enum.AutomaticSize.XY,
BackgroundTransparency = 1,
LayoutOrder = 1,
ZIndex = 61,
Parent = _0xB6CD,
})
local _0xE233 = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text ="",
Font = Enum.Font.Gotham,
TextSize = 11,
TextColor3 = _0x2E02,
AutomaticSize = Enum.AutomaticSize.XY,
BackgroundTransparency = 1,
LayoutOrder = 2,
ZIndex = 61,
Parent = _0xB6CD,
})
local _0xC32E = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Size = UDim2.fromOffset(9, 9),
Rotation = 45,
BackgroundColor3 = _0x7D00,
BorderSizePixel = 0,
Visible = false,
ZIndex = 59,
Parent = _0xB347,
})
_0x24BA(_0xC32E, _0xF139)
local _0x7319 = _0x09F2[string.char(104,117,100,47,119,109,95,117,115,101,100)] == true
local _0xFF6F = false
local _0x87BB, _0x0CC4 = false, 0
local function _0x2195()
local _0x8AF5 = _0x8329.AbsolutePosition.X
local _0x0E03 = _0x5737.AbsolutePosition.X - _0x8AF5
local _0x546B = _0x8329.AbsoluteSize.Y + 10
_0xB6CD.Position = UDim2.fromOffset(_0x0E03 + _0x5737.AbsoluteSize.X + 6, _0x546B)
_0xC32E.Position = UDim2.fromOffset(_0x0E03 + _0x5737.AbsoluteSize.X / 2, _0x546B)
end
local function _0x8157(_0xE496, hideAfter)
_0x0CC4 += 1
if _0xE496 == _0x87BB then
if not _0xE496 then
return
end
else
_0x87BB = _0xE496
_0xCAAA.Text = _0x952B andstring.char(99,108,105,99,107,32,116,111,32,99,108,111,115,101,32,116,104,101,32,109,101,110,117)orstring.char(99,108,105,99,107,32,116,111,32,111,112,101,110,32,116,104,101,32,109,101,110,117)_0xE233.Text =string.char(100,114,97,103,32,116,111,32,109,111,118,101,32,32,194,183,32,32,111,114,32,112,114,101,115,115,32).. _0xC48C.Name
if _0xE496 then
_0x2195()
end
_0x2752(_0xB6CD, _0x44A3, _0xE496)
_0xC32E.Visible = _0xE496
end
if _0xE496 and hideAfter then
local _0x4FE3 = _0x0CC4
task.delay(hideAfter, function()
if _0x4FE3 == _0x0CC4 and not _0xFF6F then
_0x8157(false)
end
end)
end
end
local function _0xE007()
local _0xE897 = _0xFF6F
_0x0903(_0xB706, 0.2, { Scale = _0x4648 * (_0xE897 and 1.03 or 1) }, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
_0x0903(_0x0DDA, 0.2, { Transparency = (_0xE897 or _0x952B) and 0 or 0.5 })
local _0x1A10 = _0xE897 and _0xA925 or (_0x952B and _0xF139 or _0x6274)
local _0xBC61 = _0xE897 and _0xAA5A or _0xDC52
_0x0903(_0x5737, 0.2, { BackgroundColor3 = _0x1A10 })
_0x0903(_0xF619, 0.2, { TextColor3 = _0xBC61 })
for _0x624F, _0x3E3E in ipairs(_0x38F6) do
_0x0903(_0x3E3E, 0.2, { BackgroundColor3 = _0xBC61 })
end
if _0x7319 or _0xE897 then
_0x0903(_0x4D8A, 0.2, { Transparency = _0xE897 and 0 or 0.6 })
end
end
local function _0x7B67(open)
local _0x0509, _0x2250 = Enum.EasingDirection.Out, Enum.EasingStyle.Quint
_0x0903(_0x38F6[1], 0.35, { Position = UDim2.new(0.5, 0, 0, open and 5 or 1), Rotation = open and 45 or 0 }, _0x0509, _0x2250)
_0x0903(_0x38F6[2], 0.25, { Size = UDim2.fromOffset(open and 0 or 12, 2), BackgroundTransparency = open and 1 or 0 }, _0x0509, _0x2250)
_0x0903(_0x38F6[3], 0.35, { Position = UDim2.new(0.5, 0, 0, open and 5 or 9), Rotation = open and -45 or 0 }, _0x0509, _0x2250)
_0xF619.Text = open andstring.char(99,108,111,115,101)orstring.char(109,101,110,117)end
_0xB9EB(_0x8329.MouseEnter, function()
_0xFF6F = true
_0xE007()
local _0x4FE3 = _0x0CC4
task.delay(0.35, function()
if _0xFF6F and _0x4FE3 == _0x0CC4 then
_0x8157(true)
end
end)
end)
_0xB9EB(_0x8329.MouseLeave, function()
_0xFF6F = false
_0xE007()
_0x8157(false)
end)
_0xB9EB(_0x8329.InputBegan, function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
_0x0903(_0xB706, 0.1, { Scale = _0x4648 * 0.96 })
end
end)
_0x3F1E(_0xB347,string.char(104,117,100,47,119,97,116,101,114,109,97,114,107,95,112,111,115), function()
if not _0x7319 then
_0x7319 = true
_0x09F2[string.char(104,117,100,47,119,109,95,117,115,101,100)] = true
_0x3E73, _0x8269 = true, os.clock()
end
_0x8157(false)
_0xC2FB()
end, function()
if not _0x24DA.MouseEnabled then
_0xFF6F = false
end
_0xE007()
end, _0x8329)
_0xD1AC.setWatermark = function(_0xE496)
if _0xE496 == (_0x8329:GetAttribute(string.char(112,122,79,110)) == true) then
return
end
_0x2752(_0x8329, _0xB706, _0xE496, _0x4648)
if not _0xE496 then
_0x8157(false)
end
end
local _0x0985 = game:GetService(string.char(83,116,97,116,115))
local function _0x2D61()
local _0xD828, _0xA362 = pcall(function()
return _0x0985.Network.ServerStatsItem[string.char(68,97,116,97,32,80,105,110,103)]:GetValue()
end)
if _0xD828 and type(_0xA362) ==string.char(110,117,109,98,101,114)then
return _0xA362
end
_0xD828, _0xA362 = pcall(function()
return _0x8E3D:GetNetworkPing() * 2000
end)
return _0xD828 and _0xA362 or 0
end
local _0x9BD4, _0xA5EE, _0x0775 = 0, os.clock(), -1
local _0xFC59 = os.clock()
_0xB9EB(_0xB197.RenderStepped, function()
_0x9BD4 += 1
local _0x8C28 = os.clock()
if _0x8329.Visible then
local _0x634C = (_0x8C28 - _0xFC59) * 0.35
local _0xC623 = _0x835C(_0x634C)
for _0x624F, _0xBCE8 in ipairs(_0x12BF) do
_0xBCE8.Color = _0xC623
end
if not _0x7319 and not _0xFF6F then
_0x4D8A.Transparency = 0.15 + 0.55 * (0.5 + 0.5 * math.cos((_0x8C28 - _0xFC59) * 4))
end
if _0xB706.Scale > _0x4648 * 0.99 then
_0xB347.Size = UDim2.fromOffset(_0x8329.AbsoluteSize.X, _0x8329.AbsoluteSize.Y)
end
if _0xB6CD.Visible then
_0x2195()
end
end
if _0x8C28 - _0xA5EE < 0.5 then
return
end
local _0x93FD = math.floor(_0x9BD4 / (_0x8C28 - _0xA5EE) + 0.5)
_0x9BD4, _0xA5EE = 0, _0x8C28
if not _0x8329.Visible then
return
end
local _0x2D03 = math.floor(_0x2D61() + 0.5)
_0xB033.Text = _0xB0D5(_0x93FD,string.char(102,112,115))
_0x07FF.Text = _0xB0D5(_0x2D03,string.char(109,115))
_0x4633.Text =string.char(60,102,111,110,116,32,99,111,108,111,114,61,34,35,70,70,70,70,70,70,34,62).. os.date(string.char(37,72,58,37,77)) ..string.char(60,47,102,111,110,116,62)local _0xAFC8 = _0x2D03 < 90 and 3 or (_0x2D03 < 180 and 2 or 1)
if _0xAFC8 ~= _0x0775 then
_0x0775 = _0xAFC8
for _0x269E, _0xBF1F in ipairs(_0xB325) do
_0x0903(_0xBF1F, 0.25, { BackgroundColor3 = _0x269E <= _0xAFC8 and _0xA925 or _0xF139 })
end
end
end)
_0x4E3B = function(_0xFB60)
_0x7B67(_0xFB60)
_0xE007()
if _0xFB60 then
_0x8157(false)
elseif not _0x7319 and _0x8329:GetAttribute(string.char(112,122,79,110)) then
task.delay(0.25, function()
if not _0x952B and not _0x7319 then
_0x8157(true, 6)
end
end)
end
end
local _0xA50B, _0xF230, _0x5EE9
_0xB9EB(_0x6850.InputBegan, function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
_0xA50B = true
_0xF230 = input.Position
_0x5EE9 = _0xFF96.Position
end
end)
_0xB9EB(_0x24DA.InputChanged, function(input)
if input.UserInputType ~= Enum.UserInputType.MouseMovement and input.UserInputType ~= Enum.UserInputType.Touch then
return
end
if _0x1AC3 then
_0x1AC3(input.Position.X)
elseif _0xA50B then
local _0xA65E = input.Position - _0xF230
_0xFF96.Position = UDim2.new(_0x5EE9.X.Scale, _0x5EE9.X.Offset + _0xA65E.X, _0x5EE9.Y.Scale, _0x5EE9.Y.Offset + _0xA65E.Y)
end
end)
_0xB9EB(_0x24DA.InputEnded, function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
_0xA50B = false
_0x1AC3 = nil
end
end)
local _0x2936, _0x76EE = os.clock(), 0
_0xB9EB(_0xB197.RenderStepped, function()
if not _0xFF96.Visible then
return
end
local _0x8C28 = os.clock()
if _0x8C28 - _0x76EE < 1 / 30 then
return
end
_0x76EE = _0x8C28
local _0x634C = (_0x8C28 - _0x2936) * 0.35
local _0xC623 = _0x835C(_0x634C)
for _0x624F, _0xBCE8 in ipairs(_0xD910) do
_0xBCE8.Color = _0xC623
end
_0xD910[1].Rotation = _0x634C * 90 % 360
end)
do
local _0x5367 = {
CoolRock = {
_0xAB38 = _0xE3F2 ..string.char(47,99,111,111,108,114,111,99,107,50,46,112,110,103),
_0xEEC3 =string.char(104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,114,111,99,107,115,99,114,105,112,116,101,114,47,77,77,50,68,114,111,110,101,47,114,101,102,115,47,104,101,97,100,115,47,109,97,105,110,47,99,111,111,108,114,111,99,107,50,46,112,110,103),
_0xA156 = 45,
cols = 7,
cell = 144,
_0x6BB5 = 8,
_0xC431 = 8,
_0xEF64 = 16,
_0x389C = 4,
delay = 0.14,
},
}
local _0xFD48 = _0x504E(string.char(73,109,97,103,101,76,97,98,101,108), {
Name =string.char(77,97,115,99,111,116),
AnchorPoint = Vector2.new(0.5, 1),
Size = UDim2.fromOffset(150, 150),
BackgroundTransparency = 1,
ImageTransparency = 1,
ScaleType = Enum.ScaleType.Fit,
Visible = false,
ZIndex = 1,
Parent = _0x0155,
})
local _0xC126
_0xE55E.name =string.char(67,111,111,108,82,111,99,107)if _0x09F2[string.char(109,101,116,97,47,99,111,111,108,114,111,99,107,95,100,101,102,97,117,108,116)] ~= true then
_0x09F2[string.char(109,101,116,97,47,99,111,111,108,114,111,99,107,95,100,101,102,97,117,108,116)] = true
_0x09F2[string.char(83,101,116,116,105,110,103,115,47,77,97,115,99,111,116,47,67,111,111,108,82,111,99,107)] = true
_0x3E73 = true
_0xC44C()
pcall(function()
if writefile then
writefile(string.char(99,108,117,109,115,121,115,99,114,105,112,116,95,109,97,115,99,111,116,46,116,120,116),string.char(67,111,111,108,82,111,99,107))
end
end)
else
pcall(function()
if isfile and isfile(string.char(99,108,117,109,115,121,115,99,114,105,112,116,95,109,97,115,99,111,116,46,116,120,116)) then
local _0xEB0B = readfile(string.char(99,108,117,109,115,121,115,99,114,105,112,116,95,109,97,115,99,111,116,46,116,120,116))
if _0xEB0B ==string.char(79,102,102)or _0xEB0B ==string.char(67,111,111,108,82,111,99,107)then
_0xE55E.name = _0xEB0B
end
end
end)
end
local _0x4E46 = {}
local function _0x503C(_0x893F)
if _0x4E46[_0x893F] then
return _0x4E46[_0x893F]
end
local _0x5244 = _0x5367[_0x893F]
local _0xF497 = getcustomasset or getsynasset
if not _0x5244 or not _0xF497 then
return
end
if not (isfile and isfile(_0x5244.file)) and _0x5244.url and writefile then
local _0xD828, _0x5E99 = pcall(game.HttpGet, game, _0x5244.url)
if _0xD828 and type(_0x5E99) ==string.char(115,116,114,105,110,103)and #_0x5E99 > 0 then
pcall(writefile, _0x5244.file, _0x5E99)
end
end
if not (isfile and isfile(_0x5244.file)) then
return
end
local _0xD828, _0xFBDF = pcall(_0xF497, _0x5244.file)
if _0xD828 and _0xFBDF then
_0x4E46[_0x893F] = _0xFBDF
return _0xFBDF
end
end
local _0xEBA2 = Instance.new(string.char(78,117,109,98,101,114,86,97,108,117,101))
local _0x422F = Instance.new(string.char(78,117,109,98,101,114,86,97,108,117,101))
local _0xB0BD
local _0x6224 = 0
_0x307E = function(_0xFB60)
if not _0xC126 then
return
end
_0x6224 += 1
local _0x4FE3 = _0x6224
if _0xB0BD then
_0xB0BD:Cancel()
end
if _0xFB60 then
_0xFD48.Visible = true
_0xEBA2.Value = 0
_0xB0BD = _0x8185:Create(_0xEBA2, TweenInfo.new(0.75, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out, 0, false, 0.2), { Value = 1 })
_0xB0BD:Play()
else
_0xB0BD = _0x0903(_0xEBA2, 0.2, { Value = 0 }, Enum.EasingDirection.In)
_0xB0BD.Completed:Connect(function(_0x61F0)
if _0x4FE3 == _0x6224 and _0x61F0 == Enum.PlaybackState.Completed then
_0xFD48.Visible = false
end
end)
end
end
local _0x78D1 = 0
local function _0xE4FA(_0x893F)
_0x78D1 += 1
local _0x4FE3 = _0x78D1
task.spawn(function()
if _0xC126 and _0xFD48.Visible then
_0x307E(false)
task.wait(0.22)
end
if _0x4FE3 ~= _0x78D1 then
return
end
_0xC126 = nil
_0xFD48.Visible = false
if _0x893F ==string.char(79,102,102)then
return
end
local _0xFBDF = _0x503C(_0x893F)
if _0x4FE3 ~= _0x78D1 or not _0xFBDF then
return
end
local _0x5244 = _0x5367[_0x893F]
_0xFD48.Image = _0xFBDF
local _0x6BB5, _0xEF64 = _0x5244.cropLeft or 0, _0x5244.cropTop or 0
local _0xC431, _0x389C = _0x5244.cropRight or 0, _0x5244.cropBottom or 0
_0xFD48.ImageRectOffset = _0x5244.frames and Vector2.new(_0x6BB5, _0xEF64) or Vector2.zero
_0xFD48.ImageRectSize = _0x5244.frames and Vector2.new(_0x5244.cell - _0x6BB5 - _0xC431, _0x5244.cell - _0xEF64 - _0x389C) or Vector2.zero
_0xC126 = _0x5244
if _0x952B then
_0x307E(true)
end
end)
end
_0xE55E.set = function(_0x893F)
if _0x893F == _0xE55E.name then
return
end
_0xE55E.name = _0x893F
pcall(function()
if writefile then
writefile(string.char(99,108,117,109,115,121,115,99,114,105,112,116,95,109,97,115,99,111,116,46,116,120,116), _0x893F)
end
end)
_0xE4FA(_0x893F)
end
_0xB9EB(_0xFD48.MouseEnter, function()
_0x0903(_0x422F, 0.35, { Value = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
end)
_0xB9EB(_0xFD48.MouseLeave, function()
_0x0903(_0x422F, 0.3, { Value = 0 })
end)
local _0x8CF5, _0x04C0, _0x4C46, _0xC8D2 = 0, 0, 0, 0
local _0xCAC7, _0xF870 = 0, 0
local _0x8B4A = 0
local _0xFAE3
local _0x84B0 = 0
local _0x4AF1 = os.clock()
_0xB9EB(_0xB197.RenderStepped, function(_0x5D8D)
if not _0xFD48.Visible or not _0xC126 then
_0xFAE3 = nil
return
end
_0x5D8D = math.min(_0x5D8D, 0.03333333333333333)
local _0x634C = os.clock() - _0x4AF1
local _0xE157 = _0x214C.Scale
local _0x09CD = _0xEBA2.Value
local _0xA9BF = _0x422F.Value
local _0x3242, _0x0CE7 = _0xFF96.Position, _0xFF96.Size
local _0x634E, _0xEDFC = _0x3242.X.Offset, _0x3242.Y.Offset
if _0xC126.frames then
local _0xF0CB = math.floor(_0x634C / _0xC126.delay) % _0xC126.frames
_0xFD48.ImageRectOffset = Vector2.new(_0xF0CB % _0xC126.cols * _0xC126.cell + (_0xC126.cropLeft or 0), math.floor(_0xF0CB / _0xC126.cols) * _0xC126.cell + (_0xC126.cropTop or 0))
end
if not _0xFAE3 then
_0x8CF5, _0x04C0, _0x4C46, _0xC8D2, _0xCAC7, _0xF870, _0x8B4A = _0x634E, _0xEDFC, 0, 0, 0, 0, 0
_0xFAE3 = _0x634E
end
_0x8B4A += ((_0x634E - _0xFAE3) / _0x5D8D - _0x8B4A) * math.min(_0x5D8D * 12, 1)
_0xFAE3 = _0x634E
_0x84B0 += ((_0xA50B and 1 or 0) - _0x84B0) * math.min(_0x5D8D * 8, 1)
local _0xF171 = _0x5D8D / 2
for _0x624F = 1, 2 do
_0x4C46 += ((_0x634E - _0x8CF5) * 170 - _0x4C46 * 13) * _0xF171
_0xC8D2 += ((_0xEDFC - _0x04C0) * 170 - _0xC8D2 * 13) * _0xF171
_0x8CF5 += _0x4C46 * _0xF171
_0x04C0 += _0xC8D2 * _0xF171
_0xF870 += ((math.clamp(-_0x8B4A * 0.015, -22, 22) - _0xCAC7) * 120 - _0xF870 * 9) * _0xF171
_0xCAC7 += _0xF870 * _0xF171
end
local _0x9BB7 = math.clamp(_0x8CF5 - _0x634E, -10, 10)
local _0x8054 = math.clamp(_0x04C0 - _0xEDFC, -40, 0)
_0x8CF5, _0x04C0 = _0x634E + _0x9BB7, math.clamp(_0x04C0, _0xEDFC - 40, _0xEDFC)
local _0xAA13 = math.clamp(_0xC8D2 * 0.00025, -0.12, 0.12)
local _0xEC9A, _0xC465 = 1 + _0xAA13 * 0.6, 1 - _0xAA13
local _0x428B = 150 * _0xE157 * (1 + 0.07 * _0xA9BF)
local _0xCDE9, _0x9679 = _0x428B * _0xEC9A, _0x428B * _0xC465
local _0x4323 = _0x634E - _0x0CE7.X.Offset / 2 * _0xE157
local _0x521C = _0xEDFC - _0x0CE7.Y.Offset / 2 * _0xE157
local _0x4244 = _0x4323 + 58 * _0xE157 + _0x9BB7 * _0x09CD
local _0x0778 = _0x521C + 13 * _0xE157
local _0x546B = _0x0778 - (1 - _0x09CD) * 70 * _0xE157 + _0x8054 * _0x09CD - 6 * _0xA9BF * _0xE157 - 6 * _0x84B0 * _0xE157
local _0x2BD6 = _0xCAC7 * math.clamp(_0x09CD, 0, 1) - 4 * _0xA9BF
local _0x00EA = math.rad(_0x2BD6)
_0x4244 += math.sin(_0x00EA) * _0x9679 / 2
_0x546B += (1 - math.cos(_0x00EA)) * _0x9679 / 2
_0xFD48.Position = UDim2.new(_0x3242.X.Scale, _0x4244, _0x3242.Y.Scale, _0x546B)
_0xFD48.Size = UDim2.fromOffset(_0xCDE9, _0x9679)
_0xFD48.Rotation = _0x2BD6
_0xFD48.ImageTransparency = math.clamp(1 - _0x09CD * 3, 0, 1)
end)
_0xE4FA(_0xE55E.name)
endlocal _0x2F55
local function _0x9065()
local _0xF5BE = _0x8E3D:FindFirstChildOfClass(string.char(66,97,99,107,112,97,99,107))
if not _0xF5BE then return end
if _0x2F55 and _0x2F55.Parent then
return
end
for _0x624F, _0xC4E3 in ipairs({_0xF5BE, _0x8E3D.Character}) do
if _0xC4E3 then
local _0xF7C5 = _0xC4E3:FindFirstChild(string.char(116,112))
if _0xF7C5 and _0xF7C5:IsA(string.char(84,111,111,108)) then
_0xF7C5:Destroy()
end
end
end
local _0xA2E1 = Instance.new(string.char(84,111,111,108))
_0xA2E1.Name =string.char(116,112)_0xA2E1.RequiresHandle = false
_0xA2E1.CanBeDropped = false
_0xB9EB(_0xA2E1.Activated, function()
local _0xD534 = _0x8E3D.Character
local _0xC6D1 = _0xD534 and _0xD534:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0x3370 = _0x8E3D:GetMouse()
if _0xC6D1 and _0x3370 and _0x3370.Hit then
local _0x09CD = _0x3370.Hit.Position
_0xC6D1.CFrame = CFrame.new(_0x09CD.X, _0x09CD.Y + 3, _0x09CD.Z)
end
end)
_0xA2E1.Parent = _0xF5BE
_0x2F55 = _0xA2E1
end
local function _0x5D1A()
if _0x2F55 then
pcall(function() _0x2F55:Destroy() end)
_0x2F55 = nil
end
for _0x624F, _0xC4E3 in ipairs({_0x8E3D:FindFirstChildOfClass(string.char(66,97,99,107,112,97,99,107)), _0x8E3D.Character}) do
if _0xC4E3 then
local _0xA2E1 = _0xC4E3:FindFirstChild(string.char(116,112))
if _0xA2E1 and _0xA2E1:IsA(string.char(84,111,111,108)) then
pcall(function() _0xA2E1:Destroy() end)
end
end
end
endlocal _0xEDA5 = {
_0x9CCE = false,
ui = nil,
_0x12EF = nil,
_0x2AF9 = nil,
_0x9747 = {},
drag = false,
touchObj = nil,
vec = Vector2.zero,
loopConn = nil,
charConn = nil,
_0x65A7 = 0,
_0xA73E = nil,
_0x1EA7 = nil,
noclipSnap = {},
}
local _0x5B05 = 60
local _0xD236 = false
local function _0xB74C()
_0xEDA5.drag = false
_0xEDA5.touchObj = nil
_0xEDA5.vec = Vector2.zero
if _0xEDA5.knob and _0xEDA5.knob.Parent then
_0xEDA5.knob.Position = UDim2.new(0.5, 0, 0.5, 0)
end
end
local function _0x7580(inputPos)
if not _0xEDA5.base or not _0xEDA5.base.Parent or not _0xEDA5.knob or not _0xEDA5.knob.Parent then
return
end
local _0x748C = _0xEDA5.base.AbsolutePosition + (_0xEDA5.base.AbsoluteSize * 0.5)
local _0xA0A0 = Vector2.new(inputPos.X, inputPos.Y) - _0x748C
local _0xA929 = math.max(1, (math.min(_0xEDA5.base.AbsoluteSize.X, _0xEDA5.base.AbsoluteSize.Y) * 0.5) - 28)
local _0xE48A = _0xA0A0.Magnitude
if _0xE48A > _0xA929 then
_0xA0A0 = _0xA0A0.Unit * _0xA929
end
_0xEDA5.knob.Position = UDim2.new(0.5, _0xA0A0.X, 0.5, _0xA0A0.Y)
_0xEDA5.vec = Vector2.new(_0xA0A0.X / _0xA929, -_0xA0A0.Y / _0xA929)
if _0xEDA5.vec.Magnitude > 1 then
_0xEDA5.vec = _0xEDA5.vec.Unit
end
end
local function _0x36F9()
for _0x624F, _0x242F in ipairs(_0xEDA5.conns) do
pcall(function() _0x242F:Disconnect() end)
end
table.clear(_0xEDA5.conns)
end
local function _0x2F64()
if _0xEDA5.ui and _0xEDA5.ui.Parent and _0xEDA5.base and _0xEDA5.base.Parent then
return
end
_0x36F9()
if _0xEDA5.ui then
pcall(function() _0xEDA5.ui:Destroy() end)
end
local _0x0155 = Instance.new(string.char(83,99,114,101,101,110,71,117,105))
_0x0155.Name =string.char(67,108,117,109,115,121,70,108,121,74,111,121,115,116,105,99,107)_0x0155.ResetOnSpawn = false
_0x0155.IgnoreGuiInset = true
_0x0155.DisplayOrder = 998
_0x0155.Parent = _0x8E3D:FindFirstChildOfClass(string.char(80,108,97,121,101,114,71,117,105)) or _0x8E3D.PlayerGui
_0xEDA5.ui = _0x0155
local _0x12EF = Instance.new(string.char(70,114,97,109,101))
_0x12EF.AnchorPoint = Vector2.new(0.5, 0.5)
_0x12EF.Position = UDim2.new(0.18, 0, 0.72, 0)
_0x12EF.Size = UDim2.fromOffset(150, 150)
_0x12EF.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_0x12EF.BackgroundTransparency = 0.25
_0x12EF.BorderSizePixel = 0
_0x12EF.Active = true
_0x12EF.ZIndex = 10
_0x12EF.Parent = _0x0155
local _0x31EB = Instance.new(string.char(85,73,67,111,114,110,101,114))
_0x31EB.CornerRadius = UDim.new(1, 0)
_0x31EB.Parent = _0x12EF
local _0xBC19 = Instance.new(string.char(85,73,83,116,114,111,107,101))
_0xBC19.Color = _0xA925
_0xBC19.Thickness = 1.5
_0xBC19.Transparency = 0.4
_0xBC19.Parent = _0x12EF
_0xEDA5.base = _0x12EF
local _0x2AF9 = Instance.new(string.char(70,114,97,109,101))
_0x2AF9.AnchorPoint = Vector2.new(0.5, 0.5)
_0x2AF9.Position = UDim2.new(0.5, 0, 0.5, 0)
_0x2AF9.Size = UDim2.fromOffset(55, 55)
_0x2AF9.BackgroundColor3 = _0xA925
_0x2AF9.BackgroundTransparency = 0.1
_0x2AF9.BorderSizePixel = 0
_0x2AF9.ZIndex = 11
_0x2AF9.Parent = _0x12EF
local _0x0115 = Instance.new(string.char(85,73,67,111,114,110,101,114))
_0x0115.CornerRadius = UDim.new(1, 0)
_0x0115.Parent = _0x2AF9
_0xEDA5.knob = _0x2AF9
_0xEDA5.conns[#_0xEDA5.conns + 1] = _0x12EF.InputBegan:Connect(function(input)
if not _0xEDA5.active then return end
local _0x634C = input.UserInputType
if _0x634C == Enum.UserInputType.Touch or _0x634C == Enum.UserInputType.MouseButton1 then
_0xEDA5.drag = true
_0xEDA5.touchObj = input
_0x7580(input.Position)
end
end)
_0xEDA5.conns[#_0xEDA5.conns + 1] = _0x24DA.InputChanged:Connect(function(input)
if not _0xEDA5.active or not _0xEDA5.drag then return end
local _0x634C = input.UserInputType
if _0x634C == Enum.UserInputType.Touch then
if _0xEDA5.touchObj and input ~= _0xEDA5.touchObj then return end
_0x7580(input.Position)
elseif _0x634C == Enum.UserInputType.MouseMovement then
_0x7580(input.Position)
end
end)
_0xEDA5.conns[#_0xEDA5.conns + 1] = _0x24DA.InputEnded:Connect(function(input)
if not _0xEDA5.drag then return end
if input == _0xEDA5.touchObj or input.UserInputType == Enum.UserInputType.MouseButton1 then
_0xB74C()
end
end)
end
local function _0x666C()
if _0xEDA5.bv then
pcall(function() _0xEDA5.bv:Destroy() end)
_0xEDA5.bv = nil
end
if _0xEDA5.bg then
pcall(function() _0xEDA5.bg:Destroy() end)
_0xEDA5.bg = nil
end
local _0xD534 = _0x8E3D.Character
if _0xD534 then
local _0xC3CF = _0xD534:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if _0xC3CF then _0xC3CF.PlatformStand = false end
end
for _0x6F67 in pairs(_0xEDA5.noclipSnap) do
if _0x6F67 and _0x6F67.Parent then
pcall(function() _0x6F67.CanCollide = true end)
end
end
table.clear(_0xEDA5.noclipSnap)
end
local function _0x6B1F(_0xD534)
if not _0xEDA5.active then return end
local _0xC6D1 = _0xD534:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)) or _0xD534:WaitForChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116), 5)
local _0xC3CF = _0xD534:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100)) or _0xD534:WaitForChild(string.char(72,117,109,97,110,111,105,100), 5)
if not _0xC6D1 or not _0xC3CF or not _0xEDA5.active then return end
_0x666C()
local _0xA73E = Instance.new(string.char(66,111,100,121,86,101,108,111,99,105,116,121))
_0xA73E.MaxForce = Vector3.new(1e9, 1e9, 1e9)
_0xA73E.P = 12500
_0xA73E.Velocity = Vector3.zero
_0xA73E.Parent = _0xC6D1
_0xEDA5.bv = _0xA73E
local _0x1EA7 = Instance.new(string.char(66,111,100,121,71,121,114,111))
_0x1EA7.MaxTorque = Vector3.new(1e9, 1e9, 1e9)
_0x1EA7.P = 12000
_0x1EA7.D = 700
_0x1EA7.CFrame = _0xC6D1.CFrame
_0x1EA7.Parent = _0xC6D1
_0xEDA5.bg = _0x1EA7
_0xC3CF.PlatformStand = true
if _0xD236 then
for _0x624F, _0x6F67 in ipairs(_0xD534:GetDescendants()) do
if _0x6F67:IsA(string.char(66,97,115,101,80,97,114,116)) and _0x6F67.CanCollide then
_0xEDA5.noclipSnap[_0x6F67] = true
_0x6F67.CanCollide = false
end
end
end
end
local function _0x7594(enabled)
enabled = enabled == true
if enabled then
if _0xEDA5.active then
_0x2F64()
return
end
_0xEDA5.active = true
_0xEDA5.generation += 1
_0x2F64()
_0xB74C()
if _0x8E3D.Character then
_0x6B1F(_0x8E3D.Character)
end
if not _0xEDA5.charConn then
_0xEDA5.charConn = _0x8E3D.CharacterAdded:Connect(function(_0xD534)
if _0xEDA5.active then
task.defer(function()
if _0xEDA5.active then
_0x6B1F(_0xD534)
end
end)
end
end)
end
local _0x65A7 = _0xEDA5.generation
_0xEDA5.loopConn = _0xB197.RenderStepped:Connect(function()
if not _0xEDA5.active or _0x65A7 ~= _0xEDA5.generation then return end
local _0xD534 = _0x8E3D.Character
if not _0xD534 then return end
local _0xC6D1 = _0xD534:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xC3CF = _0xD534:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if not _0xC6D1 or not _0xC3CF then return end
if not _0xEDA5.bv or _0xEDA5.bv.Parent ~= _0xC6D1 then
_0x6B1F(_0xD534)
return
end
_0xC3CF.PlatformStand = true
if _0xD236 then
for _0x624F, _0x6F67 in ipairs(_0xD534:GetDescendants()) do
if _0x6F67:IsA(string.char(66,97,115,101,80,97,114,116)) and _0x6F67.CanCollide then
_0xEDA5.noclipSnap[_0x6F67] = true
_0x6F67.CanCollide = false
end
end
end
if _0xEDA5.bg and _0xEDA5.bg.Parent == _0xC6D1 then
_0xEDA5.bg.CFrame = workspace.CurrentCamera.CFrame
end
local _0x3327 = _0xEDA5.vec
if _0x3327.Magnitude > 0.05 then
local _0x45C3 = workspace.CurrentCamera
_0xEDA5.bv.Velocity =
(_0x45C3.CFrame.RightVector * _0x3327.X + _0x45C3.CFrame.LookVector * _0x3327.Y)
* _0x5B05
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
_0x666C()
_0xB74C()
_0x36F9()
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
endlocal _0x0ACB = game:GetService(string.char(67,111,110,116,101,110,116,80,114,111,118,105,100,101,114))
local _0x1F69
local _0x6EF2 = {
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
local _0x5741 =string.char(79,114,105,103,105,110,97,108,32,83,104,111,116)local _0xE19F = _0x6EF2[_0x5741]
local _0xF31E = false
local _0x17BD = 3
local _0x60E0 = 0
local _0xB969 = 3
local _0xD31C = 0
local _0x71F6 = setmetatable({}, { __mode =string.char(107)})
local _0x0846 = setmetatable({}, { __mode =string.char(107)})
local function _0xF7B0(_0x9396)
if not _0xF31E or not _0x9396 or not _0x9396:IsA(string.char(83,111,117,110,100)) then return end
if _0x9396 == _0x1F69 or _0x9396.Name ==string.char(67,108,117,109,115,121,95,83,104,111,116,83,111,117,110,100)then return end
local _0x0FB1 = string.lower(_0x9396.Name)
local _0x09E7 = _0x0FB1:find(string.char(115,104,111,116), 1, true)
or _0x0FB1:find(string.char(115,104,111,111,116), 1, true)
or _0x0FB1:find(string.char(102,105,114,101), 1, true)
or _0x0FB1:find(string.char(103,117,110), 1, true)
or _0x0FB1:find(string.char(98,97,110,103), 1, true)
if not _0x09E7 then return end
if _0x71F6[_0x9396] == nil then
_0x71F6[_0x9396] = _0x9396.Volume
end
pcall(function()
_0x9396:Stop()
_0x9396.Volume = 0
end)
end
local function _0x2325(_0xA2E1)
if not _0xF31E or not _0xA2E1 then return end
for _0x624F, descendant in ipairs(_0xA2E1:GetDescendants()) do
if descendant:IsA(string.char(83,111,117,110,100)) then _0xF7B0(descendant) end
end
if not _0x0846[_0xA2E1] then
_0x0846[_0xA2E1] = _0xA2E1.DescendantAdded:Connect(function(descendant)
if descendant:IsA(string.char(83,111,117,110,100)) then _0xF7B0(descendant) end
end)
end
end
local function _0x6A08()
for _0x9396, originalVolume in pairs(_0x71F6) do
if _0x9396 and _0x9396.Parent then
pcall(function() _0x9396.Volume = originalVolume end)
end
_0x71F6[_0x9396] = nil
end
for _0xA2E1, connection in pairs(_0x0846) do
pcall(function() connection:Disconnect() end)
_0x0846[_0xA2E1] = nil
end
end
local function _0x9550()
local _0xD534 = _0x8E3D.Character
if not _0xD534 then return nil end
local _0xA2E1 = _0xD534:FindFirstChildOfClass(string.char(84,111,111,108))
if not _0xA2E1 then return nil end
local _0x893F = string.lower(_0xA2E1.Name)if _0x893F:find(string.char(107,110,105,102,101), 1, true) or _0x893F:find(string.char(115,119,111,114,100), 1, true) then
return nil
end
if _0x893F:find(string.char(112,105,115,116,111,108), 1, true)
or _0x893F:find(string.char(115,104,101,114,105,102,102), 1, true)
or _0x893F:find(string.char(114,101,118,111,108,118,101,114), 1, true)
or _0x893F:find(string.char(104,97,110,100,103,117,110), 1, true)
or _0x893F:find(string.char(103,117,110), 1, true)
then
return _0xA2E1
end
return nil
end
local function _0x5B0F()
if _0x1F69 then pcall(function() _0x1F69:Destroy() end) end
_0x1F69 = nil
local _0xD534 = _0x8E3D.Character
local _0xE13F = _0xD534 and (_0xD534:FindFirstChild(string.char(72,101,97,100)) or _0xD534:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)))
if not _0xE13F then return end
_0x1F69 = Instance.new(string.char(83,111,117,110,100))
_0x1F69.Name =string.char(67,108,117,109,115,121,95,83,104,111,116,83,111,117,110,100)_0x1F69.SoundId = _0xE19F
_0x1F69.Volume = _0x17BD
_0x1F69.Parent = _0xE13F
task.spawn(function()
pcall(function() _0x0ACB:PreloadAsync({_0x1F69}) end)
end)
end
local function _0xCFEE()
if not _0xF31E then return end
if not _0x9550() then return end
local _0x8C28 = os.clock()
if _0x8C28 - _0x60E0 < _0xB969 then return end
_0x60E0 = _0x8C28
local _0xB2DF = _0x9550()
if _0xB2DF then _0x2325(_0xB2DF) end
if not _0x1F69 or not _0x1F69.Parent then
_0x5B0F()
end
if _0x1F69 then
_0x1F69.Volume = _0x17BD
_0xD31C += 1
pcall(function()_0x1F69.Looped = false
_0x1F69.TimePosition = 0
_0x1F69:Play()
end)
end
end
local function _0x5C26(_0xA2E1)
if not _0xA2E1 or not _0xA2E1:IsA(string.char(84,111,111,108)) then return end
if _0xA2E1:GetAttribute(string.char(67,108,117,109,115,121,83,104,111,116,72,111,111,107)) then return end
_0xA2E1:SetAttribute(string.char(67,108,117,109,115,121,83,104,111,116,72,111,111,107), true)
_0xB9EB(_0xA2E1.Activated, function()
if _0xF31E then
_0x2325(_0xA2E1)
_0xCFEE()
end
end)
if _0xF31E then _0x2325(_0xA2E1) end
end
local function _0xE654()
local _0xD534 = _0x8E3D.Character
if not _0xD534 then return end
local _0xA2E1 = _0xD534:FindFirstChildOfClass(string.char(84,111,111,108))
if _0xA2E1 then _0x5C26(_0xA2E1) end
end
_0xB9EB(_0xB197.Heartbeat, function()
if _0xF31E then
_0xE654()
end
end)
_0xB9EB(_0x8E3D.CharacterAdded, function()
task.delay(0.5, function()
if _0xF31E then _0x5B0F() end
end)
end)
local _0xC09E = _0xEBCC(string.char(77,97,105,110),string.char(103,101,97,114),string.char(115,112,101,101,100,44,32,106,117,109,112,115,32,97,110,100,32,99,104,97,114,97,99,116,101,114))
local _0x786E = _0xEBCC(string.char(67,111,109,98,97,116),string.char(116,97,114,103,101,116),string.char(99,111,109,98,97,116,32,102,101,97,116,117,114,101,115))
local _0xF66F = _0xEBCC(string.char(68,114,111,110,101),string.char(100,114,111,110,101),string.char(102,108,121,32,97,32,83,104,97,104,101,100,32,111,114,32,70,80,86,32,100,114,111,110,101,32,105,110,116,111,32,112,108,97,121,101,114,115))
_0x0160()
local _0x6CD0 = _0xEBCC(string.char(84,114,111,108,108,32,70,117,110),string.char(115,109,105,108,101),string.char(102,117,110,32,97,110,100,32,116,114,111,108,108,105,110,103))
local _0x6C5D = _0xEBCC(string.char(80,108,97,121,101,114,115),string.char(115,109,105,108,101),string.char(112,108,97,121,101,114,32,108,105,115,116,32,97,110,100,32,113,117,105,99,107,32,97,99,116,105,111,110,115))
local _0x41F8 = _0xEBCC(string.char(70,114,101,101,32,97,110,105,109,115),string.char(109,111,118,101),string.char(97,110,105,109,97,116,105,111,110,32,112,97,99,107,115,32,102,111,114,32,121,111,117,114,32,99,104,97,114,97,99,116,101,114))
local _0x78C0 = _0xEBCC(string.char(86,111,116,101,32,68,117,112,101,32,77,97,112),string.char(112,105,110),string.char(118,111,116,101,32,102,111,114,32,97,32,109,97,112,32,111,118,101,114,32,97,110,100,32,111,118,101,114,32,40,116,112,32,43,32,114,101,115,101,116,32,108,111,111,112,41))
local _0x1331
_0x0160()
local _0xD635 = _0xEBCC(string.char(86,105,115,117,97,108,115),string.char(101,121,101),string.char(114,101,97,108,105,115,116,105,99,32,115,104,97,100,101,114,44,32,108,105,103,104,116,32,97,110,100,32,115,107,121))
_0x2C22(_0xD635, {string.char(83,104,97,100,101,114),string.char(69,83,80),string.char(66,97,99,107,84,114,97,99,107),string.char(77,111,100,101,108,115)})
local _0x7788 = _0xEBCC(string.char(83,107,105,110,32,67,104,97,110,103,101,114),string.char(115,116,97,114),string.char(101,118,101,114,121,32,77,77,50,32,107,110,105,102,101,32,97,110,100,32,103,117,110,44,32,111,110,108,121,32,121,111,117,32,115,101,101,32,116,104,101,109))
local _0x4901 = _0xEBCC(string.char(67,117,114,115,111,114,115),string.char(98,111,108,116),string.char(121,111,117,114,32,111,119,110,32,99,117,114,115,111,114))
local _0x2E4A
local _0x2B12
local _0x37D9
local _0xA471
local _0xBABF
local _0xBB19
local _0x1BCA
local _0x2E3D
local _0x1AC0
local _0xBF15
local _0xE880
local _0xBC3A
local _0x37B2
local _0xF2C7
local _0x4654
local _0xF7F9
local _0xD796
local _0x8BC7
local _0xFEC5
local _0x3F87
local _0x7FCD
local _0xC71D
local _0x8FCB
local _0x68C7
local _0xF02D
local function _0x2768(_0x09CD, _0x893F)
local _0xD95E, _0xF5BE = _0x09CD and _0x09CD.Character, _0x09CD and _0x09CD:FindFirstChildOfClass(string.char(66,97,99,107,112,97,99,107))
return _0xD95E and _0xD95E:FindFirstChild(_0x893F) or _0xF5BE and _0xF5BE:FindFirstChild(_0x893F)
end
local function _0x6C9C(_0x09CD)
local _0xD95E = _0x09CD and _0x09CD.Character
local _0xB48C = _0xD95E and _0xD95E:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xC3CF = _0xD95E and _0xD95E:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if _0xB48C and _0xC3CF and _0xC3CF.Health > 0 then
return _0xB48C, _0xC3CF, _0xD95E
end
end
local _0x335F, _0xC54A, _0x6009, _0x6D75
local function _0x01BA(_0x3242)
local _0x8C28 = os.clock()
if not _0x6D75 or _0x8C28 - _0x6D75 > 1 or not _0x335F or not _0x335F.Parent then
_0x6D75 = _0x8C28
_0x335F = workspace:FindFirstChild(string.char(76,111,98,98,121)) or workspace:FindFirstChild(string.char(82,101,103,117,108,97,114,76,111,98,98,121))
_0xC54A, _0x6009 = nil, nil
if _0x335F then
local _0xD828, _0x4117, _0x428B = pcall(_0x335F.GetBoundingBox, _0x335F)
if _0xD828 then
_0xC54A = _0x4117
_0x6009 = _0x428B / 2 + Vector3.new(10, 30, 10)
end
end
end
if not _0xC54A then
return false
end
local _0x7514 = _0xC54A:PointToObjectSpace(_0x3242)
return math.abs(_0x7514.X) <= _0x6009.X and math.abs(_0x7514.Y) <= _0x6009.Y and math.abs(_0x7514.Z) <= _0x6009.Z
end
local _0x3CC6 = { real = nil, pause = 0, _0xE496 = false }
local function _0x16E5(_0xC6D1)
if _0x3CC6.real and _0xC6D1 and _0xC6D1.Parent then
_0xC6D1.CFrame = _0x3CC6.real
end
_0x3CC6.real = nil
_0x3CC6.pause += 1
end
local function _0xDD7C()
_0x3CC6.pause = math.max(0, _0x3CC6.pause - 1)
end
local _0xE8ED = function()
_0xF31E = false
_0xD31C += 1
if _0x1F69 then pcall(function() _0x1F69:Stop(); _0x1F69:Destroy() end) end
_0x1F69 = nil
_0x6A08()
end
_0x0160()
local _0xFC25 = _0xEBCC(string.char(83,101,116,116,105,110,103,115),string.char(115,108,105,100,101,114,115),string.char(109,101,110,117,32,115,101,116,116,105,110,103,115))
_0x5683()
local _0xBE8B = _0xEBCC(string.char(83,101,114,118,101,114),string.char(103,108,111,98,101),string.char(115,101,114,118,101,114,32,97,110,100,32,117,116,105,108,105,116,105,101,115))
local _0xDCDD = _0x45F1(_0xBE8B,string.char(83,111,117,110,100,115))
_0xDCDD:Toggle(string.char(83,104,111,116,32,83,111,117,110,100),string.char(99,117,115,116,111,109,32,119,101,97,112,111,110,32,115,104,111,116,32,115,111,117,110,100), function(_0xE496)
_0xF31E = _0xE496
if _0xE496 then
_0x60E0 = 0
_0x5B0F()
_0xE654()
local _0xB2DF = _0x9550()
if _0xB2DF then _0x2325(_0xB2DF) end
else
_0xD31C += 1
if _0x1F69 then pcall(function() _0x1F69:Stop(); _0x1F69:Destroy() end) end
_0x1F69 = nil
_0x6A08()
end
end)_0xDCDD:Slider(string.char(83,104,111,116,32,86,111,108,117,109,101,32,47,32,208,147,209,128,208,190,208,188,208,186,208,190,209,129,209,130,209,140,32,208,178,209,139,209,129,209,130,209,128,208,181,208,187,208,176), 0, 10, _0x17BD, function(_0xEB0B)
_0x17BD = _0xEB0B
if _0x1F69 then pcall(function() _0x1F69.Volume = _0xEB0B end) end
end, function(_0xEB0B)
return string.format(string.char(37,46,49,102,32,47,32,49,48), _0xEB0B)
end)
_0xDCDD:Dropdown(string.char(83,104,111,116,32,83,111,117,110,100,32,83,116,121,108,101),string.char(99,104,111,111,115,101,32,116,104,101,32,115,111,117,110,100,32,117,115,101,100,32,98,121,32,83,104,111,116,32,83,111,117,110,100), {string.char(79,114,105,103,105,110,97,108,32,83,104,111,116),string.char(69,110,97,98,108,101,32,49),string.char(83,112,97,114,107,108,101),string.char(76,97,115,101,114,32,67,108,105,99,107),string.char(69,110,97,98,108,101,32,50),string.char(78,111,116,105,102,121),string.char(82,117,115,116,32,72,101,97,100,115,104,111,116),string.char(78,101,118,101,114,108,111,115,101),string.char(66,117,98,98,108,101),string.char(67,97,108,108,32,111,102,32,68,117,116,121),string.char(84,70,50,32,67,114,105,116,105,99,97,108),string.char(83,97,98,101,114),string.char(77,111,110,101,121),string.char(83,104,117,116,116,101,114),string.char(76,97,122,101,114,32,66,101,97,109),string.char(87,105,110,100,111,119,115,32,88,80,32,69,114,114,111,114),string.char(84,70,50,32,72,105,116),string.char(79,83,85),string.char(77,97,114,105,111),string.char(66,101,108,108),string.char(86,105,110,101),string.char(66,111,110,107),string.char(83,107,101,101,116),string.char(70,97,116,97,108,105,116,121),string.char(77,105,110,101,99,114,97,102,116)},string.char(79,114,105,103,105,110,97,108,32,83,104,111,116), function(_0xEB0B)
local _0x7F7F = _0x6EF2[_0xEB0B]
if not _0x7F7F then return end
_0x5741 = _0xEB0B
_0xE19F = _0x7F7F
if _0x1F69 then
local _0x866F = _0x1F69.IsPlaying
pcall(function() _0x1F69:Stop() end)
_0x1F69.SoundId = _0xE19F
_0x1F69.TimePosition = 0
if _0x866F then pcall(function() _0x1F69:Play() end) end
task.spawn(function()
if _0x1F69 then pcall(function() _0x0ACB:PreloadAsync({_0x1F69}) end) end
end)
end
end)
local _0xA9C1
local _0x0C5E = _0x45F1(_0xC09E,string.char(80,108,97,121,101,114))
_0x0C5E:Slider(string.char(87,97,108,107,83,112,101,101,100), 16, 150, 16, function(_0xEB0B)
_0x7108.speed = _0xEB0B
end)
_0x0C5E:Slider(string.char(74,117,109,112,80,111,119,101,114), 50, 250, 50, function(_0xEB0B)
_0x7108.jump = _0xEB0B
end)
_0x0C5E:Toggle(string.char(73,110,102,105,110,105,116,101,32,74,117,109,112),string.char(106,117,109,112,32,97,103,97,105,110,32,105,110,32,116,104,101,32,97,105,114), function(_0xE496)
_0x7108.infJump = _0xE496
end)
_0x0C5E:Toggle(string.char(84,80,32,84,111,111,108),string.char(99,108,105,99,107,32,116,111,32,116,101,108,101,112,111,114,116,32,116,111,32,116,104,101,32,99,117,114,115,111,114), function(_0xE496)
if _0xE496 then
_0x9065()
else
_0x5D1A()
end
end)
_0x0C5E:Toggle(string.char(70,108,121,32,74,111,121,115,116,105,99,107),string.char(109,111,98,105,108,101,32,106,111,121,115,116,105,99,107,32,102,108,105,103,104,116), function(_0xE496)
_0x7594(_0xE496)
end)
_0x0C5E:Slider(string.char(70,108,121,32,83,112,101,101,100), 10, 300, 60, function(_0xEB0B)
_0x5B05 = _0xEB0B
end)
_0x0C5E:Toggle(string.char(70,108,121,32,78,111,99,108,105,112),string.char(110,111,32,99,111,108,108,105,115,105,111,110,32,119,104,105,108,101,32,102,108,121,105,110,103), function(_0xE496)
_0xD236 = _0xE496
end)local _0x2FB9 = false
local _0x8A96 = 0.65
local _0xE804
local _0xF11B = nil
local function _0x5DEE()
_0x2FB9 = false
if _0xE804 then
pcall(function() _0xE804:Disconnect() end)
_0xE804 = nil
end
pcall(function()
if _0xF11B then
local _0x04CE = _0xF11B
_0x04CE.CFrame = CFrame.new(_0x04CE.CFrame.Position, _0x04CE.CFrame.Position + _0x04CE.CFrame.LookVector)
end
end)
_0xF11B = nil
end
local function _0x439A()
_0x5DEE()
_0x2FB9 = true
_0xE804 = _0xB197.RenderStepped:Connect(function()
local _0x04CE = workspace.CurrentCamera
if not _0x04CE or not _0x2FB9 then return end
_0xF11B = _0x04CE
local _0x08CD = math.clamp(tonumber(_0x8A96) or 0.65, 0.35, 1.5)
pcall(function()
_0x04CE.CFrame = _0x04CE.CFrame * CFrame.new(0, 0, 0, 1, 0, 0, 0, _0x08CD, 0, 0, 0, 1)
end)
end)
end
stopAspectRatio = _0x5DEE
_0x0C5E:Toggle(string.char(65,115,112,101,99,116,32,82,97,116,105,111),string.char(99,104,97,110,103,101,32,116,104,101,32,99,97,109,101,114,97,32,97,115,112,101,99,116,32,115,99,97,108,101), function(_0xE496)
if _0xE496 then
_0x439A()
_0xA9C1(string.char(65,115,112,101,99,116,32,82,97,116,105,111,58,32,79,110),string.char(83,99,97,108,101,32).. tostring(_0x8A96))
else
_0x5DEE()
_0xA9C1(string.char(65,115,112,101,99,116,32,82,97,116,105,111,58,32,79,102,102),string.char(99,97,109,101,114,97,32,114,101,115,116,111,114,101,100))
end
end)
_0x0C5E:Slider(string.char(65,115,112,101,99,116,32,83,99,97,108,101), 0.35, 1.5, 0.65, function(_0xEB0B)
_0x8A96 = tonumber(_0xEB0B) or 0.65
if _0x2FB9 then _0x439A() end
end)
local _0x7EBD = _0x0C5E:Toggle(string.char(65,110,116,105,32,70,108,105,110,103),string.char(110,111,98,111,100,121,32,99,97,110,32,102,108,105,110,103,32,121,111,117), function(_0xE496)
if _0xE496 then
_0x7108.antiFling = true
else
_0x8BCF()
end
_0xA9C1(string.char(65,110,116,105,32,70,108,105,110,103,58,32).. (_0xE496 andstring.char(79,110)orstring.char(79,102,102)), _0xE496 andstring.char(121,111,117,32,99,97,110,39,116,32,98,101,32,102,108,117,110,103)orstring.char(100,105,115,97,98,108,101,100))
end)_0x7108.antiFling = true
pcall(function() _0x7EBD.Set(true, true) end)
task.defer(function()
if _0x7108.antiFling then
pcall(function() _0xA9C1(string.char(65,110,116,105,32,70,108,105,110,103),string.char(101,110,97,98,108,101,100,32,97,117,116,111,109,97,116,105,99,97,108,108,121)) end)
end
end)
_0x0C5E:Toggle(string.char(78,111,99,108,105,112),string.char(119,97,108,107,32,116,104,114,111,117,103,104,32,119,97,108,108,115), function(_0xE496)
if _0xE496 then
_0x7108.noclip = true
else
_0xF972()
end
_0xA9C1(string.char(78,111,99,108,105,112,58,32).. (_0xE496 andstring.char(79,110)orstring.char(79,102,102)), _0xE496 andstring.char(119,97,108,108,115,32,99,97,110,39,116,32,115,116,111,112,32,121,111,117)orstring.char(99,111,108,108,105,115,105,111,110,32,105,115,32,98,97,99,107))
end)
_0x0C5E:Toggle(string.char(83,112,105,110,32,66,111,116),string.char(116,117,114,110,32,121,111,117,114,32,99,104,97,114,97,99,116,101,114,32,99,111,110,116,105,110,117,111,117,115,108,121,59,32,97,108,115,111,32,97,118,97,105,108,97,98,108,101,32,105,110,32,84,114,111,108,108,32,70,117,110), function(_0xE496)
if _0xA471 then
_0xA471(_0xE496)
else
task.defer(function()
if _0xA471 then _0xA471(_0xE496) end
end)
end
end)
_0x0C5E:Slider(string.char(83,112,105,110,32,83,112,101,101,100), 1, 30, 10, function(_0xEB0B)
if _0xBABF then
_0xBABF(_0xEB0B)
else
task.defer(function()
if _0xBABF then _0xBABF(_0xEB0B) end
end)
end
end, function(_0xEB0B)
return tostring(_0xEB0B) ..string.char(120)end)
local _0xD4BA = _0x45F1(_0xC09E,string.char(79,116,104,101,114))
_0xD4BA:Button(string.char(82,101,115,101,116,32,115,116,97,116,115),string.char(115,112,101,101,100,32,97,110,100,32,106,117,109,112,32,98,97,99,107,32,116,111,32,100,101,102,97,117,108,116), function()
_0x7108.speed, _0x7108.jump = nil, nil
local _0xC3CF = _0xFFF1()
if _0xC3CF then
_0xC3CF.WalkSpeed = 16
_0xC3CF.JumpPower = 50
end
end)
_0xD4BA:Button(string.char(82,101,115,112,97,119,110),string.char(107,105,108,108,32,121,111,117,114,32,99,104,97,114,97,99,116,101,114), function()
local _0xC3CF = _0xFFF1()
if _0xC3CF then
_0xC3CF.Health = 0
end
end)
local _0x2806 = {}
local function _0xD8C9(_0xE13F)
local _0xF171 = _0xE13F:lower()
if _0xF171:find(string.char(109,117,114,100,101,114,101,114)) then
return Color3.fromRGB(255, 70, 70),string.char(33)end
if _0xF171:find(string.char(115,104,101,114,105,102,102)) then
return Color3.fromRGB(70, 150, 255),string.char(33)end
if _0xF171:find(string.char(58,32,111,110)) then
return Color3.fromRGB(110, 230, 140),string.char(99,104,101,99,107)end
if _0xF171:find(string.char(58,32,111,102,102)) then
return Color3.fromRGB(150, 150, 158),string.char(99,114,111,115,115)end
return _0xA925,string.char(105)end
local function _0xF3AE()
for _0x269E, _0x634C in ipairs(_0x2806) do
local _0x546B = -20 - (_0x269E - 1) * 68
_0x0903(_0x634C.card, 0.35, { Position = UDim2.new(1, -20, 1, _0x546B) }, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
end
end
_0xA9C1 = function(_0xE13F, body)
if _0x42B0 then
return
end
local _0x087C, _0x7969 = _0xD8C9(_0xE13F)
local _0x5C29 = _0x504E(string.char(84,101,120,116,66,117,116,116,111,110), {
Text ="",
AutoButtonColor = false,
AnchorPoint = Vector2.new(1, 1),
Position = UDim2.new(1, 330, 1, -20),
Size = UDim2.fromOffset(270, 58),
BackgroundColor3 = _0x7D00,
ZIndex = 150,
Parent = _0xA737,
})
_0xF153(_0x5C29, 12)
_0x504E(string.char(85,73,71,114,97,100,105,101,110,116), {
Rotation = 90,
Color = ColorSequence.new(_0xA925, Color3.fromRGB(170, 170, 170)),
Parent = _0x5C29,
})
local _0x61F0 = _0x504E(string.char(85,73,83,116,114,111,107,101), {
Color = _0x087C,
Transparency = 0.15,
Thickness = 1,
ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
Parent = _0x5C29,
})
local _0x08CD = _0x504E(string.char(85,73,83,99,97,108,101), { Scale = 0.88, Parent = _0x5C29 })
local _0xACCC = tostring(_0xE13F):lower() ==string.char(208,178,209,128,208,176,208,179,32,209,131,208,189,208,184,209,135,209,130,208,190,208,182,208,181,208,189)local _0x9470 = _0x504E(string.char(70,114,97,109,101), {
Size = UDim2.new(0.7, 0, 1, 0),
BackgroundColor3 = _0x087C,
BorderSizePixel = 0,
ZIndex = 150,
Parent = _0x5C29,
})
_0xF153(_0x9470, 12)
_0x504E(string.char(85,73,71,114,97,100,105,101,110,116), {
Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0.84), NumberSequenceKeypoint.new(1, 1) }),
Parent = _0x9470,
})
local _0x2C1E = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.new(0, 29, 0.5, -1),
Size = UDim2.fromOffset(34, 34),
BackgroundColor3 = _0x087C,
BackgroundTransparency = 0.82,
ZIndex = 151,
Parent = _0x5C29,
})
_0x9A43(_0x2C1E)
_0x504E(string.char(85,73,83,116,114,111,107,101), { Color = _0x087C, Transparency = 0.3, Thickness = 1.2, Parent = _0x2C1E })
local _0x9C44 = _0x504E(string.char(85,73,83,99,97,108,101), { Scale = 0, Parent = _0x2C1E })
if _0x7969 ==string.char(99,104,101,99,107)then
for _0x624F, _0xE157 in ipairs({ { 10, 17.5, 15, 22.5 }, { 15, 22.5, 24.5, 12 } }) do
_0x9E1D(_0x2C1E, _0xE157[1], _0xE157[2], _0xE157[3], _0xE157[4], 2.6, _0x087C).ZIndex = 152
end
elseif _0x7969 ==string.char(99,114,111,115,115)then
for _0x624F, _0xE157 in ipairs({ { 11.5, 11.5, 22.5, 22.5 }, { 22.5, 11.5, 11.5, 22.5 } }) do
_0x9E1D(_0x2C1E, _0xE157[1], _0xE157[2], _0xE157[3], _0xE157[4], 2.4, _0x087C).ZIndex = 152
end
else
_0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text = _0x7969,
Font = Enum.Font.GothamBlack,
TextSize = 17,
TextColor3 = _0x087C,
BackgroundTransparency = 1,
Size = UDim2.fromScale(1, 1),
ZIndex = 152,
Parent = _0x2C1E,
})
end
_0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text = _0xE13F,
Font = _0xACCC and Enum.Font.Arcade or Enum.Font.GothamBold,
TextSize = 13,
TextColor3 = _0xA925,
TextXAlignment = Enum.TextXAlignment.Left,
TextTruncate = Enum.TextTruncate.AtEnd,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(56, 10),
Size = UDim2.new(1, -68, 0, 17),
ZIndex = 151,
Parent = _0x5C29,
})
_0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text = body or"",
Font = _0xACCC and Enum.Font.Arcade or Enum.Font.Gotham,
TextSize = 11,
TextColor3 = Color3.fromRGB(165, 165, 172),
TextXAlignment = Enum.TextXAlignment.Left,
TextTruncate = Enum.TextTruncate.AtEnd,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(56, 28),
Size = UDim2.new(1, -68, 0, 15),
ZIndex = 151,
Parent = _0x5C29,
})
local _0xDBC6 = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0, 1),
Position = UDim2.new(0, 14, 1, -6),
Size = UDim2.new(1, -28, 0, 2),
BackgroundColor3 = _0x087C,
BackgroundTransparency = 0.25,
BorderSizePixel = 0,
ZIndex = 151,
Parent = _0x5C29,
})
_0x9A43(_0xDBC6)
local _0x634C = { _0x5C29 = _0x5C29, _0x6C9C = true }
table.insert(_0x2806, 1, _0x634C)
while #_0x2806 > 4 do
local _0xF7C5 = table.remove(_0x2806)
_0xF7C5.alive = false
_0xF7C5.card:Destroy()
end
_0xF3AE()
_0x0903(_0x08CD, 0.45, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
task.delay(0.12, function()
if _0x5C29.Parent then
_0x0903(_0x9C44, 0.45, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
end
end)
_0x61F0.Transparency = 0
_0x0903(_0x61F0, 0.8, { Transparency = 0.6 })
_0x0903(_0xDBC6, 2.8, { Size = UDim2.new(0, 0, 0, 2) }, Enum.EasingDirection.InOut, Enum.EasingStyle.Linear)
local function _0xA1D6()
if not _0x634C.alive then
return
end
_0x634C.alive = false
local _0x269E = table.find(_0x2806, _0x634C)
if _0x269E then
table.remove(_0x2806, _0x269E)
end
_0xF3AE()
_0x0903(_0x08CD, 0.25, { Scale = 0.9 }, Enum.EasingDirection.In)
local _0x1AC6 = _0x0903(_0x5C29, 0.28, { Position = UDim2.new(1, 330, _0x5C29.Position.Y.Scale, _0x5C29.Position.Y.Offset) }, Enum.EasingDirection.In, Enum.EasingStyle.Quint)
_0x1AC6.Completed:Connect(function()
_0x5C29:Destroy()
end)
end
_0xB9EB(_0x5C29.MouseEnter, function()
_0x0903(_0x61F0, 0.15, { Transparency = 0.1 })
end)
_0xB9EB(_0x5C29.MouseLeave, function()
_0x0903(_0x61F0, 0.25, { Transparency = 0.6 })
end)
_0xB9EB(_0x5C29.MouseButton1Click, _0xA1D6)
task.delay(2.8, _0xA1D6)
end
do
local _0x8BCB = game:GetService(string.char(84,101,108,101,112,111,114,116,83,101,114,118,105,99,101))
local _0x1379 = game:GetService(string.char(72,116,116,112,83,101,114,118,105,99,101))
local _0x46D0 = _0xBE8B.page
_0xBE8B.custom = true
_0xBE8B.title.Visible = false
_0xBE8B.desc.Visible = false
_0x46D0.CanvasSize = UDim2.new()
local _0x8802 = Color3.fromRGB(27, 27, 29)
_0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(83,101,114,118,101,114),
Font = Enum.Font.GothamBold,
TextSize = 18,
TextColor3 = _0xA925,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Size = UDim2.new(1, -8, 0, 22),
Parent = _0x46D0,
})
local _0x4F39 = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(108,111,97,100,105,110,103,46,46,46),
Font = Enum.Font.Gotham,
TextSize = 12,
TextColor3 = _0x2E02,
TextXAlignment = Enum.TextXAlignment.Left,
TextTruncate = Enum.TextTruncate.AtEnd,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(0, 22),
Size = UDim2.new(1, -8, 0, 16),
Parent = _0x46D0,
})
local _0xDB70 =string.char(116,104,105,115,32,103,97,109,101)task.spawn(function()
local _0xD828, _0x45F4 = pcall(function()
return game:GetService(string.char(77,97,114,107,101,116,112,108,97,99,101,83,101,114,118,105,99,101)):GetProductInfo(game.PlaceId)
end)
if _0xD828 and _0x45F4 and _0x45F4.Name then
_0xDB70 = _0x45F4.Name
end
end)
local _0x6FE7 = {}
local function _0x5C29(_0xDF1D, _0x4DE9)
local _0xF85F = _0x4DE9.Class orstring.char(70,114,97,109,101)_0x4DE9.Class = nil
_0x4DE9.BackgroundColor3 = _0x4DE9.BackgroundColor3 or _0x8802
_0x4DE9.Parent = _0xDF1D
local _0xF0CB = _0x504E(_0xF85F, _0x4DE9)
_0xF153(_0xF0CB, 10)
local _0x61F0 = _0x504E(string.char(85,73,83,116,114,111,107,101), {
Color = _0xA925,
Transparency = 0.55,
Thickness = 1,
ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
Parent = _0xF0CB,
})
table.insert(_0x6FE7, _0x504E(string.char(85,73,71,114,97,100,105,101,110,116), { Parent = _0x61F0 }))
return _0xF0CB, _0x61F0
end
local _0x777A = 50
local _0x3011 = _0x504E(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(2, _0x777A),
Size = UDim2.new(1, -12, 0, 136),
BackgroundTransparency = 1,
Parent = _0x46D0,
})
_0x504E(string.char(85,73,71,114,105,100,76,97,121,111,117,116), {
CellSize = UDim2.new(0.5, -6, 0, 64),
CellPadding = UDim2.fromOffset(8, 8),
SortOrder = Enum.SortOrder.LayoutOrder,
Parent = _0x3011,
})
local _0xA387 = 0
local function _0x5974(_0x7963)
_0xA387 += 1
local _0xF0CB = _0x5C29(_0x3011, { LayoutOrder = _0xA387 })
_0xF0CB.Name = _0x7963
_0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text = _0x7963,
Font = Enum.Font.GothamBold,
TextSize = 9,
TextColor3 = _0xD6E4,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(12, 9),
Size = UDim2.new(1, -24, 0, 12),
Parent = _0xF0CB,
})
local _0x6ED3 = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(45,45),
RichText = true,
Font = Enum.Font.GothamBold,
TextSize = 19,
TextColor3 = _0xA925,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(12, 24),
Size = UDim2.new(1, -24, 0, 24),
Parent = _0xF0CB,
})
return _0xF0CB, _0x6ED3
end
local _0x624F, _0x864F = _0x5974(string.char(79,78,32,84,72,73,83,32,83,69,82,86,69,82))
local _0xBFA9, _0x455B = _0x5974(string.char(80,76,65,89,69,82,83))
local _0x624F, _0xD927 = _0x5974(string.char(80,73,78,71))
local _0x624F, _0x7D67 = _0x5974(string.char(70,80,83))
local _0x6B08 = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0, 1),
Position = UDim2.new(0, 12, 1, -9),
Size = UDim2.new(1, -24, 0, 3),
BackgroundColor3 = _0xF139,
BorderSizePixel = 0,
Parent = _0xBFA9,
})
_0x9A43(_0x6B08)
local _0xA70E = _0x504E(string.char(70,114,97,109,101), {
Size = UDim2.fromScale(0, 1),
BackgroundColor3 = _0xA925,
BorderSizePixel = 0,
Parent = _0x6B08,
})
_0x9A43(_0xA70E)
_0x777A += 176
local _0x6805 = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(83,69,82,86,69,82,32,70,85,78,67,84,73,79,78,83),
Font = Enum.Font.GothamBold,
TextSize = 9,
TextColor3 = _0xD6E4,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(4, _0x777A),
Size = UDim2.new(1, -8, 0, 14),
Parent = _0x46D0,
})
_0x777A += 24
local _0x7379 = _0x5C29(_0x46D0, { Position = UDim2.fromOffset(2, _0x777A), Size = UDim2.new(1, -12, 0, 56) })
_0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(74,79,66,32,73,68),
Font = Enum.Font.GothamBold,
TextSize = 9,
TextColor3 = _0xD6E4,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(12, 10),
Size = UDim2.new(1, -24, 0, 12),
Parent = _0x7379,
})
local _0x1A37 = game.JobId ~=""and game.JobId orstring.char(115,116,117,100,105,111,32,47,32,108,111,99,97,108,32,115,101,114,118,101,114)_0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text = _0x1A37,
Font = Enum.Font.Code,
TextSize = 12,
TextColor3 = _0xDC52,
TextXAlignment = Enum.TextXAlignment.Left,
TextTruncate = Enum.TextTruncate.AtEnd,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(12, 26),
Size = UDim2.new(1, -176, 0, 18),
Parent = _0x7379,
})
local function _0xFF34(_0xDF1D, _0xEE8A, _0x4244, _0xCDE9, fn)
local _0xBF1F = _0x504E(string.char(84,101,120,116,66,117,116,116,111,110), {
Text = _0xEE8A,
Font = Enum.Font.GothamBold,
TextSize = 11,
TextColor3 = _0xDC52,
AutoButtonColor = false,
BackgroundColor3 = _0xAA5A,
AnchorPoint = Vector2.new(1, 0.5),
Position = UDim2.new(1, _0x4244, 0.5, 0),
Size = UDim2.fromOffset(_0xCDE9, 28),
Parent = _0xDF1D,
})
_0xF153(_0xBF1F, 8)
local _0x61F0 = _0x24BA(_0xBF1F)
local _0x08CD = _0x504E(string.char(85,73,83,99,97,108,101), { Parent = _0xBF1F })
_0xB9EB(_0xBF1F.MouseEnter, function()
_0x0903(_0xBF1F, 0.15, { BackgroundColor3 = _0xA925, TextColor3 = _0xAA5A })
_0x0903(_0x61F0, 0.15, { Color = _0xA925 })
end)
_0xB9EB(_0xBF1F.MouseLeave, function()
_0x0903(_0xBF1F, 0.15, { BackgroundColor3 = _0xAA5A, TextColor3 = _0xDC52 })
_0x0903(_0x61F0, 0.15, { Color = _0x2F00 })
end)
_0xB9EB(_0xBF1F.MouseButton1Click, function()
_0x08CD.Scale = 0.88
_0x0903(_0x08CD, 0.3, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
fn(_0xBF1F)
end)
return _0xBF1F
end
local function _0xD5AD(_0xEE8A, what)
if setclipboard then
setclipboard(_0xEE8A)
_0xA9C1(string.char(67,111,112,105,101,100), what)
else
_0xA9C1(string.char(67,108,105,112,98,111,97,114,100),string.char(110,111,116,32,115,117,112,112,111,114,116,101,100,32,104,101,114,101))
end
end
local function _0x7DFE(_0xBF1F, _0xEE8A)
local _0xF7C5 = _0xBF1F.Text
_0xBF1F.Text = _0xEE8A
task.delay(1.2, function()
if _0xBF1F.Parent then
_0xBF1F.Text = _0xF7C5
end
end)
end
_0xFF34(_0x7379,string.char(67,111,112,121,32,106,111,105,110), -12, 76, function(_0xBF1F)
_0xD5AD((string.char(103,97,109,101,58,71,101,116,83,101,114,118,105,99,101,40,34,84,101,108,101,112,111,114,116,83,101,114,118,105,99,101,34,41,58,84,101,108,101,112,111,114,116,84,111,80,108,97,99,101,73,110,115,116,97,110,99,101,40,37,100,44,32,34,37,115,34,41)):format(game.PlaceId, game.JobId),string.char(106,111,105,110,32,115,99,114,105,112,116,32,45,32,115,101,110,100,32,105,116,32,116,111,32,97,32,102,114,105,101,110,100))
_0x7DFE(_0xBF1F,string.char(67,111,112,105,101,100))
end)
_0xFF34(_0x7379,string.char(67,111,112,121,32,73,68), -94, 66, function(_0xBF1F)
_0xD5AD(game.JobId,string.char(106,111,98,32,105,100))
_0x7DFE(_0xBF1F,string.char(67,111,112,105,101,100))
end)
_0x777A += 78
local _0x1E90 = _0x504E(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(2, _0x777A),
Size = UDim2.new(1, -12, 0, 136),
BackgroundTransparency = 1,
Parent = _0x46D0,
})
_0x504E(string.char(85,73,71,114,105,100,76,97,121,111,117,116), {
CellSize = UDim2.new(0.5, -6, 0, 62),
CellPadding = UDim2.fromOffset(8, 8),
SortOrder = Enum.SortOrder.LayoutOrder,
Parent = _0x1E90,
})
local _0x6330 = false
local _0x0788 = 0
local function _0x9B1A(logo3, desc, fn)
_0x0788 += 1
local _0xBF1F, _0x61F0 = _0x5C29(_0x1E90, { Class =string.char(84,101,120,116,66,117,116,116,111,110), LayoutOrder = _0x0788 })
_0xBF1F.Text =""_0xBF1F.AutoButtonColor = false
local _0x08CD = _0x504E(string.char(85,73,83,99,97,108,101), { Parent = _0xBF1F })
local _0x0520 = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text = logo3,
Font = Enum.Font.GothamBold,
TextSize = 14,
TextColor3 = _0xA925,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(12, 12),
Size = UDim2.new(1, -24, 0, 18),
Parent = _0xBF1F,
})
local _0x93F7 = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text = desc,
Font = Enum.Font.Gotham,
TextSize = 10,
TextColor3 = _0xD6E4,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(12, 32),
Size = UDim2.new(1, -24, 0, 14),
Parent = _0xBF1F,
})
local _0x2DC4 = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(1, 0),
Position = UDim2.new(1, -12, 0, 14),
Size = UDim2.fromOffset(8, 8),
BackgroundTransparency = 1,
Parent = _0xBF1F,
})
local _0x9784 = _0x9E1D(_0x2DC4, 0, 8, 8, 0, 1.6, _0xD6E4)
local _0x5904 = _0x9E1D(_0x2DC4, 2.5, 0, 8, 0, 1.6, _0xD6E4)
local _0x3E6A = _0x9E1D(_0x2DC4, 8, 0, 8, 5.5, 1.6, _0xD6E4)
local function _0xE897(_0xE496)
_0x0903(_0xBF1F, 0.18, { BackgroundColor3 = _0xE496 and _0xA925 or _0x8802 })
_0x0903(_0x61F0, 0.18, { Transparency = _0xE496 and 0 or 0.55 })
_0x0903(_0x0520, 0.18, { TextColor3 = _0xE496 and _0xAA5A or _0xA925 })
_0x0903(_0x93F7, 0.18, { TextColor3 = _0xE496 and Color3.fromRGB(90, 90, 90) or _0xD6E4 })
for _0x624F, _0x3E3E in ipairs({ _0x9784, _0x5904, _0x3E6A }) do
_0x0903(_0x3E3E, 0.18, { BackgroundColor3 = _0xE496 and _0xAA5A or _0xD6E4 })
end
_0x0903(_0x2DC4, 0.25, { Position = UDim2.new(1, _0xE496 and -10 or -12, 0, _0xE496 and 12 or 14) }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
end
_0xB9EB(_0xBF1F.MouseEnter, function()
_0xE897(true)
end)
_0xB9EB(_0xBF1F.MouseLeave, function()
_0xE897(false)
end)
_0xB9EB(_0xBF1F.MouseButton1Click, function()
_0x08CD.Scale = 0.94
_0x0903(_0x08CD, 0.35, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
if _0x6330 then
return
end
_0x6330 = true
local _0xF7C5 = _0x93F7.Text
local _0xD828, _0xDFBC = pcall(fn, function(_0x634C)
_0x93F7.Text = _0x634C
end)
if not _0xD828 then
_0xA9C1(logo3, tostring(_0xDFBC):sub(1, 60))
end
task.delay(3, function()
_0x6330 = false
if _0x93F7.Parent then
_0x93F7.Text = _0xF7C5
end
end)
end)
end_0x80D9.card.Visible = true
_0xDCDD.card.Position = UDim2.fromOffset(2, _0x777A)
local _0x5371 = math.max(_0xDCDD.card.Size.Y.Offset, _0xDCDD.card.AbsoluteSize.Y)
_0x777A += _0x5371 + 14
_0x1E90.Position = UDim2.fromOffset(2, _0x777A)
_0x777A += 146
local function _0x18EC(smallest)
local _0xEEC3 = (string.char(104,116,116,112,115,58,47,47,103,97,109,101,115,46,114,111,98,108,111,120,46,99,111,109,47,118,49,47,103,97,109,101,115,47,37,100,47,115,101,114,118,101,114,115,47,80,117,98,108,105,99,63,115,111,114,116,79,114,100,101,114,61,37,115,38,101,120,99,108,117,100,101,70,117,108,108,71,97,109,101,115,61,116,114,117,101,38,108,105,109,105,116,61,49,48,48)):format(game.PlaceId, smallest andstring.char(65,115,99)orstring.char(68,101,115,99))
local _0xD828, _0x7B91 = pcall(function()
return _0x1379:JSONDecode(game:HttpGet(_0xEEC3))
end)
if not _0xD828 or type(_0x7B91) ~=string.char(116,97,98,108,101)or type(_0x7B91.data) ~=string.char(116,97,98,108,101)then
return nil
end
local _0xDFBA = {}
for _0x624F, _0x472D in ipairs(_0x7B91.data) do
if _0x472D.id ~= game.JobId and _0x472D.playing and _0x472D.maxPlayers and _0x472D.playing < _0x472D.maxPlayers then
table.insert(_0xDFBA, _0x472D)
end
end
if #_0xDFBA == 0 then
return nil
end
if smallest then
table.sort(_0xDFBA, function(_0x4244, _0x546B)
return _0x4244.playing < _0x546B.playing
end)
return _0xDFBA[1]
end
return _0xDFBA[math.random(#_0xDFBA)]
end
local function _0xD75C(smallest, _0xEF6E)
_0xEF6E(string.char(115,101,97,114,99,104,105,110,103,46,46,46))
local _0x472D = _0x18EC(smallest)
if not _0x472D then
_0xEF6E(string.char(110,111,32,115,101,114,118,101,114,115,32,102,111,117,110,100))
_0xA9C1(string.char(83,101,114,118,101,114),string.char(110,111,32,102,114,101,101,32,115,101,114,118,101,114,115,32,102,111,117,110,100))
return
end
_0xEF6E((string.char(106,111,105,110,105,110,103,32,37,100,47,37,100,46,46,46)):format(_0x472D.playing, _0x472D.maxPlayers))
_0xA9C1(string.char(83,101,114,118,101,114), (string.char(116,101,108,101,112,111,114,116,105,110,103,32,194,183,32,37,100,47,37,100,32,112,108,97,121,101,114,115)):format(_0x472D.playing, _0x472D.maxPlayers))
_0x8BCB:TeleportToPlaceInstance(game.PlaceId, _0x472D.id, _0x8E3D)
end
_0x9B1A(string.char(82,101,106,111,105,110),string.char(115,97,109,101,32,115,101,114,118,101,114,32,97,103,97,105,110), function(_0xEF6E)
_0xEF6E(string.char(114,101,106,111,105,110,105,110,103,46,46,46))
_0xA9C1(string.char(83,101,114,118,101,114),string.char(114,101,106,111,105,110,105,110,103))
if #_0xD101:GetPlayers() <= 1 then
_0x8BCB:Teleport(game.PlaceId, _0x8E3D)
else
_0x8BCB:TeleportToPlaceInstance(game.PlaceId, game.JobId, _0x8E3D)
end
end)
_0x9B1A(string.char(83,101,114,118,101,114,32,72,111,112),string.char(114,97,110,100,111,109,32,111,116,104,101,114,32,115,101,114,118,101,114), function(_0xEF6E)
_0xD75C(false, _0xEF6E)
end)
_0x9B1A(string.char(83,109,97,108,108,32,83,101,114,118,101,114),string.char(102,101,119,101,115,116,32,112,108,97,121,101,114,115), function(_0xEF6E)
_0xD75C(true, _0xEF6E)
end)
_0xB9EB(_0x8BCB.TeleportInitFailed, function(_0x09CD, _0x624F, msg)
if _0x09CD == _0x8E3D then
_0x6330 = false
_0xA9C1(string.char(84,101,108,101,112,111,114,116,32,102,97,105,108,101,100), tostring(msg):sub(1, 60))
end
end)
local _0xE082 = _0x5C29(_0x46D0, { Class =string.char(84,101,120,116,66,117,116,116,111,110), Position = UDim2.fromOffset(2, _0x777A), Size = UDim2.new(1, -12, 0, 44) })
_0xE082.Text =""_0xE082.AutoButtonColor = false
_0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(65,110,116,105,32,65,70,75),
Font = Enum.Font.GothamMedium,
TextSize = 12,
TextColor3 = _0xDC52,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(12, 7),
Size = UDim2.new(1, -80, 0, 16),
Parent = _0xE082,
})
_0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(97,117,116,111,109,97,116,105,99,32,194,183,32,110,111,32,107,105,99,107,32,102,111,114,32,105,100,108,105,110,103,32,50,48,32,109,105,110,117,116,101,115),
Font = Enum.Font.Gotham,
TextSize = 10,
TextColor3 = _0xD6E4,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(12, 23),
Size = UDim2.new(1, -80, 0, 13),
Parent = _0xE082,
})
local _0x4517 = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(1, 0.5),
Position = UDim2.new(1, -12, 0.5, 0),
Size = UDim2.fromOffset(34, 18),
BackgroundColor3 = _0xAA5A,
Parent = _0xE082,
})
_0x9A43(_0x4517)
local _0x1602 = _0x24BA(_0x4517)
local _0x2AF9 = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.new(0, 9, 0.5, 0),
Size = UDim2.fromOffset(12, 12),
BackgroundColor3 = _0x2E02,
ZIndex = 2,
Parent = _0x4517,
})
_0x9A43(_0x2AF9)
local _0xFA28, _0xCD84 = false, nil
local function _0x8D69(_0xE496, persist)
_0xFA28 = _0xE496
if _0xCD84 then
_0xCD84:Disconnect()
end
_0xCD84 = nil
if _0xE496 then
local _0xF9C7 = game:GetService(string.char(86,105,114,116,117,97,108,85,115,101,114))
_0xCD84 = _0xB9EB(_0x8E3D.Idled, function()
_0xF9C7:CaptureController()
_0xF9C7:ClickButton2(Vector2.new())
end)
end
_0x2AF9.Size = UDim2.fromOffset(18, 12)
_0x0903(_0x2AF9, 0.35, {
Position = UDim2.new(0, _0xE496 and 25 or 9, 0.5, 0),
Size = UDim2.fromOffset(12, 12),
BackgroundColor3 = _0xE496 and _0xAA5A or _0x2E02,
}, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
_0x0903(_0x4517, 0.25, { BackgroundColor3 = _0xE496 and _0xA925 or _0xAA5A })
_0x0903(_0x1602, 0.25, { Color = _0xE496 and _0xA925 or _0x2F00 })
if persist ~= false then
_0xD34C(string.char(83,101,114,118,101,114,47,85,116,105,108,105,116,105,101,115,47,65,110,116,105,32,65,70,75), _0xE496)
end
end_0x7598(true, false)
_0xB9EB(_0xE082.MouseButton1Click, function()
_0x8D69(not _0xFA28)
end)
_0x04EF(string.char(83,101,114,118,101,114,47,85,116,105,108,105,116,105,101,115,47,65,110,116,105,32,65,70,75), function(_0xEB0B)
if type(_0xEB0B) ==string.char(98,111,111,108,101,97,110)then
_0x8D69(_0xEB0B)
end
end, function()
return _0xFA28
end, true)
_0x46D0.CanvasSize = UDim2.fromOffset(0, _0x777A + 44 + 12)
local function _0x6749(_0x61C4)
_0x61C4 = math.floor(_0x61C4)
local _0xF171, _0x5244, _0xE451 = _0x61C4 // 3600, _0x61C4 // 60 % 60, _0x61C4 % 60
if _0xF171 > 0 then
return (string.char(37,100,60,102,111,110,116,32,99,111,108,111,114,61,34,35,55,56,55,56,55,56,34,62,104,60,47,102,111,110,116,62,32,37,48,50,100,60,102,111,110,116,32,99,111,108,111,114,61,34,35,55,56,55,56,55,56,34,62,109,60,47,102,111,110,116,62)):format(_0xF171, _0x5244)
end
return (string.char(37,100,60,102,111,110,116,32,99,111,108,111,114,61,34,35,55,56,55,56,55,56,34,62,109,60,47,102,111,110,116,62,32,37,48,50,100,60,102,111,110,116,32,99,111,108,111,114,61,34,35,55,56,55,56,55,56,34,62,115,60,47,102,111,110,116,62)):format(_0x5244, _0xE451)
end
local function _0x0615(_0xE9D1, _0x4F55)
return (string.char(37,115,32,60,102,111,110,116,32,99,111,108,111,114,61,34,35,55,56,55,56,55,56,34,32,115,105,122,101,61,34,49,50,34,62,37,115,60,47,102,111,110,116,62)):format(_0xE9D1, _0x4F55)
end
local _0x7898, _0x6B15, _0xB548 = 0, os.clock(), 0
local _0x099F = os.clock()
_0xB9EB(_0xB197.RenderStepped, function()
_0x7898 += 1
local _0x8C28 = os.clock()
if _0x46D0.Visible and _0xFF96.Visible and _0x8C28 - _0xB548 >= 1 / 30 then
_0xB548 = _0x8C28
local _0x634C = (_0x8C28 - _0x099F) * 0.35
local _0xC623 = _0x835C(_0x634C)
for _0x269E, _0xBCE8 in ipairs(_0x6FE7) do
_0xBCE8.Color = _0xC623
_0xBCE8.Rotation = (_0x634C * 90 + _0x269E * 40) % 360
end
end
if _0x8C28 - _0x6B15 < 0.5 then
return
end
local _0x93FD = math.floor(_0x7898 / (_0x8C28 - _0x6B15) + 0.5)
_0x7898, _0x6B15 = 0, _0x8C28
if not _0x46D0.Visible or not _0xFF96.Visible then
return
end
local _0xE9D1, _0xFAA8 = #_0xD101:GetPlayers(), _0xD101.MaxPlayers
_0x864F.Text = _0x6749(time())
_0x455B.Text = _0x0615(_0xE9D1,string.char(47,32).. _0xFAA8)
_0x0903(_0xA70E, 0.4, { Size = UDim2.fromScale(math.clamp(_0xE9D1 / math.max(_0xFAA8, 1), 0, 1), 1) })
_0xD927.Text = _0x0615(math.floor(_0x2D61() + 0.5),string.char(109,115))
_0x7D67.Text = tostring(_0x93FD)
_0x4F39.Text = _0xDB70 ..string.char(32,32,194,183,32,32).. _0xE9D1 ..string.char(32,112,108,97,121,101,114,115)end)
end
do
local _0xB337 = _0x45F1(_0xFC25,string.char(73,110,116,101,114,102,97,99,101))
_0xB337:Keybind(string.char(77,101,110,117,32,107,101,121),string.char(99,108,105,99,107,32,97,110,100,32,112,114,101,115,115,32,97,110,121,32,107,101,121), function()
return _0xC48C
end, function(_0x2DD2)
_0xC48C = _0x2DD2
end)
_0xB337:Slider(string.char(66,97,99,107,103,114,111,117,110,100,32,98,108,117,114), 0, 40, _0x1080, function(_0xEB0B)
_0x1080 = _0xEB0B
if _0x952B then
_0xDEC0.Size = _0xEB0B
end
end)
local _0x0F73
_0x0F73 = _0xB337:Toggle(string.char(87,97,116,101,114,109,97,114,107),string.char(102,112,115,44,32,112,105,110,103,44,32,116,105,109,101,32,45,32,99,108,105,99,107,32,105,116,32,116,111,32,111,112,101,110,32,116,104,101,32,109,101,110,117), function(_0xE496)
if not _0xE496 and _0x24DA.TouchEnabled and not _0x24DA.KeyboardEnabled then
_0xA9C1(string.char(87,97,116,101,114,109,97,114,107),string.char(110,101,101,100,101,100,32,116,111,32,111,112,101,110,32,116,104,101,32,109,101,110,117,32,111,110,32,109,111,98,105,108,101))
task.defer(_0x0F73.Set, true)
return
end
_0xD1AC.setWatermark(_0xE496)
end)
_0x0F73.Set(true)
local _0xBD52 = _0x45F1(_0xFC25,string.char(85,73,32,83,111,117,110,100,115))
_0xBD52:Toggle(string.char(85,73,32,83,111,117,110,100,115),string.char(101,110,97,98,108,101,47,100,105,115,97,98,108,101,32,99,108,105,99,107,32,115,111,117,110,100,115), function(_0xE496)
_0xCCDB = _0xE496
if _0xE496 then _0x393E(true) end
end)
_0xBD52:Dropdown(string.char(69,110,97,98,108,101,32,83,111,117,110,100),string.char(115,111,117,110,100,32,119,104,101,110,32,97,32,102,117,110,99,116,105,111,110,32,116,117,114,110,115,32,111,110), {string.char(69,110,97,98,108,101,32,49),string.char(83,112,97,114,107,108,101),string.char(76,97,115,101,114,32,67,108,105,99,107),string.char(69,110,97,98,108,101,32,50),string.char(78,111,116,105,102,121)},string.char(69,110,97,98,108,101,32,49), function(_0xEB0B)
if _0x3DF5[_0xEB0B] then _0xCABF = _0xEB0B; _0x393E(true) end
end)
_0xBD52:Dropdown(string.char(68,105,115,97,98,108,101,32,83,111,117,110,100),string.char(115,111,117,110,100,32,119,104,101,110,32,97,32,102,117,110,99,116,105,111,110,32,116,117,114,110,115,32,111,102,102), {string.char(69,110,97,98,108,101,32,49),string.char(83,112,97,114,107,108,101),string.char(76,97,115,101,114,32,67,108,105,99,107),string.char(69,110,97,98,108,101,32,50),string.char(78,111,116,105,102,121)},string.char(69,110,97,98,108,101,32,49), function(_0xEB0B)
if _0x3DF5[_0xEB0B] then _0x7D12 = _0xEB0B; _0x393E(false) end
end)
local _0x04B5 = _0x45F1(_0xFC25,string.char(77,97,115,99,111,116))
local _0x699E = _0x04B5:Toggle(string.char(67,111,111,108,82,111,99,107),string.char(115,104,111,119,32,116,104,101,32,97,110,105,109,97,116,101,100,32,109,97,115,99,111,116,32,97,98,111,118,101,32,116,104,101,32,109,101,110,117), function(_0xE496)
_0xE55E.set(_0xE496 andstring.char(67,111,111,108,82,111,99,107)orstring.char(79,102,102))
end)
_0x699E.Set(_0xE55E.name ~=string.char(79,102,102), true)
local _0xCB7C = _0x45F1(_0xFC25,string.char(67,111,110,102,105,103,115))
local _0xFBAD = _0xCB7C:Input(string.char(78,97,109,101),string.char(117,112,32,116,111,32,51,50,32,99,104,97,114,97,99,116,101,114,115),string.char(101,110,116,101,114,32,99,111,110,102,105,103,32,110,97,109,101))
local _0x5CE3 = _0xCB7C:Input(string.char(67,111,110,102,105,103,32,73,68),string.char(112,97,115,116,101,32,97,32,115,104,97,114,101,100,32,73,68,32,104,101,114,101),string.char(67,83,67,70,71,49,58,46,46,46))
local function _0xD47D()
local _0x9971 = {}
for _0x893F, _0x5E99 in pairs(_0xA661) do
if type(_0x893F) ==string.char(115,116,114,105,110,103)and type(_0x5E99) ==string.char(116,97,98,108,101)then
table.insert(_0x9971, _0x893F)
end
end
table.sort(_0x9971, function(_0xDA08, _0xBF1F)
return _0xDA08:lower() < _0xBF1F:lower()
end)
return _0x9971
end
local _0xD5E1 = _0xCB7C:Dropdown(string.char(83,97,118,101,100,32,99,111,110,102,105,103,115),string.char(99,104,111,111,115,101,32,97,32,99,111,110,102,105,103), _0xD47D(),string.char(115,101,108,101,99,116,46,46,46), function(_0x893F)
_0xFBAD.Set(_0x893F)
end)
local function _0x06FB()
_0xD5E1.Update(_0xD47D())
end
local function _0x419F()
local _0x893F, _0xDFBC = _0x7FCE(_0xFBAD.Get())
if not _0x893F then
_0xA9C1(string.char(67,111,110,102,105,103), _0xDFBC)
_0xFBAD.Focus()
end
return _0x893F
end
_0xCB7C:Button(string.char(67,114,101,97,116,101),string.char(115,97,118,101,32,99,117,114,114,101,110,116,32,115,101,116,116,105,110,103,115,32,97,115,32,97,32,110,101,119,32,99,111,110,102,105,103), function()
local _0x893F = _0x419F()
if not _0x893F then
return
end
if _0xA661[_0x893F] then
_0xA9C1(string.char(67,111,110,102,105,103),string.char(116,104,97,116,32,110,97,109,101,32,97,108,114,101,97,100,121,32,101,120,105,115,116,115))
return
end
_0xA661[_0x893F] = _0x0E17()
local _0xD828, _0xDFBC = _0x4714()
if not _0xD828 then
_0xA661[_0x893F] = nil
_0xA9C1(string.char(67,111,110,102,105,103),string.char(99,114,101,97,116,101,32,102,97,105,108,101,100,58,32).. tostring(_0xDFBC))
return
end
_0xFBAD.Set(_0x893F)
_0x06FB()
_0xD5E1.Set(_0x893F, true)
_0xA9C1(string.char(67,111,110,102,105,103),string.char(99,114,101,97,116,101,100,32,34).. _0x893F ..string.char(34))
end)
_0xCB7C:Button(string.char(83,97,118,101),string.char(111,118,101,114,119,114,105,116,101,32,116,104,101,32,110,97,109,101,100,32,99,111,110,102,105,103,32,119,105,116,104,32,99,117,114,114,101,110,116,32,115,101,116,116,105,110,103,115), function()
local _0x893F = _0x419F()
if not _0x893F then
return
end
if not _0xA661[_0x893F] then
_0xA9C1(string.char(67,111,110,102,105,103),string.char(99,111,110,102,105,103,32,110,111,116,32,102,111,117,110,100,32,45,32,99,114,101,97,116,101,32,105,116,32,102,105,114,115,116))
return
end
local _0x21B5 = _0xA661[_0x893F]
_0xA661[_0x893F] = _0x0E17()
local _0xD828, _0xDFBC = _0x4714()
if not _0xD828 then
_0xA661[_0x893F] = _0x21B5
_0xA9C1(string.char(67,111,110,102,105,103),string.char(115,97,118,101,32,102,97,105,108,101,100,58,32).. tostring(_0xDFBC))
return
end
_0xA9C1(string.char(67,111,110,102,105,103),string.char(115,97,118,101,100,32,34).. _0x893F ..string.char(34))
end)
_0xCB7C:Button(string.char(76,111,97,100),string.char(97,112,112,108,121,32,101,118,101,114,121,32,115,101,116,116,105,110,103,32,102,114,111,109,32,116,104,101,32,110,97,109,101,100,32,99,111,110,102,105,103), function()
local _0x893F = _0x419F()
if not _0x893F then
return
end
local _0x45FA = _0xA661[_0x893F]
if type(_0x45FA) ~=string.char(116,97,98,108,101)then
_0xA9C1(string.char(67,111,110,102,105,103),string.char(99,111,110,102,105,103,32,110,111,116,32,102,111,117,110,100))
return
end
_0xB6F8(_0x45FA)
_0xFBAD.Set(_0x893F)
_0xD5E1.Set(_0x893F, true)
_0xA9C1(string.char(67,111,110,102,105,103),string.char(108,111,97,100,101,100,32,34).. _0x893F ..string.char(34))
end)
_0xCB7C:Button(string.char(67,111,112,121,32,73,68),string.char(103,101,110,101,114,97,116,101,32,97,32,115,104,97,114,101,97,98,108,101,32,73,68,32,102,111,114,32,116,104,101,32,99,117,114,114,101,110,116,32,99,111,110,102,105,103), function()
local _0x893F = _0x419F() orstring.char(83,104,97,114,101,100,32,67,111,110,102,105,103)local _0x4FE3, _0xDFBC = _0xC469(_0x893F, _0x0E17())
if not _0x4FE3 then
_0xA9C1(string.char(67,111,110,102,105,103), _0xDFBC)
return
end
_0x5CE3.Set(_0x4FE3)
if setclipboard then
pcall(setclipboard, _0x4FE3)
_0xA9C1(string.char(67,111,110,102,105,103),string.char(73,68,32,99,111,112,105,101,100,32,116,111,32,99,108,105,112,98,111,97,114,100))
else
_0xA9C1(string.char(67,111,110,102,105,103),string.char(73,68,32,103,101,110,101,114,97,116,101,100,32,45,32,99,111,112,121,32,105,116,32,102,114,111,109,32,116,104,101,32,67,111,110,102,105,103,32,73,68,32,102,105,101,108,100))
end
end)
_0xCB7C:Button(string.char(73,109,112,111,114,116,32,73,68),string.char(99,114,101,97,116,101,32,97,32,99,111,110,102,105,103,32,102,114,111,109,32,116,104,101,32,112,97,115,116,101,100,32,115,104,97,114,101,100,32,73,68), function()
local _0x603A, _0xDFBC = _0xC04B(_0x5CE3.Get())
if not _0x603A then
_0xA9C1(string.char(67,111,110,102,105,103), _0xDFBC)
_0x5CE3.Focus()
return
end
local _0x0CA3 = _0x7FCE(_0x603A.name orstring.char(83,104,97,114,101,100,32,67,111,110,102,105,103)) orstring.char(83,104,97,114,101,100,32,67,111,110,102,105,103)local _0x893F = _0x0CA3
local _0xBF5F = 2
while _0xA661[_0x893F] do
_0x893F = _0x0CA3:sub(1, math.max(1, 32 - (#tostring(_0xBF5F) + 1))) ..string.char(95).. tostring(_0xBF5F)
_0xBF5F += 1
end
_0xA661[_0x893F] = _0x8CCF(_0x603A.config)
local _0x3C04, _0x98E7 = _0x4714()
if not _0x3C04 then
_0xA661[_0x893F] = nil
_0xA9C1(string.char(67,111,110,102,105,103),string.char(105,109,112,111,114,116,32,102,97,105,108,101,100,58,32).. tostring(_0x98E7))
return
end
_0xFBAD.Set(_0x893F)
_0x06FB()
_0xD5E1.Set(_0x893F, true)
_0xA9C1(string.char(67,111,110,102,105,103),string.char(105,109,112,111,114,116,101,100,32,34).. _0x893F ..string.char(34))
end)
_0xCB7C:Button(string.char(68,101,108,101,116,101),string.char(112,101,114,109,97,110,101,110,116,108,121,32,114,101,109,111,118,101,32,116,104,101,32,110,97,109,101,100,32,99,111,110,102,105,103), function()
local _0x893F = _0x419F()
if not _0x893F then
return
end
local _0x21B5 = _0xA661[_0x893F]
if type(_0x21B5) ~=string.char(116,97,98,108,101)then
_0xA9C1(string.char(67,111,110,102,105,103),string.char(99,111,110,102,105,103,32,110,111,116,32,102,111,117,110,100))
return
end
_0xA661[_0x893F] = nil
local _0xD828, _0xDFBC = _0x4714()
if not _0xD828 then
_0xA661[_0x893F] = _0x21B5
_0xA9C1(string.char(67,111,110,102,105,103),string.char(100,101,108,101,116,101,32,102,97,105,108,101,100,58,32).. tostring(_0xDFBC))
return
end
_0xFBAD.Set("")
_0x06FB()
_0xA9C1(string.char(67,111,110,102,105,103),string.char(100,101,108,101,116,101,100,32,34).. _0x893F ..string.char(34))
end)
_0x06FB()
local _0xC84A = _0x45F1(_0xFC25,string.char(83,99,114,105,112,116))
_0xC84A:Button(string.char(82,101,115,101,116,32,99,111,110,102,105,103),string.char(114,101,115,116,111,114,101,32,100,101,102,97,117,108,116,115,32,102,111,114,32,116,104,101,32,97,99,116,105,118,101,32,115,101,116,116,105,110,103,115), function()
_0xB6F8({})
_0xA9C1(string.char(67,111,110,102,105,103),string.char(97,99,116,105,118,101,32,115,101,116,116,105,110,103,115,32,114,101,115,101,116))
end)
_0xC84A:Button(string.char(85,110,108,111,97,100),string.char(114,101,109,111,118,101,32,116,104,101,32,109,101,110,117,32,97,110,100,32,114,101,115,101,116,32,97,108,108), function()
_G.ClumsyScriptUnload()
end)
end
do
local _0xB7C6 = workspace.Terrain
local _0x1AEC = {
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
local _0x8DA7 = {string.char(78,97,116,117,114,97,108),string.char(71,111,108,100,101,110,32,72,111,117,114),string.char(67,105,110,101,109,97,116,105,99),string.char(77,111,111,100,121),string.char(78,105,103,104,116)}
local _0x61F0 = { _0xE496 = false, preset =string.char(78,97,116,117,114,97,108), _0x95FC = true }
for _0x2DD2, _0xEB0B in pairs(_0x1AEC.Natural) do
_0x61F0[_0x2DD2] = _0xEB0B
end
local _0xC263 = {string.char(66,114,105,103,104,116,110,101,115,115),string.char(69,120,112,111,115,117,114,101,67,111,109,112,101,110,115,97,116,105,111,110),string.char(71,108,111,98,97,108,83,104,97,100,111,119,115),string.char(83,104,97,100,111,119,83,111,102,116,110,101,115,115),string.char(69,110,118,105,114,111,110,109,101,110,116,68,105,102,102,117,115,101,83,99,97,108,101),string.char(69,110,118,105,114,111,110,109,101,110,116,83,112,101,99,117,108,97,114,83,99,97,108,101),string.char(65,109,98,105,101,110,116),string.char(79,117,116,100,111,111,114,65,109,98,105,101,110,116),string.char(67,108,111,99,107,84,105,109,101)}
local _0x8CF5 = {}
local _0xE5B7
local _0xF0BA _0x6684 = _0x8E3D:WaitForChild(string.char(80,108,97,121,101,114,71,117,105))
local _0xCFA2 = _0x504E(string.char(83,99,114,101,101,110,71,117,105), {
Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,70,88),
IgnoreGuiInset = true,
ResetOnSpawn = false,
DisplayOrder = 999,
ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
Enabled = false,
Parent = _0x6684,
})
pcall(function()
_0xCFA2.ScreenInsets = Enum.ScreenInsets.None
_0xCFA2.ClipToDeviceSafeArea = false
end)
local _0x4A83 = {}for _0x624F, _0xC158 in ipairs({ 90, -90, 0, 180 }) do
local _0xF0CB = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0, 0),
Position = UDim2.fromScale(-0.5, -0.5),
Size = UDim2.fromScale(2, 2),
BackgroundColor3 = Color3.new(0, 0, 0),
BorderSizePixel = 0,
ZIndex = 1,
Parent = _0xCFA2,
})
table.insert(_0x4A83, _0x504E(string.char(85,73,71,114,97,100,105,101,110,116), { Rotation = _0xC158, Parent = _0xF0CB }))
end
local function _0xEFC6()
local _0xDA08 = 1 - _0x61F0.vignette / 100 * 0.75
local _0xC623 = NumberSequence.new({
NumberSequenceKeypoint.new(0, _0xDA08),
NumberSequenceKeypoint.new(0.45, 1 - (1 - _0xDA08) * 0.3),
NumberSequenceKeypoint.new(1, 1),
})
for _0x624F, _0xBCE8 in ipairs(_0x4A83) do
_0xBCE8.Transparency = _0xC623
end
_0xCFA2.Enabled = _0x61F0.on and _0x61F0.vignette > 0
end
local function _0x7734()
if not _0x61F0.on then
return
end
pcall(function()
_0x8639.GlobalShadows = true
_0x8639.ShadowSoftness = _0x61F0.shadows / 100
_0x8639.ExposureCompensation = _0x61F0.exposure / 10
_0x8639.EnvironmentDiffuseScale = 1
_0x8639.EnvironmentSpecularScale = 1
_0x8639.Brightness = 3
_0x8639.Ambient = Color3.fromRGB(38, 40, 46)
_0x8639.OutdoorAmbient = Color3.fromRGB(118, 120, 130)
if _0x61F0.timeMode ==string.char(67,117,115,116,111,109)then
_0x8639.ClockTime = _0x61F0.time / 2
end
end)
end
local function _0x4ADB()
local _0x71F4 = _0x61F0.on and _0x61F0.clouds
if _0x71F4 and not _0x95FC and not _0xB7C6:FindFirstChildOfClass(string.char(67,108,111,117,100,115)) then
_0x95FC = _0x504E(string.char(67,108,111,117,100,115), { Cover = 0.55, Density = 0.7, Color = Color3.fromRGB(245, 245, 250), Parent = _0xB7C6 })
elseif not _0x71F4 and _0x95FC then
_0x95FC:Destroy()
_0x95FC = nil
end
end
local function _0xBD2B()
if not _0x61F0.on or not _0x8CF5.cc then
return
end
local _0xCDE9 = _0x61F0.warmth / 50
local _0xB130 = _0xCDE9 >= 0 and Color3.new(1, 1 - 0.08 * _0xCDE9, 1 - 0.24 * _0xCDE9) or Color3.new(1 + 0.24 * _0xCDE9, 1 + 0.07 * _0xCDE9, 1)
_0x8CF5.cc.Brightness = 0.01
_0x8CF5.cc.Contrast = _0x61F0.contrast / 100
_0x8CF5.cc.Saturation = _0x61F0.saturation / 100
_0x8CF5.cc.TintColor = _0xB130
_0x8CF5.bloom.Enabled = _0x61F0.bloom > 0
_0x8CF5.bloom.Intensity = _0x61F0.bloom / 100 * 1.4
_0x8CF5.bloom.Size = 18 + _0x61F0.bloom * 0.34
_0x8CF5.bloom.Threshold = 1.35 - _0x61F0.bloom / 100 * 0.5
_0x8CF5.rays.Enabled = _0x61F0.rays > 0
_0x8CF5.rays.Intensity = _0x61F0.rays / 100 * 0.35
_0x8CF5.rays.Spread = 0.6 + _0x61F0.rays / 100 * 0.3
_0x8CF5.dof.Enabled = _0x61F0.dof > 0
_0x8CF5.dof.FarIntensity = _0x61F0.dof / 100 * 0.75
_0x8CF5.dof.NearIntensity = 0
_0x8CF5.dof.FocusDistance = 30
_0x8CF5.dof.InFocusRadius = 70 - _0x61F0.dof * 0.4
local _0xF0CB = _0x61F0.fog / 100
_0x8CF5.atmo.Density = 0.15 + _0xF0CB * 0.5
_0x8CF5.atmo.Offset = 0.2
_0x8CF5.atmo.Haze = _0xF0CB * 3
_0x8CF5.atmo.Glare = _0x61F0.rays / 100 * 2
_0x8CF5.atmo.Color = Color3.fromRGB(199, 209, 222):Lerp(Color3.fromRGB(255, 212, 168), math.max(_0xCDE9, 0))
_0x8CF5.atmo.Decay = Color3.fromRGB(106, 112, 125):Lerp(Color3.fromRGB(150, 96, 60), math.max(_0xCDE9, 0))
_0x7734()
_0xEFC6()
_0x4ADB()
end
local function _0xB13E()
_0xE5B7 = { _0x36A1 = {}, effects = {}, atmos = {}, timeTouched = _0x61F0.timeMode ==string.char(67,117,115,116,111,109)}
for _0x624F, _0x09CD in ipairs(_0xC263) do
pcall(function()
_0xE5B7.light[_0x09CD] = _0x8639[_0x09CD]
end)
end
for _0x624F, _0x830D in ipairs(_0x8639:GetChildren()) do
if _0x830D:IsA(string.char(80,111,115,116,69,102,102,101,99,116)) and _0x830D ~= _0xDEC0 and _0x830D.Enabled then
_0x830D.Enabled = false
table.insert(_0xE5B7.effects, _0x830D)
elseif _0x830D:IsA(string.char(65,116,109,111,115,112,104,101,114,101)) then
table.insert(_0xE5B7.atmos, _0x830D)
_0x830D.Parent = nil
end
end
_0x8CF5.cc = _0x504E(string.char(67,111,108,111,114,67,111,114,114,101,99,116,105,111,110,69,102,102,101,99,116), { Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,82,101,97,108,105,115,116,105,99,67,111,108,111,114), Parent = _0x8639 })
_0x8CF5.bloom = _0x504E(string.char(66,108,111,111,109,69,102,102,101,99,116), { Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,82,101,97,108,105,115,116,105,99,66,108,111,111,109), Parent = _0x8639 })
_0x8CF5.rays = _0x504E(string.char(83,117,110,82,97,121,115,69,102,102,101,99,116), { Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,82,101,97,108,105,115,116,105,99,82,97,121,115), Parent = _0x8639 })
_0x8CF5.dof = _0x504E(string.char(68,101,112,116,104,79,102,70,105,101,108,100,69,102,102,101,99,116), { Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,82,101,97,108,105,115,116,105,99,68,79,70), Parent = _0x8639 })
_0x8CF5.atmo = _0x504E(string.char(65,116,109,111,115,112,104,101,114,101), { Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,82,101,97,108,105,115,116,105,99,65,116,109,111,115,112,104,101,114,101), Parent = _0x8639 })
_0xBD2B()
end
local function _0xD7BA()
for _0x624F, _0x012C in pairs(_0x8CF5) do
_0x012C:Destroy()
end
table.clear(_0x8CF5)
_0x4ADB()
_0xCFA2.Enabled = false
if _0xE5B7 then
for _0x09CD, _0xEB0B in pairs(_0xE5B7.light) do
if _0x09CD ~=string.char(67,108,111,99,107,84,105,109,101)or _0xE5B7.timeTouched then
pcall(function()
_0x8639[_0x09CD] = _0xEB0B
end)
end
end
for _0x624F, _0x012C in ipairs(_0xE5B7.effects) do
pcall(function()
_0x012C.Enabled = true
end)
end
for _0x624F, _0x012C in ipairs(_0xE5B7.atmos) do
pcall(function()
_0x012C.Parent = _0x8639
end)
end
_0xE5B7 = nil
end
end
local _0x4E16 = 0
_0xB9EB(_0xB197.Heartbeat, function(_0x5D8D)
if not _0x61F0.on then
return
end
_0x4E16 += _0x5D8D
if _0x4E16 < 0.5 then
return
end
_0x4E16 = 0
_0x7734()
end)
local _0xDBB6 = {}
local _0x2B4E
local function _0xEA78(_0x5244)
_0x61F0.timeMode = _0x5244
if _0x5244 ==string.char(67,117,115,116,111,109)then
if _0xE5B7 then
_0xE5B7.timeTouched = true
end
_0x7734()
elseif _0xE5B7 and _0xE5B7.light.ClockTime then
pcall(function()
_0x8639.ClockTime = _0xE5B7.light.ClockTime
end)
end
end
local function _0x1A66(_0x893F)
local _0x09CD = _0x1AEC[_0x893F]
if not _0x09CD then
return
end
_0x61F0.preset = _0x893F
for _0x2DD2, _0xEB0B in pairs(_0x09CD) do
if _0x2DD2 ==string.char(116,105,109,101,77,111,100,101)then
if _0x2B4E then
_0x2B4E.Set(_0xEB0B, true)
end
_0xEA78(_0xEB0B)
else
_0x61F0[_0x2DD2] = _0xEB0B
if _0xDBB6[_0x2DD2] then
_0xDBB6[_0x2DD2].Set(_0xEB0B, true)
end
end
end
_0xBD2B()
end
local function _0x0342(_0xD4D9)
return function(_0xEB0B)
_0x61F0[_0xD4D9] = _0xEB0B
_0xBD2B()
end
end
local function _0x4C02(_0xEB0B)
return _0xEB0B ..string.char(37)end
local function _0x71E1(_0xEB0B)
return (_0xEB0B > 0 andstring.char(43)or"") .. _0xEB0B ..string.char(37)end
local _0x61C4 = _0x45F1(_0xD635,string.char(82,101,97,108,105,115,116,105,99))
_0x61C4:Toggle(string.char(69,110,97,98,108,101),string.char(114,101,97,108,32,108,105,103,104,116,105,110,103,44,32,98,108,111,111,109,44,32,102,111,103,32,97,110,100,32,99,111,108,111,114,32,103,114,97,100,105,110,103), function(_0xE496)
_0x61F0.on = _0xE496
if _0xE496 then
_0xB13E()
else
_0xD7BA()
end
_0xA9C1(string.char(82,101,97,108,105,115,116,105,99,58,32).. (_0xE496 andstring.char(79,110)orstring.char(79,102,102)), _0xE496 andstring.char(112,114,101,115,101,116,32).. _0x61F0.preset orstring.char(108,105,103,104,116,105,110,103,32,114,101,115,116,111,114,101,100))
end)
_0x61C4:Select(string.char(80,114,101,115,101,116),string.char(114,105,103,104,116,32,99,108,105,99,107,32,45,32,112,114,101,118,105,111,117,115), _0x8DA7, _0x61F0.preset, function(_0xEB0B)
_0x1A66(_0xEB0B)
if _0x61F0.on then
_0xA9C1(string.char(82,101,97,108,105,115,116,105,99),string.char(112,114,101,115,101,116,32).. _0xEB0B)
end
end)
_0x61C4:Button(string.char(82,101,115,101,116),string.char(98,97,99,107,32,116,111,32,116,104,101,32,112,114,101,115,101,116,32,118,97,108,117,101,115), function()
_0x1A66(_0x61F0.preset)
_0xA9C1(string.char(82,101,97,108,105,115,116,105,99), _0x61F0.preset ..string.char(32,114,101,115,116,111,114,101,100))
end)local _0x0B38 = _0x45F1(_0xC09E,string.char(83,104,111,116,32,84,114,97,106,101,99,116,111,114,121))
local _0x5416 = false
local _0x9E94 = {}
local _0x33C8 = {}
local _0x93CE = _0x8E3D:GetMouse()
local _0x8359 = 3
local _0x6847 = -math.huge
local function _0x2FC3()
for _0x269E = #_0x33C8, 1, -1 do
local _0x2B4F = _0x33C8[_0x269E]
if _0x2B4F and _0x2B4F.Parent then pcall(function() _0x2B4F:Destroy() end) end
_0x33C8[_0x269E] = nil
end
end
local function _0x5914()
for _0x624F, _0x242F in ipairs(_0x9E94) do pcall(function() _0x242F:Disconnect() end) end
table.clear(_0x9E94)
end
local function _0xA955(_0xA2E1, _0xDD2C)for _0x624F, _0xCE5A in ipairs(_0xA2E1:GetDescendants()) do
if _0xCE5A:IsA(string.char(65,116,116,97,99,104,109,101,110,116)) then
local _0xE9D1 = string.lower(_0xCE5A.Name)
if _0xE9D1:find(string.char(109,117,122,122,108,101)) or _0xE9D1:find(string.char(102,105,114,101,112,111,105,110,116)) or _0xE9D1:find(string.char(98,97,114,114,101,108)) then
return _0xCE5A.WorldPosition
end
end
endreturn _0xDD2C.Position + _0xDD2C.CFrame.LookVector * (_0xDD2C.Size.Z * 0.5)
end
local function _0x5780(_0xA2E1)
if not _0x5416 or not _0xA2E1 or _0xA2E1.Name ~=string.char(71,117,110)or _0xA2E1.Parent ~= _0x8E3D.Character then return end
local _0x8C28 = os.clock()
if _0x8C28 - _0x6847 < _0x8359 then return end
local _0xDD2C = _0xA2E1:FindFirstChild(string.char(72,97,110,100,108,101))
if not _0xDD2C or not _0xDD2C:IsA(string.char(66,97,115,101,80,97,114,116)) or not _0x8E3D.Character or not workspace.CurrentCamera then return end
local _0x8502 = _0xA955(_0xA2E1, _0xDD2C)local _0x77B1 = _0x93CE.UnitRay
local _0xCC3C = _0x8502 + _0x77B1.Direction.Unit * 1000
local _0xD828, _0x466F = pcall(function() return _0x93CE.Hit.Position end)
if _0xD828 and typeof(_0x466F) ==string.char(86,101,99,116,111,114,51)and (_0x466F - _0x77B1.Origin).Magnitude > 1 then
_0xCC3C = _0x466F
end
local _0xE45F = _0xCC3C - _0x8502
if _0xE45F.Magnitude < 0.1 then return end
_0x6847 = _0x9494local _0xE998 = Instance.new(string.char(70,111,108,100,101,114))
_0xE998.Name =string.char(67,108,117,109,115,121,83,104,111,116,84,114,97,106,101,99,116,111,114,121)_0xE998.Parent = workspace
local function _0x3F32(_0x3242, _0x893F)
local _0x6F67 = Instance.new(string.char(80,97,114,116))
_0x6F67.Name = _0x893F
_0x6F67.Size = Vector3.new(0.05, 0.05, 0.05)
_0x6F67.CFrame = CFrame.new(_0x3242)
_0x6F67.Anchored = true
_0x6F67.Transparency = 1
_0x6F67.CanCollide = false
_0x6F67.CanTouch = false
_0x6F67.CanQuery = false
_0x6F67.CastShadow = false
_0x6F67.Parent = _0xE998
local _0x5BD0 = Instance.new(string.char(65,116,116,97,99,104,109,101,110,116))
_0x5BD0.Parent = _0x6F67
return _0x5BD0
end
local _0x9E0B = _0x3F32(_0x8502,string.char(77,117,122,122,108,101,80,111,105,110,116))
local _0x9784 = _0x3F32(_0xCC3C,string.char(65,105,109,80,111,105,110,116))
local _0x2582 = Instance.new(string.char(66,101,97,109))
_0x2582.Name =string.char(67,108,117,109,115,121,83,104,111,116,84,114,97,106,101,99,116,111,114,121,76,105,110,101)_0x2582.Attachment0 = _0x9E0B
_0x2582.Attachment1 = _0x9784
_0x2582.FaceCamera = true
_0x2582.Width0 = 0.22
_0x2582.Width1 = 0.16
_0x2582.Color = ColorSequence.new(Color3.new(1, 1, 1))
_0x2582.Transparency = NumberSequence.new(0.05)
_0x2582.LightEmission = 1
_0x2582.LightInfluence = 0
_0x2582.Segments = 20
_0x2582.CurveSize0 = 0
_0x2582.CurveSize1 = 0
_0x2582.Parent = _0x6340pcall(function() _0x2582.AlwaysOnTop = true end)
table.insert(_0x33C8, _0xE998)
while #_0x33C8 > 24 do
local _0xF7C5 = table.remove(_0x33C8, 1)
if _0xF7C5 and _0xF7C5.Parent then pcall(function() _0xF7C5:Destroy() end) end
end
task.delay(3, function()
if _0xE998 and _0xE998.Parent then _0xE998:Destroy() end
for _0x269E = #_0x33C8, 1, -1 do
if _0x33C8[_0x269E] == _0xE998 then table.remove(_0x33C8, _0x269E) end
end
end)
end
local function _0x35D7(_0xA2E1)
if not _0x5416 or not _0xA2E1 or not _0xA2E1:IsA(string.char(84,111,111,108)) or _0xA2E1.Name ~=string.char(71,117,110)or _0xA2E1:GetAttribute(string.char(67,108,117,109,115,121,84,114,97,106,101,99,116,111,114,121,72,111,111,107)) then return end
_0xA2E1:SetAttribute(string.char(67,108,117,109,115,121,84,114,97,106,101,99,116,111,114,121,72,111,111,107), true)
table.insert(_0x9E94, _0xA2E1.Activated:Connect(function()task.defer(function()
if _0x5416 then _0x5780(_0xA2E1) end
end)
end))
end
local function _0x1E0F()
_0x5914()
local _0xD95E = _0x8E3D.Character
if _0xD95E then
for _0x624F, child in ipairs(_0xD95E:GetChildren()) do _0x35D7(child) end
table.insert(_0x9E94, _0xD95E.ChildAdded:Connect(_0x35D7))
end
local _0xF5BE = _0x8E3D:FindFirstChildOfClass(string.char(66,97,99,107,112,97,99,107))
if _0xF5BE then table.insert(_0x9E94, _0xF5BE.ChildAdded:Connect(_0x35D7)) end
table.insert(_0x9E94, _0x8E3D.CharacterAdded:Connect(function(_0x5704)
task.wait(0.2)
if not _0x5416 then return end
for _0x624F, child in ipairs(_0x5704:GetChildren()) do _0x35D7(child) end
table.insert(_0x9E94, _0x5704.ChildAdded:Connect(_0x35D7))
end))
end
_0x0B38:Toggle(string.char(83,104,111,116,32,84,114,97,106,101,99,116,111,114,121),string.char(116,104,105,99,107,44,32,99,117,114,115,111,114,45,100,105,114,101,99,116,101,100,32,109,117,122,122,108,101,45,116,111,45,97,105,109,32,98,101,97,109,32,116,104,114,111,117,103,104,32,119,97,108,108,115,59,32,108,97,115,116,115,32,51,32,115,101,99,111,110,100,115,44,32,111,110,101,32,108,105,110,101,32,112,101,114,32,51,45,115,101,99,111,110,100,32,99,111,111,108,100,111,119,110), function(_0xE496)
_0x5416 = _0xE496
_0x6847 = -math.huge
if _0xE496 then
_0x1E0F()
else
_0x5914()
_0x2FC3()
local _0xD95E = _0x8E3D.Character
local _0xF5BE = _0x8E3D:FindFirstChildOfClass(string.char(66,97,99,107,112,97,99,107))
for _0x624F, _0xC4E3 in ipairs({ _0xD95E, _0xF5BE }) do
if _0xC4E3 then
for _0x624F, child in ipairs(_0xC4E3:GetChildren()) do
if child:IsA(string.char(84,111,111,108)) and child.Name ==string.char(71,117,110)then pcall(function() child:SetAttribute(string.char(67,108,117,109,115,121,84,114,97,106,101,99,116,111,114,121,72,111,111,107), nil) end) end
end
end
end
end
_0xA9C1(string.char(83,104,111,116,32,84,114,97,106,101,99,116,111,114,121,58,32).. (_0xE496 andstring.char(79,110)orstring.char(79,102,102)), _0xE496 andstring.char(109,117,122,122,108,101,45,116,111,45,97,105,109,32,116,114,97,99,101,114)orstring.char(116,114,97,106,101,99,116,111,114,121,32,104,105,100,100,101,110))
end)
local _0x15D8 = _0x45F1(_0xD635,string.char(67,111,108,111,114)):Collapsible(true)
_0xDBB6.exposure = _0x15D8:Slider(string.char(69,120,112,111,115,117,114,101), -20, 20, _0x61F0.exposure, _0x0342(string.char(101,120,112,111,115,117,114,101)), function(_0xEB0B)
return string.format(string.char(37,43,46,49,102,32,69,86), _0xEB0B / 10)
end)
_0xDBB6.contrast = _0x15D8:Slider(string.char(67,111,110,116,114,97,115,116), -20, 50, _0x61F0.contrast, _0x0342(string.char(99,111,110,116,114,97,115,116)), _0x71E1)
_0xDBB6.saturation = _0x15D8:Slider(string.char(83,97,116,117,114,97,116,105,111,110), -50, 50, _0x61F0.saturation, _0x0342(string.char(115,97,116,117,114,97,116,105,111,110)), _0x71E1)
_0xDBB6.warmth = _0x15D8:Slider(string.char(87,97,114,109,116,104), -50, 50, _0x61F0.warmth, _0x0342(string.char(119,97,114,109,116,104)), function(_0xEB0B)
if _0xEB0B == 0 then
returnstring.char(110,101,117,116,114,97,108)end
return (_0xEB0B > 0 andstring.char(119,97,114,109,32)orstring.char(99,111,108,100,32)) .. math.abs(_0xEB0B)
end)
local _0x36A1 = _0x45F1(_0xD635,string.char(76,105,103,104,116)):Collapsible(true)
_0xDBB6.bloom = _0x36A1:Slider(string.char(66,108,111,111,109), 0, 100, _0x61F0.bloom, _0x0342(string.char(98,108,111,111,109)), _0x4C02)
_0xDBB6.rays = _0x36A1:Slider(string.char(83,117,110,32,114,97,121,115), 0, 100, _0x61F0.rays, _0x0342(string.char(114,97,121,115)), _0x4C02)
_0xDBB6.shadows = _0x36A1:Slider(string.char(83,111,102,116,32,115,104,97,100,111,119,115), 0, 100, _0x61F0.shadows, _0x0342(string.char(115,104,97,100,111,119,115)), _0x4C02)
_0xDBB6.dof = _0x36A1:Slider(string.char(68,101,112,116,104,32,111,102,32,102,105,101,108,100), 0, 100, _0x61F0.dof, _0x0342(string.char(100,111,102)), _0x4C02)
_0xDBB6.fog = _0x36A1:Slider(string.char(65,116,109,111,115,112,104,101,114,101), 0, 100, _0x61F0.fog, _0x0342(string.char(102,111,103)), _0x4C02)
_0xDBB6.vignette = _0x36A1:Slider(string.char(86,105,103,110,101,116,116,101), 0, 100, _0x61F0.vignette, _0x0342(string.char(118,105,103,110,101,116,116,101)), _0x4C02)
local _0xA72D = _0x45F1(_0xD635,string.char(83,107,121)):Collapsible(true)
_0x2B4E = _0xA72D:Segmented(string.char(84,105,109,101), {string.char(71,97,109,101),string.char(67,117,115,116,111,109)}, _0x61F0.timeMode, _0xEA78)
_0xDBB6.time = _0xA72D:Slider(string.char(84,105,109,101,32,111,102,32,100,97,121), 0, 47, _0x61F0.time, function(_0xEB0B)
_0x61F0.time = _0xEB0B
if _0x61F0.timeMode ~=string.char(67,117,115,116,111,109)then
_0x2B4E.Set(string.char(67,117,115,116,111,109), true)
_0xEA78(string.char(67,117,115,116,111,109))
end
_0x7734()
end, function(_0xEB0B)
return string.format(string.char(37,48,50,100,58,37,48,50,100), math.floor(_0xEB0B / 2), _0xEB0B % 2 * 30)
end)
local _0xD331 = _0xA72D:Toggle(string.char(67,108,111,117,100,115),string.char(115,111,102,116,32,118,111,108,117,109,101,116,114,105,99,32,99,108,111,117,100,115), function(_0xE496)
_0x61F0.clouds = _0xE496
_0x4ADB()
end)
_0xD331.Set(true, true)
_0x2E3D = function()
if _0x61F0.on then
_0x61F0.on = false
_0xD7BA()
end
_0xCFA2:Destroy()
end
end
do
local _0xB299 = {
_0xE496 = false,
roles = true,
_0x02F3 = 1500,
_0x15D8 =string.char(87,104,105,116,101),
_0x7321 = true,
chams = true,
_0x025A = true,
boxStyle =string.char(67,111,114,110,101,114,115),
_0x893F = true,
_0xEAC1 = true,
tracers = false,
tracerFrom =string.char(66,111,116,116,111,109),
_0xA70E = 30,
_0xEE8A = 12,
thick = 1,
}
local _0xB919 = _0x504E(string.char(83,99,114,101,101,110,71,117,105), {
Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,69,83,80),
IgnoreGuiInset = true,
ResetOnSpawn = false,
DisplayOrder = 9999,
Enabled = false,
Parent = _0x8AE1,
})
pcall(function()
_0xB919.ScreenInsets = Enum.ScreenInsets.None
_0xB919.ClipToDeviceSafeArea = false
end)
local _0x12B2 = _0x504E(string.char(70,111,108,100,101,114), { Name =string.char(67,104,97,109,115), Parent = _0xB919 })
local _0xA42F = Color3.new(0, 0, 0)
local _0xD0EC = Color3.fromRGB(255, 58, 58)
local _0x3F0C = Color3.fromRGB(64, 150, 255)
local _0xF4AF = {}
local _0x3B81 = {}
local _0x6C9C = true
task.spawn(function()
local _0x8D38
while _0x6C9C do
if _0xB299.on and _0xB299.roles then
if not _0x8D38 or not _0x8D38.Parent then
_0x8D38 = game:GetService(string.char(82,101,112,108,105,99,97,116,101,100,83,116,111,114,97,103,101)):FindFirstChild(string.char(71,101,116,80,108,97,121,101,114,68,97,116,97), true)
end
if _0x8D38 and _0x8D38:IsA(string.char(82,101,109,111,116,101,70,117,110,99,116,105,111,110)) then
local _0xD828, _0x5E99 = pcall(_0x8D38.InvokeServer, _0x8D38)
if _0xD828 and type(_0x5E99) ==string.char(116,97,98,108,101)then
local _0x387D = {}
for _0x893F, _0xA65E in pairs(_0x5E99) do
if type(_0xA65E) ==string.char(116,97,98,108,101)and type(_0xA65E.Role) ==string.char(115,116,114,105,110,103)and not _0xA65E.Dead and not _0xA65E.Killed then
_0x387D[_0x893F] = _0xA65E.Role
end
end
_0x3B81 = _0x387D
end
end
end
task.wait(1)
end
end)
local function _0x12B8(plr)
if _0x2768(plr,string.char(75,110,105,102,101)) then
returnstring.char(77,117,114,100,101,114,101,114)end
if _0x2768(plr,string.char(71,117,110)) then
returnstring.char(83,104,101,114,105,102,102)end
local _0x00EA = _0x3B81[plr.Name]
if _0x00EA ==string.char(77,117,114,100,101,114,101,114)then
returnstring.char(77,117,114,100,101,114,101,114)end
if _0x00EA ==string.char(83,104,101,114,105,102,102)or _0x00EA ==string.char(72,101,114,111)then
returnstring.char(83,104,101,114,105,102,102)end
end
local function _0xA57F(_0xDF1D)
local _0xF0CB = _0x504E(string.char(70,114,97,109,101), { BackgroundColor3 = _0xA925, BorderSizePixel = 0, Parent = _0xDF1D })
_0x504E(string.char(85,73,83,116,114,111,107,101), { Color = _0xA42F, Transparency = 0.5, Thickness = 1, Parent = _0xF0CB })
return _0xF0CB
end
local function _0x7963(_0xDF1D, ay)
return _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Font = Enum.Font.GothamBold,
TextSize = 12,
TextColor3 = _0xA925,
TextStrokeColor3 = _0xA42F,
TextStrokeTransparency = 0.45,
BackgroundTransparency = 1,
AnchorPoint = Vector2.new(0.5, ay),
Size = UDim2.fromOffset(220, 14),
Parent = _0xDF1D,
})
end
local function _0x2329(plr)
if plr == _0x8E3D or _0xF4AF[plr] then
return
end
local _0xDF88 = { plr = plr, alpha = 0, hp = 1, _0xA931 = math.random() }
_0xDF88.root = _0x504E(string.char(70,114,97,109,101), { BackgroundTransparency = 1, Size = UDim2.fromOffset(0, 0), Visible = false, Parent = _0xB919 })
_0xDF88.fill = _0x504E(string.char(70,114,97,109,101), { BackgroundColor3 = _0xA925, BorderSizePixel = 0, Parent = _0xDF88.root })
_0xDF88.fillGrad = _0x504E(string.char(85,73,71,114,97,100,105,101,110,116), { Rotation = 90, Transparency = NumberSequence.new(1, 0.82), Parent = _0xDF88.fill })
_0xDF88.corners = {}
for _0x269E = 1, 8 do
_0xDF88.corners[_0x269E] = _0xA57F(_0xDF88.root)
end
_0xDF88.full = _0x504E(string.char(70,114,97,109,101), { BackgroundTransparency = 1, Parent = _0xDF88.root })
_0xDF88.fullStroke = _0x504E(string.char(85,73,83,116,114,111,107,101), { Color = _0xA925, Thickness = 1, Parent = _0xDF88.full })
_0xDF88.fullShadow = _0x504E(string.char(70,114,97,109,101), { BackgroundTransparency = 1, Parent = _0xDF88.root })
_0x504E(string.char(85,73,83,116,114,111,107,101), { Color = _0xA42F, Transparency = 0.5, Thickness = 3, Parent = _0xDF88.fullShadow })_0xDF88.avatar = _0x504E(string.char(73,109,97,103,101,76,97,98,101,108), {
AnchorPoint = Vector2.new(0.5, 0.5),
Size = UDim2.fromOffset(24, 24),
BackgroundColor3 = _0xA42F,
BackgroundTransparency = 0.15,
BorderSizePixel = 0,
Image ="",
Visible = false,
Parent = _0xDF88.root,
})
_0x504E(string.char(85,73,67,111,114,110,101,114), { CornerRadius = UDim.new(1, 0), Parent = _0xDF88.avatar })
_0xDF88.avatarStroke = _0x504E(string.char(85,73,83,116,114,111,107,101), {
Color = _0xA925,
Thickness = 1.2,
Transparency = 0.1,
Parent = _0xDF88.avatar,
})
_0xDF88.name = _0x7963(_0xDF88.root, 1)
_0xDF88.name.Size = UDim2.fromOffset(190, 14)
_0xDF88.info = _0x7963(_0xDF88.root, 0)
task.spawn(function()
local _0xD828, _0xEEC3 = pcall(function()
return _0xD101:GetUserThumbnailAsync(
plr.UserId,
Enum.ThumbnailType.HeadShot,
Enum.ThumbnailSize.Size150x150
)
end)
if _0xD828 and _0xEEC3 and _0xDF88.avatar and _0xDF88.avatar.Parent then
_0xDF88.avatar.Image = _0xEEC3
_0xDF88.avatarLoaded = true
end
end)
_0xDF88.info.Font = Enum.Font.GothamMedium
_0xDF88.tracer = _0xA57F(_0xDF88.root)
_0xDF88.tracer.AnchorPoint = Vector2.new(0.5, 0.5)
_0xDF88.hl = _0x504E(string.char(72,105,103,104,108,105,103,104,116), { DepthMode = Enum.HighlightDepthMode.AlwaysOnTop, Enabled = false, Parent = _0x12B2 })
_0xF4AF[plr] = _0xDF88
end
local function _0x24AF(plr)
local _0xDF88 = _0xF4AF[plr]
if not _0xDF88 then
return
end
_0xDF88.root:Destroy()
_0xDF88.hl:Destroy()
_0xF4AF[plr] = nil
end
for _0x624F, plr in ipairs(_0xD101:GetPlayers()) do
_0x2329(plr)
end
_0xB9EB(_0xD101.PlayerAdded, _0x2329)
_0xB9EB(_0xD101.PlayerRemoving, _0x24AF)
local function _0x3CD0(_0x00EA)
return Color3.fromHSV(0.33 * math.clamp(_0x00EA, 0, 1), 0.8, 1)
end
local function _0xCB94(_0xF0CB, _0xE51D, _0x58E9, x2, y2, _0x2F74)
local _0xEC9D, _0x1466 = x2 - _0xE51D, y2 - _0x58E9
_0xF0CB.Position = UDim2.fromOffset((_0xE51D + x2) / 2, (_0x58E9 + y2) / 2)
_0xF0CB.Size = UDim2.fromOffset(math.sqrt(_0xEC9D * _0xEC9D + _0x1466 * _0x1466), _0x2F74)
_0xF0CB.Rotation = math.deg(math.atan2(_0x1466, _0xEC9D))
end
local function _0xC2E5()
for _0x624F, _0xDF88 in pairs(_0xF4AF) do
_0xDF88.alpha = 0
_0xDF88.root.Visible = false
_0xDF88.hl.Enabled = false
end
end
_0xB9EB(_0xB197.RenderStepped, function(_0x5D8D)
if not _0xB299.on then
return
end
local _0x04CE = workspace.CurrentCamera
if not _0x04CE then
return
end
local _0x203D = _0x04CE.ViewportSize
local _0x8CB6 = _0x04CE.CFrame.Position
local _0x8C28 = os.clock()
local _0x2DD2 = math.min(_0x5D8D * 10, 1)
for plr, _0xDF88 in pairs(_0xF4AF) do
local _0xD95E = plr.Character
local _0xB48C = _0xD95E and _0xD95E:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xC3CF = _0xD95E and _0xD95E:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0x57F2 = false
local _0x02F3 = 0
if _0xB48C and _0xC3CF and _0xC3CF.Health > 0 then
_0x02F3 = (_0x8CB6 - _0xB48C.Position).Magnitude
if _0x02F3 <= _0xB299.dist thenlocal _0x521C = _0x04CE:WorldToViewportPoint(_0xB48C.Position + Vector3.new(0, 3, 0))
local _0x803A = _0x04CE:WorldToViewportPoint(_0xB48C.Position - Vector3.new(0, 3.4, 0))
if _0x521C.Z > 0 and _0x803A.Z > 0 then
local _0xF171 = math.max(_0x803A.Y - _0x521C.Y, 6)
local _0xCDE9 = _0xF171 * 0.6
local _0x0E03 = (_0x521C.X + _0x803A.X) / 2
_0x57F2 = _0x0E03 > -_0xCDE9 and _0x0E03 < _0x203D.X + _0xCDE9 and _0x803A.Y > 0 and _0x521C.Y < _0x203D.Y
if _0x57F2 then
_0xDF88.x, _0xDF88.y, _0xDF88.w, _0xDF88.h, _0xDF88.d = _0x0E03, _0x521C.Y, _0xCDE9, _0xF171, _0x02F3
end
end
end
end
_0xDF88.alpha += ((_0x57F2 and 1 or 0) - _0xDF88.alpha) * _0x2DD2
if _0xDF88.alpha < 0.02 or not _0xDF88.x then
_0xDF88.root.Visible = false
_0xDF88.hl.Enabled = false
continue
end
_0xDF88.root.Visible = true
local _0xDA08 = _0xDF88.alpha
local _0xF154 = 1 - _0xDA08
if not _0xDF88.roleAt or _0x8C28 - _0xDF88.roleAt > 0.25 then
_0xDF88.roleAt = _0x8C28
local _0xC982 = _0xB299.roles and _0x12B8(plr) or nil
if _0xC982 and _0xC982 ~= _0xDF88.role then
_0xA9C1(_0xC982 ==string.char(77,117,114,100,101,114,101,114)andstring.char(77,117,114,100,101,114,101,114,32,102,111,117,110,100)orstring.char(83,104,101,114,105,102,102,32,102,111,117,110,100), plr.DisplayName)
end
_0xDF88.role = _0xC982
end
local _0x7F96 = _0xA925
if _0xDF88.role ==string.char(77,117,114,100,101,114,101,114)then
_0x7F96 = _0xD0EC
elseif _0xDF88.role ==string.char(83,104,101,114,105,102,102)then
_0x7F96 = _0x3F0C
elseif _0xB299.color ==string.char(72,101,97,108,116,104)then
_0x7F96 = _0x3CD0(_0xDF88.hp)
elseif _0xB299.color ==string.char(82,97,105,110,98,111,119)then
_0x7F96 = Color3.fromHSV((_0x8C28 * 0.15 + _0xDF88.hue) % 1, 0.55, 1)
end
local _0x8AF5, _0x3B3B = _0xDF88.x - _0xDF88.w / 2, _0xDF88.y
local _0xE51D, _0x58E9 = _0xDF88.x + _0xDF88.w / 2, _0xDF88.y + _0xDF88.h
local _0x2F74 = _0xB299.thick
_0xDF88.fill.Visible = _0xB299.box
_0xDF88.fill.Position = UDim2.fromOffset(_0x8AF5, _0x3B3B)
_0xDF88.fill.Size = UDim2.fromOffset(_0xDF88.w, _0xDF88.h)
_0xDF88.fill.BackgroundColor3 = _0x7F96
_0xDF88.fill.BackgroundTransparency = _0xF154
local _0x9181 = _0xB299.box and _0xB299.boxStyle ==string.char(67,111,114,110,101,114,115)local _0x168D, _0x5B9B = math.max(_0xDF88.w * 0.28, 4), math.max(_0xDF88.h * 0.2, 4)
local _0x7132 = {
{ _0x8AF5, _0x3B3B, _0x168D, _0x2F74 },
{ _0x8AF5, _0x3B3B, _0x2F74, _0x5B9B },
{ _0xE51D - _0x168D, _0x3B3B, _0x168D, _0x2F74 },
{ _0xE51D - _0x2F74, _0x3B3B, _0x2F74, _0x5B9B },
{ _0x8AF5, _0x58E9 - _0x2F74, _0x168D, _0x2F74 },
{ _0x8AF5, _0x58E9 - _0x5B9B, _0x2F74, _0x5B9B },
{ _0xE51D - _0x168D, _0x58E9 - _0x2F74, _0x168D, _0x2F74 },
{ _0xE51D - _0x2F74, _0x58E9 - _0x5B9B, _0x2F74, _0x5B9B },
}
for _0x269E, _0x242F in ipairs(_0xDF88.corners) do
_0x242F.Visible = _0x9181
if _0x9181 then
local _0xB29B = _0x7132[_0x269E]
_0x242F.Position = UDim2.fromOffset(_0xB29B[1], _0xB29B[2])
_0x242F.Size = UDim2.fromOffset(_0xB29B[3], _0xB29B[4])
_0x242F.BackgroundColor3 = _0x7F96
_0x242F.BackgroundTransparency = _0xF154
end
end
local _0xDDAB = _0xB299.box and _0xB299.boxStyle ==string.char(70,117,108,108)_0xDF88.full.Visible = _0xDDAB
_0xDF88.fullShadow.Visible = _0xDDAB
if _0xDDAB then
_0xDF88.full.Position = UDim2.fromOffset(_0x8AF5, _0x3B3B)
_0xDF88.full.Size = UDim2.fromOffset(_0xDF88.w, _0xDF88.h)
_0xDF88.fullShadow.Position = _0xDF88.full.Position
_0xDF88.fullShadow.Size = _0xDF88.full.Size
_0xDF88.fullStroke.Color = _0x7F96
_0xDF88.fullStroke.Thickness = _0x2F74
_0xDF88.fullStroke.Transparency = _0xF154
end
_0xDF88.name.Visible = _0xB299.name
if _0xB299.name then
_0xDF88.name.Text = plr.DisplayName
_0xDF88.name.TextSize = _0xB299.text_0x9B31.name.Position = UDim2.fromOffset(_0xDF88.x + 12, _0x3B3B - 3)
_0xDF88.name.TextColor3 = _0x7F96
_0xDF88.name.TextTransparency = _0xF154
_0xDF88.name.TextStrokeTransparency = 0.45 + 0.55 * _0xF154
end
_0xDF88.avatar.Visible = _0xB299.avatar and _0xB299.name and _0xDF88.avatarLoaded == true
if _0xDF88.avatar.Visible then
_0xDF88.avatar.Position = UDim2.fromOffset(_0xDF88.x - 2, _0x3B3B + 4)
_0xDF88.avatar.ImageTransparency = _0xF154
_0xDF88.avatar.BackgroundTransparency = 0.15 + 0.85 * _0xF154
_0xDF88.avatarStroke.Color = _0x7F96
_0xDF88.avatarStroke.Transparency = 0.1 + 0.9 * _0xF154
end
_0xDF88.info.Visible = _0xB299.distance
if _0xB299.distance then
local _0x5244 = math.floor(_0xDF88.d + 0.5) ..string.char(109)_0xDF88.info.Text = _0xDF88.role and string.upper(_0xDF88.role) ..string.char(32,32,194,183,32,32).. _0x5244 or _0x5244
_0xDF88.info.TextSize = _0xB299.text - 1
_0xDF88.info.Position = UDim2.fromOffset(_0xDF88.x, _0x58E9 + 3)
_0xDF88.info.TextColor3 = _0xDF88.role and _0x7F96 or _0x2E02:Lerp(_0xA925, 0.5)
_0xDF88.info.TextTransparency = _0xF154
_0xDF88.info.TextStrokeTransparency = 0.45 + 0.55 * _0xF154
end
_0xDF88.tracer.Visible = _0xB299.tracers
if _0xB299.tracers then
local _0x04C0 = _0xB299.tracerFrom ==string.char(67,101,110,116,101,114)and _0x203D.Y / 2 or _0x203D.Y - 2
_0xCB94(_0xDF88.tracer, _0x203D.X / 2, _0x04C0, _0xDF88.x, _0x58E9, _0x2F74)
_0xDF88.tracer.BackgroundColor3 = _0x7F96
_0xDF88.tracer.BackgroundTransparency = 0.25 + 0.75 * _0xF154
end
_0xDF88.hl.Enabled = _0xB299.chams
if _0xB299.chams then
_0xDF88.hl.Adornee = _0xD95E
_0xDF88.hl.FillColor = _0x7F96
_0xDF88.hl.OutlineColor = _0x7F96
_0xDF88.hl.FillTransparency = 1 - _0xB299.fill / 100 * 0.85 * _0xDA08
_0xDF88.hl.OutlineTransparency = 1 - 0.9 * _0xDA08
end
end
end)
local function _0x3E42(_0xD4D9)
return function(_0xEB0B)
_0xB299[_0xD4D9] = _0xEB0B
end
end
local _0x61C4 = _0x45F1(_0xD635,string.char(69,83,80),string.char(69,83,80))
_0x61C4:Toggle(string.char(69,110,97,98,108,101),string.char(115,101,101,32,112,108,97,121,101,114,115,32,116,104,114,111,117,103,104,32,119,97,108,108,115), function(_0xE496)
_0xB299.on = _0xE496
_0xB919.Enabled = _0xE496
if not _0xE496 then
_0xC2E5()
end
_0xA9C1(string.char(69,83,80,58,32).. (_0xE496 andstring.char(79,110)orstring.char(79,102,102)), _0xE496 andstring.char(112,108,97,121,101,114,115,32,104,105,103,104,108,105,103,104,116,101,100)orstring.char(101,115,112,32,104,105,100,100,101,110))
end)
_0x61C4:Toggle(string.char(82,111,108,101,115),string.char(109,117,114,100,101,114,101,114,32,114,101,100,44,32,115,104,101,114,105,102,102,32,98,108,117,101), function(_0xEB0B)
_0xB299.roles = _0xEB0B
for _0x624F, _0xDF88 in pairs(_0xF4AF) do
_0xDF88.roleAt = nil
end
end).Set(_0xB299.roles, true)
_0x61C4:Select(string.char(67,111,108,111,114),string.char(102,111,114,32,101,118,101,114,121,111,110,101,32,101,108,115,101), {string.char(87,104,105,116,101),string.char(72,101,97,108,116,104),string.char(82,97,105,110,98,111,119)}, _0xB299.color, _0x3E42(string.char(99,111,108,111,114)))
_0x61C4:Slider(string.char(77,97,120,32,100,105,115,116,97,110,99,101), 50, 3000, _0xB299.dist, _0x3E42(string.char(100,105,115,116)), function(_0xEB0B)
return _0xEB0B ..string.char(109)end)
local _0x0341 = _0x45F1(_0xD635,string.char(69,108,101,109,101,110,116,115),string.char(69,83,80)):Collapsible(true)
_0x0341:Toggle(string.char(67,104,97,109,115),string.char(103,108,111,119,105,110,103,32,98,111,100,121,32,116,104,114,111,117,103,104,32,119,97,108,108,115), _0x3E42(string.char(99,104,97,109,115))).Set(_0xB299.chams, true)
_0x0341:Toggle(string.char(66,111,120), nil, _0x3E42(string.char(98,111,120))).Set(_0xB299.box, true)
_0x0341:Segmented(string.char(66,111,120,32,115,116,121,108,101), {string.char(67,111,114,110,101,114,115),string.char(70,117,108,108)}, _0xB299.boxStyle, _0x3E42(string.char(98,111,120,83,116,121,108,101)))
_0x0341:Toggle(string.char(78,97,109,101), nil, _0x3E42(string.char(110,97,109,101))).Set(_0xB299.name, true)
_0x0341:Toggle(string.char(65,118,97,116,97,114),string.char(112,108,97,121,101,114,32,112,114,111,102,105,108,101,32,105,99,111,110,32,98,101,115,105,100,101,32,116,104,101,32,110,105,99,107,110,97,109,101), _0x3E42(string.char(97,118,97,116,97,114))).Set(_0xB299.avatar, true)
_0x0341:Toggle(string.char(68,105,115,116,97,110,99,101), nil, _0x3E42(string.char(100,105,115,116,97,110,99,101))).Set(_0xB299.distance, true)
_0x0341:Toggle(string.char(84,114,97,99,101,114,115),string.char(108,105,110,101,115,32,116,111,32,112,108,97,121,101,114,115), _0x3E42(string.char(116,114,97,99,101,114,115)))
_0x0341:Segmented(string.char(84,114,97,99,101,114,115,32,102,114,111,109), {string.char(66,111,116,116,111,109),string.char(67,101,110,116,101,114)}, _0xB299.tracerFrom, _0x3E42(string.char(116,114,97,99,101,114,70,114,111,109)))
local _0x53F0 = _0x45F1(_0xD635,string.char(76,111,111,107),string.char(69,83,80)):Collapsible(false)
_0x53F0:Slider(string.char(67,104,97,109,115,32,102,105,108,108), 0, 100, _0xB299.fill, _0x3E42(string.char(102,105,108,108)), function(_0xEB0B)
return _0xEB0B ..string.char(37)end)
_0x53F0:Slider(string.char(84,101,120,116,32,115,105,122,101), 9, 18, _0xB299.text, _0x3E42(string.char(116,101,120,116)))
_0x53F0:Slider(string.char(84,104,105,99,107,110,101,115,115), 1, 3, _0xB299.thick, _0x3E42(string.char(116,104,105,99,107)), function(_0xEB0B)
return _0xEB0B ..string.char(112,120)end)
_0x2B12 = function()
_0xB299.on = false
_0x6C9C = false
_0xB919:Destroy()
end
end
do
local _0x2958 = {
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
local _0xE9DB = {
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
local _0xEB61 = {
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
local _0x24A5 = {
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
local _0x1379 = game:GetService(string.char(72,116,116,112,83,101,114,118,105,99,101))
local _0x2614 = game:GetService(string.char(65,118,97,116,97,114,69,100,105,116,111,114,83,101,114,118,105,99,101))
local _0xA4C6 = Color3.fromRGB(104, 222, 92)
local _0x8802 = Color3.fromRGB(36, 36, 38)
local _0xF29A = Color3.fromRGB(48, 48, 52)
local _0xDA2D = Color3.fromRGB(17, 17, 19)
local _0x4EA2 = {string.char(105,100,108,101),string.char(119,97,108,107),string.char(114,117,110),string.char(106,117,109,112),string.char(102,97,108,108),string.char(99,108,105,109,98),string.char(115,119,105,109)}
local _0x2C55 = {
idle = true,
walk = true,
run = true,
jump = true,
fall = true,
climb = true,
swim = true,
swimidle = true,
}
local _0x5A93 = {
IdleAnimation = 1,
WalkAnimation = 2,
RunAnimation = 3,
JumpAnimation = 4,
FallAnimation = 5,
ClimbAnimation = 6,
SwimAnimation = 7,
}
local function _0xC330(_0x4FE3)
return string.format(string.char(37,46,48,102), _0x4FE3)
end
local function _0xA6A2(_0xE157)
_0xE157 = _0xE157:lower():gsub(string.char(97,110,105,109,97,116,105,111,110,115,63),""):gsub(string.char(112,97,99,107,97,103,101),""):gsub(string.char(112,97,99,107),""):gsub(string.char(91,94,37,119,93),"")
return _0xE157
end
local _0x6242 = {}
for _0x624F, cat in ipairs(_0x2958) do
for _0x624F, _0x09CD in ipairs(cat[2]) do
_0x6242[_0xA6A2(_0x09CD[1])] = _0x09CD
end
end
local function _0x641B(_0x09CD)
local function _0xC2B0(_0xEB0B)
return _0xEB0B and _0xEB0B ~= 0 and {string.char(114,98,120,97,115,115,101,116,105,100,58,47,47).. _0xC330(_0xEB0B) } or nil
end
local _0x1EDE = _0x09CD[3] and _0x09CD[3] ~= 0 and _0x09CD[3] or _0x09CD[2]
return {
idle = {string.char(114,98,120,97,115,115,101,116,105,100,58,47,47).. _0xC330(_0x09CD[2]),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47).. _0xC330(_0x1EDE) },
walk = _0xC2B0(_0x09CD[4]),
run = _0xC2B0(_0x09CD[5]),
jump = _0xC2B0(_0x09CD[6]),
fall = _0xC2B0(_0x09CD[7]),
climb = _0xC2B0(_0x09CD[8]),
swim = _0xC2B0(_0x09CD[9]),
swimidle = _0xC2B0(_0x09CD[10]),
}
end
local function _0xBAF4(_0x0E34)
local _0xDA08 = { 0, 0, 0, 0, 0, 0, 0 }
for _0x624F, _0x2B4F in ipairs(_0x0E34 or {}) do
local _0x2DD2 = _0x5A93[tostring(_0x2B4F.AssetType or"")]
if not _0x2DD2 and _0x2B4F.Name then
local _0xE9D1 = _0x2B4F.Name:lower()
for _0x269E, _0xE157 in ipairs(_0x4EA2) do
if _0xE9D1:find(_0xE157, 1, true) then
_0x2DD2 = _0x269E
break
end
end
end
if _0x2DD2 and (_0x2B4F.Type == nil or _0x2B4F.Type ==string.char(65,115,115,101,116)) then
_0xDA08[_0x2DD2] = _0x2B4F.Id
end
end
return _0xDA08
end
local _0x84DD, _0xFD0C = {}, {}
local function _0xAB14(_0x4FE3, _0x893F, _0x4E46, isNew, _0x6B15)
local _0xBF1F = _0xFD0C[_0x4FE3]
if _0xBF1F then
if isNew then
_0xBF1F.new = true
end
return _0xBF1F, false
end
_0xBF1F = { _0x4FE3 = _0x4FE3, _0x893F = _0x893F, assets = _0x4E46, new = isNew, _0x7969 =string.char(98)}
_0xFD0C[_0x4FE3] = _0xBF1F
if _0x6B15 then
table.insert(_0x84DD, _0x6B15, _0xBF1F)
else
table.insert(_0x84DD, _0xBF1F)
end
return _0xBF1F, true
end
for _0x624F, _0x00EA in ipairs(_0xE9DB) do
_0xAB14(_0x00EA[1], _0x00EA[2], { _0x00EA[3], _0x00EA[4], _0x00EA[5], _0x00EA[6], _0x00EA[7], _0x00EA[8], _0x00EA[9] }, false)
end
for _0x624F, _0x00EA in ipairs(_0xEB61) do
_0xAB14(_0x00EA[1], _0x00EA[2], { _0x00EA[3], _0x00EA[4], _0x00EA[5], _0x00EA[6], _0x00EA[7], _0x00EA[8], _0x00EA[9] }, true)
end
local _0xAF35, _0x2EFA = {}, {}
for _0x624F, _0x00EA in ipairs(_0x24A5) do
local _0xDF88 = { _0x4FE3 = _0x00EA[1], _0x893F = _0x00EA[2], new = _0x00EA[3], _0x7969 =string.char(101)}
table.insert(_0xAF35, _0xDF88)
_0x2EFA[_0x00EA[1]] = _0xDF88
end
local _0x4E5C = {}
local function _0xC185(_0x2B4F)
return _0x2B4F.kind .. _0xC330(_0x2B4F.id)
end
pcall(function()
if isfile and readfile and isfile(string.char(99,108,117,109,115,121,115,99,114,105,112,116,95,102,97,118,115,46,106,115,111,110)) then
for _0x624F, _0xF0CB in ipairs(_0x1379:JSONDecode(readfile(string.char(99,108,117,109,115,121,115,99,114,105,112,116,95,102,97,118,115,46,106,115,111,110)))) do
local _0x2B4F = { _0x7969 = _0xF0CB.kind, _0x4FE3 = tonumber(_0xF0CB.id), _0x893F = _0xF0CB.name }
if _0xF0CB.assets then
_0x2B4F.assets = {}
for _0x269E, _0xEB0B in ipairs(_0xF0CB.assets) do
_0x2B4F.assets[_0x269E] = tonumber(_0xEB0B) or 0
end
end
if _0x2B4F.id then
_0x4E5C[_0xC185(_0x2B4F)] = _0x2B4F
end
end
end
end)
local function _0xAF5F()
if not writefile then
return
end
local _0xE690 = {}
for _0x624F, _0x2B4F in pairs(_0x4E5C) do
local _0xF0CB = { _0x7969 = _0x2B4F.kind, _0x4FE3 = _0xC330(_0x2B4F.id), _0x893F = _0x2B4F.name }
if _0x2B4F.assets then
_0xF0CB.assets = {}
for _0x269E, _0xEB0B in ipairs(_0x2B4F.assets) do
_0xF0CB.assets[_0x269E] = _0xC330(_0xEB0B)
end
end
table.insert(_0xE690, _0xF0CB)
end
pcall(writefile,string.char(99,108,117,109,115,121,115,99,114,105,112,116,95,102,97,118,115,46,106,115,111,110), _0x1379:JSONEncode(_0xE690))
end
local function _0xD116()
local _0x1AC6 = {}
for _0x624F, _0xF0CB in pairs(_0x4E5C) do
local _0x2B4F = _0xF0CB.kind ==string.char(98)and _0xFD0C[_0xF0CB.id] or _0xF0CB.kind ==string.char(101)and _0x2EFA[_0xF0CB.id] or _0xF0CB
table.insert(_0x1AC6, _0x2B4F)
end
table.sort(_0x1AC6, function(_0xDA08, _0xBF1F)
return _0xDA08.name:lower() < _0xBF1F.name:lower()
end)
return _0x1AC6
end
local _0x25EB = {}
local function _0x201C(assetId)
if _0x25EB[assetId] then
return _0x25EB[assetId]
end
local _0xD828, _0x2F59 = pcall(function()
return game:GetObjects(string.char(114,98,120,97,115,115,101,116,105,100,58,47,47).. _0xC330(assetId))
end)
if not _0xD828 or type(_0x2F59) ~=string.char(116,97,98,108,101)then
return {}
end
local _0x895B = {}
for _0x624F, _0x012C in ipairs(_0x2F59) do
local _0xDFBA = _0x012C:GetDescendants()
table.insert(_0xDFBA, 1, _0x012C)
for _0x624F, _0xDA08 in ipairs(_0xDFBA) do
if _0xDA08:IsA(string.char(65,110,105,109,97,116,105,111,110)) and _0xDA08.AnimationId ~=""then
table.insert(_0x895B, { slot = _0xDA08.Parent and _0xDA08.Parent.Name:lower() or"", _0x893F = _0xDA08.Name, _0x4FE3 = _0xDA08.AnimationId })
end
end
end
table.sort(_0x895B, function(_0x4244, _0x546B)
return _0x4244.name < _0x546B.name
end)
_0x25EB[assetId] = _0x895B
return _0x895B
end
local _0x0957 = {}
local function _0x4485(_0xBF1F)
if _0x0957[_0xBF1F.id] then
return _0x0957[_0xBF1F.id]
end
local _0x2DD2 = _0x6242[_0xA6A2(_0xBF1F.name)]
if _0x2DD2 then
_0x0957[_0xBF1F.id] = _0x641B(_0x2DD2)
return _0x0957[_0xBF1F.id]
end
local _0xA4DF, _0xA5F1 = {}, false
for _0x269E, _0xFBDF in ipairs(_0xBF1F.assets or {}) do
if _0xFBDF and _0xFBDF ~= 0 then
for _0x624F, _0xDA08 in ipairs(_0x201C(_0xFBDF)) do
local _0xE157 = _0x2C55[_0xDA08.slot] and _0xDA08.slot or _0x4EA2[_0x269E]
_0xA4DF[_0xE157] = _0xA4DF[_0xE157] or {}
table.insert(_0xA4DF[_0xE157], _0xDA08.id)
_0xA5F1 = true
end
end
end
if _0xA5F1 then
_0x0957[_0xBF1F.id] = _0xA4DF
return _0xA4DF
end
end
local _0xCEB7, _0x6DB8 = nil, nil
local function _0x6C61() end
local function _0xA06F()
local _0x242F = _0x8E3D.Character
return _0x242F and _0x242F:FindFirstChild(string.char(65,110,105,109,97,116,101))
end
local function _0xFA92(_0xE998)
local _0x634C = {}
for _0x624F, _0xDA08 in ipairs(_0xE998:GetChildren()) do
if _0xDA08:IsA(string.char(65,110,105,109,97,116,105,111,110)) then
table.insert(_0x634C, _0xDA08)
end
end
table.sort(_0x634C, function(_0x4244, _0x546B)
return _0x4244.Name < _0x546B.Name
end)
return _0x634C
end
local function _0x3931(_0x74BD)
if _0xCEB7 then
return
end
_0xCEB7 = {}
for _0x624F, _0xE998 in ipairs(_0x74BD:GetChildren()) do
if _0x2C55[_0xE998.Name:lower()] then
for _0x624F, _0xDA08 in ipairs(_0xFA92(_0xE998)) do
_0xCEB7[_0xDA08] = _0xDA08.AnimationId
end
end
end
end
local function _0x4400()
local _0x74BD, _0xC3CF = _0xA06F(), _0xFFF1()
if not _0x74BD or not _0xC3CF then
return
end
_0x74BD.Disabled = true
for _0x624F, _0xC220 in ipairs(_0xC3CF:GetPlayingAnimationTracks()) do
_0xC220:Stop(0)
end
_0x74BD.Disabled = false
end
local function _0x73BF(_0xA4DF)
local _0x74BD = _0xA06F()
if not _0x74BD then
return false
end
_0x3931(_0x74BD)
for _0x624F, _0xE998 in ipairs(_0x74BD:GetChildren()) do
local _0xEA43 = _0xA4DF[_0xE998.Name:lower()]
if _0xEA43 and #_0xEA43 > 0 then
for _0x269E, _0xDA08 in ipairs(_0xFA92(_0xE998)) do
_0xDA08.AnimationId = _0xEA43[_0x269E] or _0xEA43[1]
end
end
end
_0x4400()
return true
end
local function _0xEA9C(_0xBF1F)
_0x09F2[string.char(70,114,101,101,32,97,110,105,109,115,47,112,97,99,107)] = _0xBF1F and { _0x7969 =string.char(98), _0x4FE3 = _0xBF1F.id, _0x893F = _0xBF1F.name, assets = _0xBF1F.assets } or nil
_0x3E73, _0x8269 = true, os.clock()
end
local function _0xEB98()
_0x6DB8 = nil
_0xEA9C(nil)
if _0xCEB7 then
for _0xDA08, _0x4FE3 in pairs(_0xCEB7) do
if _0xDA08.Parent then
_0xDA08.AnimationId = _0x4FE3
end
end
_0x4400()
end
_0x6C61()
end
local _0x6330 = false
local function _0xDD96(_0xBF1F)
if _0x6330 then
return
end
_0x6330 = true
task.spawn(function()
if not _0x0957[_0xBF1F.id] and not _0x6242[_0xA6A2(_0xBF1F.name)] then
_0xA9C1(string.char(76,111,97,100,105,110,103), _0xBF1F.name)
end
local _0xA4DF = _0x4485(_0xBF1F)
_0x6330 = false
if not _0xA4DF then
_0xA9C1(string.char(70,114,101,101,32,97,110,105,109,115),string.char(99,97,110,39,116,32,108,111,97,100,32,112,97,99,107,32,40,110,111,32,71,101,116,79,98,106,101,99,116,115,32,105,110,32,101,120,101,99,117,116,111,114,41))
return
end
local _0xC3CF = _0xFFF1()
if _0xC3CF and _0xC3CF.RigType == Enum.HumanoidRigType.R6 and not _0xBF1F.name:find(string.char(82,54)) then
_0xA9C1(string.char(82,54,32,97,118,97,116,97,114),string.char(109,111,115,116,32,112,97,99,107,115,32,97,114,101,32,109,97,100,101,32,102,111,114,32,82,49,53))
end
if _0x73BF(_0xA4DF) then
_0x6DB8 = { _0x4FE3 = _0xBF1F.id, _0xA4DF = _0xA4DF }
_0xEA9C(_0xBF1F)
_0xA9C1(string.char(65,110,105,109,97,116,105,111,110,32,112,97,99,107), _0xBF1F.name)
_0x6C61()
end
end)
end
local _0xD853
local _0xAC73 = {}
local function _0xE892()
if _0xD853 then
pcall(function()
_0xD853:Stop(0.2)
end)
_0xD853 = nil
end
end
local function _0xA759(_0xDF88)
local _0xC3CF = _0xFFF1()
if not _0xC3CF then
return
end
task.spawn(function()
local _0x01C8 = _0xAC73[_0xDF88.id]
if not _0x01C8 then
local _0xDFBA = _0x201C(_0xDF88.id)
_0x01C8 = _0xDFBA[1] and _0xDFBA[1].id
_0xAC73[_0xDF88.id] = _0x01C8
end
_0xE892()
if _0x01C8 then
local _0x2EDF = Instance.new(string.char(65,110,105,109,97,116,105,111,110))
_0x2EDF.AnimationId = _0x01C8
local _0xB272 = _0xC3CF:FindFirstChildOfClass(string.char(65,110,105,109,97,116,111,114)) or _0xC3CF
local _0xD828, _0xC220 = pcall(function()
return _0xB272:LoadAnimation(_0x2EDF)
end)
if _0xD828 and _0xC220 then
_0xC220.Priority = Enum.AnimationPriority.Action
_0xC220.Looped = true
_0xC220:Play(0.2)
_0xD853 = _0xC220
_0xA9C1(string.char(69,109,111,116,101), _0xDF88.name)
return
end
end
local _0xD828, _0x624F, _0xC220 = pcall(function()
return _0xC3CF:PlayEmoteAndGetAnimTrackById(_0xDF88.id)
end)
if _0xD828 and _0xC220 then
_0xD853 = _0xC220
_0xA9C1(string.char(69,109,111,116,101), _0xDF88.name)
else
_0xA9C1(string.char(70,114,101,101,32,97,110,105,109,115),string.char(99,97,110,39,116,32,112,108,97,121,58,32).. _0xDF88.name)
end
end)
end
_0xB9EB(_0xB197.Heartbeat, function()
if _0xD853 then
local _0xC3CF = _0xFFF1()
if _0xC3CF and _0xC3CF.MoveDirection.Magnitude > 0.1 then
_0xE892()
end
end
end)
_0x1331 = function()
_0xE892()
_0xEB98()
end
_0x04EF(string.char(70,114,101,101,32,97,110,105,109,115,47,112,97,99,107), function(_0xEB0B)
if type(_0xEB0B) ==string.char(116,97,98,108,101)and _0xEB0B.id then
task.spawn(function()
local _0xD95E = _0x8E3D.Character or _0x8E3D.CharacterAdded:Wait()
_0xD95E:WaitForChild(string.char(65,110,105,109,97,116,101), 10)
task.wait(0.5)
if _0x09F2[string.char(70,114,101,101,32,97,110,105,109,115,47,112,97,99,107)] == _0xEB0B and not _0x6DB8 then
_0xDD96(_0xEB0B)
end
end)
elseif _0xEB0B == false then
_0xEB98()
end
end, function()
return _0x09F2[string.char(70,114,101,101,32,97,110,105,109,115,47,112,97,99,107)] or false
end, false)
_0xB9EB(_0x8E3D.CharacterAdded, function(_0xD95E)
_0xCEB7 = nil
_0xD853 = nil
if not _0x6DB8 then
return
end
_0xD95E:WaitForChild(string.char(65,110,105,109,97,116,101), 10)
task.wait(0.3)
_0x73BF(_0x6DB8.slots)
end)
local _0x46D0 = _0x41F8.page
_0x41F8.custom = true
_0x41F8.title.Visible = false
_0x41F8.desc.Visible = false
_0x46D0.ScrollingEnabled = false
_0x46D0.Active = false
_0x46D0.ScrollBarThickness = 0
_0x46D0.CanvasSize = UDim2.new()
local _0xF421 =string.char(66,117,110,100,108,101,115)local _0x0BD7 =string.char(65,108,108)local _0xCA7C =""local _0x3A4A
local _0x609D
local _0xDBC6 = _0x504E(string.char(70,114,97,109,101), { Size = UDim2.new(1, 0, 0, 30), BackgroundTransparency = 1, ZIndex = 3, Parent = _0x46D0 })
local _0x5FEC, _0xC867 = {}, 0
for _0x624F, sub in ipairs({string.char(66,117,110,100,108,101,115),string.char(69,109,111,116,101,115),string.char(70,97,118,115)}) do
local _0xE496 = sub == _0xF421
local _0xCDE9 = _0x48B6:GetTextSize(sub, 13, Enum.Font.GothamMedium, Vector2.new(200, 40)).X + 34
local _0xBF1F = _0x504E(string.char(84,101,120,116,66,117,116,116,111,110), {
Text ="",
AutoButtonColor = false,
BackgroundColor3 = Color3.fromRGB(90, 90, 90),
BackgroundTransparency = _0xE496 and 0.35 or 0.85,
Position = UDim2.fromOffset(_0xC867, 0),
Size = UDim2.fromOffset(_0xCDE9, 30),
ZIndex = 3,
Parent = _0xDBC6,
})
_0xF153(_0xBF1F, 9)
local _0xA65E = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.new(0, 13, 0.5, 0),
Size = UDim2.fromOffset(_0xE496 and 6 or 0, _0xE496 and 6 or 0),
BackgroundColor3 = _0xA925,
BorderSizePixel = 0,
ZIndex = 4,
Parent = _0xBF1F,
})
_0x9A43(_0xA65E)
local _0x3E3E = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text = sub,
Font = Enum.Font.GothamMedium,
TextSize = 13,
TextColor3 = _0xE496 and _0xA925 or _0x2E02,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(_0xE496 and 22 or 17, 0),
Size = UDim2.new(1, -22, 1, 0),
ZIndex = 4,
Parent = _0xBF1F,
})
_0x5FEC[sub] = { _0xBF1F = _0xBF1F, _0x1B16 = _0xA65E, _0xFE81 = _0x3E3E }
_0xC867 += _0xCDE9 + 4
end
local function _0x922F(_0xDF1D, _0x3242, _0x428B, placeholder, withIcon)
local _0xF0CB = _0x504E(string.char(70,114,97,109,101), {
Position = _0x3242,
Size = _0x428B,
BackgroundColor3 = Color3.fromRGB(22, 22, 22),
ZIndex = 3,
Parent = _0xDF1D,
})
_0xF153(_0xF0CB, 9)
local _0x61F0 = _0x24BA(_0xF0CB)
local _0x4323 = 12
if withIcon then
local _0x2C1E = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0, 0.5),
Position = UDim2.new(0, 10, 0.5, 0),
Size = UDim2.fromOffset(12, 12),
BackgroundTransparency = 1,
ZIndex = 4,
Parent = _0xF0CB,
})
local _0x6CBE = _0x504E(string.char(70,114,97,109,101), { Size = UDim2.fromOffset(8, 8), BackgroundTransparency = 1, ZIndex = 4, Parent = _0x2C1E })
_0x9A43(_0x6CBE)
_0x504E(string.char(85,73,83,116,114,111,107,101), { Color = _0x2E02, Thickness = 1.6, Parent = _0x6CBE })
_0x9E1D(_0x2C1E, 7, 7, 11, 11, 1.6).ZIndex = 4
_0x4323 = 30
end
local _0x025A = _0x504E(string.char(84,101,120,116,66,111,120), {
Text ="",
PlaceholderText = placeholder,
PlaceholderColor3 = _0xD6E4,
Font = Enum.Font.Gotham,
TextSize = 12,
TextColor3 = _0xA925,
TextXAlignment = Enum.TextXAlignment.Left,
TextTruncate = Enum.TextTruncate.AtEnd,
ClearTextOnFocus = false,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(_0x4323, 0),
Size = UDim2.new(1, -_0x4323 - 8, 1, 0),
ZIndex = 4,
Parent = _0xF0CB,
})
_0xB9EB(_0x025A.Focused, function()
_0x0903(_0x61F0, 0.2, { Color = Color3.fromRGB(120, 120, 120) })
end)
_0xB9EB(_0x025A.FocusLost, function()
_0x0903(_0x61F0, 0.2, { Color = _0x2F00 })
end)
return _0x025A
end
local _0x75DC = _0x922F(_0xDBC6, UDim2.fromOffset(_0xC867 + 6, 0), UDim2.new(1, -(_0xC867 + 6), 0, 30),string.char(83,101,97,114,99,104,46,46,46), true)
local _0xA2FF = _0x922F(_0x46D0, UDim2.fromOffset(0, 38), UDim2.new(1, -72, 0, 34),string.char(83,101,97,114,99,104,32,112,97,99,107,115,32,111,114,32,112,97,115,116,101,32,98,117,110,100,108,101,32,73,68,32,47,32,108,105,110,107), false)
local _0x115E = _0x504E(string.char(84,101,120,116,66,117,116,116,111,110), {
Text =string.char(71,111),
Font = Enum.Font.GothamMedium,
TextSize = 13,
TextColor3 = Color3.fromRGB(20, 60, 16),
BackgroundColor3 = _0xA4C6,
AutoButtonColor = false,
AnchorPoint = Vector2.new(1, 0),
Position = UDim2.new(1, 0, 0, 38),
Size = UDim2.fromOffset(64, 34),
ZIndex = 3,
Parent = _0x46D0,
})
_0xF153(_0x115E, 9)
_0xB9EB(_0x115E.MouseEnter, function()
_0x0903(_0x115E, 0.15, { BackgroundColor3 = Color3.fromRGB(130, 240, 118) })
end)
_0xB9EB(_0x115E.MouseLeave, function()
_0x0903(_0x115E, 0.15, { BackgroundColor3 = _0xA4C6 })
end)
local _0x45F4 = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text ="",
Font = Enum.Font.Gotham,
TextSize = 12,
TextColor3 = _0x2E02,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(2, 80),
Size = UDim2.new(0.45, 0, 0, 18),
ZIndex = 3,
Parent = _0x46D0,
})
local _0x5742 = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(1, 0),
Position = UDim2.new(1, 0, 0, 79),
Size = UDim2.new(0.62, 0, 0, 20),
BackgroundTransparency = 1,
ZIndex = 3,
Parent = _0x46D0,
})
_0x504E(string.char(85,73,76,105,115,116,76,97,121,111,117,116), {
FillDirection = Enum.FillDirection.Horizontal,
HorizontalAlignment = Enum.HorizontalAlignment.Right,
VerticalAlignment = Enum.VerticalAlignment.Center,
Padding = UDim.new(0, 4),
SortOrder = Enum.SortOrder.LayoutOrder,
Parent = _0x5742,
})
local function _0xEB42(_0xEE8A, _0x35E7, _0xE496, _0x9B1A, _0xDBC8)
local _0xCDE9 = _0x48B6:GetTextSize(_0xEE8A, 11, Enum.Font.GothamMedium, Vector2.new(200, 40)).X + 16
local _0xBF1F = _0x504E(string.char(84,101,120,116,66,117,116,116,111,110), {
Text = _0xEE8A,
Font = Enum.Font.GothamMedium,
TextSize = 11,
TextColor3 = (_0xE496 or _0x9B1A) and _0xA925 or _0x2E02,
BackgroundColor3 = _0x9B1A and _0x6274 or Color3.fromRGB(90, 90, 90),
BackgroundTransparency = _0x9B1A and 0 or (_0xE496 and 0.35 or 1),
AutoButtonColor = false,
Size = UDim2.fromOffset(_0xCDE9, 20),
LayoutOrder = _0x35E7,
ZIndex = 4,
Parent = _0x5742,
})
_0xF153(_0xBF1F, 6)
if _0x9B1A then
_0x24BA(_0xBF1F)
end
_0xB9EB(_0xBF1F.MouseEnter, function()
if not _0xE496 then
_0x0903(_0xBF1F, 0.15, { TextColor3 = _0xA925 })
end
end)
_0xB9EB(_0xBF1F.MouseLeave, function()
if not _0xE496 and not _0x9B1A then
_0x0903(_0xBF1F, 0.15, { TextColor3 = _0x2E02 })
end
end)
_0xB9EB(_0xBF1F.MouseButton1Click, _0xDBC8)
end
local function _0x1E5C()
for _0x624F, _0x242F in ipairs(_0x5742:GetChildren()) do
if _0x242F:IsA(string.char(71,117,105,66,117,116,116,111,110)) then
_0x242F:Destroy()
end
end
local _0xE9D1 = 0
if _0x3A4A then
_0xE9D1 += 1
_0xEB42(string.char(66,97,99,107), _0xE9D1, false, true, function()
_0x3A4A = nil
_0xA2FF.Text =""_0x609D()
end)
elseif _0xF421 ~=string.char(70,97,118,115)then
for _0x624F, _0xF0CB in ipairs({string.char(65,108,108),string.char(78,101,119,32,50,48,50,54),string.char(80,111,112,117,108,97,114)}) do
_0xE9D1 += 1
_0xEB42(_0xF0CB, _0xE9D1, _0x0BD7 == _0xF0CB, false, function()
_0x0BD7 = _0xF0CB
_0x609D()
end)
end
end
if _0xF421 ~=string.char(69,109,111,116,101,115)then
_0xE9D1 += 1
_0xEB42(string.char(82,101,115,101,116), _0xE9D1, false, true, function()
_0xEB98()
_0xA9C1(string.char(70,114,101,101,32,97,110,105,109,115),string.char(100,101,102,97,117,108,116,32,97,110,105,109,97,116,105,111,110,115))
end)
end
if _0xF421 ~=string.char(66,117,110,100,108,101,115)then
_0xE9D1 += 1
_0xEB42(string.char(83,116,111,112), _0xE9D1, false, true, function()
_0xE892()
end)
end
end
local _0xF16F = _0x504E(string.char(83,99,114,111,108,108,105,110,103,70,114,97,109,101), {
Position = UDim2.fromOffset(0, 104),
Size = UDim2.new(1, 0, 1, -104),
Active = true,
ScrollingEnabled = false,
AutomaticCanvasSize = Enum.AutomaticSize.Y,
BackgroundTransparency = 1,
BorderSizePixel = 0,
ScrollBarThickness = 3,
ScrollBarImageColor3 = _0x2E02,
ScrollBarImageTransparency = 0.3,
VerticalScrollBarInset = Enum.ScrollBarInset.Always,
ScrollingDirection = Enum.ScrollingDirection.Y,
ElasticBehavior = Enum.ElasticBehavior.Never,
ClipsDescendants = true,
CanvasSize = UDim2.new(),
ZIndex = 2,
Parent = _0x46D0,
})
_0x504E(string.char(85,73,80,97,100,100,105,110,103), {
PaddingTop = UDim.new(0, 1),
PaddingLeft = UDim.new(0, 1),
PaddingRight = UDim.new(0, 4),
PaddingBottom = UDim.new(0, 140),
Parent = _0xF16F,
})
local _0x0F00 = _0x504E(string.char(85,73,71,114,105,100,76,97,121,111,117,116), {
CellSize = UDim2.new(0.3333333333333333, -6, 0, 160),
CellPadding = UDim2.fromOffset(8, 8),
SortOrder = Enum.SortOrder.LayoutOrder,
Parent = _0xF16F,
})
local _0x7236 = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text ="",
Font = Enum.Font.GothamMedium,
TextSize = 12,
TextColor3 = _0xD6E4,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(0, 144),
Size = UDim2.new(1, 0, 0, 20),
ZIndex = 3,
Parent = _0x46D0,
})
local function _0x0D30(scroller)
local _0xA50B, _0x5B42, _0xC254 = false, nil, 0
local _0xFBB3 = false
local function _0x6151(_0x3242)
local _0x09CD, _0x2675 = scroller.AbsolutePosition, scroller.AbsoluteSize
return _0x3242.X >= _0x09CD.X and _0x3242.X <= _0x09CD.X + _0x2675.X and _0x3242.Y >= _0x09CD.Y and _0x3242.Y <= _0x09CD.Y + _0x2675.Y
end
local function _0xBF83()
return math.max(0, scroller.AbsoluteCanvasSize.Y - scroller.AbsoluteWindowSize.Y)
end
local function _0xE218(_0x3242, input)
if not _0x6151(_0x3242) or _0xBF83() <= 0 then return end
_0xA50B, _0x5B42, _0xC254, _0xFBB3 = true, input, _0x3242.Y, false
end
_0xB9EB(_0x24DA.TouchStarted, function(input)
_0xE218(input.Position, input)
end)
_0xB9EB(_0x24DA.TouchMoved, function(input)
if not _0xA50B or _0x5B42 ~= input then return end
local _0x1466 = input.Position.Y - _0xC254
if math.abs(_0x1466) > 0.1 then
_0xFBB3 = true
_0xC254 = input.Position.Y
scroller.CanvasPosition = Vector2.new(0, math.clamp(scroller.CanvasPosition.Y - _0x1466, 0, _0xBF83()))
end
end)
_0xB9EB(_0x24DA.TouchEnded, function(input)
if input == _0x5B42 then
_0xA50B, _0x5B42 = false, nil
end
end)_0xB9EB(scroller.InputBegan, function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
_0xE218(input.Position, input)
end
end)
_0xB9EB(_0x24DA.InputChanged, function(input)
if not _0xA50B or _0x5B42 == nil or input.UserInputType ~= Enum.UserInputType.MouseMovement then return end
local _0x1466 = input.Position.Y - _0xC254
if math.abs(_0x1466) > 0.1 then
_0xFBB3 = true
_0xC254 = input.Position.Y
scroller.CanvasPosition = Vector2.new(0, math.clamp(scroller.CanvasPosition.Y - _0x1466, 0, _0xBF83()))
end
end)
_0xB9EB(_0x24DA.InputEnded, function(input)
if input == _0x5B42 then _0xA50B, _0x5B42 = false, nil end
end)
end
local function _0x734D()
_0xF16F.CanvasSize = UDim2.fromOffset(0, math.max(_0x0F00.AbsoluteContentSize.Y + 140, _0xF16F.AbsoluteWindowSize.Y + 2))
end
_0x0D30(_0xF16F)
_0xB9EB(_0x0F00:GetPropertyChangedSignal(string.char(65,98,115,111,108,117,116,101,67,111,110,116,101,110,116,83,105,122,101)), _0x734D)
_0xB9EB(_0xF16F:GetPropertyChangedSignal(string.char(65,98,115,111,108,117,116,101,87,105,110,100,111,119,83,105,122,101)), _0x734D)
_0x734D()
local _0x7B8D, _0x2001 = {}, {}
_0x6C61 = function()
for _0x2B4F, _0x61F0 in pairs(_0x2001) do
local _0xE496 = _0x6DB8 and _0x2B4F.kind ==string.char(98)and _0x6DB8.id == _0x2B4F.id
_0x61F0.Color = _0xE496 and _0xA925 or _0x2F00
_0x61F0.Transparency = _0xE496 and 0.1 or 0
end
end
local function _0x523D(_0x2B4F, _0x35E7)
local _0x5C29 = _0x504E(string.char(84,101,120,116,66,117,116,116,111,110), {
Text ="",
AutoButtonColor = false,
BackgroundTransparency = 1,
LayoutOrder = _0x35E7,
ZIndex = 2,
Parent = _0xF16F,
})
table.insert(_0x7B8D, _0x5C29)
local _0x9D21 = _0x504E(string.char(70,114,97,109,101), { Size = UDim2.new(1, 0, 0, 102), BackgroundColor3 = _0x8802, ZIndex = 2, Parent = _0x5C29 })
_0xF153(_0x9D21, 8)
_0x2001[_0x2B4F] = _0x24BA(_0x9D21)
_0x504E(string.char(73,109,97,103,101,76,97,98,101,108), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.new(0.5, 0, 0.5, 4),
Size = UDim2.fromOffset(84, 84),
BackgroundTransparency = 1,
ScaleType = Enum.ScaleType.Fit,
Image = (string.char(114,98,120,116,104,117,109,98,58,47,47,116,121,112,101,61,37,115,38,105,100,61,37,115,38,119,61,49,53,48,38,104,61,49,53,48)):format(_0x2B4F.kind ==string.char(98)andstring.char(66,117,110,100,108,101,84,104,117,109,98,110,97,105,108)orstring.char(65,115,115,101,116), _0xC330(_0x2B4F.id)),
ZIndex = 3,
Parent = _0x9D21,
})
if _0x2B4F.new then
local _0x2168 = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(78,69,87,32,50,48,50,54),
Font = Enum.Font.GothamBold,
TextSize = 9,
TextColor3 = Color3.fromRGB(10, 10, 10),
BackgroundColor3 = _0xA925,
Position = UDim2.fromOffset(6, 6),
Size = UDim2.fromOffset(52, 15),
ZIndex = 4,
Parent = _0x9D21,
})
_0xF153(_0x2168, 5)
end
local _0x302C = _0x504E(string.char(84,101,120,116,66,117,116,116,111,110), {
Text =string.char(73,68),
Font = Enum.Font.GothamBold,
TextSize = 11,
TextColor3 = _0xDC52,
BackgroundTransparency = 1,
AnchorPoint = Vector2.new(1, 0),
Position = UDim2.new(1, -26, 0, 4),
Size = UDim2.fromOffset(20, 18),
ZIndex = 5,
Parent = _0x9D21,
})
_0xB9EB(_0x302C.MouseButton1Click, function()
if setclipboard then
setclipboard(_0xC330(_0x2B4F.id))
_0xA9C1(string.char(67,111,112,105,101,100),string.char(73,68,32).. _0xC330(_0x2B4F.id))
else
_0xA9C1(string.char(73,68), _0xC330(_0x2B4F.id))
end
end)
local _0x94DF = _0x504E(string.char(84,101,120,116,66,117,116,116,111,110), {
Text = _0x4E5C[_0xC185(_0x2B4F)] andstring.char(226,152,133)orstring.char(226,152,134),
Font = Enum.Font.GothamBold,
TextSize = 14,
TextColor3 = _0x4E5C[_0xC185(_0x2B4F)] and _0xA925 or _0x2E02,
BackgroundTransparency = 1,
AnchorPoint = Vector2.new(1, 0),
Position = UDim2.new(1, -4, 0, 3),
Size = UDim2.fromOffset(20, 20),
ZIndex = 5,
Parent = _0x9D21,
})
_0xB9EB(_0x94DF.MouseButton1Click, function()
local _0xD4D9 = _0xC185(_0x2B4F)
if _0x4E5C[_0xD4D9] then
_0x4E5C[_0xD4D9] = nil
_0xA9C1(string.char(70,97,118,115),string.char(114,101,109,111,118,101,100,32).. _0x2B4F.name)
else
_0x4E5C[_0xD4D9] = { _0x7969 = _0x2B4F.kind, _0x4FE3 = _0x2B4F.id, _0x893F = _0x2B4F.name, assets = _0x2B4F.assets }
_0xA9C1(string.char(70,97,118,115),string.char(97,100,100,101,100,32).. _0x2B4F.name)
end
_0xAF5F()
_0x94DF.Text = _0x4E5C[_0xD4D9] andstring.char(226,152,133)orstring.char(226,152,134)_0x94DF.TextColor3 = _0x4E5C[_0xD4D9] and _0xA925 or _0x2E02
if _0xF421 ==string.char(70,97,118,115)then
_0x609D()
end
end)
local _0x1788 = _0x504E(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(0, 108),
Size = UDim2.new(1, 0, 1, -108),
BackgroundColor3 = _0xDA2D,
ZIndex = 2,
Parent = _0x5C29,
})
_0xF153(_0x1788, 8)
_0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text = _0x2B4F.name:upper(),
Font = Enum.Font.GothamBold,
TextSize = 11,
TextColor3 = _0xA925,
TextWrapped = true,
TextTruncate = Enum.TextTruncate.AtEnd,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(6, 0),
Size = UDim2.new(1, -12, 1, 0),
ZIndex = 3,
Parent = _0x1788,
})
_0xB9EB(_0x5C29.MouseEnter, function()
_0x0903(_0x9D21, 0.15, { BackgroundColor3 = _0xF29A })
end)
_0xB9EB(_0x5C29.MouseLeave, function()
_0x0903(_0x9D21, 0.15, { BackgroundColor3 = _0x8802 })
end)
_0xB9EB(_0x5C29.MouseButton1Click, function()
if _0x2B4F.kind ==string.char(98)then
_0xDD96(_0x2B4F)
else
_0xA759(_0x2B4F)
end
end)
end
local _0xDFBA, _0x9A05 = {}, 0
local function _0x7C74()
local _0x3133 = math.min(#_0xDFBA, _0x9A05 + 30)
for _0x269E = _0x9A05 + 1, _0x3133 do
_0x523D(_0xDFBA[_0x269E], _0x269E)
end
_0x9A05 = _0x3133
_0x6C61()
_0x734D()
end
_0xB9EB(_0xF16F:GetPropertyChangedSignal(string.char(67,97,110,118,97,115,80,111,115,105,116,105,111,110)), function()
if _0x9A05 < #_0xDFBA and _0xF16F.CanvasPosition.Y + _0xF16F.AbsoluteWindowSize.Y >= math.max(0, _0xF16F.CanvasSize.Y.Offset - 350) then
_0x7C74()
end
end)
local function _0x3F9B()
local _0x1369
if _0x3A4A and _0x3A4A.mode == _0xF421 then
_0x1369 = _0x3A4A.items
elseif _0xF421 ==string.char(66,117,110,100,108,101,115)then
_0x1369 = _0x84DD
elseif _0xF421 ==string.char(69,109,111,116,101,115)then
_0x1369 = _0xAF35
else
_0x1369 = _0xD116()
end
local _0x1AC6 = {}
for _0x624F, _0x2B4F in ipairs(_0x1369) do
local _0x807D = _0x3A4A or _0xF421 ==string.char(70,97,118,115)or _0x0BD7 ==string.char(65,108,108)or _0x0BD7 ==string.char(78,101,119,32,50,48,50,54)and _0x2B4F.new or _0x0BD7 ==string.char(80,111,112,117,108,97,114)and not _0x2B4F.new
if _0x807D and (_0xCA7C ==""or _0x2B4F.name:lower():find(_0xCA7C, 1, true)) then
table.insert(_0x1AC6, _0x2B4F)
end
end
return _0x1AC6
end
_0x609D = function()
for _0x624F, _0x242F in ipairs(_0x7B8D) do
_0x242F:Destroy()
end
table.clear(_0x7B8D)
table.clear(_0x2001)
_0xDFBA = _0x3F9B()
_0x9A05 = 0
_0xF16F.CanvasPosition = Vector2.zero
_0x7C74()
if _0x3A4A and _0x3A4A.mode == _0xF421 then
_0x45F4.Text =string.char(82,101,115,117,108,116,115,58,32).. #_0xDFBA
elseif _0xF421 ==string.char(66,117,110,100,108,101,115)then
_0x45F4.Text =string.char(66,117,110,100,108,101,115,32,108,111,97,100,101,100,58,32).. #_0x84DD
elseif _0xF421 ==string.char(69,109,111,116,101,115)then
_0x45F4.Text =string.char(69,109,111,116,101,115,32,108,111,97,100,101,100,58,32).. #_0xAF35
else
_0x45F4.Text =string.char(70,97,118,111,114,105,116,101,115,58,32).. #_0xDFBA
end
_0x7236.Text = #_0xDFBA == 0 and (_0xF421 ==string.char(70,97,118,115)andstring.char(116,97,112,32,226,152,134,32,111,110,32,97,110,121,32,99,97,114,100,32,116,111,32,97,100,100,32,105,116,32,104,101,114,101)orstring.char(110,111,116,104,105,110,103,32,102,111,117,110,100)) or""_0x1E5C()
end
local function _0xEA78(_0x5244)
if _0x5244 == _0xF421 then
return
end
local _0xF7C5 = _0x5FEC[_0xF421]
_0x0903(_0xF7C5.b, 0.25, { BackgroundTransparency = 0.85 })
_0x0903(_0xF7C5.dot, 0.25, { Size = UDim2.fromOffset(0, 0) })
_0x0903(_0xF7C5.lbl, 0.25, { TextColor3 = _0x2E02, Position = UDim2.fromOffset(17, 0) })
_0xF421 = _0x5244
local _0x09CD = _0x5FEC[_0x5244]
_0x0903(_0x09CD.b, 0.25, { BackgroundTransparency = 0.35 })
_0x0903(_0x09CD.dot, 0.25, { Size = UDim2.fromOffset(6, 6) }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
_0x0903(_0x09CD.lbl, 0.25, { TextColor3 = _0xA925, Position = UDim2.fromOffset(22, 0) })
_0x3A4A = nil
_0xA2FF.Text =""_0xA2FF.PlaceholderText = _0x5244 ==string.char(69,109,111,116,101,115)andstring.char(83,101,97,114,99,104,32,101,109,111,116,101,115,32,111,114,32,112,97,115,116,101,32,101,109,111,116,101,32,73,68,32,47,32,108,105,110,107)orstring.char(83,101,97,114,99,104,32,112,97,99,107,115,32,111,114,32,112,97,115,116,101,32,98,117,110,100,108,101,32,73,68,32,47,32,108,105,110,107)_0x609D()
end
for sub, _0x09CD in pairs(_0x5FEC) do
_0xB9EB(_0x09CD.b.MouseButton1Click, function()
_0xEA78(sub)
end)
end
_0xB9EB(_0x75DC:GetPropertyChangedSignal(string.char(84,101,120,116)), function()
_0xCA7C = _0x75DC.Text:lower():gsub(string.char(94,37,115,43),""):gsub(string.char(37,115,43,36),"")
_0x609D()
end)
local function _0xA1E7(_0xBC35)
if _0xFD0C[_0xBC35] then
return _0xFD0C[_0xBC35]
end
local _0xD828, _0xA65E = pcall(function()
return _0x2614:GetItemDetailsAsync(_0xBC35, Enum.AvatarItemType.Bundle)
end)
return if _0xD828 and _0xA65E and _0xA65E.BundledItems then {
_0x4FE3 = _0xBC35,
_0x893F = _0xA65E.Name orstring.char(66,117,110,100,108,101,32).. _0xC330(_0xBC35),
assets = _0xBAF4(_0xA65E.BundledItems),
new = false,
_0x7969 =string.char(98),
} else if _0xD828 and _0xA65E and _0xA65E.Items then {
_0x4FE3 = _0xBC35,
_0x893F = _0xA65E.Name orstring.char(66,117,110,100,108,101,32).. _0xC330(_0xBC35),
assets = _0xBAF4(_0xA65E.Items),
new = false,
_0x7969 =string.char(98),
} else nil
end
local _0x7D72 = false
local function _0x2A19()
local _0xEE8A = _0xA2FF.Text:gsub(string.char(94,37,115,43),""):gsub(string.char(37,115,43,36),"")
if _0xEE8A ==""then
_0x3A4A = nil
_0x609D()
return
end
if _0x7D72 then
return
end
_0x7D72 = true
local _0x5244 = _0xF421 ==string.char(70,97,118,115)andstring.char(66,117,110,100,108,101,115)or _0xF421
task.spawn(function()
local _0xBC35 = tonumber(_0xEE8A:match(string.char(40,37,100,37,100,37,100,37,100,37,100,43,41)))
if _0xBC35 then
if _0x5244 ==string.char(66,117,110,100,108,101,115)then
local _0xBF1F = _0xA1E7(_0xBC35)
if _0xBF1F then
_0xFD0C[_0xBC35] = _0xFD0C[_0xBC35] or _0xBF1F
_0x3A4A = { _0xF421 =string.char(66,117,110,100,108,101,115), _0x0E34 = { _0xBF1F } }
if _0xF421 ~=string.char(66,117,110,100,108,101,115)then
_0xEA78(string.char(66,117,110,100,108,101,115))
end
_0x609D()
_0xDD96(_0xBF1F)
else
_0xA9C1(string.char(70,114,101,101,32,97,110,105,109,115),string.char(98,117,110,100,108,101,32).. _0xC330(_0xBC35) ..string.char(32,110,111,116,32,102,111,117,110,100))
end
else
local _0xDF88 = _0x2EFA[_0xBC35] or { _0x4FE3 = _0xBC35, _0x893F =string.char(69,109,111,116,101,32).. _0xC330(_0xBC35), _0x7969 =string.char(101)}
_0x3A4A = { _0xF421 =string.char(69,109,111,116,101,115), _0x0E34 = { _0xDF88 } }
_0x609D()
_0xA759(_0xDF88)
end
else
_0x45F4.Text =string.char(83,101,97,114,99,104,105,110,103,46,46,46)local _0x30C9 = CatalogSearchParams.new()
_0x30C9.SearchKeyword = _0xEE8A
_0x30C9.Limit = 60
_0x30C9.IncludeOffSale = true
if _0x5244 ==string.char(69,109,111,116,101,115)then
_0x30C9.AssetTypes = { Enum.AvatarAssetType.EmoteAnimation }
else
_0x30C9.BundleTypes = { Enum.BundleType.Animations }
end
local _0xD828, _0xDA31 = pcall(function()
return _0x2614:SearchCatalogAsync(_0x30C9)
end)
if _0xD828 and _0xDA31 then
local _0x0E34 = {}
for _0x624F, _0x00EA in ipairs(_0xDA31:GetCurrentPage()) do
if _0x5244 ==string.char(69,109,111,116,101,115)then
table.insert(_0x0E34, _0x2EFA[_0x00EA.Id] or { _0x4FE3 = _0x00EA.Id, _0x893F = _0x00EA.Name, _0x7969 =string.char(101)})
else
local _0xBF1F = _0xFD0C[_0x00EA.Id]
if not _0xBF1F then
_0xBF1F = { _0x4FE3 = _0x00EA.Id, _0x893F = _0x00EA.Name, assets = _0xBAF4(_0x00EA.BundledItems), new = false, _0x7969 =string.char(98)}
_0xFD0C[_0x00EA.Id] = _0xBF1F
end
table.insert(_0x0E34, _0xBF1F)
end
end
_0x3A4A = { _0xF421 = _0x5244, _0x0E34 = _0x0E34 }
if _0xF421 ~= _0x5244 then
_0xEA78(_0x5244)
end
_0x609D()
else
_0x3A4A = nil
_0x75DC.Text = _0xEE8A
_0xA9C1(string.char(83,101,97,114,99,104),string.char(99,97,116,97,108,111,103,32,111,102,102,108,105,110,101,44,32,102,105,108,116,101,114,101,100,32,108,111,99,97,108,32,108,105,115,116))
end
end
_0x7D72 = false
end)
end
_0xB9EB(_0x115E.MouseButton1Click, _0x2A19)
_0xB9EB(_0xA2FF.FocusLost, function(enter)
if enter then
_0x2A19()
end
end)
_0x609D()
task.spawn(function()
local function _0x503C(_0x1B5E)
local _0x30C9 = CatalogSearchParams.new()
_0x30C9.SortType = Enum.CatalogSortType.RecentlyCreated
_0x30C9.Limit = 120
_0x1B5E(_0x30C9)
local _0xD828, _0xDA31 = pcall(function()
return _0x2614:SearchCatalogAsync(_0x30C9)
end)
return _0xD828 and _0xDA31 and _0xDA31:GetCurrentPage() or {}
end
local _0x6B15
for _0x269E, _0xBF1F in ipairs(_0x84DD) do
if _0xBF1F.new then
_0x6B15 = _0x269E
break
end
end
_0x6B15 = _0x6B15 or #_0x84DD + 1
local _0x4B98 = 0
for _0x624F, _0x00EA in ipairs(_0x503C(function(_0x09CD)
_0x09CD.BundleTypes = { Enum.BundleType.Animations }
end)) do
local _0x624F, _0xFCC4 = _0xAB14(_0x00EA.Id, _0x00EA.Name, _0xBAF4(_0x00EA.BundledItems), true, _0x6B15)
if _0xFCC4 then
_0x6B15 += 1
_0x4B98 += 1
end
end
local _0xE6F9, _0x3242 = 0, 1
for _0x624F, _0x00EA in ipairs(_0x503C(function(_0x09CD)
_0x09CD.AssetTypes = { Enum.AvatarAssetType.EmoteAnimation }
end)) do
if not _0x2EFA[_0x00EA.Id] then
local _0xDF88 = { _0x4FE3 = _0x00EA.Id, _0x893F = _0x00EA.Name, new = true, _0x7969 =string.char(101)}
_0x2EFA[_0x00EA.Id] = _0xDF88
table.insert(_0xAF35, _0x3242, _0xDF88)
_0x3242 += 1
_0xE6F9 += 1
end
end
if _0x4B98 + _0xE6F9 > 0 then
if not _0x3A4A and _0xF16F.CanvasPosition.Y < 5 then
_0x609D()
else
_0x45F4.Text = _0xF421 ==string.char(69,109,111,116,101,115)andstring.char(69,109,111,116,101,115,32,108,111,97,100,101,100,58,32).. #_0xAF35 or _0xF421 ==string.char(66,117,110,100,108,101,115)andstring.char(66,117,110,100,108,101,115,32,108,111,97,100,101,100,58,32).. #_0x84DD or _0x45F4.Text
end
end
end)
end
do
local _0xF46C = {
_0xE496 = false,
_0xCC3C =string.char(79,116,104,101,114,115),
_0x2250 =string.char(71,104,111,115,116),
_0x15D8 =string.char(83,104,105,109,109,101,114),
custom = Color3.fromHSV(0.999, 0.746, 0.737),
material =string.char(70,111,114,99,101,70,105,101,108,100),
_0x4233 = true,
_0x4C0E = true,
delay = 400,
_0xFD42 = 4,
_0x02F3 = 150,
opacity = 70,
}
local _0xD45F = { ForceField = Enum.Material.ForceField, Neon = Enum.Material.Neon, Glass = Enum.Material.Glass }
local _0xD0EC = Color3.fromRGB(255, 58, 58)
local _0x3F0C = Color3.fromRGB(64, 150, 255)
local _0x763A = CFrame.new(0, -50000, 0)
local _0xB61C = {
Aqua = { Color3.fromRGB(90, 230, 255), Color3.fromRGB(150, 95, 255) },
Sunset = { Color3.fromRGB(255, 170, 80), Color3.fromRGB(255, 60, 150) },
}
local _0xE998
local _0x5E99 = {}
local _0x80F4 = 0
local function _0xD654(_0x09CD)
local _0xA65E = _0x5E99[_0x09CD]
if _0xA65E then
if _0xA65E.folder then
_0xA65E.folder:Destroy()
end
for _0x624F, _0x012C in ipairs(_0xA65E.extra or {}) do
_0x012C:Destroy()
end
end
_0x5E99[_0x09CD] = nil
end
local function _0x335E()
for _0x09CD in pairs(_0x5E99) do
_0xD654(_0x09CD)
end
if _0xE998 then
_0xE998:Destroy()
end
_0xE998 = nil
end
local function _0xBB8B(_0x09CD)
if _0xF46C.target ==string.char(83,101,108,102)then
return _0x09CD == _0x8E3D
end
if _0xF46C.target ==string.char(79,116,104,101,114,115)then
return _0x09CD ~= _0x8E3D
end
return true
end
local function _0x1B5E(_0xBCE8, mat)
_0xBCE8.Anchored = true
_0xBCE8.CanCollide = false
_0xBCE8.CanTouch = false
_0xBCE8.CanQuery = false
_0xBCE8.CastShadow = false
_0xBCE8.Material = mat or _0xD45F[_0xF46C.material] or Enum.Material.ForceField
_0xBCE8.Transparency = 1
_0xBCE8.CFrame = _0x763A
return _0xBCE8
end
local function _0x05CD(_0x1369, _0xDF1D)
local _0xD828, _0xBCE8 = pcall(function()
return _0x1369:Clone()
end)
if not _0xD828 or not _0xBCE8 then
_0xBCE8 = Instance.new(string.char(80,97,114,116))
_0xBCE8.Size = _0x1369.Size
end
for _0x624F, _0x242F in ipairs(_0xBCE8:GetChildren()) do
if not _0x242F:IsA(string.char(68,97,116,97,77,111,100,101,108,77,101,115,104)) then
_0x242F:Destroy()
end
end
pcall(function()
_0xBCE8.TextureID =""end)
_0x1B5E(_0xBCE8)
_0xBCE8.Parent = _0xDF1D
return _0xBCE8
end
local function _0x3A38(_0x09CD)
local _0xD95E, _0xF5BE = _0x09CD.Character, _0x09CD:FindFirstChildOfClass(string.char(66,97,99,107,112,97,99,107))
local function _0x06D3(_0xE9D1)
return _0xD95E and _0xD95E:FindFirstChild(_0xE9D1) or _0xF5BE and _0xF5BE:FindFirstChild(_0xE9D1)
end
if _0x06D3(string.char(75,110,105,102,101)) then
return _0xD0EC
end
if _0x06D3(string.char(71,117,110)) then
return _0x3F0C
end
end
local function _0x97EF(_0xA65E, _0xF0CB, _0x634C)
local _0x6475 = if _0xF46C.color ==string.char(82,97,105,110,98,111,119)then 46109 else if _0xF46C.color ==string.char(87,104,105,116,101)then 39828 else if _0xF46C.color ==string.char(82,111,108,101)then 5129 else if _0xF46C.color ==string.char(67,117,115,116,111,109)then 11958 else 31519
if _0x6475 == 11958 then
local _0x6555 = 0.5 + 0.5 * math.sin(_0x634C * 3 - _0xF0CB * 5)
return _0xF46C.custom:Lerp(Color3.new(0, 0, 0), _0xF0CB * 0.45):Lerp(_0xA925, _0x6555 * 0.18)
elseif _0x6475 == 39828 then
return _0xA925
elseif _0x6475 == 46109 then
return Color3.fromHSV((_0x634C * 0.25 + _0xF0CB * 0.6) % 1, 0.6, 1)
elseif _0x6475 == 5129 then
return _0xA65E.role or _0xA925
end
local _0x522D = _0xB61C[_0xF46C.color]
if _0x522D then
local _0x2DD2 = math.clamp(_0xF0CB + 0.15 * math.sin(_0x634C * 2.5 - _0xF0CB * 4), 0, 1)
return _0x522D[1]:Lerp(_0x522D[2], _0x2DD2)
end
local _0xEB0B = 0.5 + 0.5 * math.sin(_0x634C * 3 - _0xF0CB * 5)
local _0x242F = math.floor(90 + _0xEB0B * 165)
return Color3.fromRGB(_0x242F, _0x242F, _0x242F)
end
local function _0xD4D9()
return _0xF46C.style .. _0xF46C.count .. _0xF46C.material .. tostring(_0xF46C.outline) .. tostring(_0xF46C.marker)
end
local function _0x8243(_0x09CD, _0xD95E)
local _0xA65E = {
_0xD95E = _0xD95E,
_0xD4D9 = _0xD4D9(),
_0xE7E9 = {},
ghosts = {},
_0x0341 = {},
extra = {},
_0x0255 = 0,
_0xE998 = _0x504E(string.char(77,111,100,101,108), { Name = _0x09CD.Name, Parent = _0xE998 }),
}
for _0x624F, _0x6F67 in ipairs(_0xD95E:GetChildren()) do
if _0x6F67:IsA(string.char(66,97,115,101,80,97,114,116)) and _0x6F67.Name ~=string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)then
table.insert(_0xA65E.parts, _0x6F67)
end
end
for _0x269E = 1, _0xF46C.count do
local _0xBCE8 = { _0x0255 = 0 }
if _0xF46C.style ==string.char(71,104,111,115,116)then
_0xBCE8.map = {}
for _0x624F, _0x1369 in ipairs(_0xA65E.parts) do
_0xBCE8.map[_0x1369] = _0x05CD(_0x1369, _0xA65E.folder)
end
else
_0xBCE8.dot = _0x1B5E(Instance.new(string.char(80,97,114,116)))
_0xBCE8.dot.Shape = Enum.PartType.Ball
_0xBCE8.dot.Parent = _0xA65E.folder
_0xBCE8.link = _0x1B5E(Instance.new(string.char(80,97,114,116)))
_0xBCE8.link.Parent = _0xA65E.folder
end
_0xA65E.ghosts[_0x269E] = _0xBCE8
end
if _0xF46C.outline then
_0xA65E.hl = _0x504E(string.char(72,105,103,104,108,105,103,104,116), {
Adornee = _0xA65E.folder,
DepthMode = Enum.HighlightDepthMode.Occluded,
FillTransparency = 1,
OutlineTransparency = 1,
Parent = _0xA65E.folder,
})
end
if _0xF46C.marker then
_0xA65E.ring = _0x1B5E(Instance.new(string.char(80,97,114,116)), Enum.Material.Neon)
_0xA65E.ring.Shape = Enum.PartType.Cylinder
_0xA65E.ring.Size = Vector3.new(0.06, 3.6, 3.6)
_0xA65E.ring.Parent = _0xE998
table.insert(_0xA65E.extra, _0xA65E.ring)
_0xA65E.disc = _0x1B5E(Instance.new(string.char(80,97,114,116)), Enum.Material.ForceField)
_0xA65E.disc.Shape = Enum.PartType.Cylinder
_0xA65E.disc.Size = Vector3.new(0.1, 3.2, 3.2)
_0xA65E.disc.Parent = _0xE998
table.insert(_0xA65E.extra, _0xA65E.disc)
end
_0x5E99[_0x09CD] = _0xA65E
return _0xA65E
end
local function _0xD883(_0xE7E9, _0x71F4)
local _0xE9D1 = #_0xE7E9
if _0xE9D1 == 0 then
return
end
if _0x71F4 <= _0xE7E9[1].t then
return _0xE7E9[1], _0xE7E9[1], 0
end
for _0x269E = _0xE9D1, 2, -1 do
local _0xDA08, _0xBF1F = _0xE7E9[_0x269E - 1], _0xE7E9[_0x269E]
if _0xDA08.t <= _0x71F4 then
local _0x2DD2 = math.clamp((_0x71F4 - _0xDA08.t) / math.max(_0xBF1F.t - _0xDA08.t, 0.001), 0, 1)
return _0xDA08, _0xBF1F, _0x2DD2
end
end
return _0xE7E9[_0xE9D1], _0xE7E9[_0xE9D1], 0
end
local _0x397A = RaycastParams.new()
_0x397A.FilterType = Enum.RaycastFilterType.Exclude
_0xB9EB(_0xB197.Heartbeat, function(_0x5D8D)
if not _0xF46C.on then
return
end
local _0x8C28 = os.clock()
local _0x04CE = workspace.CurrentCamera
if not _0x04CE then
return
end
if not _0xE998 or not _0xE998.Parent then
_0xE998 = _0x504E(string.char(70,111,108,100,101,114), { Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,66,97,99,107,84,114,97,99,107), Parent = _0x04CE })
end
local _0x2423 = _0x8C28 - _0x80F4 >= 0.03
if _0x2423 then
_0x80F4 = _0x8C28
end
local _0xE4A0 = _0xF46C.delay / 1000
local _0x8CB6 = _0x04CE.CFrame.Position
local _0xA528 = math.min(_0x5D8D * 8, 1)
local _0x670C = 1 - _0xF46C.opacity / 100
for _0x624F, _0x09CD in ipairs(_0xD101:GetPlayers()) do
local _0xD95E = _0x09CD.Character
local _0xB48C = _0xD95E and _0xD95E:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xC3CF = _0xD95E and _0xD95E:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0xA65E = _0x5E99[_0x09CD]
if not _0xBB8B(_0x09CD) or not _0xB48C or not _0xC3CF or _0xC3CF.Health <= 0 then
if _0xA65E then
_0xD654(_0x09CD)
end
continue
end
if not _0xA65E or _0xA65E.char ~= _0xD95E or _0xA65E.key ~= _0xD4D9() then
_0xD654(_0x09CD)
_0xA65E = _0x8243(_0x09CD, _0xD95E)
end
if _0x2423 then
local _0x933C = { _0x634C = _0x8C28, _0xC6D1 = _0xB48C.CFrame }
if _0xF46C.style ==string.char(71,104,111,115,116)then
_0x933C.cf = {}
for _0x624F, _0x1369 in ipairs(_0xA65E.parts) do
if _0x1369.Parent then
_0x933C.cf[_0x1369] = _0x1369.CFrame
end
end
end
table.insert(_0xA65E.hist, _0x933C)
local _0x3B2A = _0x8C28 - _0xE4A0 - 0.2
while #_0xA65E.hist > 2 and _0xA65E.hist[1].t < _0x3B2A do
table.remove(_0xA65E.hist, 1)
end
if _0xF46C.color ==string.char(82,111,108,101)then
_0xA65E.role = _0x3A38(_0x09CD)
end
end
local _0x5CBA = _0x09CD == _0x8E3D or (_0x8CB6 - _0xB48C.Position).Magnitude <= _0xF46C.dist
_0xA65E.vis += ((_0x5CBA and 1 or 0) - _0xA65E.vis) * _0xA528
local _0x6BE0, _0xEF2A, _0xD828 = _0xD883(_0xA65E.hist, _0x8C28 - _0xE4A0)
local _0x25E1 = _0x6BE0 and _0x6BE0.root:Lerp(_0xEF2A.root, _0xD828)
local _0x25A2 = _0x25E1 and (_0x25E1.Position - _0xB48C.Position).Magnitude > 0.35
if _0xA65E.trail then
local _0x3B50 = {}
for j = 0, 4 do
_0x3B50[#_0x3B50 + 1] = ColorSequenceKeypoint.new(j / 4, _0x97EF(_0xA65E, j / 4, _0x8C28))
end
local _0xC623 = ColorSequence.new(_0x3B50)
local _0x0255 = _0xA65E.vis
local function _0xAFDB(_0x9E0B, _0x9784)
return NumberSequence.new({
NumberSequenceKeypoint.new(0, 1 - (1 - _0x9E0B) * _0x0255),
NumberSequenceKeypoint.new(0.6, 1 - (1 - (_0x9E0B + (_0x9784 - _0x9E0B) * 0.6)) * _0x0255),
NumberSequenceKeypoint.new(1, 1),
})
end
_0xA65E.trail.Color = _0xC623
_0xA65E.trail.Lifetime = _0xE4A0
_0xA65E.trail.Transparency = _0xAFDB(math.min(_0x670C + 0.35, 0.98), 1)
_0xA65E.core.Color = _0xC623
_0xA65E.core.Lifetime = _0xE4A0
_0xA65E.core.Transparency = _0xAFDB(_0x670C * 0.6, 1)
end
local _0xA678 = _0xB48C.Position
local _0x9A05 = false
for _0x269E, _0xBCE8 in ipairs(_0xA65E.ghosts) do
local _0xDA08, _0xBF1F, _0x2DD2 = _0xD883(_0xA65E.hist, _0x8C28 - _0xE4A0 * _0x269E / _0xF46C.count)
local _0xF60D = _0xDA08 and _0xDA08.root:Lerp(_0xBF1F.root, _0x2DD2)
local _0xFBB3 = _0xF60D and (_0xF60D.Position - _0xB48C.Position).Magnitude > 0.35
_0xBCE8.vis += ((_0xFBB3 and _0xA65E.vis > 0.02 and 1 or 0) - _0xBCE8.vis) * _0xA528
local _0xC3F3 = (_0x269E - 1) / math.max(_0xF46C.count - 1, 1)
local _0xC220 = 1 - (1 - (_0x670C + (1 - _0x670C) * 0.75 * _0xC3F3)) * _0xBCE8.vis * _0xA65E.vis
local _0x7F96 = _0x97EF(_0xA65E, _0xC3F3, _0x8C28)
if _0xC220 < 0.99 then
_0x9A05 = true
end
if _0xBCE8.map then
for _0x1369, _0x349C in pairs(_0xBCE8.map) do
local _0x0CFC, _0xDBC8 = _0xDA08 and _0xDA08.cf and _0xDA08.cf[_0x1369], _0xBF1F and _0xBF1F.cf and _0xBF1F.cf[_0x1369]
if _0x0CFC and _0xC220 < 0.99 then
_0x349C.CFrame = _0xDBC8 and _0x0CFC:Lerp(_0xDBC8, _0x2DD2) or _0x0CFC
_0x349C.Color = _0x7F96
_0x349C.Transparency = _0xC220
elseif _0x349C.Transparency < 1 then
_0x349C.Transparency = 1
_0x349C.CFrame = _0x763A
end
end
elseif _0xBCE8.dot then
if _0xF60D and _0xC220 < 0.99 then
local _0x3242 = _0xF60D.Position
local _0x3C5E = 0.9 - 0.5 * _0xC3F3
_0xBCE8.dot.Size = Vector3.one * _0x3C5E
_0xBCE8.dot.CFrame = CFrame.new(_0x3242)
_0xBCE8.dot.Color = _0x7F96
_0xBCE8.dot.Transparency = _0xC220
local _0x02F3 = (_0x3242 - _0xA678).Magnitude
if _0x02F3 > 0.05 then
_0xBCE8.link.Size = Vector3.new(0.12, 0.12, _0x02F3)
_0xBCE8.link.CFrame = CFrame.lookAt((_0x3242 + _0xA678) / 2, _0x3242)
_0xBCE8.link.Color = _0x7F96
_0xBCE8.link.Transparency = math.min(_0xC220 + 0.15, 1)
else
_0xBCE8.link.Transparency = 1
end
_0xA678 = _0x3242
elseif _0xBCE8.dot.Transparency < 1 then
_0xBCE8.dot.Transparency = 1
_0xBCE8.link.Transparency = 1
_0xBCE8.dot.CFrame, _0xBCE8.link.CFrame = _0x763A, _0x763A
end
end
end
if _0xA65E.hl then
local _0xE496 = _0x9A05 and _0xA65E.vis > 0.05
_0xA65E.hl.Enabled = _0xE496
if _0xE496 then
_0xA65E.hl.OutlineColor = _0x97EF(_0xA65E, 0, _0x8C28)
_0xA65E.hl.OutlineTransparency = math.clamp(_0x670C + 0.1, 0, 0.9)
end
end
if _0xA65E.ring then
local _0x0255 = (_0x25A2 and 1 or 0) * _0xA65E.vis
_0xA65E.ringVis = (_0xA65E.ringVis or 0) + (_0x0255 - (_0xA65E.ringVis or 0)) * _0xA528
if _0x25E1 and _0xA65E.ringVis > 0.02 then
_0x397A.FilterDescendantsInstances = { _0xE998, _0xD95E }
local _0x9E39 = workspace:Raycast(_0x25E1.Position, Vector3.new(0, -8, 0), _0x397A)
local _0x546B = _0x9E39 and _0x9E39.Position.Y + 0.05 or _0x25E1.Position.Y - 3
local _0x12EF = CFrame.new(_0x25E1.Position.X, _0x546B, _0x25E1.Position.Z) * CFrame.Angles(0, 0, math.rad(90))
local _0x86D2 = 0.5 + 0.5 * math.sin(_0x8C28 * 4)
local _0x7F96 = _0x97EF(_0xA65E, 1, _0x8C28)
local _0xE157 = 3.2 + _0x86D2 * 0.6
_0xA65E.ring.Size = Vector3.new(0.05, _0xE157, _0xE157)
_0xA65E.ring.CFrame = _0x12EF
_0xA65E.ring.Color = _0x7F96
_0xA65E.ring.Transparency = 1 - (1 - (0.55 + _0x86D2 * 0.25)) * _0xA65E.ringVis
_0xA65E.disc.CFrame = _0x12EF * CFrame.new(0.02, 0, 0)
_0xA65E.disc.Color = _0x7F96
_0xA65E.disc.Transparency = 1 - (1 - _0x670C * 0.5) * _0xA65E.ringVis
elseif _0xA65E.ring.Transparency < 1 then
_0xA65E.ring.Transparency, _0xA65E.disc.Transparency = 1, 1
_0xA65E.ring.CFrame, _0xA65E.disc.CFrame = _0x763A, _0x763A
end
end
end
for _0x09CD in pairs(_0x5E99) do
if not _0x09CD.Parent then
_0xD654(_0x09CD)
end
end
end)
local function _0x3E42(_0x2DD2)
return function(_0xEB0B)
_0xF46C[_0x2DD2] = _0xEB0B
end
end
local _0x61C4 = _0x45F1(_0xD635,string.char(66,97,99,107,84,114,97,99,107),string.char(66,97,99,107,84,114,97,99,107))
_0x61C4:Toggle(string.char(69,110,97,98,108,101),string.char(103,104,111,115,116,115,32,111,102,32,112,97,115,116,32,112,111,115,105,116,105,111,110,115), function(_0xE496)
_0xF46C.on = _0xE496
if not _0xE496 then
_0x335E()
end
_0xA9C1(string.char(66,97,99,107,84,114,97,99,107,58,32).. (_0xE496 andstring.char(79,110)orstring.char(79,102,102)), _0xE496 andstring.char(115,104,111,119,105,110,103,32,112,97,115,116,32,112,111,115,105,116,105,111,110,115)orstring.char(103,104,111,115,116,115,32,114,101,109,111,118,101,100))
end)
_0x61C4:Segmented(string.char(84,97,114,103,101,116), {string.char(83,101,108,102),string.char(79,116,104,101,114,115),string.char(65,108,108)}, _0xF46C.target, _0x3E42(string.char(116,97,114,103,101,116)))
_0x61C4:Segmented(string.char(83,116,121,108,101), {string.char(71,104,111,115,116),string.char(68,111,116,115)}, _0xF46C.style ==string.char(84,114,97,105,108)andstring.char(71,104,111,115,116)or _0xF46C.style, function(_0xEB0B)
_0xF46C.style = _0xEB0B
end)
local _0xFB37 = _0x61C4:Select(string.char(67,111,108,111,114),string.char(82,111,108,101,32,61,32,109,117,114,100,101,114,101,114,32,114,101,100,44,32,115,104,101,114,105,102,102,32,98,108,117,101), {string.char(83,104,105,109,109,101,114),string.char(82,97,105,110,98,111,119),string.char(65,113,117,97),string.char(83,117,110,115,101,116),string.char(87,104,105,116,101),string.char(82,111,108,101),string.char(67,117,115,116,111,109)}, _0xF46C.color, _0x3E42(string.char(99,111,108,111,114)))
_0x61C4:ColorPicker(string.char(67,117,115,116,111,109,32,99,111,108,111,114),string.char(112,105,99,107,32,97,32,99,111,108,111,114,32,45,32,67,111,108,111,114,32,115,119,105,116,99,104,101,115,32,116,111,32,67,117,115,116,111,109), _0xF46C.custom, function(_0x242F)
_0xF46C.custom = _0x242F
if not _0x42B0 and _0xFB37.Get() ~=string.char(67,117,115,116,111,109)then
_0xFB37.Set(string.char(67,117,115,116,111,109))
end
end)
_0x61C4:Select(string.char(77,97,116,101,114,105,97,108),string.char(102,111,114,32,71,104,111,115,116,32,97,110,100,32,68,111,116,115), {string.char(70,111,114,99,101,70,105,101,108,100),string.char(78,101,111,110),string.char(71,108,97,115,115)}, _0xF46C.material, _0x3E42(string.char(109,97,116,101,114,105,97,108)))
local _0x8CF5 = _0x45F1(_0xD635,string.char(69,102,102,101,99,116,115),string.char(66,97,99,107,84,114,97,99,107))
local _0xD060 = _0x8CF5:Toggle(string.char(79,117,116,108,105,110,101),string.char(103,108,111,119,105,110,103,32,101,100,103,101,32,97,114,111,117,110,100,32,116,104,101,32,103,104,111,115,116,115), _0x3E42(string.char(111,117,116,108,105,110,101)))
local _0x63DB = _0x8CF5:Toggle(string.char(77,97,114,107,101,114),string.char(112,117,108,115,105,110,103,32,100,105,115,99,32,97,116,32,116,104,101,32,111,108,100,101,115,116,32,112,111,115,105,116,105,111,110), _0x3E42(string.char(109,97,114,107,101,114)))
_0xD060.Set(true, true)
_0x63DB.Set(true, true)
local _0xB9FF = _0x45F1(_0xD635,string.char(84,117,110,105,110,103),string.char(66,97,99,107,84,114,97,99,107)):Collapsible(true)
_0xB9FF:Slider(string.char(68,101,108,97,121), 100, 1000, _0xF46C.delay, _0x3E42(string.char(100,101,108,97,121)), function(_0xEB0B)
return _0xEB0B ..string.char(109,115)end)
_0xB9FF:Slider(string.char(71,104,111,115,116,115), 1, 8, _0xF46C.count, _0x3E42(string.char(99,111,117,110,116)))
_0xB9FF:Slider(string.char(79,112,97,99,105,116,121), 10, 100, _0xF46C.opacity, _0x3E42(string.char(111,112,97,99,105,116,121)), function(_0xEB0B)
return _0xEB0B ..string.char(37)end)
_0xB9FF:Slider(string.char(77,97,120,32,100,105,115,116,97,110,99,101), 25, 500, _0xF46C.dist, _0x3E42(string.char(100,105,115,116)), function(_0xEB0B)
return _0xEB0B ..string.char(109)end)
_0xBB19 = function()
_0xF46C.on = false
_0x335E()
end
end
do
local _0x59B8 = {
_0xE496 = false,
_0xCC3C =string.char(83,101,108,102),
model =string.char(84,111,121),
_0x9ADD = 0,
fur = Color3.fromRGB(250, 248, 245),
bow = Color3.fromRGB(255, 92, 138),
}
local _0xEB34 = { Toy = 6132351260, Sugar = 13856439988, Real = 110128375015584, [string.char(84,117,110,103,32,84,117,110,103,32,83,97,104,117,114)] = 138151705692565 }
local _0x4E46, _0x95BF = {}, {}
local _0x5210 = {}
local function _0xA2AD(_0x09CD)
if _0x09CD == _0x8E3D then
return _0x59B8.on and _0x59B8.model or nil
end
if _0x59B8.on and _0x59B8.target ==string.char(65,108,108)then
return _0x59B8.model
end
return nil
end
local function _0x940B(_0x09CD)
local _0xA65E = _0x5210[_0x09CD]
if not _0xA65E then
return
end
if _0xA65E.folder then
_0xA65E.folder:Destroy()
end
if _0xA65E.char and _0xA65E.char.Parent then
for _0x624F, _0x4244 in ipairs(_0xA65E.char:GetDescendants()) do
if (_0x4244:IsA(string.char(66,97,115,101,80,97,114,116)) or _0x4244:IsA(string.char(68,101,99,97,108))) and not _0x4244:FindFirstAncestorOfClass(string.char(84,111,111,108)) then
_0x4244.LocalTransparencyModifier = 0
end
end
end
_0x5210[_0x09CD] = nil
end
local function _0x29C1(_0x893F)
if _0x4E46[_0x893F] ~= nil then
return _0x4E46[_0x893F] or nil
end
if _0x95BF[_0x893F] then
return nil
end
_0x95BF[_0x893F] = true
task.spawn(function()
local _0xD828, _0x2F59 = pcall(function()
return game:GetObjects(string.char(114,98,120,97,115,115,101,116,105,100,58,47,47).. _0xEB34[_0x893F])
end)
local _0xC6D1 = _0xD828 and _0x2F59 and _0x2F59[1]
if _0xC6D1 and not _0xC6D1:IsA(string.char(77,111,100,101,108)) then
local _0x5244 = Instance.new(string.char(77,111,100,101,108))
for _0x624F, _0x012C in ipairs(_0x2F59) do
_0x012C.Parent = _0x5244
end
_0xC6D1 = _0x5244
end
if _0xC6D1 then
for _0x624F, _0x4244 in ipairs(_0xC6D1:GetDescendants()) do
if _0x4244:IsA(string.char(76,117,97,83,111,117,114,99,101,67,111,110,116,97,105,110,101,114)) or _0x4244:IsA(string.char(83,111,117,110,100)) or _0x4244:IsA(string.char(67,108,105,99,107,68,101,116,101,99,116,111,114)) or _0x4244:IsA(string.char(80,114,111,120,105,109,105,116,121,80,114,111,109,112,116)) or _0x4244:IsA(string.char(72,117,109,97,110,111,105,100)) or _0x4244:IsA(string.char(74,111,105,110,116,73,110,115,116,97,110,99,101)) or _0x4244:IsA(string.char(87,101,108,100,67,111,110,115,116,114,97,105,110,116)) or _0x4244:IsA(string.char(66,105,108,108,98,111,97,114,100,71,117,105)) then
_0x4244:Destroy()
end
end
if not _0xC6D1:FindFirstChildWhichIsA(string.char(66,97,115,101,80,97,114,116), true) then
_0xC6D1 = nil
end
end
_0x4E46[_0x893F] = _0xC6D1 or false
_0x95BF[_0x893F] = nil
if not _0xC6D1 then
_0xA9C1(string.char(67,117,115,116,111,109,32,77,111,100,101,108,115), _0x893F ..string.char(32,102,97,105,108,101,100,32,116,111,32,108,111,97,100))
end
end)
return nil
end
local function _0xCEEC(_0x09CD, _0xD95E, _0x9036)
local _0xB48C = _0xD95E:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xC3CF = _0xD95E:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if not _0xB48C or not _0xC3CF then
return
end
local _0xA65E = { _0xD95E = _0xD95E, _0x0341 = {}, ears = {}, seed = math.random() * 10, _0x7969 =string.char(97,115,115,101,116)}
_0xA65E.folder = _0x504E(string.char(70,111,108,100,101,114), { Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,67,117,115,116,111,109,77,111,100,101,108), Parent = _0xD95E })
local _0x5244 = _0x9036:Clone()
local _0x0341 = {}
for _0x624F, _0x4244 in ipairs(_0x5244:GetDescendants()) do
if _0x4244:IsA(string.char(66,97,115,101,80,97,114,116)) then
_0x4244.Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,66,117,110,110,121)_0x4244.Anchored = false
_0x4244.CanCollide = false
_0x4244.CanQuery = false
_0x4244.CanTouch = false
_0x4244.Massless = true
table.insert(_0x0341, _0x4244)
end
end
local _0x624F, _0x428B = _0x5244:GetBoundingBox()
local _0xFE1D = _0xC3CF.HipHeight + _0xB48C.Size.Y / 2 + 2.6
pcall(function()
_0x5244:ScaleTo(_0x5244:GetScale() * _0xFE1D / math.max(_0x428B.Y, 0.1))
end)
local _0x3DC2, _0x4ED5 = _0x5244:GetBoundingBox()
_0x5244.WorldPivot = CFrame.new(_0x3DC2.Position) * (_0x5244.WorldPivot - _0x5244.WorldPivot.Position)
local _0xB694 = _0xC3CF.HipHeight + _0xB48C.Size.Y / 2
local _0x12EF = CFrame.new(0, -_0xB694 + _0x4ED5.Y / 2, 0) * CFrame.Angles(0, math.rad(_0x59B8.turn), 0)
_0x5244:PivotTo(_0xB48C.CFrame * _0x12EF)
table.sort(_0x0341, function(_0xDA08, _0xBF1F)
return _0xDA08.Size.Magnitude > _0xBF1F.Size.Magnitude
end)
local _0xBE6E = _0x0341[1]
for _0x269E = 2, #_0x0341 do
local _0xBDCF = Instance.new(string.char(87,101,108,100,67,111,110,115,116,114,97,105,110,116))
local _0x0A24 = _0xBDCF
local _0x57B6 = {}
_0x57B6[23771] = {string.char(80,97,114,116,48),
function()
return _0xBE6E
end,
}
_0x57B6[20038] = {string.char(80,97,114,101,110,116),
function()
return _0x0341[_0x269E]
end,
}
_0x57B6[1541] = {string.char(80,97,114,116,49),
function()
return _0x0341[_0x269E]
end,
}
local _0xF393 = { 23771, 1541, 20038 }
for wcIdx = 1, #_0xF393 do
local _0xF48F = _0x57B6[_0xF393[wcIdx]]
_0x0A24[_0xF48F[1]] = _0xF48F[2]()
end
end
local _0xCDE9 = Instance.new(string.char(87,101,108,100))
do
local _0x7786 = _0xCDE9
local _0x4F3B = {}
_0x4F3B[57596] = {string.char(80,97,114,116,48),
function()
return _0xB48C
end,
}
_0x4F3B[41635] = {string.char(67,48),
function()
return (_0xB48C.CFrame:ToObjectSpace(_0xBE6E.CFrame))
end,
}
_0x4F3B[47751] = {string.char(80,97,114,116,49),
function()
return _0xBE6E
end,
}
_0x4F3B[60997] = {string.char(80,97,114,101,110,116),
function()
return _0xBE6E
end,
}
local _0xCCD5 = { 57596, 47751, 41635, 60997 }
for hopIdx = 1, #_0xCCD5 do
local _0x6FE5 = _0x4F3B[_0xCCD5[hopIdx]]
_0x7786[_0x6FE5[1]] = _0x6FE5[2]()
end
end
_0xA65E.hop, _0xA65E.hopBase = _0xCDE9, _0xCDE9.C0
_0x5244.Parent = _0xA65E.folder
_0x5210[_0x09CD] = _0xA65E
return _0xA65E
end
local function _0x335E()
for _0x09CD in pairs(_0x5210) do
_0x940B(_0x09CD)
end
end
_0xB9EB(_0xB197.Heartbeat, function()
if not _0x59B8.on and next(_0x5210) == nil then
return
end
local _0x634C = os.clock()
for _0x624F, _0x09CD in ipairs(_0xD101:GetPlayers()) do
local _0xD95E = _0x09CD.Character
local _0xC3CF = _0xD95E and _0xD95E:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0xA65E = _0x5210[_0x09CD]
local _0x893F = _0xA2AD(_0x09CD)
if not _0x893F or not _0xD95E or not _0xC3CF or _0xC3CF.Health <= 0 then
if _0xA65E then
_0x940B(_0x09CD)
end
else
if not _0xA65E or _0xA65E.char ~= _0xD95E or not _0xA65E.folder.Parent or _0xA65E.model ~= _0x893F or _0xA65E.turn ~= _0x59B8.turn then
local _0x9036 = _0x29C1(_0x893F)
if _0x9036 then
_0x940B(_0x09CD)
_0xA65E = _0xCEEC(_0x09CD, _0xD95E, _0x9036)
if _0xA65E then
_0xA65E.model, _0xA65E.turn = _0x893F, _0x59B8.turn
end
end
end
if _0xA65E then
for _0x624F, _0x4244 in ipairs(_0xD95E:GetDescendants()) do
if (_0x4244:IsA(string.char(66,97,115,101,80,97,114,116)) or _0x4244:IsA(string.char(68,101,99,97,108))) and _0x4244.Name ~=string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)and not _0x4244:IsDescendantOf(_0xA65E.folder) and not _0x4244:FindFirstAncestorOfClass(string.char(84,111,111,108)) and _0x4244.LocalTransparencyModifier < 1 then
_0x4244.LocalTransparencyModifier = 1
end
end
local _0xF156 = math.clamp(_0xC3CF.MoveDirection.Magnitude, 0, 1)
for _0x624F, _0xDF88 in ipairs(_0xA65E.ears) do
local _0x6130 = math.sin(_0x634C * 2.2 + _0xA65E.seed + _0xDF88.side) * 0.07
local _0x1253 = math.sin(_0x634C * 11 + _0xA65E.seed) * 0.22 * _0xF156
_0xDF88.weld.C0 = _0xDF88.pivot * CFrame.Angles(0.12 * _0xF156 + _0x1253, 0, (-0.2 + _0x6130) * _0xDF88.side) * CFrame.new(0, 0.95, 0)
end
if _0xA65E.tail then
local _0x0F47 = math.abs(math.sin(_0x634C * (_0xF156 > 0 and 11 or 3) + _0xA65E.seed)) * (0.08 + 0.12 * _0xF156)
_0xA65E.tail.C0 = _0xA65E.tailBase * CFrame.new(0, _0x0F47, 0)
end
if _0xA65E.hop then
local _0xD75C = _0xF156 > 0 and math.abs(math.sin(_0x634C * 9 + _0xA65E.seed)) * 0.9 * _0xF156 or math.sin(_0x634C * 2 + _0xA65E.seed) * 0.05
local _0xFCBB = _0xF156 > 0 and -0.12 * _0xF156 or 0
_0xA65E.hop.C0 = CFrame.new(0, _0xD75C, 0) * _0xA65E.hopBase * CFrame.Angles(_0xFCBB, 0, 0)
end
end
end
end
for _0x09CD in pairs(_0x5210) do
if not _0x09CD.Parent then
_0x940B(_0x09CD)
end
end
end)
local _0x61C4 = _0x45F1(_0xD635,string.char(67,117,115,116,111,109,32,77,111,100,101,108,115),string.char(77,111,100,101,108,115))
_0x61C4:Toggle(string.char(67,117,115,116,111,109,32,77,111,100,101,108),string.char(114,101,112,108,97,99,101,32,121,111,117,114,32,99,104,97,114,97,99,116,101,114,32,119,105,116,104,32,116,104,101,32,115,101,108,101,99,116,101,100,32,109,111,100,101,108), function(_0xE496)
_0x59B8.on = _0xE496
if not _0xE496 then
_0x335E()
end
_0xA9C1(string.char(67,117,115,116,111,109,32,77,111,100,101,108,58,32).. (_0xE496 andstring.char(79,110)orstring.char(79,102,102)), _0xE496 and _0x59B8.model orstring.char(98,97,99,107,32,116,111,32,104,117,109,97,110))
end)
_0x61C4:Select(string.char(77,111,100,101,108),string.char(99,117,115,116,111,109,32,109,111,100,101,108), {string.char(84,111,121),string.char(83,117,103,97,114),string.char(82,101,97,108),string.char(84,117,110,103,32,84,117,110,103,32,83,97,104,117,114)}, _0x59B8.model, function(_0xEB0B)
_0x59B8.model = _0xEB0B
end)
_0x61C4:Segmented(string.char(84,97,114,103,101,116), {string.char(83,101,108,102),string.char(65,108,108)}, _0x59B8.target, function(_0xEB0B)
_0x59B8.target = _0xEB0B
_0x335E()
end)
local _0xDA44 = _0x09F2[string.char(67,117,115,116,111,109,32,77,111,100,101,108,115,47,116,117,114,110)]
if type(_0xDA44) ==string.char(110,117,109,98,101,114)then
_0x59B8.turn = _0xDA44
end
_0x61C4:Button(string.char(82,111,116,97,116,101,32,109,111,100,101,108),string.char(105,102,32,105,116,32,102,97,99,101,115,32,116,104,101,32,119,114,111,110,103,32,119,97,121), function()
_0x59B8.turn = (_0x59B8.turn + 90) % 360
_0xD34C(string.char(67,117,115,116,111,109,32,77,111,100,101,108,115,47,116,117,114,110), _0x59B8.turn)
end)
_0x04EF(string.char(67,117,115,116,111,109,32,77,111,100,101,108,115,47,116,117,114,110), function(_0xEB0B)
if type(_0xEB0B) ==string.char(110,117,109,98,101,114)then
_0x59B8.turn = _0xEB0B % 360
end
end, function()
return _0x59B8.turn
end, 0)
_0xBC3A = _0x335E
end
do
local _0xEF63 = { headless = false, korblox = false }
local _0xFB60 = { _0xD95E = nil, orig = nil, extra = {} }
local function _0x5752()
local _0x012C = _0xFB60.orig
if _0x012C and _0x012C.part and _0x012C.part.Parent then
pcall(function()
_0x012C.part.MeshId = _0x012C.mesh
_0x012C.part.TextureID = _0x012C.tex
end)
end
for _0x624F, _0x4244 in ipairs(_0xFB60.extra) do
_0x4244:Destroy()
end
table.clear(_0xFB60.extra)
_0xFB60.orig = nil
if _0xFB60.char then
for _0x624F, _0xE9D1 in ipairs({string.char(82,105,103,104,116,85,112,112,101,114,76,101,103),string.char(82,105,103,104,116,76,111,119,101,114,76,101,103),string.char(82,105,103,104,116,70,111,111,116)}) do
local _0x6C67 = _0xFB60.char:FindFirstChild(_0xE9D1)
if _0x6C67 then
_0x6C67.LocalTransparencyModifier = 0
end
end
end
_0xFB60.hide = nil
end
local function _0x1F5B(_0xD95E)
_0x5752()
_0xFB60.char = _0xD95E
local _0x1003 = _0xD95E:FindFirstChild(string.char(82,105,103,104,116,85,112,112,101,114,76,101,103))
if _0x1003 then
_0xFB60.hide = {string.char(82,105,103,104,116,76,111,119,101,114,76,101,103),string.char(82,105,103,104,116,70,111,111,116)}
local _0x012C = { _0x6F67 = _0x1003, mesh = _0x1003.MeshId, _0xD408 = _0x1003.TextureID }
local _0xD828 = pcall(function()
_0x1003.MeshId =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,57,48,50,57,52,50,48,57,54)_0x1003.TextureID =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,57,48,50,56,52,51,51,57,56)end)
if _0xD828 then
_0xFB60.orig = _0x012C
else
table.insert(_0xFB60.hide,string.char(82,105,103,104,116,85,112,112,101,114,76,101,103))
local _0xC0CB = Instance.new(string.char(80,97,114,116))
_0xC0CB.Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,75,111,114,98,108,111,120)_0xC0CB.CanCollide, _0xC0CB.CanQuery, _0xC0CB.CanTouch, _0xC0CB.Massless = false, false, false, true
_0xC0CB.Size = _0x1003.Size
_0xC0CB.CFrame = _0x1003.CFrame
local _0x5244 = Instance.new(string.char(83,112,101,99,105,97,108,77,101,115,104))
_0x5244.MeshType = Enum.MeshType.FileMesh
_0x5244.MeshId, _0x5244.TextureId =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,57,48,50,57,52,50,48,57,54),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,57,48,50,56,52,51,51,57,56)_0x5244.Parent = _0xC0CB
local _0xCDE9 = Instance.new(string.char(87,101,108,100,67,111,110,115,116,114,97,105,110,116))
_0xCDE9.Part0, _0xCDE9.Part1 = _0x1003, _0xC0CB
_0xCDE9.Parent = _0xC0CB
_0xC0CB.Parent = _0xD95E
table.insert(_0xFB60.extra, _0xC0CB)
end
return
end
local _0xC462 = _0xD95E:FindFirstChild(string.char(82,105,103,104,116,32,76,101,103))
if _0xC462 then
for _0x624F, _0x59B8 in ipairs(_0xD95E:GetChildren()) do
if _0x59B8:IsA(string.char(67,104,97,114,97,99,116,101,114,77,101,115,104)) and _0x59B8.BodyPart == Enum.BodyPart.RightLeg then
_0x59B8.Parent = nil
table.insert(_0xFB60.extra, {
Destroy = function()
_0x59B8.Parent = _0xD95E
end,
})
end
end
local _0x5244 = Instance.new(string.char(83,112,101,99,105,97,108,77,101,115,104))
do
local _0xA03D = _0x5244
local _0x167C = {}
_0x167C[42163] = {string.char(77,101,115,104,84,121,112,101),
function()
return Enum.MeshType.FileMesh
end,
}
_0x167C[42155] = {string.char(78,97,109,101),
function()
returnstring.char(67,108,117,109,115,121,83,99,114,105,112,116,75,111,114,98,108,111,120)end,
}
local _0x0E7A = { 42155, 42163 }
for meshIdx = 1, #_0x0E7A do
local _0xF592 = _0x167C[_0x0E7A[meshIdx]]
_0xA03D[_0xF592[1]] = _0xF592[2]()
end
end
_0x5244.MeshId, _0x5244.TextureId =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,48,49,56,53,49,54,57,54),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,48,49,56,53,49,50,53,52)_0x5244.Parent = _0xC462
table.insert(_0xFB60.extra, _0x5244)
end
end
local function _0xE529(_0xD95E, _0x15B0)
local _0xE13F = _0xD95E and _0xD95E:FindFirstChild(string.char(72,101,97,100))
if not _0xE13F then
return
end
_0xE13F.LocalTransparencyModifier = _0x15B0 and 1 or 0
for _0x624F, _0xA65E in ipairs(_0xE13F:GetChildren()) do
if _0xA65E:IsA(string.char(68,101,99,97,108)) then
_0xA65E.LocalTransparencyModifier = _0x15B0 and 1 or 0
end
end
end
local function _0x78DD(_0xD95E)
if _0xFB60.char ~= _0xD95E then
return false
end
local _0x1003 = _0xD95E:FindFirstChild(string.char(82,105,103,104,116,85,112,112,101,114,76,101,103))
if _0x1003 then
if _0xFB60.orig then
return _0xFB60.orig.part == _0x1003 and _0x1003.MeshId ==string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,57,48,50,57,52,50,48,57,54)end
for _0x624F, _0x4244 in ipairs(_0xFB60.extra) do
if typeof(_0x4244) ==string.char(73,110,115,116,97,110,99,101)and _0x4244.Name ==string.char(67,108,117,109,115,121,83,99,114,105,112,116,75,111,114,98,108,111,120)and _0x4244.Parent == _0xD95E then
local _0xCDE9 = _0x4244:FindFirstChildOfClass(string.char(87,101,108,100,67,111,110,115,116,114,97,105,110,116))
return _0xCDE9 ~= nil and _0xCDE9.Part0 == _0x1003
end
end
return false
end
local _0xC462 = _0xD95E:FindFirstChild(string.char(82,105,103,104,116,32,76,101,103))
return _0xC462 ~= nil and _0xC462:FindFirstChild(string.char(67,108,117,109,115,121,83,99,114,105,112,116,75,111,114,98,108,111,120)) ~= nil
end
local _0x2885
local _0xD1C7 = 0
_0xB9EB(_0xB197.RenderStepped, function()
local _0xD95E = _0x8E3D.Character
if not _0xD95E then
return
end
if _0xEF63.headless then
_0xE529(_0xD95E, true)
end
if _0xEF63.korblox then
local _0x8C28 = os.clock()
if _0x2885 ~= _0xD95E or _0x8C28 >= _0xD1C7 and not _0x78DD(_0xD95E) then
_0x2885 = _0xD95E
_0xD1C7 = _0x8C28 + 0.3
_0x1F5B(_0xD95E)
elseif _0x8C28 >= _0xD1C7 then
_0xD1C7 = _0x8C28 + 0.3
end
for _0x624F, _0xE9D1 in ipairs(_0xFB60.hide or {}) do
local _0x6C67 = _0xD95E:FindFirstChild(_0xE9D1)
if _0x6C67 then
_0x6C67.LocalTransparencyModifier = 1
end
end
end
end)
local _0x61C4 = _0x45F1(_0xD635,string.char(65,118,97,116,97,114),string.char(77,111,100,101,108,115))
_0x61C4:Toggle(string.char(72,101,97,100,108,101,115,115),string.char(110,111,32,104,101,97,100,32,40,111,110,108,121,32,121,111,117,32,115,101,101,32,105,116,41), function(_0xE496)
_0xEF63.headless = _0xE496
if not _0xE496 then
_0xE529(_0x8E3D.Character, false)
end
end)
_0x61C4:Toggle(string.char(75,111,114,98,108,111,120),string.char(75,111,114,98,108,111,120,32,68,101,97,116,104,115,112,101,97,107,101,114,32,108,101,103,32,40,111,110,108,121,32,121,111,117,32,115,101,101,32,105,116,41), function(_0xE496)
_0xEF63.korblox = _0xE496
_0x2885 = nil
if not _0xE496 then
_0x5752()
end
end)
_0x37B2 = function()
_0xEF63.headless, _0xEF63.korblox = false, false
_0xE529(_0x8E3D.Character, false)
_0x5752()
end
end
do
local _0x4B6A = {
_0xE496 = false,
_0x2250 =string.char(69,110,101,114,103,121),
custom = Color3.fromRGB(105, 205, 255),
intensity = 55,
_0x428B = 100,
}
local _0x426F
local _0xEDB4 = {}
local _0x62CD = {}
local _0x035A
local _0xB64D
local _0x18CD = 0
local function _0x4517(_0x830D)
table.insert(_0xEDB4, _0x830D)
return _0x830D
end
local function _0x940B()
for _0x624F, _0x830D in ipairs(_0xEDB4) do
if _0x830D.Parent then
_0x830D:Destroy()
end
end
table.clear(_0xEDB4)
table.clear(_0x62CD)
_0x426F, _0x035A, _0xB64D = nil, nil, nil
end
local function _0x2B7E()
if _0x4B6A.style ==string.char(70,108,97,109,101)then
return Color3.fromRGB(255, 92, 34)
elseif _0x4B6A.style ==string.char(70,114,111,115,116)then
return Color3.fromRGB(125, 225, 255)
elseif _0x4B6A.style ==string.char(86,111,105,100)then
return Color3.fromRGB(145, 65, 255)
elseif _0x4B6A.style ==string.char(82,97,105,110,98,111,119)then
return Color3.fromHSV(os.clock() * 0.15 % 1, 0.85, 1)
elseif _0x4B6A.style ==string.char(67,117,115,116,111,109)then
return _0x4B6A.custom
end
return Color3.fromRGB(105, 205, 255)
end
local function _0xC12B(_0xDF1D, secondary)
local _0x08CD = _0x4B6A.size / 100
local _0xA311 = _0x4B6A.intensity * (secondary and 0.18 or 0.42)
local _0x63B8 =string.char(114,98,120,97,115,115,101,116,58,47,47,116,101,120,116,117,114,101,115,47,112,97,114,116,105,99,108,101,115,47,115,112,97,114,107,108,101,115,95,109,97,105,110,46,100,100,115)local _0xAEA1 = NumberRange.new(0.45, 1.5)
local _0x2F0D = Vector3.new(0, 1.2, 0)
local _0x5920 = NumberRange.new(0.65, 1.25)
local _0x428B
if _0x4B6A.style ==string.char(70,108,97,109,101)and not secondary then
_0x63B8 =string.char(114,98,120,97,115,115,101,116,58,47,47,116,101,120,116,117,114,101,115,47,112,97,114,116,105,99,108,101,115,47,102,105,114,101,95,109,97,105,110,46,100,100,115)_0xAEA1 = NumberRange.new(1.2, 2.8)
_0x2F0D = Vector3.new(0, 3.5, 0)
_0x428B = NumberSequence.new({
NumberSequenceKeypoint.new(0, 0.7 * _0x08CD),
NumberSequenceKeypoint.new(0.55, 1.5 * _0x08CD),
NumberSequenceKeypoint.new(1, 0),
})
elseif _0x4B6A.style ==string.char(86,111,105,100)and not secondary then
_0x63B8 =string.char(114,98,120,97,115,115,101,116,58,47,47,116,101,120,116,117,114,101,115,47,112,97,114,116,105,99,108,101,115,47,115,109,111,107,101,95,109,97,105,110,46,100,100,115)_0xAEA1 = NumberRange.new(0.2, 0.8)
_0x2F0D = Vector3.new(0, 1.8, 0)
_0x5920 = NumberRange.new(1, 1.8)
_0x428B = NumberSequence.new({
NumberSequenceKeypoint.new(0, 1.1 * _0x08CD),
NumberSequenceKeypoint.new(0.65, 2.1 * _0x08CD),
NumberSequenceKeypoint.new(1, 0),
})
elseif _0x4B6A.style ==string.char(70,114,111,115,116)and not secondary then
_0x63B8 =string.char(114,98,120,97,115,115,101,116,58,47,47,116,101,120,116,117,114,101,115,47,112,97,114,116,105,99,108,101,115,47,115,109,111,107,101,95,109,97,105,110,46,100,100,115)_0xAEA1 = NumberRange.new(0.15, 0.65)
_0x2F0D = Vector3.new(0, -0.7, 0)
_0x5920 = NumberRange.new(0.9, 1.6)
_0x428B = NumberSequence.new({
NumberSequenceKeypoint.new(0, 0.65 * _0x08CD),
NumberSequenceKeypoint.new(0.7, 1.35 * _0x08CD),
NumberSequenceKeypoint.new(1, 0),
})
else
_0x428B = NumberSequence.new({
NumberSequenceKeypoint.new(0, (secondary and 0.22 or 0.42) * _0x08CD),
NumberSequenceKeypoint.new(0.5, (secondary and 0.13 or 0.7) * _0x08CD),
NumberSequenceKeypoint.new(1, 0),
})
end
local _0x15D8 = _0x2B7E()
local _0x6B64 = _0x4517(_0x504E(string.char(80,97,114,116,105,99,108,101,69,109,105,116,116,101,114), {
Name = secondary andstring.char(67,108,117,109,115,121,83,99,114,105,112,116,65,117,114,97,83,112,97,114,107,115)orstring.char(67,108,117,109,115,121,83,99,114,105,112,116,65,117,114,97,67,111,114,101),
Texture = _0x63B8,
Rate = _0xA311,
Lifetime = _0x5920,
Speed = _0xAEA1,
Acceleration = _0x2F0D,
SpreadAngle = Vector2.new(180, 180),
Rotation = NumberRange.new(0, 360),
RotSpeed = NumberRange.new(-100, 100),
LightEmission = _0x4B6A.style ==string.char(86,111,105,100)and 0.15 or 0.85,
LightInfluence = 0,
Size = _0x428B,
Transparency = NumberSequence.new({
NumberSequenceKeypoint.new(0, secondary and 0.05 or 0.2),
NumberSequenceKeypoint.new(0.75, 0.45),
NumberSequenceKeypoint.new(1, 1),
}),
Color = ColorSequence.new(_0x15D8),
Parent = _0xDF1D,
}))
table.insert(_0x62CD, _0x6B64)
end
local function _0x8243()
_0x940B()
if not _0x4B6A.on then
return
end
local _0xD95E = _0x8E3D.Character
local _0xC6D1 = _0xD95E and _0xD95E:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xC3CF = _0xD95E and _0xD95E:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if not _0xC6D1 or not _0xC3CF or _0xC3CF.Health <= 0 then
return
end
_0x426F = _0xC6D1
local _0x803A = _0x4517(_0x504E(string.char(65,116,116,97,99,104,109,101,110,116), { Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,65,117,114,97,66,111,116,116,111,109), Position = Vector3.new(0, -1.5, 0), Parent = _0xC6D1 }))
local _0x748C = _0x4517(_0x504E(string.char(65,116,116,97,99,104,109,101,110,116), { Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,65,117,114,97,67,101,110,116,101,114), Position = Vector3.new(0, 0.45, 0), Parent = _0xC6D1 }))
_0xC12B(_0x803A, false)
_0xC12B(_0x748C, true)
local _0x15D8 = _0x2B7E()
_0x035A = _0x4517(_0x504E(string.char(80,111,105,110,116,76,105,103,104,116), {
Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,65,117,114,97,76,105,103,104,116),
Color = _0x15D8,
Brightness = 0.8 + _0x4B6A.intensity / 45,
Range = 7 + _0x4B6A.size / 30,
Shadows = false,
Parent = _0xC6D1,
}))
_0xB64D = _0x4517(_0x504E(string.char(72,105,103,104,108,105,103,104,116), {
Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,65,117,114,97,72,105,103,104,108,105,103,104,116),
Adornee = _0xD95E,
DepthMode = Enum.HighlightDepthMode.Occluded,
FillColor = _0x15D8,
FillTransparency = 0.92,
OutlineColor = _0x15D8,
OutlineTransparency = 0.35,
Parent = _0xD95E,
}))
end
_0xB9EB(_0x8E3D.CharacterAdded, function()
if _0x4B6A.on then
task.delay(0.4, _0x8243)
end
end)
_0xB9EB(_0xB197.Heartbeat, function()
if not _0x4B6A.on then
return
end
local _0xC6D1 = _0x8E3D.Character and _0x8E3D.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0xC6D1 then
if _0x426F then
_0x940B()
end
return
end
if _0x426F ~= _0xC6D1 or not _0x426F.Parent then
_0x8243()
return
end
local _0x8C28 = os.clock()
if _0x4B6A.style ~=string.char(82,97,105,110,98,111,119)or _0x8C28 - _0x18CD < 0.06 then
return
end
_0x18CD = _0x8C28
local _0xA931 = _0x8C28 * 0.16 % 1
local _0x4D88 = Color3.fromHSV(_0xA931, 0.9, 1)
local _0xCDF2 = Color3.fromHSV((_0xA931 + 0.16) % 1, 0.9, 1)
local _0x89EF = ColorSequence.new(_0x4D88, _0xCDF2)
for _0x624F, _0x6B64 in ipairs(_0x62CD) do
_0x6B64.Color = _0x89EF
end
_0x035A.Color = _0x4D88
_0xB64D.FillColor = _0x4D88
_0xB64D.OutlineColor = _0xCDF2
end)
local _0x61C4 = _0x45F1(_0xD635,string.char(65,117,114,97,115),string.char(77,111,100,101,108,115))
_0x61C4:Toggle(string.char(65,117,114,97),string.char(112,97,114,116,105,99,108,101,115,32,97,110,100,32,103,108,111,119,32,97,114,111,117,110,100,32,121,111,117,114,32,99,104,97,114,97,99,116,101,114), function(_0xE496)
_0x4B6A.on = _0xE496
_0x8243()
_0xA9C1(string.char(65,117,114,97,58,32).. (_0xE496 andstring.char(79,110)orstring.char(79,102,102)), _0xE496 and _0x4B6A.style orstring.char(101,102,102,101,99,116,32,114,101,109,111,118,101,100))
end)
_0x61C4:Select(string.char(83,116,121,108,101),string.char(114,105,103,104,116,32,99,108,105,99,107,32,45,32,112,114,101,118,105,111,117,115), {string.char(69,110,101,114,103,121),string.char(70,108,97,109,101),string.char(70,114,111,115,116),string.char(86,111,105,100),string.char(82,97,105,110,98,111,119),string.char(67,117,115,116,111,109)}, _0x4B6A.style, function(_0xEB0B)
_0x4B6A.style = _0xEB0B
if _0x4B6A.on then
_0x8243()
end
end)
_0x61C4:ColorPicker(string.char(65,117,114,97,32,99,111,108,111,114),string.char(117,115,101,100,32,119,104,101,110,32,83,116,121,108,101,32,61,32,67,117,115,116,111,109), _0x4B6A.custom, function(_0x242F)
_0x4B6A.custom = _0x242F
if not _0x42B0 then
_0x4B6A.style =string.char(67,117,115,116,111,109)end
if _0x4B6A.on then
_0x8243()
end
end)
_0x61C4:Slider(string.char(73,110,116,101,110,115,105,116,121), 10, 100, _0x4B6A.intensity, function(_0xEB0B)
_0x4B6A.intensity = _0xEB0B
if _0x4B6A.on then
_0x8243()
end
end, function(_0xEB0B)
return _0xEB0B ..string.char(37)end)
_0x61C4:Slider(string.char(83,105,122,101), 50, 200, _0x4B6A.size, function(_0xEB0B)
_0x4B6A.size = _0xEB0B
if _0x4B6A.on then
_0x8243()
end
end, function(_0xEB0B)
return _0xEB0B ..string.char(37)end)
_0xF2C7 = function()
_0x4B6A.on = false
_0x940B()
end
end
do
local _0xEF2A = {
_0xE496 = false,
_0x2250 =string.char(73,110,118,111,107,101,114),
_0xFD42 = 3,
_0xAEA1 = 100,
_0x0767 = 100,
custom = Color3.fromRGB(120, 200, 255),
}
local _0x4D2D = { Color3.fromRGB(90, 200, 255), Color3.fromRGB(190, 90, 255), Color3.fromRGB(255, 150, 50) }
local _0xE998
local _0x48F4 = {}
local function _0x62E5(_0x269E, _0x634C)
if _0xEF2A.style ==string.char(73,110,118,111,107,101,114)then
return _0x4D2D[(_0x269E - 1) % #_0x4D2D + 1]
elseif _0xEF2A.style ==string.char(77,111,110,111)then
local _0xEB0B = 0.5 + 0.5 * math.sin(_0x634C * 2.5 + _0x269E * 1.3)
local _0x242F = math.floor(120 + _0xEB0B * 135)
return Color3.fromRGB(_0x242F, _0x242F, _0x242F)
end
return _0xEF2A.custom
end
local function _0x6F67(_0x428B, mat, _0x15D8, transp, shape)
local _0x09CD = Instance.new(string.char(80,97,114,116))
do
local _0x2A3D = _0x09CD
local _0xF963 = {}
_0xF963[60693] = {string.char(67,111,108,111,114),
function()
return _0x15D8
end,
}
_0xF963[30322] = {string.char(83,105,122,101),
function()
return _0x428B
end,
}
_0xF963[52597] = {string.char(84,114,97,110,115,112,97,114,101,110,99,121),
function()
return transp or 0
end,
}
_0xF963[25263] = {string.char(77,97,116,101,114,105,97,108),
function()
return mat
end,
}
_0xF963[29939] = {string.char(83,104,97,112,101),
function()
return shape or Enum.PartType.Ball
end,
}
local _0x61F7 = { 29939, 30322, 25263, 60693, 52597 }
for partIdx = 1, #_0x61F7 do
local _0x4D75 = _0xF963[_0x61F7[partIdx]]
_0x2A3D[_0x4D75[1]] = _0x4D75[2]()
end
end
_0x09CD.Anchored, _0x09CD.CanCollide, _0x09CD.CanQuery, _0x09CD.CanTouch, _0x09CD.CastShadow = true, false, false, false, false
_0x09CD.Parent = _0xE998
return _0x09CD
end
local function _0x940B()
if _0xE998 then
_0xE998:Destroy()
end
_0xE998 = nil
table.clear(_0x48F4)
end
local function _0x8243()
_0x940B()
_0xE998 = _0x504E(string.char(70,111,108,100,101,114), { Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,79,114,98,115), Parent = workspace.CurrentCamera })
for _0x269E = 1, _0xEF2A.count do
local _0x242F = _0x62E5(_0x269E, 0)
local _0x784F = _0x6F67(Vector3.one * 0.62, Enum.Material.Neon, _0x242F, 0.35)
local _0xE8D5 = _0x6F67(Vector3.one * 0.3, Enum.Material.SmoothPlastic, Color3.new(1, 1, 1), 0.2)
local _0xA900 = _0x6F67(Vector3.one * 1.15, Enum.Material.ForceField, _0x242F, 0.55)
local _0x36A1 = { Color = _0x242F }
local _0x9E0B = _0x504E(string.char(65,116,116,97,99,104,109,101,110,116), { Position = Vector3.new(0, 0.22, 0), Parent = _0x784F })
local _0x9784 = _0x504E(string.char(65,116,116,97,99,104,109,101,110,116), { Position = Vector3.new(0, -0.22, 0), Parent = _0x784F })
local _0xC582 = _0x504E(string.char(84,114,97,105,108), {
Attachment0 = _0x9E0B,
Attachment1 = _0x9784,
Lifetime = 0.35,
LightEmission = 0.3,
LightInfluence = 0.5,
FaceCamera = true,
MinLength = 0.02,
Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0.45), NumberSequenceKeypoint.new(1, 1) }),
WidthScale = NumberSequence.new({ NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 0) }),
Color = ColorSequence.new(_0x242F),
Parent = _0x784F,
})
local _0x320B = _0x504E(string.char(80,97,114,116,105,99,108,101,69,109,105,116,116,101,114), {
Texture =string.char(114,98,120,97,115,115,101,116,58,47,47,116,101,120,116,117,114,101,115,47,112,97,114,116,105,99,108,101,115,47,115,112,97,114,107,108,101,115,95,109,97,105,110,46,100,100,115),
Rate = 5,
Lifetime = NumberRange.new(0.4, 0.8),
Speed = NumberRange.new(0.3, 1),
SpreadAngle = Vector2.new(180, 180),
LightEmission = 0.3,
LightInfluence = 0.5,
Size = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0.18), NumberSequenceKeypoint.new(1, 0) }),
Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0.1), NumberSequenceKeypoint.new(1, 1) }),
Color = ColorSequence.new(_0x242F),
Parent = _0x784F,
})
_0x48F4[_0x269E] = {
core = _0x784F,
_0xE8D5 = _0xE8D5,
_0xA900 = _0xA900,
_0x36A1 = _0x36A1,
_0xC582 = _0xC582,
_0x320B = _0x320B,
_0x3242 = nil,
_0x15D8 = _0x242F,
}
end
end
local _0x0E20 = os.clock()
_0xB9EB(_0xB197.RenderStepped, function(_0x5D8D)
if not _0xEF2A.on then
return
end
local _0xD95E = _0x8E3D.Character
local _0xB48C = _0xD95E and _0xD95E:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0xB48C then
if _0xE998 then
_0x940B()
end
return
end
if not _0xE998 or not _0xE998.Parent or #_0x48F4 ~= _0xEF2A.count then
_0x8243()
end
local _0x634C = os.clock() - _0x0E20
local _0xF9AE = 1.6 * _0xEF2A.speed / 100
local _0x00EA = 1.35 * _0xEF2A.radius / 100
local _0x748C = _0xB48C.CFrame * CFrame.new(0, 1.7, 1.25) * CFrame.Angles(math.rad(-25), 0, 0)
local _0x2DD2 = 1 - math.exp(-_0x5D8D * 10)
for _0x269E, _0x012C in ipairs(_0x48F4) do
local _0xDA08 = _0x634C * _0xF9AE + (_0x269E - 1) * (math.pi * 2 / #_0x48F4)
local _0x0F47 = math.sin(_0x634C * 2.2 + _0x269E * 1.7) * 0.18
local _0xCC3C = (_0x748C * CFrame.new(math.cos(_0xDA08) * _0x00EA, _0x0F47, math.sin(_0xDA08) * _0x00EA * 0.55)).Position
_0x012C.pos = _0x012C.pos and _0x012C.pos:Lerp(_0xCC3C, _0x2DD2) or _0xCC3C
local _0x86D2 = 1 + math.sin(_0x634C * 4 + _0x269E) * 0.06
local _0x4117 = CFrame.new(_0x012C.pos)
_0x012C.core.CFrame = _0x4117
_0x012C.heart.CFrame = _0x4117
_0x012C.halo.CFrame = _0x4117
_0x012C.core.Size = Vector3.one * 0.62 * _0x86D2
_0x012C.halo.Size = Vector3.one * 1.15 * (2 - _0x86D2)
local _0x242F = _0x62E5(_0x269E, _0x634C)
if _0x242F ~= _0x012C.color then
_0x012C.color = _0x242F
_0x012C.core.Color, _0x012C.halo.Color, _0x012C.light.Color = _0x242F, _0x242F, _0x242F
_0x012C.trail.Color = ColorSequence.new(_0x242F)
_0x012C.sparks.Color = ColorSequence.new(_0x242F)
end
end
end)
local _0x61C4 = _0x45F1(_0xD635,string.char(79,114,98,115),string.char(77,111,100,101,108,115))
_0x61C4:Toggle(string.char(79,114,98,115),string.char(103,108,111,119,105,110,103,32,111,114,98,115,32,98,101,104,105,110,100,32,121,111,117,114,32,98,97,99,107,32,40,111,110,108,121,32,121,111,117,32,115,101,101,32,116,104,101,109,41), function(_0xE496)
_0xEF2A.on = _0xE496
if not _0xE496 then
_0x940B()
end
_0xA9C1(string.char(79,114,98,115,58,32).. (_0xE496 andstring.char(79,110)orstring.char(79,102,102)), _0xE496 andstring.char(113,117,97,115,32,119,101,120,32,101,120,111,114,116)orstring.char(111,114,98,115,32,103,111,110,101))
end)
_0x61C4:Segmented(string.char(83,116,121,108,101), {string.char(73,110,118,111,107,101,114),string.char(77,111,110,111),string.char(67,117,115,116,111,109)}, _0xEF2A.style, function(_0xEB0B)
_0xEF2A.style = _0xEB0B
end)
_0x61C4:ColorPicker(string.char(79,114,98,32,99,111,108,111,114),string.char(117,115,101,100,32,119,104,101,110,32,83,116,121,108,101,32,61,32,67,117,115,116,111,109), _0xEF2A.custom, function(_0x242F)
_0xEF2A.custom = _0x242F
if not _0x42B0 then
_0xEF2A.style =string.char(67,117,115,116,111,109)end
end)
_0x61C4:Slider(string.char(67,111,117,110,116), 1, 6, _0xEF2A.count, function(_0xEB0B)
_0xEF2A.count = _0xEB0B
end)
_0x61C4:Slider(string.char(83,112,101,101,100), 20, 300, _0xEF2A.speed, function(_0xEB0B)
_0xEF2A.speed = _0xEB0B
end, function(_0xEB0B)
return _0xEB0B ..string.char(37)end)
_0x61C4:Slider(string.char(82,97,100,105,117,115), 50, 250, _0xEF2A.radius, function(_0xEB0B)
_0xEF2A.radius = _0xEB0B
end, function(_0xEB0B)
return _0xEB0B ..string.char(37)end)
_0xD796 = function()
_0xEF2A.on = false
_0x940B()
end
end
do
local _0xEEC6 = { _0xE496 = false, _0xFD42 = 30, _0xAEA1 = 100 }
local _0xFF9F = {
Vector3.new(1, 0, 0),
Vector3.new(-1, 0, 0),
Vector3.new(0, 0, 1),
Vector3.new(0, 0, -1),
Vector3.new(0, 1, 0),
Vector3.new(0, -1, 0),
}
local _0x59EA = Color3.new(1, 1, 1)
local _0xB130 = Color3.fromRGB(170, 215, 255)
local _0xE998
local _0x2103 = {}
local _0x7FE2 = Random.new()
local function _0x940B()
if _0xE998 then
_0xE998:Destroy()
end
_0xE998 = nil
table.clear(_0x2103)
end
local function _0x8C9A()
local _0xE13F = Instance.new(string.char(80,97,114,116))
do
local _0x630C = _0xE13F
local _0x7E9B = {}
_0x7E9B[61142] = {string.char(83,105,122,101),
function()
return Vector3.one * 0.22
end,
}
_0x7E9B[18088] = {string.char(77,97,116,101,114,105,97,108),
function()
return Enum.Material.Neon
end,
}
_0x7E9B[17496] = {string.char(67,111,108,111,114),
function()
return _0x59EA
end,
}
_0x7E9B[56633] = {string.char(83,104,97,112,101),
function()
return Enum.PartType.Ball
end,
}
local _0x8734 = { 56633, 61142, 18088, 17496 }
for headIdx = 1, #_0x8734 do
local _0xB6F3 = _0x7E9B[_0x8734[headIdx]]
_0x630C[_0xB6F3[1]] = _0xB6F3[2]()
end
end
_0xE13F.Anchored, _0xE13F.CanCollide, _0xE13F.CanQuery, _0xE13F.CanTouch, _0xE13F.CastShadow = true, false, false, false, false
_0xE13F.Parent = _0xE998
return { _0xE13F = _0xE13F, _0x3242 = nil, _0x0447 = _0xFF9F[1], _0x4323 = 0, _0xF9AE = _0x7FE2:NextNumber(22, 42) }
end
local function _0x8243()
_0x940B()
_0xE998 = _0x504E(string.char(70,111,108,100,101,114), { Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,107,121,87,111,114,109,115), Parent = workspace.CurrentCamera })
for _0x269E = 1, _0xEEC6.count do
_0x2103[_0x269E] = _0x8C9A()
end
end
local function _0x9ADD(_0xCDE9, _0x748C, _0xC334)
local _0xA0A0 = _0xCDE9.pos - _0x748C
local _0x6649 = {}
for _0x624F, _0xA65E in ipairs(_0xFF9F) do
if _0xA65E:Dot(_0xCDE9.dir) == 0 then
local _0xD828 = true
if _0xA65E.X ~= 0 and math.abs(_0xA0A0.X) > 96 and _0xA65E.X * _0xA0A0.X > 0 then
_0xD828 = false
end
if _0xA65E.Z ~= 0 and math.abs(_0xA0A0.Z) > 96 and _0xA65E.Z * _0xA0A0.Z > 0 then
_0xD828 = false
end
if _0xA65E.Y > 0 and _0xCDE9.pos.Y > _0xC334 + 40 then
_0xD828 = false
end
if _0xA65E.Y < 0 and _0xCDE9.pos.Y < _0xC334 + 2 then
_0xD828 = false
end
if _0xD828 then
table.insert(_0x6649, _0xA65E)
if _0xA65E.Y == 0 then
table.insert(_0x6649, _0xA65E)
end
end
end
end
_0xCDE9.dir = #_0x6649 > 0 and _0x6649[_0x7FE2:NextInteger(1, #_0x6649)] or -_0xCDE9.dir
_0xCDE9.left = _0x7FE2:NextNumber(4, 22)
end
local function _0x35F5(_0xCDE9, _0x748C, _0xC334)
_0xCDE9.pos = _0x748C + Vector3.new(_0x7FE2:NextNumber(-120, 120), 0, _0x7FE2:NextNumber(-120, 120))
_0xCDE9.pos = Vector3.new(_0xCDE9.pos.X, _0xC334 + _0x7FE2:NextNumber(2, 40), _0xCDE9.pos.Z)
_0xCDE9.dir = _0xFF9F[_0x7FE2:NextInteger(1, 4)]
_0xCDE9.left = _0x7FE2:NextNumber(4, 22)
end
_0xB9EB(_0xB197.RenderStepped, function(_0x5D8D)
if not _0xEEC6.on then
return
end
local _0xD95E = _0x8E3D.Character
local _0xB48C = _0xD95E and _0xD95E:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0xB48C then
return
end
if not _0xE998 or not _0xE998.Parent or #_0x2103 ~= _0xEEC6.count then
_0x8243()
end
local _0x748C = _0xB48C.Position
local _0xC334 = _0x748C.Y - 3
_0x5D8D = math.min(_0x5D8D, 0.1)
for _0x624F, _0xCDE9 in ipairs(_0x2103) do
if not _0xCDE9.pos or (_0xCDE9.pos - _0x748C).Magnitude > 216 then
_0x35F5(_0xCDE9, _0x748C, _0xC334)
end
local _0x8B16 = _0xCDE9.spd * _0xEEC6.speed / 100 * _0x5D8D
while _0x8B16 > 0 do
local _0xE157 = math.min(_0x8B16, _0xCDE9.left)
_0xCDE9.pos += _0xCDE9.dir * _0xE157
_0xCDE9.left -= _0xE157
_0x8B16 -= _0xE157
if _0xCDE9.left <= 0 then
_0x9ADD(_0xCDE9, _0x748C, _0xC334)
end
end
_0xCDE9.head.CFrame = CFrame.new(_0xCDE9.pos)
end
end)
local _0x61C4 = _0x45F1(_0xD635,string.char(83,107,121,32,87,111,114,109,115),string.char(77,111,100,101,108,115))
_0x61C4:Toggle(string.char(83,107,121,32,87,111,114,109,115),string.char(67,108,117,109,115,121,83,99,114,105,112,116,32,101,120,99,108,117,115,105,118,101,32,45,32,119,104,105,116,101,32,115,105,103,110,97,108,115,32,114,117,110,32,97,99,114,111,115,115,32,116,104,101,32,109,97,112,32,40,111,110,108,121,32,121,111,117,32,115,101,101,32,116,104,101,109,41), function(_0xE496)
_0xEEC6.on = _0xE496
if not _0xE496 then
_0x940B()
end
_0xA9C1(string.char(83,107,121,32,87,111,114,109,115,58,32).. (_0xE496 andstring.char(79,110)orstring.char(79,102,102)), _0xE496 andstring.char(116,104,101,32,109,97,112,32,105,115,32,111,110,108,105,110,101)orstring.char(115,105,103,110,97,108,32,108,111,115,116))
end)
_0x61C4:Slider(string.char(67,111,117,110,116), 10, 60, _0xEEC6.count, function(_0xEB0B)
_0xEEC6.count = _0xEB0B
end)
_0x61C4:Slider(string.char(83,112,101,101,100), 20, 300, _0xEEC6.speed, function(_0xEB0B)
_0xEEC6.speed = _0xEB0B
end, function(_0xEB0B)
return _0xEB0B ..string.char(37)end)
_0x8BC7 = function()
_0xEEC6.on = false
_0x940B()
end
end
do
local _0xC93C = { _0xE496 = false, connection = nil, _0xD534 = nil, _0xC582 = nil, length = 0.8, _0x15D8 = Color3.fromRGB(255, 255, 255) }
local function _0xA3CC()
if _0xC93C.connection then
pcall(function() _0xC93C.connection:Disconnect() end)
_0xC93C.connection = nil
end
if _0xC93C.character and _0xC93C.character.Parent then
local _0xF7C5 = _0xC93C.character:FindFirstChild(string.char(65,69,82,79,95,87,104,105,116,101,70,111,111,116,84,114,97,105,108))
if _0xF7C5 then _0xF7C5:Destroy() end
local _0x9E0B = _0xC93C.character:FindFirstChild(string.char(65,69,82,79,95,70,111,111,116,84,114,97,105,108,95,65,48), true)
local _0x9784 = _0xC93C.character:FindFirstChild(string.char(65,69,82,79,95,70,111,111,116,84,114,97,105,108,95,65,49), true)
if _0x9E0B then _0x9E0B:Destroy() end
if _0x9784 then _0x9784:Destroy() end
end
_0xC93C.character = nil
_0xC93C.trail = nil
end
local function _0x18FE(_0xD534)
if not _0xD534 or not _0xD534.Parent then return end
local _0xF7C5 = _0xD534:FindFirstChild(string.char(65,69,82,79,95,87,104,105,116,101,70,111,111,116,84,114,97,105,108))
if _0xF7C5 then _0xF7C5:Destroy() end
local _0xC6D1 = _0xD534:WaitForChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116), 5)
if not _0xC6D1 or not _0xC6D1.Parent then return end
local _0x9A3A = _0xC6D1:FindFirstChild(string.char(65,69,82,79,95,70,111,111,116,84,114,97,105,108,95,65,48))
local _0x7834 = _0xC6D1:FindFirstChild(string.char(65,69,82,79,95,70,111,111,116,84,114,97,105,108,95,65,49))
if _0x9A3A then _0x9A3A:Destroy() end
if _0x7834 then _0x7834:Destroy() end
local _0x9E0B = Instance.new(string.char(65,116,116,97,99,104,109,101,110,116))
_0x9E0B.Name =string.char(65,69,82,79,95,70,111,111,116,84,114,97,105,108,95,65,48)_0x9E0B.Position = Vector3.new(-0.65, -2.35, 0.15)
_0x9E0B.Parent = _0xC6D1
local _0x9784 = Instance.new(string.char(65,116,116,97,99,104,109,101,110,116))
_0x9784.Name =string.char(65,69,82,79,95,70,111,111,116,84,114,97,105,108,95,65,49)_0x9784.Position = Vector3.new(0.65, -2.35, 0.15)
_0x9784.Parent = _0xC6D1
local _0xC582 = Instance.new(string.char(84,114,97,105,108))
_0xC582.Name =string.char(65,69,82,79,95,87,104,105,116,101,70,111,111,116,84,114,97,105,108)_0xC582.Attachment0 = _0x9E0B
_0xC582.Attachment1 = _0x9784
_0xC582.Color = ColorSequence.new(_0xC93C.color)
_0xC582.Transparency = NumberSequence.new({
NumberSequenceKeypoint.new(0, 0),
NumberSequenceKeypoint.new(0.7, 0.35),
NumberSequenceKeypoint.new(1, 1),
})
_0xC582.WidthScale = NumberSequence.new({
NumberSequenceKeypoint.new(0, 0.055),
NumberSequenceKeypoint.new(1, 0),
})
_0xC582.Lifetime = _0xC93C.length
_0xC582.MinLength = 0.05
_0xC582.LightEmission = 1
_0xC582.FaceCamera = true
_0xC582.Enabled = false
_0xC582.Parent = _0xC6D1
_0xC93C.character = _0xD534
_0xC93C.trail = _0xC582
_0xC93C.connection = _0xB197.Heartbeat:Connect(function()
if not _0xC93C.on or not _0xD534.Parent or not _0xC6D1.Parent then
if _0xC582.Parent then _0xC582.Enabled = false end
return
end
local _0x7AEE = _0xC6D1.AssemblyLinearVelocity
local _0x96A4 = Vector3.new(_0x7AEE.X, 0, _0x7AEE.Z).Magnitude
local _0xE360 = _0xD534:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0xE57A = _0xE360 and _0xE360.FloorMaterial ~= Enum.Material.Air
_0xC582.Enabled = _0x96A4 > 2 and _0xE57A or false
end)
end
local function _0x760C()
if _0xC93C.trail and _0xC93C.trail.Parent then
_0xC93C.trail.Color = ColorSequence.new(_0xC93C.color)
_0xC93C.trail.Lifetime = _0xC93C.length
_0xC93C.trail.WidthScale = NumberSequence.new({
NumberSequenceKeypoint.new(0, 0.055),
NumberSequenceKeypoint.new(1, 0),
})
end
end
local function _0xDDD0(_0xE496)
_0xC93C.on = _0xE496
_0xA3CC()
if not _0xE496 then return end
local _0xD534 = _0x8E3D.Character
if _0xD534 then
task.spawn(function() _0x18FE(_0xD534) end)
end
end
_0xB9EB(_0x8E3D.CharacterAdded, function(_0xD534)
if not _0xC93C.on then return end
_0xA3CC()
task.spawn(function() _0x18FE(_0xD534) end)
end)
local _0x61C4 = _0x45F1(_0xD635,string.char(70,111,111,116,32,84,114,97,105,108),string.char(77,111,100,101,108,115))
_0x61C4:Toggle(string.char(87,104,105,116,101,32,70,111,111,116,32,84,114,97,105,108),string.char(116,104,105,110,32,119,104,105,116,101,32,108,105,110,101,32,117,110,100,101,114,32,121,111,117,114,32,102,101,101,116,32,119,104,105,108,101,32,109,111,118,105,110,103,32,111,110,32,116,104,101,32,103,114,111,117,110,100), function(_0xE496)
_0xDDD0(_0xE496)
_0xD34C(string.char(70,111,111,116,32,84,114,97,105,108,47,69,110,97,98,108,101,100), _0xE496)
_0xA9C1(string.char(87,104,105,116,101,32,70,111,111,116,32,84,114,97,105,108,58,32).. (_0xE496 andstring.char(79,110)orstring.char(79,102,102)), _0xE496 andstring.char(108,105,110,101,32,101,110,97,98,108,101,100)orstring.char(116,114,97,105,108,32,114,101,109,111,118,101,100))
end)
_0x61C4:Slider(string.char(76,105,110,101,32,76,101,110,103,116,104), 0.2, 3, 0.8, function(_0xEB0B)
_0xC93C.length = _0xEB0B
_0xD34C(string.char(70,111,111,116,32,84,114,97,105,108,47,76,101,110,103,116,104), _0xEB0B)
_0x760C()
end)
_0x61C4:ColorPicker(string.char(76,105,110,101,32,67,111,108,111,114),string.char(99,111,108,111,114,32,111,102,32,116,104,101,32,102,111,111,116,32,116,114,97,105,108), _0xC93C.color, function(_0x242F)
_0xC93C.color = _0x242F
_0xD34C(string.char(70,111,111,116,32,84,114,97,105,108,47,67,111,108,111,114), _0x242F:ToHex())
_0x760C()
end)
_0x04EF(string.char(70,111,111,116,32,84,114,97,105,108,47,69,110,97,98,108,101,100), function(_0xEB0B)
_0xDDD0(_0xEB0B == true)
end, function()
return _0xC93C.on
end, false)
_0x04EF(string.char(70,111,111,116,32,84,114,97,105,108,47,76,101,110,103,116,104), function(_0xEB0B)
if type(_0xEB0B) ==string.char(110,117,109,98,101,114)then
_0xC93C.length = math.clamp(_0xEB0B, 0.2, 3)
_0x760C()
end
end, function() return _0xC93C.length end, false)
_0x04EF(string.char(70,111,111,116,32,84,114,97,105,108,47,67,111,108,111,114), function(_0xEB0B)
if type(_0xEB0B) ==string.char(115,116,114,105,110,103)then
local _0xDE46 = _0xEB0B:gsub(string.char(35),"")
if #_0xDE46 == 6 then
local _0xD828, _0x242F = pcall(function()
return Color3.fromRGB(tonumber(_0xDE46:sub(1,2), 16), tonumber(_0xDE46:sub(3,4), 16), tonumber(_0xDE46:sub(5,6), 16))
end)
if _0xD828 and _0x242F then _0xC93C.color = _0x242F; _0x760C() end
end
end
end, function() return _0xC93C.color:ToHex() end, false)
_0xFEC5 = function()
_0xC93C.on = false
_0xA3CC()
end
end
do
local _0x5018 = {
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
local _0x8AA3 = { _0x7CEC = 28, M = 40, L = 56 }
local _0xC126 = { _0xE496 = false, _0x4FE3 = nil, _0xF421 =string.char(65,108,119,97,121,115), _0x428B =string.char(77)}
local function _0xFD48(_0x4FE3)
return (string.char(114,98,120,116,104,117,109,98,58,47,47,116,121,112,101,61,65,115,115,101,116,38,105,100,61,37,100,38,119,61,49,53,48,38,104,61,49,53,48)):format(_0x4FE3)
end
local _0xD199 = _0x504E(string.char(83,99,114,101,101,110,71,117,105), { Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,67,117,114,115,111,114), ResetOnSpawn = false, IgnoreGuiInset = true, DisplayOrder = 2000 })
pcall(function()
_0xD199.Parent = _0x0155.Parent
end)
local _0x2C1E = _0x504E(string.char(73,109,97,103,101,76,97,98,101,108), {
AnchorPoint = Vector2.new(0.5, 0.5),
BackgroundTransparency = 1,
Size = UDim2.fromOffset(_0x8AA3.M, _0x8AA3.M),
ScaleType = Enum.ScaleType.Fit,
Visible = false,
ZIndex = 10,
Parent = _0xD199,
})
local _0x08CD = _0x504E(string.char(85,73,83,99,97,108,101), { Parent = _0x2C1E })
local _0x15B0 = false
local function _0xBFA5()
local _0xD95E = _0x8E3D.Character
local _0x9CCE = _0xC126.on and _0xC126.id ~= nil and (_0xC126.mode ==string.char(65,108,119,97,121,115)or _0xD95E and _0xD95E:FindFirstChild(string.char(71,117,110)) ~= nil)
if _0x9CCE then
_0x24DA.MouseIconEnabled = false
_0x15B0 = true
local _0x5244 = _0x24DA:GetMouseLocation()
_0x2C1E.Position = UDim2.fromOffset(_0x5244.X, _0x5244.Y)
_0x2C1E.Visible = true
elseif _0x15B0 then
_0x15B0 = false
_0x24DA.MouseIconEnabled = true
_0x2C1E.Visible = false
end
end
pcall(function()
_0xB197:UnbindFromRenderStep(string.char(67,108,117,109,115,121,83,99,114,105,112,116,67,117,114,115,111,114))
end)
_0xB197:BindToRenderStep(string.char(67,108,117,109,115,121,83,99,114,105,112,116,67,117,114,115,111,114), Enum.RenderPriority.Last.Value + 10, _0xBFA5)
_0xB9EB(_0x24DA:GetPropertyChangedSignal(string.char(77,111,117,115,101,73,99,111,110,69,110,97,98,108,101,100)), function()
if _0x15B0 and _0x24DA.MouseIconEnabled then
_0x24DA.MouseIconEnabled = false
end
end)
_0xB9EB(_0x24DA.InputBegan, function(input)
if _0x2C1E.Visible and input.UserInputType == Enum.UserInputType.MouseButton1 then
_0x08CD.Scale = 0.75
_0x0903(_0x08CD, 0.25, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
end
end)
local _0x46D0 = _0x4901.page
_0x4901.custom = true
_0x4901.title.Visible = false
_0x4901.desc.Visible = false_0x4783.ScrollingEnabled = false
_0x46D0.ScrollBarThickness = 0
_0x46D0.CanvasSize = UDim2.new()
local _0x8802 = Color3.fromRGB(36, 36, 38)
local _0xF29A = Color3.fromRGB(48, 48, 52)
local _0xDA2D = Color3.fromRGB(17, 17, 19)
local _0xDBC6 = _0x504E(string.char(70,114,97,109,101), { Size = UDim2.new(1, 0, 0, 30), BackgroundTransparency = 1, ZIndex = 3, Parent = _0x46D0 })
_0x504E(string.char(85,73,76,105,115,116,76,97,121,111,117,116), {
FillDirection = Enum.FillDirection.Horizontal,
VerticalAlignment = Enum.VerticalAlignment.Center,
Padding = UDim.new(0, 6),
SortOrder = Enum.SortOrder.LayoutOrder,
Parent = _0xDBC6,
})
local function _0xDC54(_0xEE8A, _0x35E7, _0xDBC8)
local _0xCDE9 = _0x48B6:GetTextSize(_0xEE8A, 13, Enum.Font.GothamMedium, Vector2.new(300, 40)).X + 26
local _0xBF1F = _0x504E(string.char(84,101,120,116,66,117,116,116,111,110), {
Text = _0xEE8A,
Font = Enum.Font.GothamMedium,
TextSize = 13,
TextColor3 = _0x2E02,
AutoButtonColor = false,
BackgroundColor3 = Color3.fromRGB(90, 90, 90),
BackgroundTransparency = 0.85,
Size = UDim2.fromOffset(_0xCDE9, 30),
LayoutOrder = _0x35E7,
ZIndex = 4,
Parent = _0xDBC6,
})
_0xF153(_0xBF1F, 9)
_0xB9EB(_0xBF1F.MouseButton1Click, _0xDBC8)
return function(_0xE496)
_0x0903(_0xBF1F, 0.2, { BackgroundTransparency = _0xE496 and 0.35 or 0.85, TextColor3 = _0xE496 and _0xA925 or _0x2E02 })
end
end
local _0x609D
local _0xE29B = _0xDC54(string.char(67,117,114,115,111,114,58,32,79,102,102), 1, function()
_0xC126.on = not _0xC126.on
_0xD34C(string.char(99,117,114,115,111,114,115,46,111,110), _0xC126.on)
_0x609D()
_0xA9C1(string.char(67,117,114,115,111,114,58,32).. (_0xC126.on andstring.char(79,110)orstring.char(79,102,102)), _0xC126.on and (_0xC126.id and (_0xC126.mode ==string.char(71,117,110)andstring.char(116,97,107,101,32,116,104,101,32,103,117,110)orstring.char(101,110,106,111,121)) orstring.char(112,105,99,107,32,97,32,99,117,114,115,111,114,32,98,101,108,111,119)) orstring.char(100,101,102,97,117,108,116,32,99,117,114,115,111,114))
end)
local _0xF697, _0xE8DE = {}, {}
for _0x269E, _0x5244 in ipairs({string.char(65,108,119,97,121,115),string.char(71,117,110)}) do
_0xF697[_0x5244] = _0xDC54(_0x5244, 1 + _0x269E, function()
_0xC126.mode = _0x5244
_0xD34C(string.char(99,117,114,115,111,114,115,46,109,111,100,101), _0x5244)
_0x609D()
end)
end
for _0x269E, _0xE157 in ipairs({string.char(83),string.char(77),string.char(76)}) do
_0xE8DE[_0xE157] = _0xDC54(_0xE157, 10 + _0x269E, function()
_0xC126.size = _0xE157
_0xD34C(string.char(99,117,114,115,111,114,115,46,115,105,122,101), _0xE157)
_0x609D()
end)
end
local _0x6770
for _0x624F, _0x242F in ipairs(_0xDBC6:GetChildren()) do
if _0x242F:IsA(string.char(84,101,120,116,66,117,116,116,111,110)) and _0x242F.LayoutOrder == 1 then
_0x6770 = _0x242F
end
end
local _0xF16F = _0x504E(string.char(83,99,114,111,108,108,105,110,103,70,114,97,109,101), {
Position = UDim2.fromOffset(0, 42),
Size = UDim2.new(1, 0, 1, -42),
BackgroundTransparency = 1,
BorderSizePixel = 0,
ScrollBarThickness = 3,
ScrollBarImageColor3 = _0x2E02,
ScrollBarImageTransparency = 0.3,
VerticalScrollBarInset = Enum.ScrollBarInset.Always,
ScrollingDirection = Enum.ScrollingDirection.Y,
CanvasSize = UDim2.new(),
ZIndex = 2,
Parent = _0x46D0,
})
_0x504E(string.char(85,73,80,97,100,100,105,110,103), {
PaddingTop = UDim.new(0, 1),
PaddingLeft = UDim.new(0, 1),
PaddingRight = UDim.new(0, 4),
PaddingBottom = UDim.new(0, 140),
Parent = _0xF16F,
})
local _0x0F00 = _0x504E(string.char(85,73,71,114,105,100,76,97,121,111,117,116), {
CellSize = UDim2.new(0.25, -6, 0, 118),
CellPadding = UDim2.fromOffset(8, 8),
SortOrder = Enum.SortOrder.LayoutOrder,
Parent = _0xF16F,
})
_0xB9EB(_0x0F00:GetPropertyChangedSignal(string.char(65,98,115,111,108,117,116,101,67,111,110,116,101,110,116,83,105,122,101)), function()
_0xF16F.CanvasSize = UDim2.fromOffset(0, math.max(_0x0F00.AbsoluteContentSize.Y + 140, _0xF16F.AbsoluteWindowSize.Y + 2))
end)
_0xB9EB(_0xF16F:GetPropertyChangedSignal(string.char(65,98,115,111,108,117,116,101,87,105,110,100,111,119,83,105,122,101)), function()
_0xF16F.CanvasSize = UDim2.fromOffset(0, math.max(_0x0F00.AbsoluteContentSize.Y + 140, _0xF16F.AbsoluteWindowSize.Y + 2))
end)local _0xAFE4, _0xF2F5, _0xA3D4, _0x7BEF = false, nil, 0, false
local function _0xF42F(_0x3242)
local _0x349C, _0x5D76 = _0xF16F.AbsolutePosition, _0xF16F.AbsoluteSize
return _0x3242.X >= _0x349C.X and _0x3242.X <= _0x349C.X + _0x5D76.X and _0x3242.Y >= _0x349C.Y and _0x3242.Y <= _0x349C.Y + _0x5D76.Y
end
local function _0xA4BA()
return math.max(0, _0xF16F.AbsoluteCanvasSize.Y - _0xF16F.AbsoluteWindowSize.Y)
end
_0xB9EB(_0x24DA.TouchStarted, function(input)
if not _0x46D0.Visible or not _0xF42F(input.Position) or _0xA4BA() <= 0 then return end
_0xAFE4, _0xF2F5, _0xA3D4, _0x7BEF = true, input, input.Position.Y, false
end)
_0xB9EB(_0x24DA.TouchMoved, function(input)
if not _0xAFE4 or input ~= _0xF2F5 then return end
local _0x1466 = input.Position.Y - _0xA3D4
if math.abs(_0x1466) >= 0.1 then
_0x7BEF = true
_0xA3D4 = input.Position.Y
_0xF16F.CanvasPosition = Vector2.new(0, math.clamp(_0xF16F.CanvasPosition.Y - _0x1466, 0, _0xA4BA()))
end
end)
_0xB9EB(_0x24DA.TouchEnded, function(input)
if input == _0xF2F5 then _0xAFE4, _0xF2F5 = false, nil end
end)
_0xB9EB(_0xF16F.InputBegan, function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
local _0x3242 = input.Position
if _0xF42F(_0x3242) and _0xA4BA() > 0 then
_0xAFE4, _0xF2F5, _0xA3D4, _0x7BEF = true, input, _0x3242.Y, false
end
end
end)
_0xB9EB(_0x24DA.InputChanged, function(input)
if not _0xAFE4 or not _0xF2F5 or input.UserInputType ~= Enum.UserInputType.MouseMovement then return end
local _0x1466 = input.Position.Y - _0xA3D4
if math.abs(_0x1466) >= 0.1 then
_0x7BEF = true
_0xA3D4 = input.Position.Y
_0xF16F.CanvasPosition = Vector2.new(0, math.clamp(_0xF16F.CanvasPosition.Y - _0x1466, 0, _0xA4BA()))
end
end)
_0xB9EB(_0x24DA.InputEnded, function(input)
if input == _0xF2F5 then _0xAFE4, _0xF2F5 = false, nil end
end)
local _0x2001 = {}
for _0x269E, _0x242F in ipairs(_0x5018) do
local _0x4FE3, _0x893F = _0x242F[1], _0x242F[2]
local _0x5C29 = _0x504E(string.char(84,101,120,116,66,117,116,116,111,110), {
Text ="",
AutoButtonColor = false,
BackgroundTransparency = 1,
LayoutOrder = _0x269E,
ZIndex = 2,
Parent = _0xF16F,
})
local _0x9D21 = _0x504E(string.char(70,114,97,109,101), { Size = UDim2.new(1, 0, 0, 88), BackgroundColor3 = _0x8802, ZIndex = 2, Parent = _0x5C29 })
_0xF153(_0x9D21, 8)
_0x2001[_0x4FE3] = _0x24BA(_0x9D21)
local _0x2B9B = _0x504E(string.char(73,109,97,103,101,76,97,98,101,108), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromScale(0.5, 0.5),
Size = UDim2.fromOffset(62, 62),
BackgroundTransparency = 1,
ScaleType = Enum.ScaleType.Fit,
Image = _0xFD48(_0x4FE3),
ZIndex = 3,
Parent = _0x9D21,
})
local _0x1788 = _0x504E(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(0, 93),
Size = UDim2.new(1, 0, 1, -93),
BackgroundColor3 = _0xDA2D,
ZIndex = 2,
Parent = _0x5C29,
})
_0xF153(_0x1788, 8)
_0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text = _0x893F:upper(),
Font = Enum.Font.GothamBold,
TextSize = 10,
TextColor3 = _0xA925,
TextTruncate = Enum.TextTruncate.AtEnd,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(4, 0),
Size = UDim2.new(1, -8, 1, 0),
ZIndex = 3,
Parent = _0x1788,
})
_0xB9EB(_0x5C29.MouseEnter, function()
_0x0903(_0x9D21, 0.15, { BackgroundColor3 = _0xF29A })
_0x0903(_0x2B9B, 0.2, { Size = UDim2.fromOffset(72, 72) }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
end)
_0xB9EB(_0x5C29.MouseLeave, function()
_0x0903(_0x9D21, 0.15, { BackgroundColor3 = _0x8802 })
_0x0903(_0x2B9B, 0.2, { Size = UDim2.fromOffset(62, 62) })
end)
_0xB9EB(_0x5C29.MouseButton1Click, function()
_0xC126.id = _0x4FE3
_0xC126.on = true
_0xD34C(string.char(99,117,114,115,111,114,115,46,105,100), _0x4FE3)
_0xD34C(string.char(99,117,114,115,111,114,115,46,111,110), true)
_0x609D()
_0xA9C1(string.char(67,117,114,115,111,114), _0x893F .. (_0xC126.mode ==string.char(71,117,110)andstring.char(32,45,32,116,97,107,101,32,116,104,101,32,103,117,110)or""))
end)
end
_0x609D = function()
_0xE29B(_0xC126.on)
if _0x6770 then
_0x6770.Text =string.char(67,117,114,115,111,114,58,32).. (_0xC126.on andstring.char(79,110)orstring.char(79,102,102))
end
for _0x5244, _0xF0CB in pairs(_0xF697) do
_0xF0CB(_0xC126.mode == _0x5244)
end
for _0xE157, _0xF0CB in pairs(_0xE8DE) do
_0xF0CB(_0xC126.size == _0xE157)
end
for _0x4FE3, _0x61F0 in pairs(_0x2001) do
local _0xE496 = _0xC126.id == _0x4FE3
_0x61F0.Color = _0xE496 and _0xA925 or _0x2F00
_0x61F0.Transparency = _0xE496 and 0.1 or 0
end
if _0xC126.id then
_0x2C1E.Image = _0xFD48(_0xC126.id)
end
_0x2C1E.Size = UDim2.fromOffset(_0x8AA3[_0xC126.size] or 40, _0x8AA3[_0xC126.size] or 40)
end
_0x609D()
_0x04EF(string.char(99,117,114,115,111,114,115,46,111,110), function(_0xEB0B)
if type(_0xEB0B) ==string.char(98,111,111,108,101,97,110)then
_0xC126.on = _0xEB0B
_0x609D()
end
end, function()
return _0xC126.on
end, false)
_0x04EF(string.char(99,117,114,115,111,114,115,46,105,100), function(_0xEB0B)
if type(_0xEB0B) ==string.char(110,117,109,98,101,114)then
_0xC126.id = _0xEB0B
_0x609D()
end
end, function()
return _0xC126.id
end)
_0x04EF(string.char(99,117,114,115,111,114,115,46,109,111,100,101), function(_0xEB0B)
if _0xEB0B ==string.char(71,117,110)or _0xEB0B ==string.char(65,108,119,97,121,115)then
_0xC126.mode = _0xEB0B
_0x609D()
end
end, function()
return _0xC126.mode
end,string.char(65,108,119,97,121,115))
_0x04EF(string.char(99,117,114,115,111,114,115,46,115,105,122,101), function(_0xEB0B)
if _0x8AA3[_0xEB0B] then
_0xC126.size = _0xEB0B
_0x609D()
end
end, function()
return _0xC126.size
end,string.char(77))
_0x2E4A = function()
pcall(function()
_0xB197:UnbindFromRenderStep(string.char(67,108,117,109,115,121,83,99,114,105,112,116,67,117,114,115,111,114))
end)
_0xC126.on = false
if _0x15B0 then
_0x24DA.MouseIconEnabled = true
end
_0x15B0 = false
_0xD199:Destroy()
end
end
do
local _0xEE83 = { _0xE496 = false, model =string.char(71,114,101,101,110), _0x428B = 100, _0x9ADD = 1, _0x3AA0 = 35, offsetX = 0, offsetY = 0 }
local _0xEB34 = { Green = 17437147124, Black = 9341070001, Classic = 13324755498 }
local _0x4E46, _0x95BF = {}, {}
local _0xC126
local function _0x29C1(_0x893F)
if _0x4E46[_0x893F] ~= nil then
return _0x4E46[_0x893F] or nil
end
if _0x95BF[_0x893F] then
return nil
end
_0x95BF[_0x893F] = true
task.spawn(function()
local _0xD828, _0x2F59 = pcall(function()
return game:GetObjects(string.char(114,98,120,97,115,115,101,116,105,100,58,47,47).. _0xEB34[_0x893F])
end)
local _0xC6D1 = _0xD828 and _0x2F59 and _0x2F59[1]
if _0xC6D1 and not _0xC6D1:IsA(string.char(77,111,100,101,108)) then
local _0x5244 = Instance.new(string.char(77,111,100,101,108))
for _0x624F, _0x012C in ipairs(_0x2F59) do
_0x012C.Parent = _0x5244
end
_0xC6D1 = _0x5244
end
if _0xC6D1 then
for _0x624F, _0x4244 in ipairs(_0xC6D1:GetDescendants()) do
if _0x4244:IsA(string.char(66,97,99,107,112,97,99,107,73,116,101,109)) then
local _0x5244 = Instance.new(string.char(77,111,100,101,108))
_0x5244.Name = _0x4244.Name
for _0x624F, _0x242F in ipairs(_0x4244:GetChildren()) do
_0x242F.Parent = _0x5244
end
_0x5244.Parent = _0x4244.Parent
_0x4244:Destroy()
end
end
for _0x624F, _0x4244 in ipairs(_0xC6D1:GetDescendants()) do
if _0x4244:IsA(string.char(76,117,97,83,111,117,114,99,101,67,111,110,116,97,105,110,101,114)) or _0x4244:IsA(string.char(83,111,117,110,100)) or _0x4244:IsA(string.char(74,111,105,110,116,73,110,115,116,97,110,99,101)) or _0x4244:IsA(string.char(87,101,108,100,67,111,110,115,116,114,97,105,110,116)) or _0x4244:IsA(string.char(67,108,105,99,107,68,101,116,101,99,116,111,114)) or _0x4244:IsA(string.char(80,114,111,120,105,109,105,116,121,80,114,111,109,112,116)) or _0x4244:IsA(string.char(72,117,109,97,110,111,105,100)) then
_0x4244:Destroy()
end
end
if not _0xC6D1:FindFirstChildWhichIsA(string.char(66,97,115,101,80,97,114,116), true) then
_0xC6D1 = nil
end
end
_0x4E46[_0x893F] = _0xC6D1 or false
_0x95BF[_0x893F] = nil
if not _0xC6D1 then
_0xA9C1(string.char(71,117,110,32,83,107,105,110), _0x893F ..string.char(32,102,97,105,108,101,100,32,116,111,32,108,111,97,100))
end
end)
return nil
end
local function _0x940B()
if _0xC126 then
if _0xC126.model then
_0xC126.model:Destroy()
end
for _0x09CD in pairs(_0xC126.hidden) do
if _0x09CD.Parent then
_0x09CD.LocalTransparencyModifier = 0
end
end
end
_0xC126 = nil
end
local _0x1D96 = { Vector3.xAxis, Vector3.yAxis, Vector3.zAxis }
local function _0x9D66(_0x428B)
local _0xDFBA = { { 1, _0x428B.X }, { 2, _0x428B.Y }, { 3, _0x428B.Z } }
table.sort(_0xDFBA, function(_0xDA08, _0xBF1F)
return _0xDA08[2] > _0xBF1F[2]
end)
return _0x1D96[_0xDFBA[1][1]], _0x1D96[_0xDFBA[2][1]], _0xDFBA[1][2]
end
local function _0x6E55(_0x3242, _0x53F0, _0x2B49)
local _0x9DED = _0x53F0:Cross(_0x2B49).Unit
_0x2B49 = _0x9DED:Cross(_0x53F0).Unit
return CFrame.fromMatrix(_0x3242, _0x9DED, _0x2B49, -_0x53F0)
end
local function _0x8243(_0xA2E1, _0xDD2C, _0x9036)
_0x940B()
local _0x5244 = _0x9036:Clone()
local _0x0341 = {}
for _0x624F, _0x4244 in ipairs(_0x5244:GetDescendants()) do
if _0x4244:IsA(string.char(66,97,115,101,80,97,114,116)) then
_0x4244.Anchored, _0x4244.CanCollide, _0x4244.CanQuery, _0x4244.CanTouch, _0x4244.Massless, _0x4244.CastShadow = true, false, false, false, true, false
table.insert(_0x0341, _0x4244)
end
end
local _0x624F, _0x428B = _0x5244:GetBoundingBox()
local _0x624F, _0x624F, _0xF52D = _0x9D66(_0x428B)
pcall(function()
_0x5244:ScaleTo(_0x5244:GetScale() * (4.5 * _0xEE83.size / 100) / math.max(_0xF52D, 0.1))
end)
local _0x3DC2, _0x4ED5 = _0x5244:GetBoundingBox()
local _0xA74A, _0xF905 = _0x9D66(_0x4ED5)
_0x5244.WorldPivot = _0x6E55(_0x3DC2.Position, _0x3DC2:VectorToWorldSpace(_0xA74A), _0x3DC2:VectorToWorldSpace(_0xF905))
local _0xFC14, _0x61A4 = _0x9D66(_0xDD2C.Size)local _0x912F = _0x8E3D.Character and _0x8E3D.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0x53F0 = _0x912F and _0x912F.CFrame.LookVector or _0xDD2C.CFrame.LookVector
_0x53F0 = Vector3.new(_0x53F0.X, 0, _0x53F0.Z)
if _0x53F0.Magnitude < 0.001 then
_0x53F0 = Vector3.new(0, 0, -1)
else
_0x53F0 = _0x53F0.Unit
end
local _0x2B49 = Vector3.yAxis
local _0x624F, _0x624F, _0xDE0F = _0x9D66(_0x4ED5)local _0xE27D = _0x6E55(_0xDD2C.Position + _0x53F0 * _0xDE0F * 0.25, _0x53F0, _0x2B49)
_0xE27D = _0xE27D * CFrame.new(_0xEE83.offsetX, _0xEE83.offsetY, 0)
_0xE27D = _0xE27D * CFrame.Angles(math.rad(-_0xEE83.pitch), 0, 0)
_0x5244:PivotTo(_0xE27D)
local _0x0180 = {}
for _0x624F, _0x6C67 in ipairs(_0x0341) do
_0x0180[_0x6C67] = _0xDD2C.CFrame:ToObjectSpace(_0x6C67.CFrame)
end
_0x5244.Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,71,117,110,83,107,105,110)_0x5244.Parent = workspace.CurrentCamera
_0xC126 = {
_0xA2E1 = _0xA2E1,
_0xDD2C = _0xDD2C,
model = _0x5244,
_0x0180 = _0x0180,
_0x15B0 = {},
_0xD4D9 = table.concat({ _0xEE83.model, _0xEE83.size, _0xEE83.turn, _0xEE83.pitch, _0xEE83.offsetX, _0xEE83.offsetY },string.char(58)),
}
end
_0xB9EB(_0xB197.RenderStepped, function()
if not _0xEE83.on then
return
end
local _0xD95E = _0x8E3D.Character
local _0xA2E1 = _0xD95E and _0xD95E:FindFirstChild(string.char(71,117,110))
local _0xDD2C = _0xA2E1 and _0xA2E1:FindFirstChild(string.char(72,97,110,100,108,101))
if not _0xDD2C then
if _0xC126 then
_0x940B()
end
return
end
local _0xD4D9 = table.concat({ _0xEE83.model, _0xEE83.size, _0xEE83.turn, _0xEE83.pitch, _0xEE83.offsetX, _0xEE83.offsetY },string.char(58))
if not _0xC126 or _0xC126.tool ~= _0xA2E1 or _0xC126.key ~= _0xD4D9 or not _0xC126.model.Parent then
local _0x9036 = _0x29C1(_0xEE83.model)
if not _0x9036 then
return
end
_0x8243(_0xA2E1, _0xDD2C, _0x9036)
end
local _0x9145 = _0xDD2C.CFrame
for _0x6C67, _0xA0A0 in pairs(_0xC126.offsets) do
_0x6C67.CFrame = _0x9145 * _0xA0A0
end
for _0x624F, _0x4244 in ipairs(_0xA2E1:GetDescendants()) do
if _0x4244:IsA(string.char(66,97,115,101,80,97,114,116)) and _0x4244.LocalTransparencyModifier < 1 then
_0x4244.LocalTransparencyModifier = 1
_0xC126.hidden[_0x4244] = true
end
end
end)
local _0x61C4 = _0x45F1(_0xD635,string.char(71,117,110,32,83,107,105,110),string.char(77,111,100,101,108,115))
_0x61C4:Toggle(string.char(65,87,77),string.char(115,110,105,112,101,114,32,114,105,102,108,101,32,105,110,115,116,101,97,100,32,111,102,32,116,104,101,32,115,104,101,114,105,102,102,32,103,117,110,32,40,111,110,108,121,32,121,111,117,32,115,101,101,32,105,116,41), function(_0xE496)
_0xEE83.on = _0xE496
if not _0xE496 then
_0x940B()
end
if _0xE496 and not _0x42B0 then
_0xE8C6(string.char(83,104,101,114,105,102,102,32,111,110,108,121),string.char(84,104,105,115,32,102,101,97,116,117,114,101,32,111,110,108,121,32,119,111,114,107,115,32,119,104,101,110,32,121,111,117,32,97,114,101,32,116,104,101,32,83,104,101,114,105,102,102,32,97,110,100,32,104,111,108,100,32,116,104,101,32,103,117,110,46),string.char(68,111,110,101))
end
_0xA9C1(string.char(65,87,77,58,32).. (_0xE496 andstring.char(79,110)orstring.char(79,102,102)), _0xE496 andstring.char(116,97,107,101,32,111,117,116,32,116,104,101,32,103,117,110)orstring.char(110,111,114,109,97,108,32,103,117,110))
end)
_0x61C4:Select(string.char(77,111,100,101,108),string.char(65,87,77,32,108,111,111,107), {string.char(71,114,101,101,110),string.char(66,108,97,99,107),string.char(67,108,97,115,115,105,99)}, _0xEE83.model, function(_0xEB0B)
_0xEE83.model = _0xEB0B
end)
local _0x4640 = _0x45F1(_0xD635,string.char(71,117,110,32,80,111,115,101),string.char(77,111,100,101,108,115))
_0x4640:Slider(string.char(83,105,122,101), 50, 200, _0xEE83.size, function(_0xEB0B)
_0xEE83.size = _0xEB0B
end, function(_0xEB0B)
return _0xEB0B ..string.char(37)end)
_0x4640:Slider(string.char(84,105,108,116,32,68,111,119,110,32,47,32,85,112), -90, 90, _0xEE83.pitch, function(_0xEB0B)
_0xEE83.pitch = _0xEB0B
end, function(_0xEB0B)
return (_0xEB0B > 0 andstring.char(43)or"") .. _0xEB0B ..string.char(194,176)end)
_0x4640:Slider(string.char(76,101,102,116,32,47,32,82,105,103,104,116), -20, 20, _0xEE83.offsetX * 10, function(_0xEB0B)
_0xEE83.offsetX = _0xEB0B / 10
end, function(_0xEB0B)
return string.format(string.char(37,46,49,102), _0xEB0B / 10)
end)
_0x4640:Slider(string.char(68,111,119,110,32,47,32,85,112), -20, 20, _0xEE83.offsetY * 10, function(_0xEB0B)
_0xEE83.offsetY = _0xEB0B / 10
end, function(_0xEB0B)
return string.format(string.char(37,46,49,102), _0xEB0B / 10)
end)
local _0xDA44 = _0x09F2[string.char(71,117,110,32,83,107,105,110,47,116,117,114,110)]
if type(_0xDA44) ==string.char(110,117,109,98,101,114)then_0x2FCD.turn = (_0xDA44 == 0) and 1 or (_0xDA44 % 4)
end
_0x61C4:Button(string.char(82,111,116,97,116,101),string.char(105,102,32,116,104,101,32,98,97,114,114,101,108,32,112,111,105,110,116,115,32,116,104,101,32,119,114,111,110,103,32,119,97,121), function()
_0xEE83.turn = (_0xEE83.turn + 1) % 4
_0xD34C(string.char(71,117,110,32,83,107,105,110,47,116,117,114,110), _0xEE83.turn)
end)
_0x04EF(string.char(71,117,110,32,83,107,105,110,47,116,117,114,110), function(_0xEB0B)
if type(_0xEB0B) ==string.char(110,117,109,98,101,114)then
_0xEE83.turn = _0xEB0B % 4
end
end, function()
return _0xEE83.turn
end, 0)
_0x3F87 = function()
_0xEE83.on = false
_0x940B()
end
end
do
local _0xFC36 = {
sel = { Knife = nil, Gun = nil },
listType =string.char(75,110,105,102,101),
_0x428B = 100,
_0x9470 = false,
sparkles = false,
_0xC582 = false,
_0x36A1 = 60,
enabled = true,
}
local _0x5078 = {
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
local _0x29BB = {
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
local _0x18CE = {
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
local _0x2FEB = {}
local _0xED8F = {}
for _0x624F, _0xDF88 in ipairs(_0x5078) do
local _0xE157 = {
_0xD4D9 = _0xDF88[1],
_0x893F = _0xDF88[2],
type = _0xDF88[3] ==string.char(75)andstring.char(75,110,105,102,101)orstring.char(71,117,110),
rarity = _0xDF88[4],
mesh =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47).. _0xDF88[5],
_0xD408 = _0xDF88[6] ~= 0 andstring.char(114,98,120,97,115,115,101,116,105,100,58,47,47).. _0xDF88[6] or"",
_0x08CD = { _0xDF88[7], _0xDF88[8], _0xDF88[9] },
_0xFD48 = _0xDF88[10],
_0x1369 =string.char(116,111,111,108),
_0xA2C8 = _0xDF88[4],
grip = _0xDF88[11] and CFrame.new(_0xDF88[11], _0xDF88[12], _0xDF88[13], _0xDF88[14], _0xDF88[15], _0xDF88[16], _0xDF88[17], _0xDF88[18], _0xDF88[19], _0xDF88[20], _0xDF88[21], _0xDF88[22]) or nil,
}
table.insert(_0x2FEB, _0xE157)
_0xED8F[_0xE157.key] = _0xE157
end
table.sort(_0x2FEB, function(_0xDA08, _0xBF1F)
local _0x6427, _0xFDD0 = _0x29BB[_0xDA08.rarity] or 10, _0x29BB[_0xBF1F.rarity] or 10
if _0x6427 ~= _0xFDD0 then
return _0x6427 < _0xFDD0
end
return _0xDA08.name < _0xBF1F.name
end)
local _0x3EB8 = {}
local function _0xB52A(_0x6F67)
local _0xDA08 = _0x3EB8[_0x6F67]
if not _0xDA08 then
return
end
pcall(function()
if _0xDA08.mesh and _0xDA08.orig then
_0xDA08.mesh.MeshId = _0xDA08.orig.MeshId
_0xDA08.mesh.TextureId = _0xDA08.orig.TextureId
_0xDA08.mesh.Scale = _0xDA08.orig.Scale
end
if _0xDA08.origColor then
_0x6F67.Color = _0xDA08.origColor
_0x6F67.Material = _0xDA08.origMat
end
if _0xDA08.overlay then
_0xDA08.overlay:Destroy()
end
if _0xDA08.hiddenParts then
for hiddenPart, originalTransparency in pairs(_0xDA08.hiddenParts) do
if hiddenPart and hiddenPart.Parent then
hiddenPart.LocalTransparencyModifier = originalTransparency or 0
end
end
_0xDA08.hiddenParts = nil
end
_0x6F67.LocalTransparencyModifier = 0
end)
for _0x624F, _0xF0CB in ipairs(_0xDA08.fx) do
_0xF0CB:Destroy()
end
_0x3EB8[_0x6F67] = nil
end
local function _0x9035()
for _0x6F67 in pairs(_0x3EB8) do
_0xB52A(_0x6F67)
end
end
local function _0x78F5(_0xDA08, _0xDD2C)
for _0x624F, _0xF0CB in ipairs(_0xDA08.fx) do
_0xF0CB:Destroy()
end
_0xDA08.fx = {}
local _0x7F96 = _0xA925
if _0xFC36.glow then
table.insert(_0xDA08.fx, _0x504E(string.char(80,111,105,110,116,76,105,103,104,116), {
Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,71,108,111,119),
Color = _0x7F96,
Brightness = _0xFC36.light / 25,
Range = 9,
Shadows = false,
Parent = _0xDD2C,
}))
end
if _0xFC36.sparkles then
table.insert(_0xDA08.fx, _0x504E(string.char(80,97,114,116,105,99,108,101,69,109,105,116,116,101,114), {
Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,112,97,114,107,108,101,115),
Texture =string.char(114,98,120,97,115,115,101,116,58,47,47,116,101,120,116,117,114,101,115,47,112,97,114,116,105,99,108,101,115,47,115,112,97,114,107,108,101,115,95,109,97,105,110,46,100,100,115),
LightEmission = 1,
Size = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0.25), NumberSequenceKeypoint.new(1, 0) }),
Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0.1), NumberSequenceKeypoint.new(1, 1) }),
Lifetime = NumberRange.new(0.4, 0.8),
Rate = 14,
Speed = NumberRange.new(0.5, 1.5),
SpreadAngle = Vector2.new(180, 180),
Parent = _0xDD2C,
}))
end
end
local _0x9F9C = { _0xA2E1 = nil, display = nil }
local _0xC2A3 = 1
local function _0xD339()
if _0x9F9C.tool and _0x9F9C.display and _0x9F9C.display > 0 then
_0xC2A3 = _0x9F9C.tool / _0x9F9C.display
_0xD34C(string.char(83,107,105,110,32,67,104,97,110,103,101,114,47,75), _0xC2A3)
end
end
_0x04EF(string.char(83,107,105,110,32,67,104,97,110,103,101,114,47,75), function(_0xEB0B)
if type(_0xEB0B) ==string.char(110,117,109,98,101,114)and _0xEB0B > 0 then
_0xC2A3 = _0xEB0B
end
end, function()
return _0xC2A3
end, 1)
local function _0x4884(_0x6F67)
if _0x6F67:IsA(string.char(77,101,115,104,80,97,114,116)) then
local _0x0CE7 = _0x6F67.MeshSize
return _0x0CE7.Magnitude > 0 and (_0x6F67.Size / _0x0CE7).Magnitude or nil
end
local _0x93B8 = _0x6F67:FindFirstChildOfClass(string.char(83,112,101,99,105,97,108,77,101,115,104))
return _0x93B8 and _0x93B8.Scale.Magnitude or nil
end
local function _0x5EFE(_0xE157, _0x7969)
local _0xEB0B = Vector3.new(_0xE157.scale[1], _0xE157.scale[2], _0xE157.scale[3])
local _0x8502 = _0xE157.src orstring.char(100,105,115,112,108,97,121)if _0x7969 ==string.char(116,111,111,108)and _0x8502 ==string.char(100,105,115,112,108,97,121)then
_0xEB0B *= _0xC2A3
elseif _0x7969 ==string.char(100,105,115,112,108,97,121)and _0x8502 ==string.char(116,111,111,108)then
_0xEB0B /= _0xC2A3
end
return _0xEB0B * (_0xFC36.size / 100)
end
local function _0x5FF3(_0x6F67, _0xB2DF, isTool)
local _0x7969 = isTool andstring.char(116,111,111,108)orstring.char(100,105,115,112,108,97,121)if not _0x3EB8[_0x6F67] then
local _0xDF88 = _0x4884(_0x6F67)
if _0xDF88 and _0xDF88 > 0 and _0x9F9C[_0x7969] ~= _0xDF88 then
_0x9F9C[_0x7969] = _0xDF88
_0xD339()
end
end
local _0xE157 = _0xED8F[_0xFC36.sel[_0xB2DF]]
if not _0xE157 then
_0xB52A(_0x6F67)
return
end
local _0xDA08 = _0x3EB8[_0x6F67]
if _0xDA08 and _0xDA08.key == _0xE157.key and _0xDA08.size == _0xFC36.size then
if _0xDA08.mesh and not _0xDA08.overlay and _0xDA08.mesh.MeshId ~= _0xE157.mesh then
_0xDA08.key = nil
else
if _0xDA08.overlay then
_0x6F67.LocalTransparencyModifier = 1
end
return
end
end
if not _0xDA08 then
_0xDA08 = { _0x8CF5 = {}, origColor = _0x6F67.Color, origMat = _0x6F67.Material }
local _0x93B8 = _0x6F67:FindFirstChildOfClass(string.char(83,112,101,99,105,97,108,77,101,115,104))
if _0x93B8 and not _0x6F67:IsA(string.char(77,101,115,104,80,97,114,116)) then
_0xDA08.mesh = _0x93B8
_0xDA08.orig = { MeshId = _0x93B8.MeshId, TextureId = _0x93B8.TextureId, Scale = _0x93B8.Scale }
end
_0x3EB8[_0x6F67] = _0xDA08
end
_0xDA08.key, _0xDA08.size = _0xE157.key, _0xFC36.size
if _0xDA08.mesh and not (_0x7969 ==string.char(116,111,111,108)and _0xE157.grip) then
if _0xDA08.overlay then
_0xDA08.overlay:Destroy()
_0xDA08.overlay = nil
_0x6F67.LocalTransparencyModifier = 0
end
_0xDA08.mesh.MeshId = _0xE157.mesh
_0xDA08.mesh.TextureId = _0xE157.tex
_0xDA08.mesh.Scale = _0x5EFE(_0xE157, _0x7969)
if _0xE157.color then
_0x6F67.Color = Color3.new(_0xE157.color[1], _0xE157.color[2], _0xE157.color[3])
pcall(function()
_0x6F67.Material = Enum.Material[_0xE157.mat]
end)
end
else
if _0xDA08.overlay then
_0xDA08.overlay:Destroy()
end
if _0xDA08.mesh and _0xDA08.orig then
_0xDA08.mesh.MeshId = _0xDA08.orig.MeshId
_0xDA08.mesh.TextureId = _0xDA08.orig.TextureId
_0xDA08.mesh.Scale = _0xDA08.orig.Scale
end
local _0xA0A0 = CFrame.identity
local _0xA2E1 = _0x6F67.Parent
if _0x7969 ==string.char(116,111,111,108)and _0xE157.grip and _0xA2E1 and _0xA2E1:IsA(string.char(84,111,111,108)) then
_0xA0A0 = _0xA2E1.Grip * _0xE157.grip:Inverse()
end
local _0x09CD = _0x504E(string.char(80,97,114,116), {
Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,107,105,110),
Size = Vector3.one * 0.2,
Transparency = 0,
CanCollide = false,
CanTouch = false,
CanQuery = false,
Massless = true,
Anchored = false,
CFrame = _0x6F67.CFrame * _0xA0A0,
Parent = _0x6F67,
})
_0x504E(string.char(83,112,101,99,105,97,108,77,101,115,104), {
MeshType = Enum.MeshType.FileMesh,
MeshId = _0xE157.mesh,
TextureId = _0xE157.tex,
Scale = _0x5EFE(_0xE157, _0x7969),
Parent = _0x09CD,
})
if _0xE157.color then
_0x09CD.Color = Color3.new(_0xE157.color[1], _0xE157.color[2], _0xE157.color[3])
pcall(function()
_0x09CD.Material = Enum.Material[_0xE157.mat]
end)
end
_0x504E(string.char(87,101,108,100,67,111,110,115,116,114,97,105,110,116), { Part0 = _0x6F67, Part1 = _0x09CD, Parent = _0x09CD })
_0xDA08.overlay = _0x0D18if isTool then
_0xDA08.hiddenParts = _0xDA08.hiddenParts or {}
local _0xA2E1 = _0x6F67:FindFirstAncestorOfClass(string.char(84,111,111,108))
if _0xA2E1 then
for _0x624F, _0x4244 in ipairs(_0xA2E1:GetDescendants()) do
if _0x4244:IsA(string.char(66,97,115,101,80,97,114,116)) and _0x4244 ~= _0x09CD and not _0x4244:IsDescendantOf(_0x09CD) then
if _0xDA08.hiddenParts[_0x4244] == nil then
_0xDA08.hiddenParts[_0x4244] = _0x4244.LocalTransparencyModifier
end
_0x4244.LocalTransparencyModifier = 1
end
end
end
end
_0x6F67.LocalTransparencyModifier = 1
end
if isTool then
_0x78F5(_0xDA08, _0x6F67)
end
endlocal function _0xC4CD(_0xD95E)
local _0x9D3D, _0x9F6E = {}, {}
local _0xA08A = {string.char(98,97,99,107,107,110,105,102,101),string.char(98,97,99,107,95,107,110,105,102,101),string.char(107,110,105,102,101,95,98,97,99,107),string.char(107,110,105,102,101,100,105,115,112,108,97,121),string.char(107,110,105,102,101,95,100,105,115,112,108,97,121),string.char(100,105,115,112,108,97,121,107,110,105,102,101),string.char(98,97,99,107,119,101,97,112,111,110),string.char(98,97,99,107,95,119,101,97,112,111,110),string.char(119,101,97,112,111,110,100,105,115,112,108,97,121),string.char(119,101,97,112,111,110,95,100,105,115,112,108,97,121),string.char(107,110,105,102,101,115,104,101,97,116,104),string.char(107,110,105,102,101,95,115,104,101,97,116,104),string.char(115,104,101,97,116,104),string.char(107,110,105,102,101)}
local function _0x1BC7(_0x893F)
local _0xE9D1 = string.lower(_0x893F or"")
for _0x624F, _0xF171 in ipairs(_0xA08A) do
if _0xE9D1 == _0xF171 or _0xE9D1:find(_0xF171, 1, true) then
return true
end
end
return false
end
local function _0x1C7E(_0xCE5A)
if not _0xCE5A or _0x9F6E[_0xCE5A] or _0xCE5A:IsA(string.char(84,111,111,108)) then return end
if not (_0xCE5A:IsA(string.char(77,111,100,101,108)) or _0xCE5A:IsA(string.char(70,111,108,100,101,114)) or _0xCE5A:IsA(string.char(66,97,115,101,80,97,114,116)) or _0xCE5A:IsA(string.char(65,99,99,101,115,115,111,114,121))) then
return
end
if not _0x1BC7(_0xCE5A.Name) then return end
local _0x0341 = {}
if _0xCE5A:IsA(string.char(66,97,115,101,80,97,114,116)) then
table.insert(_0x0341, _0xCE5A)
else
local _0x92B8 = _0xD95E:FindFirstChildOfClass(string.char(84,111,111,108))
for _0x624F, _0xA65E in ipairs(_0xCE5A:GetDescendants()) do
if _0xA65E:IsA(string.char(66,97,115,101,80,97,114,116)) and (not _0x92B8 or not _0xA65E:IsDescendantOf(_0x92B8)) then
table.insert(_0x0341, _0xA65E)
end
end
end
if #_0x0341 > 0 then
_0x9F6E[_0xCE5A] = true
table.insert(_0x9D3D, {_0xC6D1 = _0xCE5A, _0x0341 = _0x0341})
end
end
for _0x624F, child in ipairs(_0xD95E:GetChildren()) do
if child:IsA(string.char(77,111,100,101,108)) or child:IsA(string.char(70,111,108,100,101,114)) or child:IsA(string.char(65,99,99,101,115,115,111,114,121)) or child:IsA(string.char(66,97,115,101,80,97,114,116)) then
_0x1C7E(child)
end
end
for _0x624F, _0xA65E in ipairs(_0xD95E:GetDescendants()) do
if _0xA65E:IsA(string.char(77,111,100,101,108)) or _0xA65E:IsA(string.char(70,111,108,100,101,114)) or _0xA65E:IsA(string.char(66,97,115,101,80,97,114,116)) then
_0x1C7E(_0xA65E)
end
endif #_0x9D3D == 0 then
for _0x624F, _0xA65E in ipairs(_0xD95E:GetDescendants()) do
if _0xA65E:IsA(string.char(66,97,115,101,80,97,114,116)) then
local _0xE9D1 = _0xA65E.Name:lower()
if (_0xE9D1:find(string.char(98,97,99,107,107,110,105,102,101),1,true) or _0xE9D1 ==string.char(98,108,97,100,101)or _0xE9D1 ==string.char(107,110,105,102,101)) and not _0xA65E:IsDescendantOf(_0xD95E:FindFirstChild(string.char(75,110,105,102,101))) then
table.insert(_0x9D3D, {_0xC6D1=_0xA65E, _0x0341={_0xA65E}})
end
end
end
end
return _0x9D3D
end
local function _0x3F81()
local _0xDFBA = {}
local _0xD95E = _0x8E3D.Character
if not _0xD95E then
return _0xDFBA
end
local _0x9F6E = {}
local function _0x2329(_0x6F67, _0xB2DF, isTool)
if _0x6F67 and _0x6F67:IsA(string.char(66,97,115,101,80,97,114,116)) and not _0x9F6E[_0x6F67] then
_0x9F6E[_0x6F67] = true
table.insert(_0xDFBA, {_0x6F67, _0xB2DF, isTool, nil})
end
endfor _0x624F, _0xA2E1 in ipairs(_0xD95E:GetChildren()) do
if _0xA2E1:IsA(string.char(84,111,111,108)) then
local _0xE9D1 = string.lower(_0xA2E1.Name)
local _0xB2DF = _0xE9D1:find(string.char(107,110,105,102,101), 1, true) andstring.char(75,110,105,102,101)or (_0xE9D1:find(string.char(103,117,110), 1, true) andstring.char(71,117,110)or nil)
if _0xB2DF then
local _0xF171 = _0xA2E1:FindFirstChild(string.char(72,97,110,100,108,101))
if not (_0xF171 and _0xF171:IsA(string.char(66,97,115,101,80,97,114,116))) then
for _0x624F, _0xA65E in ipairs(_0xA2E1:GetDescendants()) do
if _0xA65E:IsA(string.char(66,97,115,101,80,97,114,116)) then _0xF171 = _0xA65E break end
end
end
_0x2329(_0xF171, _0xB2DF, true)
end
end
endfor _0x624F, display in ipairs(_0xC4CD(_0xD95E)) do
local _0xC6D1 = display.root
local _0x13C3
for _0x624F, _0x6F67 in ipairs(display.parts) do
local _0xE9D1 = _0x6F67.Name:lower()
if _0xE9D1 ==string.char(104,97,110,100,108,101)or _0xE9D1 ==string.char(98,97,99,107,107,110,105,102,101)or _0xE9D1 ==string.char(98,108,97,100,101)or _0xE9D1 ==string.char(107,110,105,102,101)then
_0x13C3 = _0x6F67
break
end
end
_0xC6D1 = _0x13C3 or _0xC6D1
_0x2329(_0xC6D1,string.char(75,110,105,102,101), false)
local _0x4F55 = _0xDFBA[#_0xDFBA]
_0x4F55[4] = display.parts
end
return _0xDFBA
end
local function _0x6943(_0x4F55, appliedEntry)
if _0x4F55[3] or not _0x4F55[4] then return end
appliedEntry.hiddenParts = appliedEntry.hiddenParts or {}
for _0x624F, _0x6F67 in ipairs(_0x4F55[4]) do
if _0x6F67 and _0x6F67:IsA(string.char(66,97,115,101,80,97,114,116)) and _0x6F67 ~= _0x4F55[1] then
if appliedEntry.hiddenParts[_0x6F67] == nil then
appliedEntry.hiddenParts[_0x6F67] = _0x6F67.LocalTransparencyModifier
end
_0x6F67.LocalTransparencyModifier = 1
end
end
end
local function _0x149D()
for _0x624F, _0xDA08 in pairs(_0x3EB8) do
_0xDA08.key = nil
end
end
local _0x2865 = 0
_0xB9EB(_0xB197.Heartbeat, function()
local _0x8C28 = os.clock()
if _0xFC36.enabled and _0x8C28 - _0x2865 > 0.2 then
_0x2865 = _0x8C28
local _0x9CCE = {}
for _0x624F, _0x634C in ipairs(_0x3F81()) do
_0x9CCE[_0x634C[1]] = true
pcall(_0x5FF3, _0x634C[1], _0x634C[2], _0x634C[3])
if not _0x634C[3] then
local _0xDA08 = _0x3EB8[_0x634C[1]]
if _0xDA08 then
_0x6943(_0x634C, _0xDA08)
end
end
endfor _0x6F67 in pairs(_0x3EB8) do
if not _0x6F67:IsDescendantOf(game) then
_0x3EB8[_0x6F67] = nil
elseif not _0x9CCE[_0x6F67] then
_0xB52A(_0x6F67)
end
end
end
end)
local _0x46D0 = _0x7788.page
_0x7788.custom = true
_0x7788.title.Visible = false
_0x7788.desc.Visible = false
_0x46D0.ScrollingEnabled = false
_0x46D0.Active = false
_0x46D0.ScrollBarThickness = 0
_0x46D0.CanvasSize = UDim2.new()
local _0x8802 = Color3.fromRGB(36, 36, 38)
local _0xF29A = Color3.fromRGB(48, 48, 52)
local _0xDA2D = Color3.fromRGB(17, 17, 19)
local _0x609D
local function _0xDC54(_0xDF1D, _0xEE8A, _0x4244, _0xF171, _0x428B)
local _0xCDE9 = _0x48B6:GetTextSize(_0xEE8A, _0x428B, Enum.Font.GothamMedium, Vector2.new(300, 40)).X + 30
local _0xBF1F = _0x504E(string.char(84,101,120,116,66,117,116,116,111,110), {
Text ="",
AutoButtonColor = false,
BackgroundColor3 = Color3.fromRGB(90, 90, 90),
BackgroundTransparency = 0.85,
Position = UDim2.fromOffset(_0x4244, 0),
Size = UDim2.fromOffset(_0xCDE9, _0xF171),
ZIndex = 3,
Parent = _0xDF1D,
})
_0xF153(_0xBF1F, 9)
local _0xA65E = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.new(0, 12, 0.5, 0),
Size = UDim2.fromOffset(0, 0),
BackgroundColor3 = _0xA925,
BorderSizePixel = 0,
ZIndex = 4,
Parent = _0xBF1F,
})
_0x9A43(_0xA65E)
local _0x3E3E = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text = _0xEE8A,
Font = Enum.Font.GothamMedium,
TextSize = _0x428B,
TextColor3 = _0x2E02,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(15, 0),
Size = UDim2.new(1, -15, 1, 0),
ZIndex = 4,
Parent = _0xBF1F,
})
local _0x012C = { _0xBF1F = _0xBF1F, _0x1B16 = _0xA65E, _0xFE81 = _0x3E3E, _0xCDE9 = _0xCDE9, _0xE496 = false }
_0x012C.set = function(_0xE496)
_0x012C.on = _0xE496
_0x0903(_0xBF1F, 0.25, { BackgroundTransparency = _0xE496 and 0.35 or 0.85 }, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
_0x0903(_0xA65E, 0.25, { Size = UDim2.fromOffset(_0xE496 and 6 or 0, _0xE496 and 6 or 0) }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
_0x0903(_0x3E3E, 0.25, { TextColor3 = _0xE496 and _0xA925 or _0x2E02, Position = UDim2.fromOffset(_0xE496 and 21 or 15, 0) }, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
end
_0xB9EB(_0xBF1F.MouseEnter, function()
if not _0x012C.on then
_0x0903(_0x3E3E, 0.15, { TextColor3 = _0xDC52 })
end
end)
_0xB9EB(_0xBF1F.MouseLeave, function()
if not _0x012C.on then
_0x0903(_0x3E3E, 0.15, { TextColor3 = _0x2E02 })
end
end)
return _0x012C
end
local _0xDBC6 = _0x504E(string.char(70,114,97,109,101), { Size = UDim2.new(1, 0, 0, 30), BackgroundTransparency = 1, ZIndex = 3, Parent = _0x46D0 })
local _0x5FEC, _0x4244 = {}, 0
for _0x624F, sub in ipairs({string.char(75,110,105,102,101),string.char(71,117,110)}) do
local _0x012C = _0xDC54(_0xDBC6, sub, _0x4244, 30, 13)
_0x5FEC[sub] = _0x012C
_0x4244 += _0x012C.w + 4
_0xB9EB(_0x012C.b.MouseButton1Click, function()
if _0xFC36.listType == sub then
return
end
_0x5FEC[_0xFC36.listType].set(false)
_0xFC36.listType = sub
_0x012C.set(true)
_0x609D(true)
end)
end
_0x5FEC[_0xFC36.listType].set(true)
local _0x491F = _0x504E(string.char(84,101,120,116,66,117,116,116,111,110), {
Text ="",
AutoButtonColor = false,
BackgroundColor3 = Color3.fromRGB(90, 90, 90),
BackgroundTransparency = 0.85,
AnchorPoint = Vector2.new(1, 0),
Position = UDim2.new(1, -4, 0, 0),
Size = UDim2.fromOffset(96, 30),
ZIndex = 3,
Parent = _0xDBC6,
})
_0xF153(_0x491F, 9)
local _0x351E = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(83,107,105,110,115),
Font = Enum.Font.GothamMedium,
TextSize = 12,
TextColor3 = _0xA925,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(12, 0),
Size = UDim2.new(1, -50, 1, 0),
ZIndex = 4,
Parent = _0x491F,
})
local _0x0FBE = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(1, 0.5),
Position = UDim2.new(1, -9, 0.5, 0),
Size = UDim2.fromOffset(30, 16),
BackgroundColor3 = _0xA925,
ZIndex = 4,
Parent = _0x491F,
})
_0x9A43(_0x0FBE)
local _0x4233 = _0x24BA(_0x0FBE, _0xA925)
local _0x2AF9 = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.new(0, 22, 0.5, 0),
Size = UDim2.fromOffset(10, 10),
BackgroundColor3 = _0xAA5A,
ZIndex = 5,
Parent = _0x0FBE,
})
_0x9A43(_0x2AF9)local _0x4F86 = nil
local _0xB630 = {}local _0x5303 = nil
local _0x1DC6 = {}
local _0xAD3E = {}
local function _0x1C85()
if _0x5303 then
pcall(function() _0x5303:Disconnect() end)
_0x5303 = nil
end
for _0xB272, connection in pairs(_0xAD3E) do
if connection then pcall(function() connection:Disconnect() end) end
_0xAD3E[_0xB272] = nil
end
for _0x85FA, wasDisabled in pairs(_0x1DC6) do
if _0x85FA and _0x85FA.Parent then
pcall(function() _0x85FA.Disabled = wasDisabled end)
end
_0x1DC6[_0x85FA] = nil
end
end
local function _0xD6D6(_0xD534)
if not _0xD534 or not _0xFC36.enabled then return end
local _0x85FA = _0xD534:FindFirstChild(string.char(65,110,105,109,97,116,101))
if _0x85FA and _0x85FA:IsA(string.char(76,111,99,97,108,83,99,114,105,112,116)) then
if _0x1DC6[_0x85FA] == nil then
_0x1DC6[_0x85FA] = _0x85FA.Disabled
end
pcall(function() _0x85FA.Disabled = true end)
end
local _0xE360 = _0xD534:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0xB272 = _0xE360 and _0xE360:FindFirstChildOfClass(string.char(65,110,105,109,97,116,111,114))
if _0xB272 then
for _0x624F, _0x4517 in ipairs(_0xB272:GetPlayingAnimationTracks()) do
pcall(function() _0x4517:Stop(0) end)
end
if not _0xAD3E[_0xB272] then
_0xAD3E[_0xB272] = _0xB272.AnimationPlayed:Connect(function(_0x4517)
if _0xFC36.enabled then pcall(function() _0x4517:Stop(0) end) end
end)
end
end
end
local function _0xC19C(_0xD534)
if _0x5303 then
pcall(function() _0x5303:Disconnect() end)
_0x5303 = nil
end
if not _0xD534 then return end
_0xD6D6(_0xD534)
_0x5303 = _0xD534.DescendantAdded:Connect(function(_0xCE5A)
if not _0xFC36.enabled then return end
if _0xCE5A.Name ==string.char(65,110,105,109,97,116,101)or _0xCE5A:IsA(string.char(65,110,105,109,97,116,111,114)) or _0xCE5A:IsA(string.char(72,117,109,97,110,111,105,100)) then
task.defer(function()
if _0xFC36.enabled and _0xD534 == _0x8E3D.Character then
_0xD6D6(_0xD534)
end
end)
end
end)
end
local function _0x9632()
if _0x4F86 then
pcall(function() _0x4F86:Disconnect() end)
_0x4F86 = nil
end
for motor, originalTransform in pairs(_0xB630) do
if motor and motor.Parent then
pcall(function() motor.Transform = originalTransform end)
end
end
table.clear(_0xB630)
end
local function _0x2D6F()
_0x9632()
local _0xD534 = _0x8E3D.Character
if not _0xD534 then return endfor _0x624F, _0xCE5A in ipairs(_0xD534:GetDescendants()) do
if _0xCE5A:IsA(string.char(77,111,116,111,114,54,68)) then
_0xB630[_0xCE5A] = _0xCE5A.Transform
end
end
_0x4F86 = _0xB197.PreSimulation:Connect(function()
if not _0xFC36.enabled or _0xD534 ~= _0x8E3D.Character then return end
for _0x624F, _0xCE5A in ipairs(_0xD534:GetDescendants()) do
if _0xCE5A:IsA(string.char(77,111,116,111,114,54,68)) and _0xB630[_0xCE5A] == nil then
_0xB630[_0xCE5A] = _0xCE5A.Transform
end
end
for motor, capturedTransform in pairs(_0xB630) do
if motor and motor.Parent and motor:IsDescendantOf(_0xD534) then
pcall(function() motor.Transform = capturedTransform end)
else
_0xB630[motor] = nil
end
end
end)
end
_0xB9EB(_0x8E3D.CharacterAdded, function(_0xD534)
if _0xFC36.enabled then
task.defer(function()
if not _0xFC36.enabled or _0xD534 ~= _0x8E3D.Character then return end
_0x2D6F()
_0xC19C(_0xD534)
end)
end
end)
local function _0x5F50(_0xE496, byUser)
_0xFC36.enabled = _0xE496
if _0xE496 then_0x40FA()
_0xC19C(_0x8E3D.Character)
for _0x624F, _0xDA08 in pairs(_0x3EB8) do
_0xDA08.key = nil
end
_0x2865 = 0
else
_0x9632()
_0x1C85()
_0x9035()
end
_0x2AF9.Size = UDim2.fromOffset(15, 10)
_0x0903(_0x2AF9, 0.35, {
Position = UDim2.new(0, _0xE496 and 22 or 8, 0.5, 0),
Size = UDim2.fromOffset(10, 10),
BackgroundColor3 = _0xE496 and _0xAA5A or _0x2E02,
}, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
_0x0903(_0x0FBE, 0.25, { BackgroundColor3 = _0xE496 and _0xA925 or _0xAA5A })
_0x0903(_0x4233, 0.25, { Color = _0xE496 and _0xA925 or _0x2F00 })
_0x0903(_0x351E, 0.25, { TextColor3 = _0xE496 and _0xA925 or _0x2E02 })
_0x0903(_0x491F, 0.25, { BackgroundTransparency = _0xE496 and 0.6 or 0.85 })
if byUser then
_0xD34C(string.char(83,107,105,110,32,67,104,97,110,103,101,114,47,69,110,97,98,108,101,100), _0xE496)
_0xA9C1(string.char(83,107,105,110,32,67,104,97,110,103,101,114,58,32).. (_0xE496 andstring.char(79,110)orstring.char(79,102,102)), _0xE496 andstring.char(115,107,105,110,115,32,101,113,117,105,112,112,101,100)orstring.char(100,101,102,97,117,108,116,32,119,101,97,112,111,110,115))
end
end
_0xB9EB(_0x491F.MouseButton1Click, function()
_0x5F50(not _0xFC36.enabled, true)
end)
_0x04EF(string.char(83,107,105,110,32,67,104,97,110,103,101,114,47,69,110,97,98,108,101,100), function(_0xEB0B)
if type(_0xEB0B) ==string.char(98,111,111,108,101,97,110)then
_0x5F50(_0xEB0B)
end
end, function()
return _0xFC36.enabled
end, true)
local _0x45F4 = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text ="",
RichText = true,
Font = Enum.Font.GothamMedium,
TextSize = 12,
TextColor3 = _0x2E02,
TextXAlignment = Enum.TextXAlignment.Left,
TextTruncate = Enum.TextTruncate.AtEnd,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(2, 38),
Size = UDim2.new(1, -4, 0, 20),
ZIndex = 3,
Parent = _0x46D0,
})
local _0xCA7C =""local function _0x7E79()
local _0x694B, _0x4C74 = 0, 0
for _0x624F, _0xE157 in ipairs(_0x2FEB) do
if _0xE157.type ==string.char(75,110,105,102,101)then
_0x694B += 1
else
_0x4C74 += 1
end
end
local function _0xC126(_0xB2DF)
local _0xE157 = _0xED8F[_0xFC36.sel[_0xB2DF]]
return _0xE157 andstring.char(60,98,62,60,102,111,110,116,32,99,111,108,111,114,61,34,35,102,102,102,102,102,102,34,62).. _0xE157.name ..string.char(60,47,102,111,110,116,62,60,47,98,62)orstring.char(100,101,102,97,117,108,116)end
_0x45F4.Text = (string.char(37,100,32,107,110,105,118,101,115,32,194,183,32,37,100,32,103,117,110,115,32,32,32,32,32,107,110,105,102,101,58,32,37,115,32,194,183,32,103,117,110,58,32,37,115)).format(string.char(37,100,32,107,110,105,118,101,115,32,194,183,32,37,100,32,103,117,110,115,32,32,32,32,32,107,110,105,102,101,58,32,37,115,32,194,183,32,103,117,110,58,32,37,115), _0x694B, _0x4C74, _0xC126(string.char(75,110,105,102,101)), _0xC126(string.char(71,117,110)))
end
local _0x922F = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(1, 0),
Position = UDim2.new(1, -4, 0, 35),
Size = UDim2.fromOffset(170, 24),
BackgroundColor3 = Color3.fromRGB(22, 22, 22),
ZIndex = 3,
Parent = _0x46D0,
})
_0xF153(_0x922F, 8)
local _0x8E0E = _0x24BA(_0x922F)
local _0x7AF9 = _0x504E(string.char(84,101,120,116,66,111,120), {
Text ="",
PlaceholderText =string.char(83,101,97,114,99,104,32,115,107,105,110,115,46,46,46),
PlaceholderColor3 = _0xD6E4,
Font = Enum.Font.Gotham,
TextSize = 12,
TextColor3 = _0xA925,
TextXAlignment = Enum.TextXAlignment.Left,
ClearTextOnFocus = false,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(10, 0),
Size = UDim2.new(1, -16, 1, 0),
ZIndex = 4,
Parent = _0x922F,
})
_0x45F4.Size = UDim2.new(1, -190, 0, 20)
_0xB9EB(_0x7AF9.Focused, function()
_0x0903(_0x8E0E, 0.2, { Color = Color3.fromRGB(120, 120, 120) })
end)
_0xB9EB(_0x7AF9.FocusLost, function()
_0x0903(_0x8E0E, 0.2, { Color = _0x2F00 })
end)
local _0xF16F = _0x504E(string.char(83,99,114,111,108,108,105,110,103,70,114,97,109,101), {
Position = UDim2.fromOffset(0, 66),
Size = UDim2.new(1, 0, 1, -66),
Active = true,
ScrollingEnabled = false,
AutomaticCanvasSize = Enum.AutomaticSize.Y,
BackgroundTransparency = 1,
BorderSizePixel = 0,
ScrollBarThickness = 3,
ScrollBarImageColor3 = _0x2E02,
ScrollBarImageTransparency = 0.3,
VerticalScrollBarInset = Enum.ScrollBarInset.Always,
ScrollingDirection = Enum.ScrollingDirection.Y,
ElasticBehavior = Enum.ElasticBehavior.Never,
ClipsDescendants = true,
CanvasSize = UDim2.new(),
ZIndex = 2,
Parent = _0x46D0,
})
_0x504E(string.char(85,73,80,97,100,100,105,110,103), {
PaddingTop = UDim.new(0, 1),
PaddingLeft = UDim.new(0, 1),
PaddingRight = UDim.new(0, 4),
PaddingBottom = UDim.new(0, 140),
Parent = _0xF16F,
})
local _0x0F00 = _0x504E(string.char(85,73,71,114,105,100,76,97,121,111,117,116), {
CellSize = UDim2.new(0.25, -6, 0, 150),
CellPadding = UDim2.fromOffset(8, 8),
SortOrder = Enum.SortOrder.LayoutOrder,
Parent = _0xF16F,
})
local _0x7236 = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text ="",
Font = Enum.Font.GothamMedium,
TextSize = 12,
TextColor3 = _0xD6E4,
TextWrapped = true,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(20, 106),
Size = UDim2.new(1, -40, 0, 60),
ZIndex = 3,
Parent = _0x46D0,
})
local function _0x0D30(scroller)
local _0xA50B, _0x5B42, _0xC254 = false, nil, 0
local _0xFBB3 = false
local function _0x6151(_0x3242)
local _0x09CD, _0x2675 = scroller.AbsolutePosition, scroller.AbsoluteSize
return _0x3242.X >= _0x09CD.X and _0x3242.X <= _0x09CD.X + _0x2675.X and _0x3242.Y >= _0x09CD.Y and _0x3242.Y <= _0x09CD.Y + _0x2675.Y
end
local function _0xBF83()
return math.max(0, scroller.AbsoluteCanvasSize.Y - scroller.AbsoluteWindowSize.Y)
end
local function _0xE218(_0x3242, input)
if not _0x6151(_0x3242) or _0xBF83() <= 0 then return end
_0xA50B, _0x5B42, _0xC254, _0xFBB3 = true, input, _0x3242.Y, false
end
_0xB9EB(_0x24DA.TouchStarted, function(input)
_0xE218(input.Position, input)
end)
_0xB9EB(_0x24DA.TouchMoved, function(input)
if not _0xA50B or _0x5B42 ~= input then return end
local _0x1466 = input.Position.Y - _0xC254
if math.abs(_0x1466) > 0.1 then
_0xFBB3 = true
_0xC254 = input.Position.Y
scroller.CanvasPosition = Vector2.new(0, math.clamp(scroller.CanvasPosition.Y - _0x1466, 0, _0xBF83()))
end
end)
_0xB9EB(_0x24DA.TouchEnded, function(input)
if input == _0x5B42 then
_0xA50B, _0x5B42 = false, nil
end
end)_0xB9EB(scroller.InputBegan, function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
_0xE218(input.Position, input)
end
end)
_0xB9EB(_0x24DA.InputChanged, function(input)
if not _0xA50B or _0x5B42 == nil or input.UserInputType ~= Enum.UserInputType.MouseMovement then return end
local _0x1466 = input.Position.Y - _0xC254
if math.abs(_0x1466) > 0.1 then
_0xFBB3 = true
_0xC254 = input.Position.Y
scroller.CanvasPosition = Vector2.new(0, math.clamp(scroller.CanvasPosition.Y - _0x1466, 0, _0xBF83()))
end
end)
_0xB9EB(_0x24DA.InputEnded, function(input)
if input == _0x5B42 then _0xA50B, _0x5B42 = false, nil end
end)
end
local function _0x734D()
_0xF16F.CanvasSize = UDim2.fromOffset(0, math.max(_0x0F00.AbsoluteContentSize.Y + 140, _0xF16F.AbsoluteWindowSize.Y + 2))
end
_0x0D30(_0xF16F)
_0xB9EB(_0x0F00:GetPropertyChangedSignal(string.char(65,98,115,111,108,117,116,101,67,111,110,116,101,110,116,83,105,122,101)), _0x734D)
_0x734D()
_0xB9EB(_0xF16F:GetPropertyChangedSignal(string.char(65,98,115,111,108,117,116,101,87,105,110,100,111,119,83,105,122,101)), _0x734D)
local _0x7B8D = {}
local function _0xED12(_0x242F)
local _0xE496 = _0xFC36.sel[_0x242F.s.type] == _0x242F.s.key
_0x242F.stroke.Color = _0xE496 and _0xA925 or _0x2F00
_0x242F.stroke.Transparency = _0xE496 and 0.1 or 0
_0x0903(_0x242F.badge, 0.25, { Size = UDim2.fromOffset(_0xE496 and 62 or 0, 15) }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
end
local function _0xEF4B(_0xE157, _0x242F)
_0xFC36.sel[_0xE157.type] = _0xFC36.sel[_0xE157.type] ~= _0xE157.key and _0xE157.key or nil
_0xD34C(string.char(83,107,105,110,32,67,104,97,110,103,101,114,47,83,107,105,110,115,47).. _0xE157.type, _0xFC36.sel[_0xE157.type] or false)
for _0x624F, _0x2B4F in ipairs(_0x7B8D) do
_0xED12(_0x2B4F)
end
_0x7E79()
_0x149D()
_0x2865 = 0
_0x242F.sc.Scale = 0.93
_0x0903(_0x242F.sc, 0.35, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
_0xA9C1(_0xE157.type, _0xFC36.sel[_0xE157.type] and _0xE157.name ..string.char(32,101,113,117,105,112,112,101,100)orstring.char(100,101,102,97,117,108,116,32,115,107,105,110))
end
local function _0x523D(_0xE157, _0x35E7)
local _0x5C29 = _0x504E(string.char(84,101,120,116,66,117,116,116,111,110), {
Text ="",
AutoButtonColor = false,
BackgroundTransparency = 1,
LayoutOrder = _0x35E7,
ZIndex = 2,
Parent = _0xF16F,
})
local _0x08CD = _0x504E(string.char(85,73,83,99,97,108,101), { Parent = _0x5C29 })
local _0x9D21 = _0x504E(string.char(70,114,97,109,101), {
Size = UDim2.new(1, 0, 0, 100),
BackgroundColor3 = _0x8802,
ClipsDescendants = true,
ZIndex = 2,
Parent = _0x5C29,
})
_0xF153(_0x9D21, 8)
local _0x61F0 = _0x24BA(_0x9D21)
local _0x2B9B = _0x504E(string.char(73,109,97,103,101,76,97,98,101,108), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromScale(0.5, 0.5),
Size = UDim2.fromOffset(84, 84),
BackgroundTransparency = 1,
ScaleType = Enum.ScaleType.Fit,
Image = _0xE157.img ~= 0 and (string.char(114,98,120,116,104,117,109,98,58,47,47,116,121,112,101,61,65,115,115,101,116,38,105,100,61,37,100,38,119,61,49,53,48,38,104,61,49,53,48)):format(_0xE157.img) or"",
ZIndex = 3,
Parent = _0x9D21,
})
local _0x2168 = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(69,81,85,73,80,80,69,68),
Font = Enum.Font.GothamBold,
TextSize = 9,
TextColor3 = Color3.fromRGB(10, 10, 10),
BackgroundColor3 = _0xA925,
Position = UDim2.fromOffset(6, 6),
Size = UDim2.fromOffset(0, 15),
ClipsDescendants = true,
ZIndex = 5,
Parent = _0x9D21,
})
_0xF153(_0x2168, 5)
local _0x1788 = _0x504E(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(0, 106),
Size = UDim2.new(1, 0, 1, -106),
BackgroundColor3 = _0xDA2D,
ZIndex = 2,
Parent = _0x5C29,
})
_0xF153(_0x1788, 8)
_0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text = _0xE157.name:upper(),
Font = Enum.Font.GothamBold,
TextSize = 11,
TextColor3 = _0xA925,
TextTruncate = Enum.TextTruncate.AtEnd,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(6, 5),
Size = UDim2.new(1, -12, 0, 15),
ZIndex = 3,
Parent = _0x1788,
})
_0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text = _0xE157.rarity,
Font = Enum.Font.GothamMedium,
TextSize = 10,
TextColor3 = _0x18CE[_0xE157.rarity] or _0x2E02,
TextXAlignment = Enum.TextXAlignment.Center,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(6, 21),
Size = UDim2.new(1, -12, 0, 12),
ZIndex = 3,
Parent = _0x1788,
})
local _0x242F = { _0x5C29 = _0x5C29, sc = _0x08CD, _0xBC19 = _0x61F0, _0x2168 = _0x2168, _0xE157 = _0xE157 }
table.insert(_0x7B8D, _0x242F)
_0xED12(_0x242F)
_0xB9EB(_0x5C29.MouseEnter, function()
_0x0903(_0x9D21, 0.15, { BackgroundColor3 = _0xF29A })
_0x0903(_0x2B9B, 0.2, { Size = UDim2.fromOffset(94, 94) }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
end)
_0xB9EB(_0x5C29.MouseLeave, function()
_0x0903(_0x9D21, 0.15, { BackgroundColor3 = _0x8802 })
_0x0903(_0x2B9B, 0.2, { Size = UDim2.fromOffset(84, 84) })
end)
_0xB9EB(_0x5C29.MouseButton1Click, function()
_0xEF4B(_0xE157, _0x242F)
end)
end
local _0xDFBA, _0x9A05 = {}, 0
local function _0x7C74()
local _0x3133 = math.min(#_0xDFBA, _0x9A05 + 32)
for _0x269E = _0x9A05 + 1, _0x3133 do
_0x523D(_0xDFBA[_0x269E], _0x269E)
end
_0x9A05 = _0x3133
_0x734D()
end
_0xB9EB(_0xF16F:GetPropertyChangedSignal(string.char(67,97,110,118,97,115,80,111,115,105,116,105,111,110)), function()
if _0x9A05 < #_0xDFBA and _0xF16F.CanvasPosition.Y + _0xF16F.AbsoluteWindowSize.Y >= math.max(0, _0xF16F.CanvasSize.Y.Offset - 350) then
_0x7C74()
end
end)
_0x609D = function(_0x2EDF)
for _0x624F, _0x242F in ipairs(_0x7B8D) do
_0x242F.card:Destroy()
end
table.clear(_0x7B8D)
_0xDFBA, _0x9A05 = {}, 0
for _0x624F, _0xE157 in ipairs(_0x2FEB) do
if _0xE157.type == _0xFC36.listType and (_0xCA7C ==""or _0xE157.name:lower():find(_0xCA7C, 1, true)) then
table.insert(_0xDFBA, _0xE157)
end
end
_0xF16F.CanvasPosition = Vector2.zero
_0x7C74()
_0x7236.Text = #_0xDFBA == 0 andstring.char(110,111,116,104,105,110,103,32,102,111,117,110,100)or""_0x7E79()
if _0x2EDF then
_0xF16F.Position = UDim2.fromOffset(0, 78)
_0x0903(_0xF16F, 0.35, { Position = UDim2.fromOffset(0, 66) }, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
end
end
_0xB9EB(_0x7AF9:GetPropertyChangedSignal(string.char(84,101,120,116)), function()
_0xCA7C = _0x7AF9.Text:lower()
_0x609D(false)
end)
for _0x624F, _0xB2DF in ipairs({string.char(75,110,105,102,101),string.char(71,117,110)}) do
_0x04EF(string.char(83,107,105,110,32,67,104,97,110,103,101,114,47,83,107,105,110,115,47).. _0xB2DF, function(_0xEB0B)
if type(_0xEB0B) ==string.char(115,116,114,105,110,103)and _0xED8F[_0xEB0B] then
_0xFC36.sel[_0xB2DF] = _0xEB0B
for _0x624F, _0x242F in ipairs(_0x7B8D) do
_0xED12(_0x242F)
end
_0x7E79()
end
end, function()
return _0xFC36.sel[_0xB2DF]
end)
end
_0x609D(false)_0xB9EB(_0x8E3D.CharacterAdded, function()
task.defer(function()
_0x9035()
_0x2865 = 0
end)
end)
_0x1BCA = function()
_0x9035()
end
end
do
local _0x50D7 = { _0xE496 = false, _0xF421 =string.char(72,111,108,100,32,83,112,97,99,101), _0xFAA8 = 60, gain = 8 }
local _0xCF7F = 0
local _0x7DB9 = 0
local _0xA01D = 0
local _0x67E3 = false
local _0xD873
local function _0x7287()
_0xCF7F = 0
local _0x04CE = workspace.CurrentCamera
if _0xD873 and _0x04CE then
_0x0903(_0x04CE, 0.3, { FieldOfView = _0xD873 })
end
end
_0xB9EB(_0xB197.Heartbeat, function()
if not _0x50D7.on then
return
end
local _0xD95E = _0x8E3D.Character
local _0xB48C = _0xD95E and _0xD95E:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xC3CF = _0xD95E and _0xD95E:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if not _0xB48C or not _0xC3CF or _0xC3CF.Health <= 0 then
return
end
local _0x8322 = _0xC3CF.MoveDirection.Magnitude > 0.1
local _0x71F4 = _0x50D7.mode ==string.char(65,117,116,111)and _0x8322 or _0x50D7.mode ==string.char(72,111,108,100,32,83,112,97,99,101)and _0x24DA:IsKeyDown(Enum.KeyCode.Space)
local _0xE57A = _0xC3CF.FloorMaterial ~= Enum.Material.Air
local _0x8C28 = os.clock()
if _0xE57A then
if _0x67E3 then
_0x7DB9 = _0x8C28
end
_0x67E3 = false
if _0x71F4 and _0x8322 then
if _0x8C28 - _0xA01D > 0.2 then
_0xA01D = _0x8C28
_0xCF7F += 1
_0xC3CF:ChangeState(Enum.HumanoidStateType.Jumping)
end
elseif _0x8C28 - _0x7DB9 > 0.25 or not _0x8322 then
if _0xCF7F > 0 then
_0x7287()
end
end
else
_0x67E3 = true
if _0x8322 and _0xCF7F > 0 then
local _0xAEA1 = math.min(_0xC3CF.WalkSpeed + _0xCF7F * _0x50D7.gain * 0.5, _0x50D7.max)
local _0x0447 = _0xC3CF.MoveDirection.Unit
local _0xEB0B = _0xB48C.AssemblyLinearVelocity
_0xB48C.AssemblyLinearVelocity = Vector3.new(_0x0447.X * _0xAEA1, _0xEB0B.Y, _0x0447.Z * _0xAEA1)
local _0x04CE = workspace.CurrentCamera
if _0x04CE then
_0xD873 = _0xD873 or _0x04CE.FieldOfView
local _0x2DD2 = math.clamp((_0xAEA1 - _0xC3CF.WalkSpeed) / math.max(_0x50D7.max - _0xC3CF.WalkSpeed, 1), 0, 1)
_0x04CE.FieldOfView = _0x04CE.FieldOfView + (_0xD873 + 12 * _0x2DD2 - _0x04CE.FieldOfView) * 0.15
end
end
end
end)
local _0x61C4 = _0x45F1(_0x6CD0,string.char(66,104,111,112))
_0x61C4:Toggle(string.char(69,110,97,98,108,101),string.char(98,117,110,110,121,32,104,111,112,32,45,32,101,118,101,114,121,32,106,117,109,112,32,109,97,107,101,115,32,121,111,117,32,102,97,115,116,101,114), function(_0xE496)
_0x50D7.on = _0xE496
if not _0xE496 then
_0x7287()
end
_0xA9C1(string.char(66,104,111,112,58,32).. (_0xE496 andstring.char(79,110)orstring.char(79,102,102)), _0xE496 and (_0x50D7.mode ==string.char(65,117,116,111)andstring.char(106,117,115,116,32,114,117,110)orstring.char(104,111,108,100,32,115,112,97,99,101,32,97,110,100,32,114,117,110)) orstring.char(115,116,111,112,112,101,100))
end)
_0x61C4:Segmented(string.char(77,111,100,101), {string.char(72,111,108,100,32,83,112,97,99,101),string.char(65,117,116,111)}, _0x50D7.mode, function(_0xEB0B)
_0x50D7.mode = _0xEB0B
end)
_0x61C4:Slider(string.char(77,97,120,32,115,112,101,101,100), 30, 150, _0x50D7.max, function(_0xEB0B)
_0x50D7.max = _0xEB0B
end)
_0x61C4:Slider(string.char(71,97,105,110,32,112,101,114,32,104,111,112), 2, 20, _0x50D7.gain, function(_0xEB0B)
_0x50D7.gain = _0xEB0B
end)
end
do
local _0x93C7 = { _0xE496 = false, _0xAEA1 = 10, _0x0447 =string.char(82,105,103,104,116)}
local _0x15CB
local _0xC5B7 = nil_0xF709(_0xB197.PreSimulation, function(_0x5D8D)
if not _0x93C7.on then return end
local _0xD95E = _0x8E3D.Character
local _0xB48C = _0xD95E and _0xD95E:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xC3CF = _0xD95E and _0xD95E:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if not _0xB48C or not _0xC3CF or _0xC3CF.Health <= 0 then
_0xC5B7 = nil
return
end
_0xC3CF.AutoRotate = false
_0x15CB = _0xC3CF
local _0x624F, _0x0172, _0x624F = _0xB48C.CFrame:ToOrientation()
_0xC5B7 = (_0xC5B7 or _0x0172) + _0x93C7.speed * 1.5 * (_0x93C7.dir ==string.char(82,105,103,104,116)and -1 or 1) * _0x5D8D
local _0x3242 = _0xB48C.Position
_0xB48C.CFrame = CFrame.new(_0x3242) * CFrame.Angles(0, _0xC5B7, 0)
_0xB48C.AssemblyAngularVelocity = Vector3.zero
end)
local function _0x1EA9()
if _0x15CB and _0x15CB.Parent then
_0x15CB.AutoRotate = true
end
local _0xD95E = _0x8E3D.Character
local _0xB48C = _0xD95E and _0xD95E:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if _0xB48C then pcall(function() _0xB48C.AssemblyAngularVelocity = Vector3.zero end) end
_0x15CB = nil
_0xC5B7 = nil
end
_0xA471 = function(_0xE496)
_0x93C7.on = _0xE496 and true or false
if not _0x93C7.on then
_0x1EA9()
end
_0xA9C1(string.char(83,112,105,110,32,66,111,116,58,32).. (_0x93C7.on andstring.char(79,110)orstring.char(79,102,102)), _0x93C7.on andstring.char(115,112,105,110,110,105,110,103,32,101,110,97,98,108,101,100)orstring.char(115,116,111,112,112,101,100))
end
_0xBABF = function(_0xEB0B)
_0x93C7.speed = math.clamp(tonumber(_0xEB0B) or 10, 1, 30)
end
local _0x61C4 = _0x45F1(_0x6CD0,string.char(83,112,105,110))
_0x61C4:Toggle(string.char(69,110,97,98,108,101),string.char(115,112,105,110,32,121,111,117,114,32,99,104,97,114,97,99,116,101,114,32,97,114,111,117,110,100), function(_0xE496)
_0xA471(_0xE496)
end)
_0x61C4:Slider(string.char(83,112,101,101,100), 1, 30, _0x93C7.speed, function(_0xEB0B)
_0x93C7.speed = _0xEB0B
end, function(_0xEB0B)
return _0xEB0B ..string.char(120)end)
_0x61C4:Segmented(string.char(68,105,114,101,99,116,105,111,110), {string.char(76,101,102,116),string.char(82,105,103,104,116)}, _0x93C7.dir, function(_0xEB0B)
_0x93C7.dir = _0xEB0B
end)
_0x37D9 = function()
_0x93C7.on = false
_0x1EA9()
end
end
do
local _0x15FB = { 125491951751014, 90892690280238, 88712283515515, 99919046918338, 127717306748023 }
local _0x902C = { _0xE496 = false, _0xCC3C = nil }
local _0x4517, _0x01C8
local function _0x5299()
if _0x01C8 then
return _0x01C8
end
for _0x624F, _0x4FE3 in ipairs(_0x15FB) do
local _0xD828, _0x2F59 = pcall(function()
return game:GetObjects(string.char(114,98,120,97,115,115,101,116,105,100,58,47,47).. _0x4FE3)
end)
if _0xD828 and type(_0x2F59) ==string.char(116,97,98,108,101)then
for _0x624F, _0x012C in ipairs(_0x2F59) do
local _0xDFBA = _0x012C:GetDescendants()
table.insert(_0xDFBA, 1, _0x012C)
for _0x624F, _0xDA08 in ipairs(_0xDFBA) do
if _0xDA08:IsA(string.char(65,110,105,109,97,116,105,111,110)) and _0xDA08.AnimationId ~=""then
_0x01C8 = _0xDA08.AnimationId
return _0x01C8
end
end
end
end
end
end
local function _0xDF67()
if _0x4517 then
pcall(function()
_0x4517:Stop(0.25)
end)
_0x4517 = nil
end
end
local function _0x29B8()
local _0xC3CF = _0xFFF1()
if not _0xC3CF then
return
end
task.spawn(function()
local _0x4FE3 = _0x5299()
if not _0x4FE3 or not _0x902C.on then
if not _0x4FE3 then
_0xA9C1(string.char(72,117,103),string.char(99,111,117,108,100,110,39,116,32,108,111,97,100,32,116,104,101,32,104,117,103,32,97,110,105,109,97,116,105,111,110))
end
return
end
_0xDF67()
local _0x2EDF = Instance.new(string.char(65,110,105,109,97,116,105,111,110))
_0x2EDF.AnimationId = _0x4FE3
local _0xB272 = _0xC3CF:FindFirstChildOfClass(string.char(65,110,105,109,97,116,111,114)) or _0xC3CF
local _0xD828, _0xC220 = pcall(function()
return _0xB272:LoadAnimation(_0x2EDF)
end)
if _0xD828 and _0xC220 then
_0xC220.Priority = Enum.AnimationPriority.Action4
_0xC220.Looped = true
_0xC220:Play(0.25)
_0x4517 = _0xC220
end
end)
end
local function _0x053E(exclude)
local _0xF9FB = _0x8E3D.Character and _0x8E3D.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0xF9FB then
return nil
end
local _0x57B3, _0xC8B5
for _0x624F, _0x09CD in ipairs(_0xD101:GetPlayers()) do
if _0x09CD ~= _0x8E3D and _0x09CD ~= exclude then
local _0xF171 = _0x6C9C(_0x09CD)
if _0xF171 then
local _0xA65E = (_0xF171.Position - _0xF9FB.Position).Magnitude
if not _0xC8B5 or _0xA65E < _0xC8B5 then
_0x57B3, _0xC8B5 = _0x09CD, _0xA65E
end
end
end
end
return _0x57B3
end
_0xB9EB(_0xB197.Heartbeat, function()
if not _0x902C.on then
return
end
local _0xD95E = _0x8E3D.Character
local _0xB48C = _0xD95E and _0xD95E:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0xB48C then
return
end
local _0x2F74 = _0x6C9C(_0x902C.target)
if not _0x2F74 then
_0x902C.target = _0x053E()
_0x2F74 = _0x6C9C(_0x902C.target)
if not _0x2F74 then
return
end
_0xA9C1(string.char(72,117,103),string.char(104,117,103,103,105,110,103,32).. _0x902C.target.DisplayName)
end
local _0x30D4 = _0x2F74.CFrame * CFrame.new(0, 0, -1.4)
_0xB48C.CFrame = CFrame.lookAt(_0x30D4.Position, Vector3.new(_0x2F74.Position.X, _0x30D4.Position.Y, _0x2F74.Position.Z))
_0xB48C.AssemblyLinearVelocity = Vector3.zero
if not _0x4517 then
_0x29B8()
end
end)
local _0x61C4 = _0x45F1(_0x6CD0,string.char(72,117,103))
_0x61C4:Toggle(string.char(72,117,103),string.char(104,117,103,32,116,104,101,32,110,101,97,114,101,115,116,32,112,108,97,121,101,114,32,45,32,101,118,101,114,121,111,110,101,32,115,101,101,115,32,105,116), function(_0xE496)
_0x902C.on = _0xE496
if _0xE496 then
_0x902C.target = _0x053E()
if _0x902C.target then
_0xA9C1(string.char(72,117,103),string.char(104,117,103,103,105,110,103,32).. _0x902C.target.DisplayName)
_0x29B8()
else
_0xA9C1(string.char(72,117,103),string.char(110,111,98,111,100,121,32,97,114,111,117,110,100))
end
else
_0xDF67()
_0x902C.target = nil
end
end)
_0x61C4:Button(string.char(78,101,120,116,32,112,108,97,121,101,114),string.char(104,117,103,32,115,111,109,101,111,110,101,32,101,108,115,101), function()
local _0xDFBA = {}
for _0x624F, _0x09CD in ipairs(_0xD101:GetPlayers()) do
if _0x09CD ~= _0x8E3D and _0x6C9C(_0x09CD) then
table.insert(_0xDFBA, _0x09CD)
end
end
if #_0xDFBA == 0 then
_0xA9C1(string.char(72,117,103),string.char(110,111,98,111,100,121,32,97,114,111,117,110,100))
return
end
local _0x269E = table.find(_0xDFBA, _0x902C.target) or 0
_0x902C.target = _0xDFBA[_0x269E % #_0xDFBA + 1]
_0xA9C1(string.char(72,117,103),string.char(104,117,103,103,105,110,103,32).. _0x902C.target.DisplayName)
end)
table.insert(_0x523A, {
Disconnect = function()
_0xDF67()
end,
})
end
do
local _0x5A5A
local _0x3007
local _0x8E7B = 0
local function _0x744B()
return workspace:FindFirstChild(string.char(82,101,103,117,108,97,114,76,111,98,98,121)) or workspace:FindFirstChild(string.char(76,111,98,98,121))
end
local function _0x49DF(_0x269E)
local _0xFC29 = _0x744B()
if not _0xFC29 then
return nil
end
return _0xFC29:FindFirstChild(string.char(86,111,116,101,80,97,100).. _0x269E) or _0xFC29:FindFirstChild(string.char(86,111,116,101,80,97,100).. _0x269E, true)
end
local function _0x0C36(_0x75D0)
if not _0x75D0 then
return nil
end
if _0x75D0:IsA(string.char(66,97,115,101,80,97,114,116)) then
return _0x75D0.CFrame
end
if _0x75D0:IsA(string.char(77,111,100,101,108)) then
return _0x75D0:GetPivot()
end
local _0x6F67 = _0x75D0:FindFirstChildWhichIsA(string.char(66,97,115,101,80,97,114,116), true)
return _0x6F67 and _0x6F67.CFrame
end
local _0xC71B = {}
local function _0xF24E()
table.clear(_0xC71B)
local _0x8AE1 = _0x8E3D:FindFirstChildOfClass(string.char(80,108,97,121,101,114,71,117,105))
if not _0x8AE1 then
return
end
for _0x624F, _0xBCE8 in ipairs(_0x8AE1:GetDescendants()) do
if (_0xBCE8:IsA(string.char(83,117,114,102,97,99,101,71,117,105)) or _0xBCE8:IsA(string.char(66,105,108,108,98,111,97,114,100,71,117,105))) and _0xBCE8.Adornee then
local _0xDFBA = _0xC71B[_0xBCE8.Adornee] or {}
_0xC71B[_0xBCE8.Adornee] = _0xDFBA
table.insert(_0xDFBA, _0xBCE8)
end
end
end
local function _0x3556(_0x75D0)
local _0x1AC6 = {}
for adornee, _0xDFBA in pairs(_0xC71B) do
if adornee == _0x75D0 or adornee:IsDescendantOf(_0x75D0) then
for _0x624F, _0xBCE8 in ipairs(_0xDFBA) do
table.insert(_0x1AC6, _0xBCE8)
end
end
end
local _0x87E6 = _0x75D0:FindFirstChild(string.char(86,111,116,101,73,110,102,111,71,117,105), true)
if _0x87E6 then
table.insert(_0x1AC6, _0x87E6)
end
return _0x1AC6
end
local function _0xEC5D(_0x75D0)
if not _0x75D0 then
return nil, nil
end
local _0x6D72, _0xE8EB
for _0x624F, _0xBCE8 in ipairs(_0x3556(_0x75D0)) do
if _0xBCE8:IsA(string.char(76,97,121,101,114,67,111,108,108,101,99,116,111,114)) and not _0xBCE8.Enabled then
continue
end
local _0x025A = _0xBCE8:FindFirstChild(string.char(67,111,110,116,97,105,110,101,114), true) or _0xBCE8
local function _0xDE46(_0x893F)
local _0x012C = _0x025A:FindFirstChild(_0x893F, true)
if _0x012C and (_0x012C:IsA(string.char(84,101,120,116,76,97,98,101,108)) or _0x012C:IsA(string.char(84,101,120,116,66,117,116,116,111,110))) and _0x012C.Text ~=""then
return _0x012C.Text
end
end
_0x6D72 = _0x6D72 or _0xDE46(string.char(77,97,112,78,97,109,101))
local _0xEB0B = _0xDE46(string.char(86,111,116,101,115))
if _0xEB0B and (not _0xE8EB or (tonumber(_0xEB0B:match(string.char(37,100,43))) or 0) > (tonumber(_0xE8EB:match(string.char(37,100,43))) or 0)) then
_0xE8EB = _0xEB0B
end
end
return _0x6D72, _0xE8EB
end
local function _0x5E54(_0x75D0)
local _0x57B3, _0x139B = nil, 0
for _0x624F, _0xA65E in ipairs(_0x75D0:GetDescendants()) do
local _0xFD48
if _0xA65E:IsA(string.char(73,109,97,103,101,76,97,98,101,108)) or _0xA65E:IsA(string.char(73,109,97,103,101,66,117,116,116,111,110)) then
_0xFD48 = _0xA65E.Image
elseif _0xA65E:IsA(string.char(68,101,99,97,108)) or _0xA65E:IsA(string.char(84,101,120,116,117,114,101)) then
_0xFD48 = _0xA65E.Texture
end
if _0xFD48 and _0xFD48 ~=""then
local _0xE9D1 = _0xA65E.Name:lower()
local _0x76CA = (_0xE9D1:find(string.char(109,97,112)) or _0xE9D1:find(string.char(116,104,117,109,98)) or _0xE9D1:find(string.char(112,114,101,118,105,101,119))) and 3 or ((_0xE9D1:find(string.char(105,109,97,103,101)) or _0xE9D1:find(string.char(105,99,111,110))) and 2 or 1)
if _0x76CA > _0x139B then
_0x57B3, _0x139B = _0xFD48, _0x76CA
end
end
end
return _0x57B3
end
local _0x8802 = Color3.fromRGB(36, 36, 38)
local _0xF29A = Color3.fromRGB(48, 48, 52)
local _0xDA2D = Color3.fromRGB(17, 17, 19)
local _0x46D0 = _0x78C0.page
_0x78C0.custom = true
_0x78C0.title.Visible = false
_0x78C0.desc.Visible = false
_0x46D0.ScrollingEnabled = false
_0x46D0.ScrollBarThickness = 0
_0x46D0.CanvasSize = UDim2.new()
_0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(86,111,116,101,32,68,117,112,101,32,77,97,112),
Font = Enum.Font.GothamBold,
TextSize = 18,
TextColor3 = _0xA925,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Size = UDim2.new(1, -110, 0, 22),
Parent = _0x46D0,
})
local _0xB632 = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(112,105,99,107,32,97,32,109,97,112),
Font = Enum.Font.Gotham,
TextSize = 12,
TextColor3 = _0x2E02,
TextXAlignment = Enum.TextXAlignment.Left,
TextTruncate = Enum.TextTruncate.AtEnd,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(0, 22),
Size = UDim2.new(1, -110, 0, 16),
Parent = _0x46D0,
})
local function _0xEF6E(_0x634C)
_0xB632.Text = _0x634C
end
local _0x3CA6 = _0x504E(string.char(84,101,120,116,66,117,116,116,111,110), {
Text =string.char(83,116,111,112),
Font = Enum.Font.GothamBold,
TextSize = 12,
TextColor3 = _0xD6E4,
BackgroundColor3 = _0x6274,
AutoButtonColor = false,
AnchorPoint = Vector2.new(1, 0),
Position = UDim2.new(1, -8, 0, 4),
Size = UDim2.fromOffset(80, 28),
ZIndex = 2,
Parent = _0x46D0,
})
_0xF153(_0x3CA6, 8)
local _0x3FC4 = _0x24BA(_0x3CA6)
local _0xD6B2 = _0x504E(string.char(85,73,83,99,97,108,101), { Parent = _0x3CA6 })
local _0xF16F = _0x504E(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(0, 50),
Size = UDim2.new(1, -8, 0, 172),
BackgroundTransparency = 1,
Parent = _0x46D0,
})
_0x504E(string.char(85,73,71,114,105,100,76,97,121,111,117,116), {
CellSize = UDim2.new(0.3333333333333333, -6, 0, 172),
CellPadding = UDim2.fromOffset(8, 8),
SortOrder = Enum.SortOrder.LayoutOrder,
Parent = _0xF16F,
})
local _0x8CAE = _0x504E(string.char(67,97,110,118,97,115,71,114,111,117,112), {
Position = UDim2.fromOffset(0, 46),
Size = UDim2.new(1, -8, 1, -46),
BackgroundTransparency = 1,
GroupTransparency = 1,
Visible = false,
ZIndex = 5,
Parent = _0x46D0,
})
local _0x6CBE = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.new(0.5, 0, 0.5, -44),
Size = UDim2.fromOffset(136, 136),
BackgroundColor3 = _0x7D00,
ZIndex = 6,
Parent = _0x8CAE,
})
_0x9A43(_0x6CBE)
local _0x9BBF = _0x504E(string.char(85,73,83,116,114,111,107,101), { Color = _0xA925, Thickness = 2, Parent = _0x6CBE })
local _0xBFCC = _0x504E(string.char(85,73,71,114,97,100,105,101,110,116), {
Transparency = NumberSequence.new({
NumberSequenceKeypoint.new(0, 0),
NumberSequenceKeypoint.new(0.5, 0.85),
NumberSequenceKeypoint.new(1, 0),
}),
Parent = _0x9BBF,
})
local _0x04B5 = _0x504E(string.char(73,109,97,103,101,76,97,98,101,108), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromScale(0.5, 0.5),
Size = UDim2.new(1, -10, 1, -10),
BackgroundColor3 = Color3.fromRGB(22, 22, 22),
ScaleType = Enum.ScaleType.Crop,
Image ="",
ZIndex = 7,
Parent = _0x6CBE,
})
_0x9A43(_0x04B5)
_0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(122,122,122),
Font = Enum.Font.GothamBlack,
TextSize = 22,
TextColor3 = _0xF139,
BackgroundTransparency = 1,
Size = UDim2.fromScale(1, 1),
ZIndex = 8,
Parent = _0x04B5,
})
local _0x4426 = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(87,97,105,116,105,110,103,32,102,111,114,32,109,97,112),
Font = Enum.Font.GothamBold,
TextSize = 20,
TextColor3 = _0xA925,
BackgroundTransparency = 1,
AnchorPoint = Vector2.new(0.5, 0),
Position = UDim2.new(0.5, 0, 0.5, 38),
Size = UDim2.new(1, 0, 0, 24),
ZIndex = 6,
Parent = _0x8CAE,
})
local _0xA3D1 = _0x504E(string.char(85,73,71,114,97,100,105,101,110,116), { Parent = _0x4426 })
local _0xD6C6 = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0),
Position = UDim2.new(0.5, 0, 0.5, 68),
Size = UDim2.fromOffset(36, 12),
BackgroundTransparency = 1,
ZIndex = 6,
Parent = _0x8CAE,
})
local _0x8753 = {}
for _0x269E = 1, 3 do
_0x8753[_0x269E] = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.new(0, 6 + (_0x269E - 1) * 12, 0.5, 0),
Size = UDim2.fromOffset(5, 5),
BackgroundColor3 = _0xA925,
ZIndex = 6,
Parent = _0xD6C6,
})
_0x9A43(_0x8753[_0x269E])
end
_0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(114,111,117,110,100,32,105,115,32,111,110,32,32,194,183,32,32,109,97,112,115,32,115,104,111,119,32,117,112,32,119,104,101,110,32,118,111,116,105,110,103,32,115,116,97,114,116,115),
Font = Enum.Font.Gotham,
TextSize = 12,
TextColor3 = _0x2E02,
BackgroundTransparency = 1,
AnchorPoint = Vector2.new(0.5, 0),
Position = UDim2.new(0.5, 0, 0.5, 86),
Size = UDim2.new(1, 0, 0, 16),
ZIndex = 6,
Parent = _0x8CAE,
})
local _0x67B5 = false
local _0x8C07 = _0x504E(string.char(85,73,83,99,97,108,101), { Parent = _0x8CAE })
local _0x021E = _0x504E(string.char(85,73,83,99,97,108,101), { Parent = _0xF16F })
local function _0x5C09(_0xE496)
if _0xE496 == _0x67B5 then
return
end
_0x67B5 = _0xE496
if _0xE496 then
_0xF16F.Visible = false
_0x8CAE.Visible = true
_0x8C07.Scale = 0.92
_0x0903(_0x8C07, 0.45, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
_0x0903(_0x8CAE, 0.35, { GroupTransparency = 0 })
else
local _0x634C = _0x0903(_0x8CAE, 0.2, { GroupTransparency = 1 })
_0x634C.Completed:Connect(function()
if not _0x67B5 then
_0x8CAE.Visible = false
end
end)
_0xF16F.Visible = true
_0x021E.Scale = 0.9
_0x0903(_0x021E, 0.45, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
end
end
local _0x7C41 = os.clock()
_0xB9EB(_0xB197.RenderStepped, function()
if not _0x8CAE.Visible or not _0xFF96.Visible then
return
end
local _0x634C = os.clock() - _0x7C41
_0xBFCC.Rotation = _0x634C * 140 % 360
_0xA3D1.Color = _0x835C(_0x634C * 0.35)
local _0x0F47 = math.sin(_0x634C * 1.6) * 4
_0x6CBE.Position = UDim2.new(0.5, 0, 0.5, -44 + _0x0F47)
for _0x269E, _0xA65E in ipairs(_0x8753) do
local _0x2DD2 = math.max(0, math.sin(_0x634C * 5 - _0x269E * 0.7))
_0xA65E.Position = UDim2.new(0, 6 + (_0x269E - 1) * 12, 0.5, -_0x2DD2 * 5)
_0xA65E.BackgroundTransparency = 0.6 - _0x2DD2 * 0.6
end
end)
local _0x7B8D = {}
local _0xA4EA
local _0xF27C = false
local function _0x3C8D(_0xE496)
if _0xE496 and not _0xF27C then
local _0xD95E = _0x8E3D.Character
_0x16E5(_0xD95E and _0xD95E:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)))
_0xF27C = true
if _0x3CC6.on then
_0xA9C1(string.char(68,101,115,121,110,99,32,112,97,117,115,101,100),string.char(116,117,114,110,101,100,32,111,102,102,32,119,104,105,108,101,32,121,111,117,32,100,117,112,101,32,109,97,112,32,118,111,116,101,115))
end
elseif not _0xE496 and _0xF27C then
_0xDD7C()
_0xF27C = false
if _0x3CC6.on then
_0xA9C1(string.char(68,101,115,121,110,99,58,32,79,110),string.char(118,111,116,101,32,108,111,111,112,32,101,110,100,101,100,32,45,32,100,101,115,121,110,99,32,105,115,32,98,97,99,107))
end
end
end
local function _0x1EA9(silent)
local _0x39B2 = _0x5A5A
_0x5A5A = nil
_0x3C8D(false)
if _0x3007 then
pcall(task.cancel, _0x3007)
_0x3007 = nil
end
_0xA4EA()
if _0x39B2 and not silent then
_0xEF6E(string.char(115,116,111,112,112,101,100,32,32,194,183,32,32).. _0x8E7B ..string.char(32,118,111,116,101,115,32,99,97,115,116))
_0xA9C1(string.char(86,111,116,101,32,68,117,112,101),string.char(108,111,111,112,32,115,116,111,112,112,101,100))
end
end
local function _0x0C7D(_0x269E)
local _0x75D0 = _0x49DF(_0x269E)
if not _0x75D0 then
return false
end
local _0x6D72, _0xE8EB = _0xEC5D(_0x75D0)
if not (_0x6D72 and _0xE8EB) then
return false
end
return true, tonumber(_0xE8EB:match(string.char(37,100,43)))
end
local function _0xEA84(reason)
if not _0x5A5A then
return
end
_0x5A5A = nil
_0x3C8D(false)
local _0x2F74 = _0x3007
_0x3007 = nil
if _0x2F74 and _0x2F74 ~= coroutine.running() then
pcall(task.cancel, _0x2F74)
end
_0xA4EA()
_0xEF6E(reason ..string.char(32,32,194,183,32,32).. _0x8E7B ..string.char(32,118,111,116,101,115,32,99,97,115,116))
_0xA9C1(string.char(86,111,116,101,32,68,117,112,101), reason ..string.char(32,45,32,108,111,111,112,32,115,116,111,112,112,101,100))
end
local function _0x90D5(_0x269E)
_0x1EA9(true)
_0x5A5A = _0x269E
_0x8E7B = 0
_0x3C8D(true)
_0xA4EA()
local _0x893F = _0x7B8D[_0x269E].map orstring.char(112,97,100,32,35).. _0x269E
_0xEF6E(string.char(108,111,111,112,105,110,103,32,111,110,32).. _0x893F)
_0xA9C1(string.char(86,111,116,101,32,68,117,112,101),string.char(118,111,116,105,110,103,32,102,111,114,32).. _0x893F)
_0x3007 = task.spawn(function()
local _0x57B3, _0x683B = nil, 0
while _0x5A5A == _0x269E do
_0xF24E()
local _0x9CCE, _0xFD42 = _0x0C7D(_0x269E)
if not _0x9CCE then
_0xEA84(string.char(118,111,116,105,110,103,32,101,110,100,101,100))
return
end
_0x57B3 = _0x57B3 or _0xFD42
local _0xD95E = _0x8E3D.Character
local _0xC3CF = _0xD95E and _0xD95E:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0xC6D1 = _0xD95E and _0xD95E:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xCC3C = _0x0C36(_0x49DF(_0x269E))
if _0xC3CF and _0xC3CF.Health > 0 and _0xC6D1 and _0xCC3C then
_0xC6D1.CFrame = _0xCC3C + Vector3.new(0, 2.5, 0)
local _0xC0FB = _0xFD42
local _0x5026 = os.clock()
repeat
_0xB197.Heartbeat:Wait()
_0xC6D1.CFrame = _0xCC3C + Vector3.new(0, 2.5, 0)
_0xF24E()
local _0x624F, _0x242F = _0x0C7D(_0x269E)
if _0x242F and _0xC0FB and _0x242F > _0xC0FB then
break
end
until os.clock() - _0x5026 >= 0.4 or _0x5A5A ~= _0x269E
if _0x5A5A ~= _0x269E then
break
end
_0xF24E()
_0x9CCE, _0xFD42 = _0x0C7D(_0x269E)
if not _0x9CCE then
_0xEA84(string.char(118,111,116,105,110,103,32,101,110,100,101,100))
return
end
if _0xFD42 and _0x57B3 and _0xFD42 <= _0x57B3 then
_0x683B += 1
if _0x683B >= 3 then
_0xEA84(string.char(118,111,116,101,115,32,110,111,116,32,99,111,117,110,116,105,110,103))
return
end
else
_0x683B = 0
_0x57B3 = _0xFD42 or _0x57B3
end
_0x8E7B += 1
_0xEF6E(string.char(108,111,111,112,105,110,103,32,111,110,32).. (_0x7B8D[_0x269E].map orstring.char(112,97,100,32,35).. _0x269E) ..string.char(32,32,194,183,32,32).. _0x8E7B ..string.char(32,118,111,116,101,115,32,99,97,115,116))
if _0xC3CF.Health > 0 then
_0xC3CF.Health = 0
end
local _0x5704 = _0x8E3D.CharacterAdded:Wait()
_0x5704:WaitForChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116), 3)
task.wait(0.12)
local _0x00EA = _0x5704:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xDA9F = _0x0C36(_0x49DF(_0x269E))
if _0x5A5A == _0x269E and _0x00EA and (not _0xDA9F or (_0x00EA.Position - _0xDA9F.Position).Magnitude > 300) then
_0xEA84(string.char(114,111,117,110,100,32,115,116,97,114,116,101,100))
return
end
elseif not _0xC3CF or _0xC3CF.Health <= 0 then
local _0xF692 = _0x8E3D.CharacterAdded:Wait()
_0xF692:WaitForChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116), 3)
task.wait(0.12)
else
task.wait(0.2)
end
end
end)
end
for _0x269E = 1, 3 do
local _0x5C29 = _0x504E(string.char(84,101,120,116,66,117,116,116,111,110), {
Text ="",
AutoButtonColor = false,
BackgroundTransparency = 1,
LayoutOrder = _0x269E,
ZIndex = 2,
Parent = _0xF16F,
})
local _0x50BB = _0x504E(string.char(85,73,83,99,97,108,101), { Parent = _0x5C29 })
local _0x9D21 = _0x504E(string.char(70,114,97,109,101), { Size = UDim2.new(1, 0, 0, 112), BackgroundColor3 = _0x8802, ZIndex = 2, Parent = _0x5C29 })
_0xF153(_0x9D21, 8)
local _0x169D = _0x24BA(_0x9D21)
local _0x3F57 = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(63),
Font = Enum.Font.GothamBlack,
TextSize = 28,
TextColor3 = _0xF139,
BackgroundTransparency = 1,
Size = UDim2.new(1, 0, 1, -18),
ZIndex = 3,
Parent = _0x9D21,
})
local _0xFD48 = _0x504E(string.char(73,109,97,103,101,76,97,98,101,108), {
Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1,
ScaleType = Enum.ScaleType.Crop,
ImageColor3 = Color3.fromRGB(200, 200, 200),
ImageTransparency = 1,
ZIndex = 3,
Parent = _0x9D21,
})
_0xF153(_0xFD48, 8)
local _0x71DA = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0, 1),
Position = UDim2.fromScale(0, 1),
Size = UDim2.new(1, 0, 0, 44),
BackgroundColor3 = Color3.new(0, 0, 0),
BorderSizePixel = 0,
ZIndex = 4,
Parent = _0x9D21,
})
_0xF153(_0x71DA, 8)
_0x504E(string.char(85,73,71,114,97,100,105,101,110,116), { Rotation = 90, Transparency = NumberSequence.new(1, 0.25), Parent = _0x71DA })
local _0xF156 = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(1, 0),
Position = UDim2.new(1, -6, 0, 6),
Size = UDim2.fromOffset(64, 16),
BackgroundColor3 = _0xA925,
Visible = false,
ZIndex = 5,
Parent = _0x9D21,
})
_0xF153(_0xF156, 5)
local _0xF375 = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0, 0.5),
Position = UDim2.new(0, 6, 0.5, 0),
Size = UDim2.fromOffset(5, 5),
BackgroundColor3 = _0xAA5A,
ZIndex = 6,
Parent = _0xF156,
})
_0x9A43(_0xF375)
_0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(82,85,78,78,73,78,71),
Font = Enum.Font.GothamBold,
TextSize = 9,
TextColor3 = _0xAA5A,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(14, 0),
Size = UDim2.new(1, -16, 1, 0),
ZIndex = 6,
Parent = _0xF156,
})
local _0xE8EB = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
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
Parent = _0x9D21,
})
local _0x1788 = _0x504E(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(0, 118),
Size = UDim2.new(1, 0, 1, -118),
BackgroundColor3 = _0xDA2D,
ZIndex = 2,
Parent = _0x5C29,
})
_0xF153(_0x1788, 8)
local _0x9816 = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(76,79,65,68,73,78,71,46,46,46),
Font = Enum.Font.GothamBold,
TextSize = 11,
TextColor3 = _0xA925,
TextWrapped = true,
TextTruncate = Enum.TextTruncate.AtEnd,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(6, 0),
Size = UDim2.new(1, -12, 1, 0),
ZIndex = 3,
Parent = _0x1788,
})
local _0x242F = {
_0x9D21 = _0x9D21,
_0xBC19 = _0x169D,
_0xFD48 = _0xFD48,
_0x3F57 = _0x3F57,
run = _0xF156,
_0xF375 = _0xF375,
_0xE8EB = _0xE8EB,
_0x893F = _0x9816,
_0xE897 = false,
}
_0x7B8D[_0x269E] = _0x242F
_0xB9EB(_0x5C29.MouseEnter, function()
_0x242F.hover = true
_0xA4EA()
end)
_0xB9EB(_0x5C29.MouseLeave, function()
_0x242F.hover = false
_0xA4EA()
end)
_0xB9EB(_0x5C29.MouseButton1Click, function()
_0x50BB.Scale = 0.94
_0x0903(_0x50BB, 0.35, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
if _0x5A5A == _0x269E then
_0x1EA9()
else
_0x90D5(_0x269E)
end
end)
end
_0xA4EA = function()
for _0x269E, _0x242F in ipairs(_0x7B8D) do
local _0xE496 = _0x5A5A == _0x269E
_0x0903(_0x242F.thumb, 0.15, { BackgroundColor3 = _0x242F.hover and _0xF29A or _0x8802 })
_0x0903(_0x242F.stroke, 0.2, {
Color = _0xE496 and _0xA925 or (_0x242F.hover and _0xCD2A or _0x2F00),
Thickness = _0xE496 and 1.5 or 1,
})
_0x0903(_0x242F.img, 0.2, { ImageColor3 = (_0xE496 or _0x242F.hover) and _0xA925 or Color3.fromRGB(200, 200, 200) })
if _0xE496 and not _0x242F.run.Visible then
_0x242F.run.Visible = true
_0x242F.run.Size = UDim2.fromOffset(40, 16)
_0x0903(_0x242F.run, 0.3, { Size = UDim2.fromOffset(64, 16) }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
elseif not _0xE496 then
_0x242F.run.Visible = false
end
end
local _0x5C3B = _0x5A5A ~= nil
_0x0903(_0x3CA6, 0.2, {
BackgroundColor3 = _0x5C3B and _0xA925 or _0x6274,
TextColor3 = _0x5C3B and _0xAA5A or _0xD6E4,
})
_0x0903(_0x3FC4, 0.2, { Color = _0x5C3B and _0xA925 or _0x2F00 })
end
_0xA4EA()
_0xB9EB(_0x3CA6.MouseButton1Click, function()
_0xD6B2.Scale = 0.85
_0x0903(_0xD6B2, 0.35, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
if _0x5A5A then
_0x1EA9()
else
_0xA9C1(string.char(86,111,116,101,32,68,117,112,101),string.char(110,111,116,104,105,110,103,32,105,115,32,114,117,110,110,105,110,103))
end
end)
_0xB9EB(_0xB197.Heartbeat, function()
if not _0x5A5A then
return
end
local _0x242F = _0x7B8D[_0x5A5A]
_0x242F.runDot.BackgroundTransparency = 0.5 - 0.5 * math.cos(os.clock() * 6)
end)
local function _0x2C8A(_0x242F, _0x58B2)
if _0x242F.image == _0x58B2 then
return
end
_0x242F.image = _0x58B2
_0x242F.img.Image = _0x58B2 or""_0x0903(_0x242F.img, 0.3, { ImageTransparency = _0x58B2 and 0 or 1 })
_0x242F.ph.Visible = not _0x58B2
end
task.spawn(function()
while _0x0155.Parent do
pcall(function()
local _0xFC29 = _0x744B()
_0xF24E()
local _0xCE49 = false
for _0x269E, _0x242F in ipairs(_0x7B8D) do
local _0x75D0 = _0xFC29 and _0x49DF(_0x269E)
local _0x6D72, _0xE8EB
if _0x75D0 then
_0x6D72, _0xE8EB = _0xEC5D(_0x75D0)
end
if _0x6D72 then
_0xCE49 = true
end
if not _0xFC29 then
_0x242F.name.Text =string.char(82,79,85,78,68,32,73,83,32,79,78)elseif not _0x75D0 then
_0x242F.name.Text =string.char(85,78,65,86,65,73,76,65,66,76,69)elseif _0x6D72 and _0x6D72 ~= _0x242F.map then
_0x242F.map = _0x6D72
_0x242F.name.Text = _0x6D72:upper()
local _0x6EE4 =""for _0xCDE9 in _0x6D72:gmatch(string.char(37,83,43)) do
_0x6EE4 ..= _0xCDE9:sub(1, 1):upper()
end
_0x242F.ph.Text = _0x6EE4:sub(1, 3)
_0x2C8A(_0x242F, _0x5E54(_0x75D0))
end
if not _0x75D0 then
_0x242F.map = nil
_0x242F.ph.Text =string.char(63)_0x2C8A(_0x242F, nil)
end
_0x242F.votes.Text = (string.char(60,102,111,110,116,32,99,111,108,111,114,61,34,35,70,70,70,70,70,70,34,62,60,98,62,37,115,60,47,98,62,60,47,102,111,110,116,62,32,60,102,111,110,116,32,99,111,108,111,114,61,34,35,57,65,57,65,57,65,34,62,118,111,116,101,115,60,47,102,111,110,116,62)):format(_0xE8EB orstring.char(45))
end
if _0x5A5A and not _0x0C7D(_0x5A5A) then
_0xEA84(string.char(118,111,116,105,110,103,32,101,110,100,101,100))
end
_0x5C09(not _0xCE49 and not _0x5A5A)
if not _0x5A5A then
_0xEF6E(_0xCE49 andstring.char(112,105,99,107,32,97,32,109,97,112)orstring.char(114,111,117,110,100,32,105,115,32,111,110))
end
end)
task.wait(0.5)
end
end)
_0xE880 = function()
_0x1EA9(true)
end
end
do
local _0x434F = { _0xE496 = false }
local _0x6330 = false
local _0x2CFF
local _0x44F5 = {}
local function _0x06D3(_0x893F)
return _0x2768(_0x8E3D, _0x893F)
end
local function _0x6FCD(_0xA65E)
if _0xA65E:IsA(string.char(66,97,115,101,80,97,114,116)) then
return _0xA65E
end
if _0xA65E:IsA(string.char(77,111,100,101,108)) then
return _0xA65E.PrimaryPart or _0xA65E:FindFirstChildWhichIsA(string.char(66,97,115,101,80,97,114,116), true)
end
end
local function _0xF622()
if _0x2CFF and _0x2CFF.Parent then
return _0x2CFF
end
for _0x624F, _0xA65E in ipairs(workspace:GetDescendants()) do
if _0xA65E.Name ==string.char(71,117,110,68,114,111,112)then
local _0xBCE8 = _0x6FCD(_0xA65E)
if _0xBCE8 then
return _0xBCE8
end
end
end
end
local function _0x7FA9(_0xB48C, _0xBCE8)
if firetouchinterest then
firetouchinterest(_0xB48C, _0xBCE8, 0)
firetouchinterest(_0xB48C, _0xBCE8, 1)
end
end
local function _0x7186()
for _0x624F, _0x09CD in ipairs(_0xD101:GetPlayers()) do
if _0x09CD ~= _0x8E3D and _0x2768(_0x09CD,string.char(75,110,105,102,101)) then
local _0x242F = _0x09CD.Character
local _0xF171 = _0x242F and _0x242F:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if _0xF171 then
return _0xF171.Position
end
end
end
end
local function _0xED56(_0x226E, manual, deathPos)
if _0x6330 then
return
end
local _0xD95E = _0x8E3D.Character
local _0xB48C = _0xD95E and _0xD95E:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xC3CF = _0xD95E and _0xD95E:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if not _0xB48C or not _0xC3CF or _0xC3CF.Health <= 0 then
return
end
if not manual and _0x01BA(_0xB48C.Position) then
return
end
if _0x06D3(string.char(75,110,105,102,101)) then
if manual then
_0xA9C1(string.char(71,114,97,98,32,71,117,110),string.char(109,117,114,100,101,114,101,114,32,99,97,110,39,116,32,112,105,99,107,32,117,112,32,116,104,101,32,103,117,110))
end
return
end
if _0x06D3(string.char(71,117,110)) then
return
end
_0x226E = _0x226E or _0xF622()
if not _0x226E and not deathPos then
if manual then
_0xA9C1(string.char(71,114,97,98,32,71,117,110),string.char(110,111,32,100,114,111,112,112,101,100,32,103,117,110,32,114,105,103,104,116,32,110,111,119))
end
return
end
_0x6330 = true
local _0x0E20 = os.clock()
local function _0x5C3B(_0xBCE8)
return _0xBCE8 and _0xBCE8.Parent and _0xBCE8 or nil
end
while not _0x5C3B(_0x226E) and os.clock() - _0x0E20 < 1.5 do
_0x226E = _0x5C3B(_0x2CFF)
if _0x226E then
break
end
_0xB197.Heartbeat:Wait()
end
if not _0x5C3B(_0x226E) or not _0xB48C.Parent or _0xC3CF.Health <= 0 then
_0x6330 = false
return
end
if not manual then
local _0xAD43 = os.clock()
while os.clock() - _0xAD43 < 3 do
local _0x3242 = _0x7186()
if not _0x3242 or not _0x5C3B(_0x226E) or (_0x3242 - _0x226E.Position).Magnitude > 8 then
break
end
_0xB197.Heartbeat:Wait()
end
if not _0x5C3B(_0x226E) then
_0x6330 = false
return
end
end
_0x16E5(_0xB48C)
local _0xA14C = _0xB48C.CFrame
local _0xCB82 = false
local _0xCC3C
local function _0x8E69(_0x242F)
if _0x242F.Name ~=string.char(71,117,110)or _0xCB82 then
return
end
_0xCB82 = true
_0xCC3C = nil
if _0xB48C.Parent and _0xC3CF.Health > 0 then
_0xB48C.CFrame = _0xA14C
_0xB48C.AssemblyLinearVelocity = Vector3.zero
end
end
local _0xF5BE = _0x8E3D:FindFirstChildOfClass(string.char(66,97,99,107,112,97,99,107))
local _0x66AB = _0xF5BE and _0xF5BE.ChildAdded:Connect(_0x8E69)
local _0xDD0F = _0xD95E.ChildAdded:Connect(_0x8E69)
local _0xBE61 = _0xB197.Stepped:Connect(function()
if _0xCC3C and _0xB48C.Parent then
_0xB48C.CFrame = _0xCC3C
_0xB48C.AssemblyLinearVelocity = Vector3.zero
end
end)
_0x7FA9(_0xB48C, _0x226E)
_0xB197.Heartbeat:Wait()
if not _0xCB82 and _0x06D3(string.char(71,117,110)) then
_0xCB82 = true
end
if not _0xCB82 then
local _0x7EE2 = os.clock()
while not _0xCB82 and os.clock() - _0x7EE2 < 0.35 do
_0x226E = _0x5C3B(_0x226E) or _0x5C3B(_0x2CFF)
if not _0x226E or not _0xB48C.Parent or _0xC3CF.Health <= 0 then
break
end
_0xCC3C = _0x226E.CFrame
_0xB48C.CFrame = _0xCC3C
_0xB48C.AssemblyLinearVelocity = Vector3.zero
_0x7FA9(_0xB48C, _0x226E)
_0xB197.Heartbeat:Wait()
if not _0xCB82 and _0x06D3(string.char(71,117,110)) then
_0x8E69({ Name =string.char(71,117,110)})
end
end
end
_0xBE61:Disconnect()
if _0x66AB then
_0x66AB:Disconnect()
end
_0xDD0F:Disconnect()
_0xCC3C = nil
if _0xB48C.Parent and _0xC3CF.Health > 0 then
_0xB48C.CFrame = _0xA14C
_0xB48C.AssemblyLinearVelocity = Vector3.zero
end
_0x6330 = false
_0xDD7C()
if _0xCB82 then
_0xA9C1(string.char(71,114,97,98,32,71,117,110), (string.char(103,117,110,32,103,114,97,98,98,101,100,32,105,110,32,37,100,32,109,115)):format(math.floor((os.clock() - _0x0E20) * 1000)))
elseif manual then
_0xA9C1(string.char(71,114,97,98,32,71,117,110),string.char(99,111,117,108,100,110,39,116,32,103,114,97,98,32,105,116))
end
end
_0xB9EB(workspace.DescendantAdded, function(_0xA65E)
if _0xA65E.Name ~=string.char(71,117,110,68,114,111,112)then
return
end
local _0xBCE8 = _0x6FCD(_0xA65E)
if not _0xBCE8 then
return
end
_0x2CFF = _0xBCE8
if _0x434F.on and not _0x6330 then
task.spawn(_0xED56, _0xBCE8)
end
end)
_0xB9EB(_0xB197.Heartbeat, function()
if not _0x434F.on then
if next(_0x44F5) then
table.clear(_0x44F5)
end
return
end
for _0x624F, _0x09CD in ipairs(_0xD101:GetPlayers()) do
if _0x09CD ~= _0x8E3D then
local _0xD95E = _0x09CD.Character
local _0xB48C = _0xD95E and _0xD95E:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xC3CF = _0xD95E and _0xD95E:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0x6C9C = _0xB48C and _0xC3CF and _0xC3CF.Health > 0
if _0x6C9C and _0x2768(_0x09CD,string.char(71,117,110)) then
_0x44F5[_0x09CD] = _0xB48C.Position
elseif _0x44F5[_0x09CD] then
local _0x3242 = _0x44F5[_0x09CD]
_0x44F5[_0x09CD] = nil
if _0xC3CF and _0xC3CF.Health <= 0 and not _0x6330 then
task.spawn(_0xED56, nil, false, _0x3242)
end
end
end
end
for _0x09CD in pairs(_0x44F5) do
if not _0x09CD.Parent then
_0x44F5[_0x09CD] = nil
end
end
end)
local _0x61C4 = _0x45F1(_0x786E,string.char(65,117,116,111,32,71,114,97,98,32,71,117,110))
_0x61C4:Toggle(string.char(69,110,97,98,108,101),string.char(115,104,101,114,105,102,102,32,100,105,101,115,32,45,32,121,111,117,32,103,114,97,98,32,116,104,101,32,103,117,110,32,105,110,115,116,97,110,116,108,121), function(_0xE496)
_0x434F.on = _0xE496
if _0xE496 then
task.spawn(_0xED56)
end
_0xA9C1(string.char(71,114,97,98,32,71,117,110,58,32).. (_0xE496 andstring.char(79,110)orstring.char(79,102,102)), _0xE496 andstring.char(119,97,105,116,105,110,103,32,102,111,114,32,97,32,100,114,111,112,112,101,100,32,103,117,110)orstring.char(100,105,115,97,98,108,101,100))
end)
_0x61C4:Button(string.char(71,114,97,98,32,110,111,119),string.char(116,97,107,101,32,116,104,101,32,100,114,111,112,112,101,100,32,103,117,110,32,114,105,103,104,116,32,110,111,119), function()
_0xED56(nil, true)
end)
if not firetouchinterest then
_0x61C4:Button(string.char(78,111,32,102,105,114,101,116,111,117,99,104,105,110,116,101,114,101,115,116),string.char(101,120,101,99,117,116,111,114,32,108,97,99,107,115,32,105,116,32,45,32,103,114,97,98,32,114,101,108,105,101,115,32,111,110,32,116,101,108,101,112,111,114,116,32,111,110,108,121), function() end)
end
end
do
local _0xC394 = { autoSheriff = false, _0x6330 = false, cancel = false, nextScan = 0, autoCharacter = nil, autoReadyAt = 0 }
local _0xDD5C = {}
local _0x10E9, _0x1426 = {}, 0
local _0x7374
local function _0x700A()
if os.clock() - _0x1426 < 1 then
return
end
_0x1426 = os.clock()
local _0x8D38 = game:GetService(string.char(82,101,112,108,105,99,97,116,101,100,83,116,111,114,97,103,101)):FindFirstChild(string.char(71,101,116,80,108,97,121,101,114,68,97,116,97), true)
if not (_0x8D38 and _0x8D38:IsA(string.char(82,101,109,111,116,101,70,117,110,99,116,105,111,110))) then
return
end
local _0xD828, _0x5E99 = pcall(_0x8D38.InvokeServer, _0x8D38)
if not _0xD828 or type(_0x5E99) ~=string.char(116,97,98,108,101)then
return
end
local _0x0ED0 = {}
for _0x893F, _0x45F4 in pairs(_0x5E99) do
if type(_0x45F4) ==string.char(116,97,98,108,101)and type(_0x45F4.Role) ==string.char(115,116,114,105,110,103)and not _0x45F4.Dead and not _0x45F4.Killed then
_0x0ED0[_0x893F] = _0x45F4.Role
end
end
_0x10E9 = _0x0ED0
end
local function _0x5C54(_0x09CD, _0xC982)
if _0xC982 ==string.char(77,117,114,100,101,114,101,114)and _0x2768(_0x09CD,string.char(75,110,105,102,101)) then
return true
end
if _0xC982 ==string.char(83,104,101,114,105,102,102)and _0x2768(_0x09CD,string.char(71,117,110)) then
return true
end
local _0x08C2 = _0x10E9[_0x09CD.Name]
return _0xC982 ==string.char(77,117,114,100,101,114,101,114)and _0x08C2 ==string.char(77,117,114,100,101,114,101,114)or _0xC982 ==string.char(83,104,101,114,105,102,102)and (_0x08C2 ==string.char(83,104,101,114,105,102,102)or _0x08C2 ==string.char(72,101,114,111))
end
local function _0xE642(_0xC982)
for _0x624F, _0x09CD in ipairs(_0xD101:GetPlayers()) do
if _0x09CD ~= _0x8E3D and _0x5C54(_0x09CD, _0xC982) then
local _0xD95E = _0x09CD.Character
local _0xC3CF = _0xD95E and _0xD95E:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0xC6D1 = _0xD95E and _0xD95E:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if _0xC3CF and _0xC3CF.Health > 0 and _0xC6D1 then
return _0x09CD
end
end
end
_0x700A()
for _0x624F, _0x09CD in ipairs(_0xD101:GetPlayers()) do
if _0x09CD ~= _0x8E3D and _0x5C54(_0x09CD, _0xC982) then
local _0xD95E = _0x09CD.Character
local _0xC3CF = _0xD95E and _0xD95E:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0xC6D1 = _0xD95E and _0xD95E:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if _0xC3CF and _0xC3CF.Health > 0 and _0xC6D1 then
return _0x09CD
end
end
end
end
local function _0x17FD(_0x3242, _0x15D8)
local _0x6CBE = _0x504E(string.char(80,97,114,116), {
Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,70,108,105,110,103,73,109,112,97,99,116),
Anchored = true,
CanCollide = false,
CanQuery = false,
CanTouch = false,
CastShadow = false,
Material = Enum.Material.Neon,
Color = _0x15D8,
Transparency = 0.15,
Shape = Enum.PartType.Cylinder,
Size = Vector3.new(0.12, 1, 1),
CFrame = CFrame.new(_0x3242) * CFrame.Angles(0, 0, math.pi / 2),
Parent = workspace,
})
_0x0903(_0x6CBE, 0.45, { Size = Vector3.new(0.12, 14, 14), Transparency = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
game:GetService(string.char(68,101,98,114,105,115)):AddItem(_0x6CBE, 0.5)
end
local function _0x0FC0(_0xCC3C, _0xC982, manual)
if _0xC394.busy then
if manual then
_0xA9C1(string.char(82,111,108,101,32,70,108,105,110,103),string.char(97,110,111,116,104,101,114,32,102,108,105,110,103,32,105,115,32,97,108,114,101,97,100,121,32,114,117,110,110,105,110,103))
end
return false
end
local _0xD95E = _0x8E3D.Character
local _0xC3CF = _0xD95E and _0xD95E:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0xC6D1 = _0xD95E and _0xD95E:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xF224 = _0xCC3C and _0xCC3C.Character
local _0xE68A = _0xF224 and _0xF224:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0x5E5B = _0xF224 and _0xF224:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not (_0xC6D1 and _0xC3CF and _0xC3CF.Health > 0 and _0x5E5B and _0xE68A and _0xE68A.Health > 0) then
if manual then
_0xA9C1(string.char(82,111,108,101,32,70,108,105,110,103), _0xC982:lower() ..string.char(32,105,115,32,110,111,116,32,97,118,97,105,108,97,98,108,101))
end
return false
end
if _0xE68A.Sit then
if manual then
_0xA9C1(string.char(82,111,108,101,32,70,108,105,110,103), _0xCC3C.DisplayName ..string.char(32,105,115,32,115,105,116,116,105,110,103))
end
return false
end
_0xC394.busy, _0xC394.cancel = true, false
local _0x9BFB = _0x3CC6.on or _0x3CC6.force
if _0x9BFB then
_0x16E5(_0xC6D1)
end
local _0x9BD8 = _0xD95E:GetPivot()
local _0xE422 = _0xC3CF.AutoRotate
local _0x3665 = workspace.FallenPartsDestroyHeight
local _0x6237 = _0xC3CF:GetStateEnabled(Enum.HumanoidStateType.Seated)
local _0x97DA = false
local _0x34BD = _0x7108.antiFling == true
local _0x15D8 = _0xC982 ==string.char(83,104,101,114,105,102,102)and Color3.fromRGB(70, 150, 255) or Color3.fromRGB(255, 70, 70)
local _0x7DE7 = _0x504E(string.char(72,105,103,104,108,105,103,104,116), {
Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,70,108,105,110,103,84,97,114,103,101,116),
Adornee = _0xF224,
DepthMode = Enum.HighlightDepthMode.AlwaysOnTop,
FillColor = _0x15D8,
FillTransparency = 0.65,
OutlineColor = _0xA925,
OutlineTransparency = 0,
Parent = _0xF224,
})
local _0x4C0E = _0x504E(string.char(66,105,108,108,98,111,97,114,100,71,117,105), {
Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,70,108,105,110,103,77,97,114,107,101,114),
Adornee = _0x5E5B,
AlwaysOnTop = true,
Size = UDim2.fromOffset(150, 30),
StudsOffset = Vector3.new(0, 3.5, 0),
Parent = _0x0155,
})
_0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(70,76,73,78,71,73,78,71,32,32,226,134,147),
Font = Enum.Font.GothamBlack,
TextSize = 14,
TextColor3 = _0x15D8,
TextStrokeColor3 = Color3.new(),
TextStrokeTransparency = 0.25,
BackgroundTransparency = 1,
Size = UDim2.fromScale(1, 1),
Parent = _0x4C0E,
})
local _0x1C8A = _0x504E(string.char(66,111,100,121,86,101,108,111,99,105,116,121), {
Velocity = Vector3.zero,
MaxForce = Vector3.new(9e9, 9e9, 9e9),
Parent = _0xC6D1,
})
local _0xDD83 = false
local function _0x4BDC()
if _0xDD83 then
return
end
_0xDD83 = true
for _0x624F, _0x830D in ipairs({ _0x1C8A, _0x7DE7, _0x4C0E }) do
if _0x830D and _0x830D.Parent then
_0x830D:Destroy()
end
end
pcall(_0xC3CF.SetStateEnabled, _0xC3CF, Enum.HumanoidStateType.Seated, _0x6237)
if _0x8E3D.Character == _0xD95E and _0xC6D1.Parent and _0xC3CF.Health > 0 then
pcall(function()
for _0x624F = 1, 6 do
_0xD95E:PivotTo(_0x9BD8 * CFrame.new(0, 0.5, 0))
for _0x624F, _0x6F67 in ipairs(_0xD95E:GetChildren()) do
if _0x6F67:IsA(string.char(66,97,115,101,80,97,114,116)) then
_0x6F67.AssemblyLinearVelocity = Vector3.zero
_0x6F67.AssemblyAngularVelocity = Vector3.zero
end
end
if (_0xC6D1.Position - _0x9BD8.Position).Magnitude < 25 then
break
end
_0xB197.Heartbeat:Wait()
end
_0xC3CF.AutoRotate = _0xE422
_0xC3CF:ChangeState(Enum.HumanoidStateType.GettingUp)
end)
end
if _0x97DA then
pcall(function()
workspace.FallenPartsDestroyHeight = _0x3665
end)
end
if _0x34BD then
_0x7108.antiFling = true
end
if _0x9BFB then
_0xDD7C()
end
_0xC394.busy = false
_0x7374 = nil
end
_0x7374 = _0x4BDC
if _0x34BD then
_0x8BCF()
end
_0xC3CF.AutoRotate = false
_0x97DA = pcall(function()
workspace.FallenPartsDestroyHeight = 0 / 0
end)
if not _0x97DA then
_0x4BDC()
if manual then
_0xA9C1(string.char(82,111,108,101,32,70,108,105,110,103),string.char(101,120,101,99,117,116,111,114,32,99,97,110,110,111,116,32,100,105,115,97,98,108,101,32,70,97,108,108,101,110,80,97,114,116,115,68,101,115,116,114,111,121,72,101,105,103,104,116))
end
return false
end
pcall(_0xC3CF.SetStateEnabled, _0xC3CF, Enum.HumanoidStateType.Seated, false)
pcall(function()
if sethiddenproperty then
sethiddenproperty(_0x8E3D,string.char(83,105,109,117,108,97,116,105,111,110,82,97,100,105,117,115), math.huge)
end
end)
local _0x6317 = os.clock()
local _0xA678 = _0x5E5B.Position
local _0x3B28 = _0xA678
local _0x2B1E = false
local _0x9E6C = _0x5E5B or _0xF224:FindFirstChild(string.char(72,101,97,100)) or _0xF224:FindFirstChildWhichIsA(string.char(66,97,115,101,80,97,114,116))
local function _0x5A3B()
if not _0x9E6C.Parent then
return false
end
_0xA678 = _0x9E6C.Position
local _0xEAC1 = (_0xA678 - _0x3B28).Magnitude
local _0xAEA1 = _0x9E6C.AssemblyLinearVelocity.Magnitude
return _0xA678.Y <= _0x3665 + 30 or _0xEAC1 > 350 or _0xEAC1 > 120 and _0xAEA1 > 200
endlocal function _0xE2E2(_0x3242, _0x2BD6)
local _0x4117 = CFrame.new(_0x9E6C.Position) * _0x3242 * _0x2BD6
_0xC6D1.CFrame = _0x4117
_0xD95E:PivotTo(_0x4117)
_0xC6D1.Velocity = Vector3.new(9e7, 9e8, 9e7)
_0xC6D1.RotVelocity = Vector3.new(9e8, 9e8, 9e8)
end
local _0xD828, _0xDFBC = pcall(function()
local _0x2BD6 = 0
while os.clock() - _0x6317 < 2 and not _0xC394.cancel do
if not (_0xC6D1.Parent and _0xC3CF.Health > 0 and _0x9E6C.Parent and _0xE68A.Health > 0) then
break
end
if _0x5A3B() then
_0x2B1E = true
break
end
local _0xAEA1 = _0x9E6C.AssemblyLinearVelocity.Magnitude
_0x2BD6 += 100
local _0x6550
if _0xAEA1 < 50 then
local _0xAD8A = _0xE68A.MoveDirection * _0xAEA1 / 1.25
local _0xC158 = CFrame.Angles(math.rad(_0x2BD6), 0, 0)
_0x6550 = {
{ CFrame.new(0, 1.5, 0) + _0xAD8A, _0xC158 },
{ CFrame.new(0, -1.5, 0) + _0xAD8A, _0xC158 },
{ CFrame.new(0, 1.5, 0) + _0xAD8A, _0xC158 },
{ CFrame.new(0, -1.5, 0) + _0xAD8A, _0xC158 },
{ CFrame.new(0, 1.5, 0) + _0xE68A.MoveDirection, _0xC158 },
{ CFrame.new(0, -1.5, 0) + _0xE68A.MoveDirection, _0xC158 },
}
else
local _0x4AA5, _0xD63D = CFrame.new(), CFrame.Angles(math.rad(90), 0, 0)
_0x6550 = {
{ CFrame.new(0, 1.5, _0xE68A.WalkSpeed), _0xD63D },
{ CFrame.new(0, -1.5, -_0xE68A.WalkSpeed), _0x4AA5 },
{ CFrame.new(0, 1.5, _0xE68A.WalkSpeed), _0xD63D },
{ CFrame.new(0, -1.5, 0), _0xD63D },
{ CFrame.new(0, -1.5, 0), _0x4AA5 },
{ CFrame.new(0, -1.5, 0), _0xD63D },
{ CFrame.new(0, -1.5, 0), _0x4AA5 },
}
end
for _0x624F, _0x8B16 in ipairs(_0x6550) do
_0xE2E2(_0x8B16[1], _0x8B16[2])
task.wait()
if _0xC394.cancel or _0x5A3B() then
_0x2B1E = not _0xC394.cancel
break
end
end
if _0x2B1E then
break
end
end
end)
_0x4BDC()
if _0xD828 and _0x2B1E and _0xA678 then
_0x17FD(_0xA678, _0x15D8)
end
if manual then
if _0xD828 and _0x2B1E then
_0xA9C1(string.char(70,108,105,110,103,32).. _0xC982, _0xCC3C.DisplayName ..string.char(32,102,108,117,110,103,32,100,111,119,110))
elseif _0xD828 then
_0xA9C1(string.char(82,111,108,101,32,70,108,105,110,103),string.char(116,97,114,103,101,116,32,114,101,115,105,115,116,101,100,32,116,104,101,32,102,108,105,110,103))
else
_0xA9C1(string.char(82,111,108,101,32,70,108,105,110,103),string.char(102,97,105,108,101,100,58,32).. tostring(_0xDFBC))
end
end
return _0xD828 and _0x2B1E
end
local function _0x7C79(_0xC982, manual)
local _0xCC3C = _0xE642(_0xC982)
if not _0xCC3C then
if manual then
_0xA9C1(string.char(82,111,108,101,32,70,108,105,110,103), _0xC982:lower() ..string.char(32,110,111,116,32,102,111,117,110,100))
end
return false
end
return _0x0FC0(_0xCC3C, _0xC982, manual), _0xCC3C
end
_0xB9EB(_0xB197.Heartbeat, function()
if not _0xC394.autoSheriff or _0xC394.busy or os.clock() < _0xC394.nextScan then
return
end
_0xC394.nextScan = os.clock() + 0.8
local _0xCC3C = _0xE642(string.char(83,104,101,114,105,102,102))
local _0xD95E = _0xCC3C and _0xCC3C.Character
local _0x5E5B = _0xD95E and _0xD95E:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xF9FB = _0x8E3D.Character and _0x8E3D.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0xD95E or not _0x5E5B or not _0xF9FB or _0xDD5C[_0xD95E] or _0x01BA(_0x5E5B.Position) or _0x01BA(_0xF9FB.Position) then
_0xC394.autoCharacter = nil
_0xC394.autoReadyAt = 0
return
end
if _0xC394.autoCharacter ~= _0xD95E then
_0xC394.autoCharacter = _0xD95E
_0xC394.autoReadyAt = os.clock() + 2.5
return
end
if os.clock() < _0xC394.autoReadyAt or _0xCC3C.Character ~= _0xD95E or not _0x5C54(_0xCC3C,string.char(83,104,101,114,105,102,102)) then
return
end
_0xC394.autoReadyAt = os.clock() + 2.5
task.spawn(function()
if _0x0FC0(_0xCC3C,string.char(83,104,101,114,105,102,102), false) then
_0xDD5C[_0xD95E] = true
end
end)
end)
_0xB9EB(_0xD101.PlayerRemoving, function(_0x09CD)
if _0x09CD.Character then
_0xDD5C[_0x09CD.Character] = nil
end
end)
local _0x61C4 = _0x45F1(_0x786E,string.char(82,111,108,101,32,70,108,105,110,103))
_0x61C4:Toggle(string.char(65,117,116,111,32,70,108,105,110,103,32,83,104,101,114,105,102,102),string.char(102,108,105,110,103,32,101,97,99,104,32,115,104,101,114,105,102,102,32,100,111,119,110,32,111,110,99,101,32,112,101,114,32,108,105,102,101), function(_0xE496)
_0xC394.autoSheriff = _0xE496
_0xC394.nextScan = 0
_0xC394.autoCharacter = nil
_0xC394.autoReadyAt = 0
if not _0xE496 then
_0xC394.cancel = true
end
_0xA9C1(string.char(65,117,116,111,32,70,108,105,110,103,32,83,104,101,114,105,102,102,58,32).. (_0xE496 andstring.char(79,110)orstring.char(79,102,102)), _0xE496 andstring.char(119,97,116,99,104,105,110,103,32,102,111,114,32,116,104,101,32,115,104,101,114,105,102,102)orstring.char(100,105,115,97,98,108,101,100))
end)
_0x61C4:Button(string.char(70,108,105,110,103,32,83,104,101,114,105,102,102),string.char(102,108,105,110,103,32,116,104,101,32,99,117,114,114,101,110,116,32,115,104,101,114,105,102,102,32,100,111,119,110), function()
_0x7C79(string.char(83,104,101,114,105,102,102), true)
end)
_0x61C4:Button(string.char(70,108,105,110,103,32,77,117,114,100,101,114,101,114),string.char(102,108,105,110,103,32,116,104,101,32,99,117,114,114,101,110,116,32,109,117,114,100,101,114,101,114,32,100,111,119,110), function()
_0x7C79(string.char(77,117,114,100,101,114,101,114), true)
end)
_0xC71D = function(_0xCC3C, manual)
local _0xC982 = _0x5C54(_0xCC3C,string.char(83,104,101,114,105,102,102)) andstring.char(83,104,101,114,105,102,102)or (_0x5C54(_0xCC3C,string.char(77,117,114,100,101,114,101,114)) andstring.char(77,117,114,100,101,114,101,114)orstring.char(80,108,97,121,101,114))
return _0x0FC0(_0xCC3C, _0xC982, manual ~= false)
end
_0x7FCD = function()
_0xC394.autoSheriff = false
_0xC394.cancel = true
if _0x7374 then
_0x7374()
end
end
end
do
local _0x6BFD = false
local _0x443A = false
local _0x7F90 = false
local _0x6902 = 0
local function _0x3B97(sheriffOnly, _0x8502, includeLobby)
local _0xDFBA = {}
for _0x624F, _0x09CD in ipairs(_0xD101:GetPlayers()) do
if _0x09CD ~= _0x8E3D then
local _0xB48C = _0x6C9C(_0x09CD)
if _0xB48C and (includeLobby or not _0x01BA(_0xB48C.Position)) then
local _0x226E = _0x2768(_0x09CD,string.char(71,117,110)) ~= nil
if not sheriffOnly or _0x226E then
table.insert(_0xDFBA, { _0x09CD = _0x09CD, _0x226E = _0x226E, _0xA65E = (_0xB48C.Position - _0x8502).Magnitude })
end
end
end
end
table.sort(_0xDFBA, function(_0xDA08, _0xBF1F)
if _0xDA08.gun ~= _0xBF1F.gun then
return _0xDA08.gun
end
return _0xDA08.d < _0xBF1F.d
end)
return _0xDFBA
end
local function _0xA4CF(_0xC3CF)
local _0xD95E = _0x8E3D.Character
local _0x0EEB = _0xD95E and _0xD95E:FindFirstChild(string.char(75,110,105,102,101))
if _0x0EEB then
return _0x0EEB
end
local _0xF5BE = _0x8E3D:FindFirstChildOfClass(string.char(66,97,99,107,112,97,99,107))
_0x0EEB = _0xF5BE and _0xF5BE:FindFirstChild(string.char(75,110,105,102,101))
if _0x0EEB then
_0xC3CF:EquipTool(_0x0EEB)
for _0x624F = 1, 10 do
if _0x0EEB.Parent == _0xD95E then
break
end
_0xB197.Heartbeat:Wait()
end
return _0x0EEB
end
end
local function _0x9E39(_0x0EEB, _0xD95E)
pcall(function()
_0x0EEB:Activate()
end)
local _0xDD2C = _0x0EEB:FindFirstChild(string.char(72,97,110,100,108,101))
if _0xDD2C and firetouchinterest then
for _0x624F, _0xE9D1 in ipairs({string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116),string.char(85,112,112,101,114,84,111,114,115,111),string.char(84,111,114,115,111),string.char(72,101,97,100)}) do
local _0x6F67 = _0xD95E:FindFirstChild(_0xE9D1)
if _0x6F67 then
firetouchinterest(_0xDD2C, _0x6F67, 0)
firetouchinterest(_0xDD2C, _0x6F67, 1)
end
end
end
end
local function _0x60AC(_0xD95E)
local _0xF7C5 = _0xD95E.Archivable
_0xD95E.Archivable = true
local _0xD828, _0xC65D = pcall(function()
return _0xD95E:Clone()
end)
_0xD95E.Archivable = _0xF7C5
if not _0xD828 or not _0xC65D then
return
end
for _0x624F, _0xA65E in ipairs(_0xC65D:GetDescendants()) do
if _0xA65E:IsA(string.char(76,117,97,83,111,117,114,99,101,67,111,110,116,97,105,110,101,114)) or _0xA65E:IsA(string.char(83,111,117,110,100)) then
_0xA65E:Destroy()
elseif _0xA65E:IsA(string.char(66,97,115,101,80,97,114,116)) then
_0xA65E.Anchored = true
_0xA65E.CanCollide = false
_0xA65E.CanQuery = false
_0xA65E.CanTouch = false
elseif _0xA65E:IsA(string.char(72,117,109,97,110,111,105,100)) then
_0xA65E.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
end
end
_0xC65D.Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,116,97,110,100,73,110)_0xC65D.Parent = workspace.CurrentCamera
return _0xC65D
end
local function _0x466E(_0xD95E, _0xE496)
for _0x624F, _0xA65E in ipairs(_0xD95E:GetDescendants()) do
if _0xA65E:IsA(string.char(66,97,115,101,80,97,114,116)) or _0xA65E:IsA(string.char(68,101,99,97,108)) then
_0xA65E.LocalTransparencyModifier = _0xE496 and 1 or 0
end
end
end
local function _0xBE57(sheriffOnly, silent, onlyList)
if _0x443A then
return
end
local _0xB48C, _0xC3CF, _0xD95E = _0x6C9C(_0x8E3D)
if not _0xB48C then
return
end
if not _0x2768(_0x8E3D,string.char(75,110,105,102,101)) then
if not silent then
_0xA9C1(string.char(75,105,108,108,32,65,108,108),string.char(121,111,117,39,114,101,32,110,111,116,32,116,104,101,32,109,117,114,100,101,114,101,114))
end
return
end
local _0xDFBA = _0x3B97(sheriffOnly, _0xB48C.Position, onlyList ~= nil)
if onlyList then
local _0xFCE5 = {}
for _0x624F, _0xDF88 in ipairs(_0xDFBA) do
if table.find(onlyList, _0xDF88.p) then
table.insert(_0xFCE5, _0xDF88)
end
end
_0xDFBA = _0xFCE5
end
if #_0xDFBA == 0 then
if not silent then
_0xA9C1(string.char(75,105,108,108,32,65,108,108), sheriffOnly andstring.char(110,111,32,115,104,101,114,105,102,102,32,105,110,32,116,104,101,32,114,111,117,110,100)orstring.char(110,111,98,111,100,121,32,116,111,32,107,105,108,108))
end
return
end
_0x443A, _0x7F90 = true, false
_0x16E5(_0xB48C)
local _0xA14C = _0xB48C.CFrame
local _0x0E20 = os.clock()
local _0x04CE = workspace.CurrentCamera
local _0xE311, _0x8202 = _0x04CE.CameraType, _0x04CE.CFrame
local _0x37B3 = _0x60AC(_0xD95E)
_0x04CE.CameraType = Enum.CameraType.Scriptable
_0x04CE.CFrame = _0x8202
local _0x0EEB = _0xA4CF(_0xC3CF)
local _0xCC3C
local _0xBE61 = _0xB197.Stepped:Connect(function()
_0x04CE.CFrame = _0x8202
if _0xB48C.Parent then
_0x466E(_0xD95E, true)
if _0xCC3C then
_0xB48C.CFrame = _0xCC3C
_0xB48C.AssemblyLinearVelocity = Vector3.zero
end
end
end)
local _0x4323 = #_0xDFBA
while _0x4323 > 0 and os.clock() - _0x0E20 < 2 do
if _0x7F90 or _0xC3CF.Health <= 0 or not _0xB48C.Parent then
break
end
_0x4323 = 0
for _0x624F, _0xDF88 in ipairs(_0xDFBA) do
local _0x2F74, _0x624F, _0xF224 = _0x6C9C(_0xDF88.p)
if _0x2F74 and not _0x7F90 then
_0x4323 += 1
local _0x1572 = _0x2F74.CFrame * CFrame.new(0, 0, 1.4)
_0xCC3C = CFrame.lookAt(_0x1572.Position, _0x2F74.Position)
_0xB48C.CFrame = _0xCC3C
_0xB48C.AssemblyLinearVelocity = Vector3.zero
_0x0EEB = _0x0EEB and _0x0EEB.Parent and _0x0EEB or _0xA4CF(_0xC3CF)
if _0x0EEB then
_0x9E39(_0x0EEB, _0xF224)
end
_0xB197.Heartbeat:Wait()
if _0x0EEB then
_0x9E39(_0x0EEB, _0xF224)
end
end
end
end
_0xCC3C = nil
_0xBE61:Disconnect()
if _0xB48C.Parent and _0xC3CF.Health > 0 then
_0xB48C.CFrame = _0xA14C
_0xB48C.AssemblyLinearVelocity = Vector3.zero
end
_0xB197.Heartbeat:Wait()
if _0xD95E.Parent then
_0x466E(_0xD95E, false)
end
if _0x37B3 then
_0x37B3:Destroy()
end
_0x04CE.CameraType = _0xE311
if _0xC3CF.Parent then
_0x04CE.CameraSubject = _0xC3CF
end
local _0x05B9 = 0
for _0x624F, _0xDF88 in ipairs(_0xDFBA) do
if not _0x6C9C(_0xDF88.p) then
_0x05B9 += 1
end
end
_0x443A = false
_0xDD7C()
if not onlyList then
_0xA9C1(string.char(75,105,108,108,32,65,108,108), (string.char(107,105,108,108,101,100,32,37,100,47,37,100,32,105,110,32,37,46,50,102,115)):format(_0x05B9, #_0xDFBA, os.clock() - _0x0E20))
end
end
_0x8FCB = function(_0xCC3C)
_0xBE57(false, false, { _0xCC3C })
end
_0xB9EB(_0xB197.Heartbeat, function()
if not _0x6BFD or _0x443A or os.clock() - _0x6902 < 2 then
return
end
local _0xB48C = _0x6C9C(_0x8E3D)
if not _0xB48C or _0x01BA(_0xB48C.Position) or not _0x2768(_0x8E3D,string.char(75,110,105,102,101)) then
return
end
_0x6902 = os.clock()
task.spawn(_0xBE57, false, true)
end)
local _0x6670 = { 120141614672192, 111443745475294, 16531510943 }
local _0xD026 = { [120141614672192] = -1 }
local _0xE2DF = {
_0xA85D = { 106621472307027, 117678889994053, 86747216998490 },
boom = { 125127520917980, 7157159568, 9126102254 },
rumble = { 1843024924, 9846227426, 138432031406888 },
static = { 96891705634188, 83265726239905, 128865910652923 },
fpv = { 114037851906101, 78411105609654, 122096583027065 },
}
local _0xE160 = { 124994246147928, 129274863429961, 79445961621887 }
local _0x75FD = {}
local _0xFF1B =string.char(83,104,97,104,101,100)local _0x3BE4 =string.char(70,108,105,110,103)local _0x9249 = {}
local _0xDC0A, _0x5662
local _0xB72E = {}
local _0x7130 = false
local _0x0ACB = game:GetService(string.char(67,111,110,116,101,110,116,80,114,111,118,105,100,101,114))
local _0x197F = game:GetService(string.char(83,111,117,110,100,83,101,114,118,105,99,101))local _0x010A = Instance.new(string.char(83,99,114,101,101,110,71,117,105))
_0x010A.Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,68,114,111,110,101,70,117,108,108,115,99,114,101,101,110)_0x010A.ResetOnSpawn = false
_0x010A.IgnoreGuiInset = true
_0x010A.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
_0x010A.DisplayOrder = 9997
pcall(function()
_0x010A.ScreenInsets = Enum.ScreenInsets.None
_0x010A.ClipToDeviceSafeArea = false
end)
_0x010A.Parent = _0x8AE1
local function _0x9FB6(_0x5244)
local _0x0341 = {}
for _0x624F, _0x4244 in ipairs(_0x5244:GetDescendants()) do
if _0x4244:IsA(string.char(66,97,115,101,80,97,114,116)) then
table.insert(_0x0341, _0x4244)
end
end
return _0x0341
end
local function _0x8CBE()
local _0x5244 = Instance.new(string.char(77,111,100,101,108))
local _0x7F96 = Color3.fromRGB(92, 96, 100)
local function _0x6F67(_0xF85F, _0x428B, _0x4117, _0x15D8, shape)
local _0x09CD = Instance.new(_0xF85F)
_0x09CD.Size, _0x09CD.CFrame = _0x428B, _0x4117
_0x09CD.Color = _0x15D8 or _0x7F96
_0x09CD.Material = Enum.Material.SmoothPlastic
if shape then
_0x09CD.Shape = shape
end
_0x09CD.Parent = _0x5244
return _0x09CD
end
local _0x047D = CFrame.Angles(0, math.rad(90), 0)
_0x6F67(string.char(80,97,114,116), Vector3.new(9.6, 1.3, 1.3), CFrame.new(0, 0, 0.2) * _0x047D, nil, Enum.PartType.Cylinder)
_0x6F67(string.char(80,97,114,116), Vector3.new(1.3, 1.3, 1.3), CFrame.new(0, 0, -4.6), nil, Enum.PartType.Ball)
_0x6F67(string.char(80,97,114,116), Vector3.new(0.5, 0.9, 0.9), CFrame.new(0, 0, 5.2) * _0x047D, Color3.fromRGB(40, 40, 40), Enum.PartType.Cylinder)
_0x6F67(string.char(80,97,114,116), Vector3.new(0.12, 3.2, 0.3), CFrame.new(0, 0, 5.5), Color3.fromRGB(30, 30, 30)).Name =string.char(80,114,111,112)_0x6F67(string.char(87,101,100,103,101,80,97,114,116), Vector3.new(0.25, 4.9, 7.5), CFrame.fromMatrix(Vector3.new(3.05, 0, 0.75), Vector3.new(0, -1, 0), Vector3.new(1, 0, 0), Vector3.new(0, 0, 1)))
_0x6F67(string.char(87,101,100,103,101,80,97,114,116), Vector3.new(0.25, 4.9, 7.5), CFrame.fromMatrix(Vector3.new(-3.05, 0, 0.75), Vector3.new(0, 1, 0), Vector3.new(-1, 0, 0), Vector3.new(0, 0, 1)))
_0x6F67(string.char(80,97,114,116), Vector3.new(0.2, 1.8, 1.4), CFrame.new(5.45, 0.4, 3.9))
_0x6F67(string.char(80,97,114,116), Vector3.new(0.2, 1.8, 1.4), CFrame.new(-5.45, 0.4, 3.9))
_0x5244.WorldPivot = CFrame.new()
return _0x5244
end
local function _0x255B(_0x5244, _0x0341, _0x4FE3)
local _0x603E, _0x948E = Vector3.one * math.huge, -Vector3.one * math.huge
local _0x45A5 = {}
for _0x624F, _0x09CD in ipairs(_0x0341) do
local _0x4117, _0xF171 = _0x09CD.CFrame, _0x09CD.Size / 2
local _0x00EA = Vector3.new(math.abs(_0x4117.RightVector.X) * _0xF171.X + math.abs(_0x4117.UpVector.X) * _0xF171.Y + math.abs(_0x4117.LookVector.X) * _0xF171.Z, math.abs(_0x4117.RightVector.Y) * _0xF171.X + math.abs(_0x4117.UpVector.Y) * _0xF171.Y + math.abs(_0x4117.LookVector.Y) * _0xF171.Z, math.abs(_0x4117.RightVector.Z) * _0xF171.X + math.abs(_0x4117.UpVector.Z) * _0xF171.Y + math.abs(_0x4117.LookVector.Z) * _0xF171.Z)
_0x603E, _0x948E = _0x603E:Min(_0x4117.Position - _0x00EA), _0x948E:Max(_0x4117.Position + _0x00EA)
table.insert(_0x45A5, { _0x4117.Position, _0x00EA })
end
local _0x428B, _0x748C = _0x948E - _0x603E, (_0x603E + _0x948E) / 2
local _0x728B, _0x7156 = Vector3.xAxis, Vector3.zAxis
if _0x428B.Z > _0x428B.X then
_0x728B, _0x7156 = Vector3.zAxis, Vector3.xAxis
end
local _0x4C5B = 0
for _0x624F, _0xBF1F in ipairs(_0x45A5) do
local _0xDA08 = _0xBF1F[2]:Dot(_0x728B) * _0xBF1F[2]:Dot(_0x7156)
_0x4C5B += (_0xBF1F[1] - _0x748C):Dot(_0x728B) * _0xDA08
end
local _0x20ED = _0x4C5B >= 0 and 1 or -1
if _0xD026[_0x4FE3] then
_0x20ED = _0xD026[_0x4FE3]
end
_0x5244.WorldPivot = CFrame.lookAt(_0x748C, _0x748C - _0x728B * _0x20ED)
return math.max(_0x428B.X, _0x428B.Z)
end
local function _0x56C3()
local _0x5244 = Instance.new(string.char(77,111,100,101,108))
local function _0x6F67(_0x428B, _0x4117, _0x15D8, shape, mat)
local _0x09CD = Instance.new(string.char(80,97,114,116))
_0x09CD.Size, _0x09CD.CFrame = _0x428B, _0x4117
_0x09CD.Color = _0x15D8
_0x09CD.Material = mat or Enum.Material.SmoothPlastic
if shape then
_0x09CD.Shape = shape
end
_0x09CD.Parent = _0x5244
return _0x09CD
end
local _0x2268 = Color3.fromRGB(28, 28, 30)
_0x6F67(Vector3.new(0.9, 0.25, 1.5), CFrame.new(), _0x2268)
for _0x624F, _0xDA08 in ipairs({ 45, 135, 225, 315 }) do
local _0x00EA = math.rad(_0xDA08)
local _0x9C72 = Vector3.new(math.sin(_0x00EA) * 1.45, 0, math.cos(_0x00EA) * 1.45)
_0x6F67(Vector3.new(0.18, 0.1, 2.9), CFrame.lookAt(Vector3.zero, _0x9C72) * CFrame.new(0, 0, -1.45), _0x2268)
_0x6F67(Vector3.new(0.3, 0.32, 0.32), CFrame.new(_0x9C72 + Vector3.new(0, 0.18, 0)) * CFrame.Angles(0, 0, math.rad(90)), Color3.fromRGB(60, 120, 70), Enum.PartType.Cylinder, Enum.Material.Metal)
local _0x2573 = _0x6F67(Vector3.new(0.04, 1.3, 1.3), CFrame.new(_0x9C72 + Vector3.new(0, 0.36, 0)) * CFrame.Angles(0, 0, math.rad(90)), Color3.fromRGB(20, 20, 20), Enum.PartType.Cylinder)
_0x2573.Transparency = 0.55
_0x2573.Name =string.char(80,114,111,112)end
_0x6F67(Vector3.new(0.6, 0.45, 1.1), CFrame.new(0, 0.38, 0.1), Color3.fromRGB(40, 90, 170))
_0x6F67(Vector3.new(0.35, 0.3, 0.3), CFrame.new(0, 0.25, -0.75), Color3.fromRGB(15, 15, 15))
_0x6F67(Vector3.new(2.2, 0.55, 0.55), CFrame.new(0, -0.4, -0.7) * CFrame.Angles(0, math.rad(90), 0), Color3.fromRGB(110, 90, 55), Enum.PartType.Cylinder, Enum.Material.Metal)
_0x6F67(Vector3.new(0.5, 0.5, 0.5), CFrame.new(0, -0.4, -1.8), Color3.fromRGB(200, 200, 190), Enum.PartType.Ball)
_0x5244.WorldPivot = CFrame.new()
return _0x5244
end
local function _0x0DA5(_0x5244, _0x0341, _0x4FE3)
local _0x603E, _0x948E = Vector3.one * math.huge, -Vector3.one * math.huge
for _0x624F, _0x09CD in ipairs(_0x0341) do
local _0x4117, _0xF171 = _0x09CD.CFrame, _0x09CD.Size / 2
local _0x00EA = Vector3.new(math.abs(_0x4117.RightVector.X) * _0xF171.X + math.abs(_0x4117.UpVector.X) * _0xF171.Y + math.abs(_0x4117.LookVector.X) * _0xF171.Z, math.abs(_0x4117.RightVector.Y) * _0xF171.X + math.abs(_0x4117.UpVector.Y) * _0xF171.Y + math.abs(_0x4117.LookVector.Y) * _0xF171.Z, math.abs(_0x4117.RightVector.Z) * _0xF171.X + math.abs(_0x4117.UpVector.Z) * _0xF171.Y + math.abs(_0x4117.LookVector.Z) * _0xF171.Z)
_0x603E, _0x948E = _0x603E:Min(_0x4117.Position - _0x00EA), _0x948E:Max(_0x4117.Position + _0x00EA)
end
local _0x428B, _0x748C = _0x948E - _0x603E, (_0x603E + _0x948E) / 2
local _0x57B3, _0x139B, _0x728B = nil, 0, Vector3.zAxis
for _0x624F, _0x09CD in ipairs(_0x0341) do
local _0x3C5E = _0x09CD.Size
local _0xA93D = math.max(_0x3C5E.X, _0x3C5E.Y, _0x3C5E.Z)
local _0xEA1A = math.min(_0x3C5E.X, _0x3C5E.Y, _0x3C5E.Z)
local _0x76CA = _0xA93D * _0xA93D * _0xEA1A / math.max(_0xEA1A, 0.05)
if _0xA93D / math.max(_0xEA1A, 0.05) > 2.2 and _0x76CA > _0x139B then
local _0x4117 = _0x09CD.CFrame
local _0xA5E9 = _0x3C5E.X == _0xA93D and _0x4117.RightVector or _0x3C5E.Y == _0xA93D and _0x4117.UpVector or _0x4117.LookVector
if math.abs(_0xA5E9.Y) < 0.5 then
_0x57B3, _0x139B = _0x09CD, _0x76CA
end
end
end
local _0x20ED = 1
if _0x57B3 then
local _0x3C5E, _0x4117 = _0x57B3.Size, _0x57B3.CFrame
local _0xA5E9 = _0x3C5E.X == math.max(_0x3C5E.X, _0x3C5E.Y, _0x3C5E.Z) and _0x4117.RightVector or _0x3C5E.Y == math.max(_0x3C5E.X, _0x3C5E.Y, _0x3C5E.Z) and _0x4117.UpVector or _0x4117.LookVector
_0x728B = math.abs(_0xA5E9.X) > math.abs(_0xA5E9.Z) and Vector3.xAxis or Vector3.zAxis
local _0x5AAA = math.max(_0x3C5E.X, _0x3C5E.Y, _0x3C5E.Z) / 2
local _0x242F = (_0x4117.Position - _0x748C):Dot(_0x728B)
local _0x3E80, _0x1FD5 = _0x242F + _0x5AAA * math.abs(_0xA5E9:Dot(_0x728B)), _0x242F - _0x5AAA * math.abs(_0xA5E9:Dot(_0x728B))
_0x20ED = math.abs(_0x3E80) >= math.abs(_0x1FD5) and -1 or 1
end
if _0x75FD[_0x4FE3] then
_0x20ED = _0x75FD[_0x4FE3]
end
_0x5244.WorldPivot = CFrame.lookAt(_0x748C, _0x748C - _0x728B * _0x20ED)
return math.max(_0x428B.X, _0x428B.Z)
end
local function _0x4697(_0xDFBA)
for _0x624F, _0x4FE3 in ipairs(_0xDFBA) do
local _0xE157 = Instance.new(string.char(83,111,117,110,100))
_0xE157.SoundId =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47).. _0x4FE3
_0xE157.Volume = 0
_0xE157.Parent = _0x197F
local _0x58C8 = false
local _0xD828 = pcall(function()
_0x0ACB:PreloadAsync({ _0xE157 }, function(_0x624F, _0x7A57)
_0x58C8 = _0x7A57 == Enum.AssetFetchStatus.Success
end)
end)
_0xE157:Destroy()
if _0xD828 and _0x58C8 then
returnstring.char(114,98,120,97,115,115,101,116,105,100,58,47,47).. _0x4FE3
end
end
returnstring.char(114,98,120,97,115,115,101,116,105,100,58,47,47).. _0xDFBA[1]
end
local function _0xEF59()
while _0x7130 do
task.wait()
end
for _0xD4D9 in pairs(_0xE2DF) do
if not _0xB72E[_0xD4D9] then
_0x7130 = true
for nextKey, _0xDFBA in pairs(_0xE2DF) do
if not _0xB72E[nextKey] then
_0xB72E[nextKey] = _0x4697(_0xDFBA)
end
end
_0x7130 = false
break
end
end
end
local function _0x43DE(override)
while _0x5662 do
task.wait(0.1)
end
local _0x7969 = override or _0xFF1B
_0xEF59()
if _0x9249[_0x7969] then
_0xDC0A = _0x9249[_0x7969]
return _0xDC0A
end
_0x5662 = true
local _0x9895 = _0x7969 ==string.char(70,80,86)local _0x5244, _0xFEFF
for _0x624F, _0x4FE3 in ipairs(_0x9895 and _0xE160 or _0x6670) do
_0xFEFF = _0x4FE3
local _0xD828, _0x2F59 = pcall(function()
return game:GetObjects(string.char(114,98,120,97,115,115,101,116,105,100,58,47,47).. _0x4FE3)
end)
if _0xD828 and _0x2F59 and #_0x2F59 > 0 then
_0x5244 = Instance.new(string.char(77,111,100,101,108))
for _0x624F, _0x012C in ipairs(_0x2F59) do
_0x012C.Parent = _0x5244
end
for _0x624F, _0x4244 in ipairs(_0x5244:GetDescendants()) do
if _0x4244:IsA(string.char(76,117,97,83,111,117,114,99,101,67,111,110,116,97,105,110,101,114)) or _0x4244:IsA(string.char(83,111,117,110,100)) or _0x4244:IsA(string.char(67,108,105,99,107,68,101,116,101,99,116,111,114)) or _0x4244:IsA(string.char(80,114,111,120,105,109,105,116,121,80,114,111,109,112,116)) or _0x4244:IsA(string.char(72,117,109,97,110,111,105,100)) or _0x4244:IsA(string.char(66,105,108,108,98,111,97,114,100,71,117,105)) then
_0x4244:Destroy()
end
end
if _0x5244:FindFirstChildWhichIsA(string.char(66,97,115,101,80,97,114,116), true) then
break
end
_0x5244:Destroy()
_0x5244 = nil
end
end
local _0xDBEB
if _0x5244 then
_0xDBEB = (_0x9895 and _0x0DA5 or _0x255B)(_0x5244, _0x9FB6(_0x5244), _0xFEFF)
elseif _0x9895 then
_0x5244 = _0x56C3()
_0xDBEB = 4
else
_0x5244 = _0x8CBE()
_0xDBEB = 11
end
pcall(function()
_0x5244:ScaleTo(_0x5244:GetScale() * (_0x9895 and 3 or 5) / math.max(_0xDBEB, 0.1))
end)
_0x5244.Archivable = true
for _0x624F, _0x4244 in ipairs(_0x5244:GetDescendants()) do
_0x4244.Archivable = true
end
for _0x624F, _0x09CD in ipairs(_0x9FB6(_0x5244)) do
_0x09CD.Anchored = true
_0x09CD.CanCollide = false
_0x09CD.CanQuery = false
_0x09CD.CanTouch = false
end
_0x5244.Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,104,97,104,101,100)_0x9249[_0x7969] = _0x5244
_0xDC0A = _0x9249[_0xFF1B]
_0x5662 = false
return _0x5244
end
local function _0x72AC(_0xD4D9, _0xDF1D, _0x4DE9)
local _0x1E47 = _0xB72E[_0xD4D9]
if not _0x1E47 then
local _0xDFBA = _0xE2DF[_0xD4D9]
if _0xDFBA and _0xDFBA[1] then
_0x1E47 =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47).. tostring(_0xDFBA[1])
_0xB72E[_0xD4D9] = _0x1E47
else
return
end
end
local _0xE157 = Instance.new(string.char(83,111,117,110,100))
_0xE157.SoundId = _0x1E47
for _0x2DD2, _0xEB0B in pairs(_0x4DE9 or {}) do
_0xE157[_0x2DD2] = _0xEB0B
end
_0xE157.Parent = _0xDF1D
pcall(function() _0xE157:Play() end)
if not _0xE157.IsLoaded then
task.spawn(function()
local _0xC449 = os.clock() + 3
while _0xE157.Parent and not _0xE157.IsLoaded and os.clock() < _0xC449 do
task.wait(0.05)
end
if _0xE157.Parent and not _0xE157.IsPlaying then
pcall(function() _0xE157:Play() end)
end
end)
end
return _0xE157
end
local function _0xCD1B(intensity, hideAfter)
local _0x893F =string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,104,97,104,101,100,83,104,97,107,101).. math.random(1000000)
local _0x0E20, _0x3133 = os.clock(), CFrame.new()
_0xB197:BindToRenderStep(_0x893F, Enum.RenderPriority.Camera.Value + 1, function()
local _0x04CE = workspace.CurrentCamera
if not _0x04CE then
_0xB197:UnbindFromRenderStep(_0x893F)
return
end
local _0x2DD2 = 1 - (os.clock() - _0x0E20) / hideAfter
if _0x2DD2 <= 0 then
_0x04CE.CFrame = _0x04CE.CFrame * _0x3133:Inverse()
_0xB197:UnbindFromRenderStep(_0x893F)
return
end
local _0xDA08 = intensity * _0x2DD2 * _0x2DD2
local _0xA0A0 = CFrame.Angles((math.random() - 0.5) * _0xDA08, (math.random() - 0.5) * _0xDA08, (math.random() - 0.5) * _0xDA08 * 0.5)
_0x04CE.CFrame = _0x04CE.CFrame * _0x3133:Inverse() * _0xA0A0
_0x3133 = _0xA0A0
end)
end
local function _0x3B1C(_0x3242)
local _0x8CF5 = Instance.new(string.char(80,97,114,116))
_0x8CF5.Anchored, _0x8CF5.CanCollide, _0x8CF5.CanQuery, _0x8CF5.CanTouch = true, false, false, false
_0x8CF5.Transparency, _0x8CF5.Size, _0x8CF5.Position = 1, Vector3.one, _0x3242
_0x8CF5.Parent = workspace.CurrentCamera
local _0xDF88 = Instance.new(string.char(69,120,112,108,111,115,105,111,110))
_0xDF88.Position, _0xDF88.BlastPressure, _0xDF88.BlastRadius = _0x3242, 0, 0
_0xDF88.DestroyJointRadiusPercent = 0
_0xDF88.ExplosionType = Enum.ExplosionType.NoCraters
_0xDF88.Parent = workspace
local function _0xC891(_0x4DE9, _0xE9D1)
local _0x6B64 = Instance.new(string.char(80,97,114,116,105,99,108,101,69,109,105,116,116,101,114))
_0x6B64.Enabled = false
for _0x2DD2, _0xEB0B in pairs(_0x4DE9) do
_0x6B64[_0x2DD2] = _0xEB0B
end
_0x6B64.Parent = _0x8CF5
_0x6B64:Emit(_0xE9D1)
end
_0xC891({
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
_0xC891({
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
_0xC891({
Texture =string.char(114,98,120,97,115,115,101,116,58,47,47,116,101,120,116,117,114,101,115,47,112,97,114,116,105,99,108,101,115,47,115,112,97,114,107,108,101,115,95,109,97,105,110,46,100,100,115),
Color = ColorSequence.new(Color3.fromRGB(255, 190, 90)),
LightEmission = 1,
Lifetime = NumberRange.new(0.6, 1.4),
Speed = NumberRange.new(60, 110),
SpreadAngle = Vector2.new(180, 180),
Acceleration = Vector3.new(0, -60, 0),
Size = NumberSequence.new(0.6, 0),
}, 80)
local _0x36A1 = Instance.new(string.char(80,111,105,110,116,76,105,103,104,116))
_0x36A1.Color, _0x36A1.Brightness, _0x36A1.Range = Color3.fromRGB(255, 160, 70), 10, 60
_0x36A1.Parent = _0x8CF5
_0x8185:Create(_0x36A1, TweenInfo.new(0.8), { Brightness = 0 }):Play()
_0x72AC(string.char(98,111,111,109), _0x8CF5, { Volume = 2, RollOffMinDistance = 20, RollOffMaxDistance = 1500 })
_0x72AC(string.char(114,117,109,98,108,101), _0x8CF5, { Volume = 1.2, RollOffMinDistance = 60, RollOffMaxDistance = 3000 })
local _0x04CE = workspace.CurrentCamera
if _0x04CE then
local _0xA65E = (_0x04CE.CFrame.Position - _0x3242).Magnitude
if _0xA65E < 200 then
_0xCD1B(0.06 * (1 - _0xA65E / 200) + 0.01, 0.7)
end
end
_0xBB91:AddItem(_0x8CF5, 7)
_0xBB91:AddItem(_0xDF88, 3)
end
local function _0x4C68(targetName, flightTime)
local _0x9710 = Enum.Font.Code
local _0xC6D1 = _0x504E(string.char(67,97,110,118,97,115,71,114,111,117,112), {
Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,105,103,110,97,108,76,111,115,116),
Position = UDim2.fromOffset(0, -100),
Size = UDim2.new(1, 0, 1, 200),
BackgroundColor3 = Color3.new(1, 1, 1),
BackgroundTransparency = 0,
BorderSizePixel = 0,
ZIndex = 50,
Parent = _0x010A,
})
local _0xDA31 = _0x504E(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(0, 100),
Size = UDim2.new(1, 0, 1, -200),
BackgroundTransparency = 1,
ZIndex = 52,
Parent = _0xC6D1,
})
local function _0x7963(_0x4DE9)
do
local _0xC09C = {}
_0xC09C[63741] = {
function()
return _0x4DE9
end,string.char(66,97,99,107,103,114,111,117,110,100,84,114,97,110,115,112,97,114,101,110,99,121),
function()
return 1
end,
}
_0xC09C[49931] = {
function()
return _0x4DE9
end,string.char(80,97,114,101,110,116),
function()
return _0x4DE9.Parent or _0xDA31
end,
}
_0xC09C[17390] = {
function()
return _0x4DE9
end,string.char(84,101,120,116,67,111,108,111,114,51),
function()
return _0x4DE9.TextColor3 or Color3.fromRGB(235, 235, 235)
end,
}
_0xC09C[59406] = {
function()
return _0x4DE9
end,string.char(70,111,110,116),
function()
return _0x4DE9.Font or _0x9710
end,
}
_0xC09C[4207] = {
function()
return _0x4DE9
end,string.char(90,73,110,100,101,120),
function()
return 53
end,
}
local _0x35E7 = { 63741, 59406, 17390, 4207, 49931 }
for j = 1, #_0x35E7 do
local _0x4F55 = _0xC09C[_0x35E7[j]]
_0x4F55[1]()[_0x4F55[2]] = _0x4F55[3]()
end
end
return _0x504E(string.char(84,101,120,116,76,97,98,101,108), _0x4DE9)
end
local _0x0F84 = {}
for _0x269E = 1, 42 do
_0x0F84[_0x269E] = _0x504E(string.char(70,114,97,109,101), {
Position = UDim2.new(0, 0, (_0x269E - 1) / 42, 0),
Size = UDim2.new(1.3, 0, 0.023809523809523808, 1),
BorderSizePixel = 0,
ZIndex = 51,
Visible = false,
Parent = _0xC6D1,
})
end
for _0x269E = 0, 59 do
_0x504E(string.char(70,114,97,109,101), {
Position = UDim2.new(0, 0, _0x269E / 60, 0),
Size = UDim2.new(1, 0, 0, 1),
BackgroundColor3 = Color3.new(0, 0, 0),
BackgroundTransparency = 0.75,
BorderSizePixel = 0,
ZIndex = 55,
Parent = _0xC6D1,
})
end
local _0x025A = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromScale(0.5, 0.5),
Size = UDim2.fromOffset(380, 92),
BackgroundTransparency = 1,
Visible = false,
ZIndex = 53,
Parent = _0xDA31,
})
_0x504E(string.char(85,73,83,116,114,111,107,101), { Color = Color3.fromRGB(255, 255, 255), Thickness = 2, Parent = _0x025A })
local _0x0520 = _0x7963({ Size = UDim2.fromScale(1, 1), Text =string.char(83,73,71,78,65,76,32,76,79,83,84), TextSize = 46, Parent = _0x025A })
local _0x4DD1 = _0x7963({
AnchorPoint = Vector2.new(0.5, 1),
Position = UDim2.new(0.5, 0, 0.5, -58),
Size = UDim2.fromOffset(300, 20),
Text =string.char(47,33,92,32,32,78,79,32,86,73,68,69,79),
TextSize = 16,
TextColor3 = Color3.fromRGB(255, 60, 50),
Visible = false,
})
local _0x4F39 = _0x7963({
AnchorPoint = Vector2.new(0.5, 0),
Position = UDim2.new(0.5, 0, 0.5, 58),
Size = UDim2.fromOffset(500, 20),
TextSize = 15,
Visible = false,
Text = targetName andstring.char(84,65,82,71,69,84,32,32).. targetName:upper() ..string.char(32,32,45,32,32,72,73,84)orstring.char(78,79,32,84,65,82,71,69,84),
TextColor3 = targetName and Color3.fromRGB(120, 255, 140) or Color3.fromRGB(170, 170, 170),
})
local _0xE451 = math.floor(flightTime)
local _0x9181 = {
_0x7963({
Position = UDim2.fromOffset(28, 22),
Size = UDim2.fromOffset(300, 18),
TextSize = 15,
TextXAlignment = Enum.TextXAlignment.Left,
Text = _0xFF1B ==string.char(70,80,86)andstring.char(70,80,86,32,75,65,77,73,75,65,90,69,32,32,32,67,65,77,32,49)orstring.char(83,72,65,72,69,68,45,49,51,54,32,32,32,67,65,77,32,49),
}),
_0x7963({
AnchorPoint = Vector2.new(1, 0),
Position = UDim2.new(1, -28, 0, 22),
Size = UDim2.fromOffset(300, 18),
TextSize = 15,
TextXAlignment = Enum.TextXAlignment.Right,
Text = (string.char(82,69,67,32,32,48,48,58,37,48,50,100,58,37,48,50,100)):format(_0xE451 // 60, _0xE451 % 60),
TextColor3 = Color3.fromRGB(255, 60, 50),
}),
_0x7963({
Position = UDim2.new(0, 28, 1, -40),
Size = UDim2.fromOffset(300, 18),
TextSize = 15,
TextXAlignment = Enum.TextXAlignment.Left,
Text =string.char(67,72,32,53,46,56,71,32,32,32,82,83,83,73,32,32,48,37),
}),
_0x7963({
AnchorPoint = Vector2.new(1, 0),
Position = UDim2.new(1, -28, 1, -40),
Size = UDim2.fromOffset(300, 18),
TextSize = 15,
TextXAlignment = Enum.TextXAlignment.Right,
Text =string.char(76,73,78,75,32,32,45,45,46,45,32,32,100,66),
}),
}
for _0x624F, _0x242F in ipairs(_0x9181) do
_0x242F.Visible = false
end
local _0xC115 = _0x72AC(string.char(115,116,97,116,105,99), workspace.CurrentCamera, { Volume = 0.8 })
local _0x0E20 = os.clock()
local _0x2E82
_0x2E82 = _0xB197.RenderStepped:Connect(function()
local _0x634C = os.clock() - _0x0E20
if _0x634C < 0.07 then
return
elseif _0x634C < 0.6 then
_0xC6D1.BackgroundColor3 = Color3.new(0, 0, 0)
for _0x624F, _0xBF1F in ipairs(_0x0F84) do
local _0xBCE8 = math.random()
_0xBF1F.Visible = true
_0xBF1F.BackgroundColor3 = Color3.new(_0xBCE8, _0xBCE8, _0xBCE8)
_0xBF1F.BackgroundTransparency = math.random() * 0.35
_0xBF1F.Position = UDim2.new(-math.random() * 0.3, 0, _0xBF1F.Position.Y.Scale, 0)
end
else
if _0xC115 and _0xC115.IsPlaying then
_0xC115:Stop()
end
_0x025A.Visible = true
_0x4DD1.Visible = true
_0x4F39.Visible = true
for _0x624F, _0x242F in ipairs(_0x9181) do
_0x242F.Visible = true
end
for _0x624F, _0xBF1F in ipairs(_0x0F84) do
_0xBF1F.Visible = math.random() < 0.03
if _0xBF1F.Visible then
local _0xBCE8 = math.random() * 0.5
_0xBF1F.BackgroundColor3 = Color3.new(_0xBCE8, _0xBCE8, _0xBCE8)
_0xBF1F.BackgroundTransparency = 0.6
end
end
local _0xE496 = _0x634C * 2.2 % 1 < 0.62
_0x0520.TextTransparency = _0xE496 and 0 or 0.85
_0x4DD1.TextTransparency = _0xE496 and 0 or 0.6
_0x025A.Position = UDim2.new(0.5, math.random() < 0.06 and math.random(-6, 6) or 0, 0.5, 0)
end
end)
task.delay(2.65, function()
_0x8185:Create(_0xC6D1, TweenInfo.new(0.3), { GroupTransparency = 1 }):Play()
task.wait(0.32)
_0x2E82:Disconnect()
_0xC6D1:Destroy()
if _0xC115 then
_0xC115:Destroy()
end
end)
end
local function _0x089F(_0x09CD)
local _0x634C = os.clock()
while _0x443A and os.clock() - _0x634C < 2 do
_0xB197.Heartbeat:Wait()
end
if _0x6C9C(_0x09CD) then
_0xBE57(false, true, { _0x09CD })
end
return not _0x6C9C(_0x09CD)
end
local _0xAE6E = false
local _0xF27C = false
local function _0xEB88()
if _0xAE6E then
return
end
local _0xB48C, _0xC3CF, _0xD95E = _0x6C9C(_0x8E3D)
if not _0xB48C then
return
endpcall(function()
local _0x242F = require(_0x8E3D.PlayerScripts:WaitForChild(string.char(80,108,97,121,101,114,77,111,100,117,108,101), 2)):GetControls()
if _0x242F then _0x242F:Enable() end
end)
pcall(function()
_0xC3CF.PlatformStand = false
_0xC3CF.Sit = false
_0xC3CF.AutoRotate = true
if _0xC3CF.WalkSpeed <= 0.01 then _0xC3CF.WalkSpeed = 16 end
if _0xC3CF.UseJumpPower then
if _0xC3CF.JumpPower <= 0.01 then _0xC3CF.JumpPower = 50 end
else
if _0xC3CF.JumpHeight <= 0.01 then _0xC3CF.JumpHeight = 7.2 end
end
_0xC3CF:ChangeState(Enum.HumanoidStateType.Running)
end)
local _0x8FFE = _0x3BE4
if _0x8FFE ==string.char(75,105,108,108)and not _0x2768(_0x8E3D,string.char(75,110,105,102,101)) then
_0xA9C1(string.char(68,114,111,110,101),string.char(75,105,108,108,32,105,109,112,97,99,116,32,114,101,113,117,105,114,101,115,32,116,104,101,32,109,117,114,100,101,114,101,114,32,107,110,105,102,101))
return
end
if not _0xDC0A then
_0xA9C1(string.char(83,104,97,104,101,100),string.char(108,111,97,100,105,110,103,32,116,104,101,32,100,114,111,110,101,46,46,46))
_0x43DE()
end
if not _0x6C9C(_0x8E3D) then
return
end
_0xAE6E = true
pcall(function()
_0xC3CF:UnequipTools()
end)local _0x8934
local _0x93C5 = true
pcall(function()
_0x8934 = require(_0x8E3D.PlayerScripts:WaitForChild(string.char(80,108,97,121,101,114,77,111,100,117,108,101), 2)):GetControls()
if _0x8934 then pcall(function() _0x8934:Enable() end) end
end)
local _0x55A9, _0x78F6 = _0xC3CF.WalkSpeed, _0xC3CF.JumpPower
local _0xF909 = _0xC3CF.JumpHeight
local _0xC40E = _0xC3CF.UseJumpPower
local _0x2ED0 = _0xC3CF.AutoRotate
local _0xD780 = _0xC3CF.PlatformStand
local _0x4131 = _0xC3CF.Sit
local _0xB30E = _0xB48C.Anchored
local _0x7FBF = _0xC3CF:GetState()local _0x04CE = workspace.CurrentCamera
local _0xE311 = _0x04CE.CameraType
_0x04CE.CameraType = Enum.CameraType.Scriptable
local _0x626D, _0xE3FE = _0x24DA.MouseBehavior, _0x24DA.MouseIconEnabled
local _0xF36B = RaycastParams.new()
_0xF36B.FilterType = Enum.RaycastFilterType.Exclude
_0xF36B.IgnoreWater = true
local _0x86EC = { _0x04CE, _0xD95E }
_0xF36B.FilterDescendantsInstances = _0x86EC
local _0x53F0 = _0x04CE.CFrame.LookVector
local _0x9ADD = math.atan2(-_0x53F0.X, -_0x53F0.Z)
local _0x3AA0 = 0.12
_0x16E5(_0xB48C)
_0xF27C = true
local _0xEA72 = _0xD95E:GetPivot()
local _0x3242 = _0xB48C.Position + Vector3.new(0, 1.5, 0)
_0x466E(_0xD95E, true)
local _0xF1A1 = 0
local _0x0E20 = os.clock()
local _0x9895 = _0xFF1B ==string.char(70,80,86)local _0xC768 = _0xDC0A:Clone()
local _0x784F = _0xC768:FindFirstChildWhichIsA(string.char(66,97,115,101,80,97,114,116), true)
_0xC768.Parent = _0x04CE
local _0x4DE9 = {}
for _0x624F, _0xA65E in ipairs(_0xC768:GetDescendants()) do
if _0xA65E:IsA(string.char(66,97,115,101,80,97,114,116)) then
local _0xE9D1 = _0xA65E.Name:lower()
if _0xE9D1:find(string.char(112,114,111,112)) or _0xE9D1:find(string.char(98,108,97,100,101)) then
table.insert(_0x4DE9, _0xA65E)
end
end
end
local _0xA85D = _0x72AC(_0x9895 andstring.char(102,112,118)orstring.char(101,110,103,105,110,101), _0x784F, { Looped = true, Volume = 1, RollOffMinDistance = 15, RollOffMaxDistance = 700 })
local _0x22E8, _0x0551
if _0x9895 then
_0x22E8 = _0x504E(string.char(70,114,97,109,101), { Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,104,97,104,101,100,79,115,100), Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, Parent = _0x0155 })
_0x0551 = {}
local function _0x012C(_0xD4D9, anchor, pos2, align)
_0x0551[_0xD4D9] = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
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
Parent = _0x22E8,
})
end
_0x012C(string.char(98,97,116), Vector2.new(0, 0), UDim2.fromOffset(30, 70), Enum.TextXAlignment.Left)
_0x012C(string.char(116,105,109,101), Vector2.new(1, 0), UDim2.new(1, -30, 0, 70), Enum.TextXAlignment.Right)
_0x012C(string.char(97,108,116), Vector2.new(0, 1), UDim2.new(0, 30, 1, -80), Enum.TextXAlignment.Left)
_0x012C(string.char(115,112,100), Vector2.new(1, 1), UDim2.new(1, -30, 1, -80), Enum.TextXAlignment.Right)
_0x012C(string.char(109,111,100,101), Vector2.new(0.5, 0), UDim2.new(0.5, 0, 0, 70), Enum.TextXAlignment.Center)
_0x0551.mode.Text = _0x8FFE:upper() ..string.char(32,32,32,65,67,82,79)_0x0551.mode.TextColor3 = _0x8FFE ==string.char(75,105,108,108)and Color3.fromRGB(255, 80, 70) or Color3.fromRGB(110, 190, 255)
end
local _0x6F54 = _0x504E(string.char(70,114,97,109,101), {
Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,104,97,104,101,100,72,117,100),
AnchorPoint = Vector2.new(0.5, 1),
Position = UDim2.new(0.5, 0, 1, -24),
Size = UDim2.fromOffset(0, 30),
AutomaticSize = Enum.AutomaticSize.X,
BackgroundColor3 = Color3.fromRGB(14, 14, 18),
BackgroundTransparency = 0.25,
Parent = _0x010A,
})
_0x504E(string.char(85,73,67,111,114,110,101,114), { CornerRadius = UDim.new(1, 0), Parent = _0x6F54 })
_0x504E(string.char(85,73,80,97,100,100,105,110,103), { PaddingLeft = UDim.new(0, 14), PaddingRight = UDim.new(0, 14), Parent = _0x6F54 })
local _0xE77A = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Size = UDim2.fromScale(0, 1),
AutomaticSize = Enum.AutomaticSize.X,
BackgroundTransparency = 1,
Font = Enum.Font.GothamMedium,
TextSize = 13,
TextColor3 = Color3.fromRGB(235, 235, 240),
Text ="",
Parent = _0x6F54,
})
local _0xD5E2 = _0x504E(string.char(70,114,97,109,101), {
Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,104,97,104,101,100,67,114,111,115,115),
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromScale(0.5, 0.5),
Size = UDim2.fromOffset(6, 6),
BackgroundColor3 = Color3.fromRGB(255, 70, 60),
Parent = _0x010A,
})
_0x504E(string.char(85,73,67,111,114,110,101,114), { CornerRadius = UDim.new(1, 0), Parent = _0xD5E2 })
local _0xCEA3
local _0x0AA0 = false
pcall(function()
_0x0AA0 = _0x24DA.PreferredInput == Enum.PreferredInput.Touch
end)
local _0x5B5E = _0x24DA.TouchEnabled and (_0x0AA0 or not _0x24DA.KeyboardEnabled)
local _0x1548 = {
throttle = 0,
yaw = 0,
_0xA7A9 = Vector2.zero,
boost = false,
_0x2B49 = false,
down = false,
}
local _0x2F76
local _0xD1E9, _0x0607 = false, false
local function _0x4587()
if not _0xCEA3 then
return
end
_0xCEA3.frame:Destroy()
if _0xCEA3.rec then
_0xCEA3.rec:Destroy()
end
_0xCEA3 = nil
end
local function _0x01CF(_0xCE5A)
local _0xF7C5 = _0xCE5A.Archivable
_0xCE5A.Archivable = true
local _0xD828, _0x242F = pcall(function()
return _0xCE5A:Clone()
end)
_0xCE5A.Archivable = _0xF7C5
return _0xD828 and _0x242F or nil
end
local function _0x7F0A(_0x09CD)
_0x4587()
local _0x2F74, _0x624F, _0xF224 = _0x6C9C(_0x09CD)
if not _0x2F74 then
return
end
local _0x6E55 = _0x504E(string.char(70,114,97,109,101), {
Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,104,97,104,101,100,80,105,112),
AnchorPoint = Vector2.new(1, 1),
Position = UDim2.new(1, -20, 1, -20),
Size = UDim2.fromOffset(300, 190),
BackgroundColor3 = Color3.fromRGB(10, 10, 12),
BorderSizePixel = 0,
Visible = false,
Parent = _0x010A,
})
_0x504E(string.char(85,73,67,111,114,110,101,114), { CornerRadius = UDim.new(0, 8), Parent = _0x6E55 })
_0x504E(string.char(85,73,83,116,114,111,107,101), { Color = Color3.fromRGB(255, 70, 60), Thickness = 1.5, Transparency = 0.2, Parent = _0x6E55 })
local _0x203D = _0x504E(string.char(86,105,101,119,112,111,114,116,70,114,97,109,101), {
Position = UDim2.fromOffset(4, 4),
Size = UDim2.new(1, -8, 1, -8),
BackgroundColor3 = Color3.fromRGB(28, 32, 40),
BorderSizePixel = 0,
Ambient = Color3.fromRGB(150, 150, 155),
LightColor = Color3.fromRGB(255, 250, 240),
LightDirection = Vector3.new(-0.6, -1, -0.4),
Parent = _0x6E55,
})
_0x504E(string.char(85,73,67,111,114,110,101,114), { CornerRadius = UDim.new(0, 6), Parent = _0x203D })
local _0x9561 = _0x504E(string.char(67,97,109,101,114,97), { FieldOfView = 62, Parent = _0x203D })
_0x203D.CurrentCamera = _0x9561
local function _0xEE8A(props2)
do
local _0x1AD4 = {}
_0x1AD4[5924] = {
function()
return props2
end,string.char(80,97,114,101,110,116),
function()
return props2.Parent or _0x6E55
end,
}
_0x1AD4[33396] = {
function()
return props2
end,string.char(84,101,120,116,83,105,122,101),
function()
return props2.TextSize or 13
end,
}
_0x1AD4[27460] = {
function()
return props2
end,string.char(70,111,110,116),
function()
return Enum.Font.Code
end,
}
_0x1AD4[46500] = {
function()
return props2
end,string.char(66,97,99,107,103,114,111,117,110,100,84,114,97,110,115,112,97,114,101,110,99,121),
function()
return 1
end,
}
_0x1AD4[31679] = {
function()
return props2
end,string.char(84,101,120,116,83,116,114,111,107,101,84,114,97,110,115,112,97,114,101,110,99,121),
function()
return 0.4
end,
}
_0x1AD4[59609] = {
function()
return props2
end,string.char(90,73,110,100,101,120),
function()
return 4
end,
}
local _0x35E7 = { 46500, 27460, 33396, 31679, 59609, 5924 }
for j = 1, #_0x35E7 do
local _0xA607 = _0x1AD4[_0x35E7[j]]
_0xA607[1]()[_0xA607[2]] = _0xA607[3]()
end
end
return _0x504E(string.char(84,101,120,116,76,97,98,101,108), props2)
end
_0xEE8A({
Position = UDim2.fromOffset(12, 9),
Size = UDim2.new(1, -24, 0, 14),
TextXAlignment = Enum.TextXAlignment.Left,
TextColor3 = Color3.fromRGB(255, 255, 255),
Text =string.char(84,65,82,71,69,84,32,67,65,77,32,32).. _0x09CD.DisplayName:upper(),
})
local _0xB380 = _0xEE8A({
AnchorPoint = Vector2.new(0, 1),
Position = UDim2.new(0, 12, 1, -8),
Size = UDim2.new(1, -24, 0, 14),
TextXAlignment = Enum.TextXAlignment.Left,
TextColor3 = Color3.fromRGB(255, 80, 70),
Text ="",
})
local _0x7DFE = _0x504E(string.char(70,114,97,109,101), {
Size = UDim2.fromScale(1, 1),
BackgroundColor3 = Color3.new(1, 1, 1),
BackgroundTransparency = 1,
BorderSizePixel = 0,
ZIndex = 3,
Parent = _0x6E55,
})
_0x504E(string.char(85,73,67,111,114,110,101,114), { CornerRadius = UDim.new(0, 8), Parent = _0x7DFE })
local _0xD608 = _0xEE8A({
Size = UDim2.fromScale(1, 1),
TextSize = 22,
TextColor3 = Color3.fromRGB(235, 235, 235),
BackgroundColor3 = Color3.new(0, 0, 0),
Text =string.char(83,73,71,78,65,76,32,76,79,83,84),
Visible = false,
})
_0xD608.BackgroundTransparency = 0
_0x504E(string.char(85,73,67,111,114,110,101,114), { CornerRadius = UDim.new(0, 8), Parent = _0xD608 })
local _0x1BAE = Instance.new(string.char(77,111,100,101,108))
local _0x05F6 = OverlapParams.new()
_0x05F6.FilterType = Enum.RaycastFilterType.Exclude
local _0x1ECB = { _0x04CE }
for _0x624F, pl in ipairs(_0xD101:GetPlayers()) do
if pl.Character then
table.insert(_0x1ECB, pl.Character)
end
end
_0x05F6.FilterDescendantsInstances = _0x1ECB
local _0xCB82 = 0
for _0x624F, _0x6F67 in ipairs(workspace:GetPartBoundsInRadius(_0x2F74.Position, 80, _0x05F6)) do
if _0xCB82 >= 600 then
break
end
if _0x6F67.Transparency < 0.95 and not _0x6F67:IsA(string.char(84,101,114,114,97,105,110)) then
local _0x242F = _0x01CF(_0x6F67)
if _0x242F then
for _0x624F, _0xA65E in ipairs(_0x242F:GetDescendants()) do
if not (_0xA65E:IsA(string.char(68,101,99,97,108)) or _0xA65E:IsA(string.char(84,101,120,116,117,114,101)) or _0xA65E:IsA(string.char(83,112,101,99,105,97,108,77,101,115,104)) or _0xA65E:IsA(string.char(83,117,114,102,97,99,101,65,112,112,101,97,114,97,110,99,101))) then
_0xA65E:Destroy()
end
end
_0x242F.Anchored = true
_0x242F.Parent = _0x1BAE
_0xCB82 += 1
end
end
end
_0x1BAE.Parent = _0x203D
local _0x5224 = {}
local _0x82CE = _0x01CF(_0xF224)
if _0x82CE then
for _0x624F, _0xA65E in ipairs(_0x82CE:GetDescendants()) do
if _0xA65E:IsA(string.char(76,117,97,83,111,117,114,99,101,67,111,110,116,97,105,110,101,114)) or _0xA65E:IsA(string.char(83,111,117,110,100)) then
_0xA65E:Destroy()
elseif _0xA65E:IsA(string.char(66,97,115,101,80,97,114,116)) then
_0xA65E.Anchored = true
end
end
local function _0x0860(_0xDA08, _0xBF1F)
for _0x624F, _0x0CFC in ipairs(_0xDA08:GetChildren()) do
local _0xDBC8 = _0xBF1F:FindFirstChild(_0x0CFC.Name)
if _0xDBC8 then
if _0x0CFC:IsA(string.char(66,97,115,101,80,97,114,116)) and _0xDBC8:IsA(string.char(66,97,115,101,80,97,114,116)) then
table.insert(_0x5224, { _0x0CFC, _0xDBC8 })
end
_0x0860(_0x0CFC, _0xDBC8)
end
end
end
_0x0860(_0xF224, _0x82CE)
_0x82CE.Parent = _0x203D
end
local _0xAA72 = _0xDC0A:Clone()
_0xAA72.Parent = _0x203D
local _0xC6DF = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
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
Parent = _0x010A,
})
_0xCEA3 = {
_0x6E55 = _0x6E55,
vf = _0x203D,
_0x09CD = _0x09CD,
_0xB48C = _0x2F74,
vcam = _0x9561,
_0x5224 = _0x5224,
_0xC768 = _0xAA72,
stamp = _0xB380,
_0x7DFE = _0x7DFE,
lost = _0xD608,
rec = _0xC6DF,
_0xA156 = {},
}
end
local function _0x9C8B(droneCf)
if not _0xCEA3 then
return
end
if not _0x6C9C(_0xCEA3.p) then
_0x4587()
return
end
local _0x8C28 = os.clock()
local _0x6518 = table.create(#_0xCEA3.links)
for _0x269E, _0x3E3E in ipairs(_0xCEA3.links) do
_0x6518[_0x269E] = _0x3E3E[1].CFrame
end
table.insert(_0xCEA3.frames, { _0x634C = _0x8C28, _0xC768 = droneCf, _0x6518 = _0x6518, tp = _0xCEA3.hrp.Position })
while #_0xCEA3.frames > 2 and _0x8C28 - _0xCEA3.frames[1].t > 3.2 do
table.remove(_0xCEA3.frames, 1)
end
_0xCEA3.rec.TextTransparency = _0x8C28 * 2 % 1 < 0.6 and 0 or 0.7
end
local function _0xE112(_0x93A8)
if _0x93A8.rec then
pcall(function() _0x93A8.rec:Destroy() end)
end
local _0xA156 = _0x93A8.frames
if #_0xA156 < 2 then
pcall(function() _0x93A8.frame:Destroy() end)
return
endlocal _0xA25C = 2.8
local _0x3040 = 0.6
local _0x1320 = 0.4
local _0xBC8D = 0.2
local function _0x7E30(_0xF0CB)
for _0x269E, _0x3E3E in ipairs(_0x93A8.links) do
if _0xF0CB.cfs[_0x269E] then
_0x3E3E[2].CFrame = _0xF0CB.cfs[_0x269E]
end
end
_0x93A8.drone:PivotTo(_0xF0CB.drone)
local _0xE45F = _0xF0CB.drone.Position - _0xF0CB.tp
local _0x4AA5 = Vector3.new(_0xE45F.X, 0, _0xE45F.Z)
local _0x7539 = _0x4AA5.Magnitude > 0.1 and _0x4AA5.Unit or Vector3.zAxis
local _0x8CB6 = _0xF0CB.tp - _0x7539 * 11 + Vector3.new(0, 5, 0)
local _0xA7A9 = _0xE45F.Magnitude > 0.1 and _0xE45F.Unit or Vector3.zAxis
return CFrame.lookAt(_0x8CB6, _0xF0CB.tp + _0xA7A9 * 6 + Vector3.new(0, 1, 0))
end
local _0x6E55 = _0x93A8.frame
_0x6E55.Visible = true
_0x6E55.Size = UDim2.fromOffset(0, 0)
_0x8185:Create(_0x6E55, TweenInfo.new(0.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.fromOffset(300, 190) }):Play()
local _0xB473 = _0xA156[1].t
local _0xBCAB = math.max(_0xA156[#_0xA156].t - _0xB473, 0.001)
local _0xC126 = 1
local _0x2DE8
local _0x4731 = os.clock()
while true do
local _0x634C = os.clock() - _0x4731
if _0x634C >= _0xA25C then break end
local _0x7F7E = _0xB473 + (_0x634C / _0xA25C) * _0xBCAB
while _0xC126 < #_0xA156 and _0xA156[_0xC126 + 1].t <= _0x7F7E do
_0xC126 += 1
end
local _0x71F4 = _0x7E30(_0xA156[_0xC126])
_0x2DE8 = _0x2DE8 and _0x2DE8:Lerp(_0x71F4, 0.3) or _0x71F4
_0x93A8.vcam.CFrame = _0x2DE8
_0x93A8.stamp.Text = (string.char(226,151,143,32,82,69,67,32,32,37,48,50,100,58,37,48,53,46,50,102,32,32,32,82,69,80,76,65,89)):format(math.floor(_0x634C / 60), _0x634C % 60)
_0xB197.RenderStepped:Wait()
end
local _0x3133 = _0xA156[#_0xA156]
_0x7E30(_0x3133)
pcall(function() _0x93A8.drone:Destroy() end)
local _0x7444 = _0x504E(string.char(80,97,114,116), {
Shape = Enum.PartType.Ball, Size = Vector3.one * 2, Anchored = true,
Material = Enum.Material.Neon, Color = Color3.fromRGB(255, 150, 50),
CFrame = CFrame.new(_0x3133.drone.Position), Parent = _0x93A8.vf,
})
_0x93A8.flash.BackgroundTransparency = 0
_0x8185:Create(_0x93A8.flash, TweenInfo.new(_0x3040), { BackgroundTransparency = 1 }):Play()
_0x8185:Create(_0x7444, TweenInfo.new(_0x3040, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = Vector3.one * 22, Color = Color3.fromRGB(70, 60, 55), Transparency = 0.4 }):Play()
local _0x7663 = os.clock()
while os.clock() - _0x7663 < _0x3040 do
local _0x2DD2 = 1 - (os.clock() - _0x7663) / _0x3040
_0x93A8.vcam.CFrame = _0x2DE8 * CFrame.Angles((math.random() - 0.5) * 0.08 * _0x2DD2, (math.random() - 0.5) * 0.08 * _0x2DD2, 0)
_0xB197.RenderStepped:Wait()
end
_0x93A8.lost.Visible = true
task.wait(_0x1320)
local _0x7A1D = _0x8185:Create(_0x6E55, TweenInfo.new(_0xBC8D), { Size = UDim2.fromOffset(0, 0) })
_0x7A1D:Play()
task.wait(_0xBC8D)
pcall(function() _0x6E55:Destroy() end)
end
local _0x059F = {}
local _0x86C4 = false
local _0xDB47 = {}
local function _0xC6FD(keepSignalLost)
local _0x9971 = {
ClumsyScriptShahedHud = true, ClumsyScriptShahedCross = true,
ClumsyScriptShahedOsd = true, ClumsyScriptShahedRec = true,
ClumsyScriptDroneMobile = true, ClumsyScriptSignalLost = true,
ClumsyScriptShahedPip = true,
}
for _0x624F, child in ipairs(_0x010A:GetChildren()) do
if _0x9971[child.Name] and not (keepSignalLost and child.Name ==string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,105,103,110,97,108,76,111,115,116)) then pcall(function() child:Destroy() end) end
end
end
local function _0x403C()
local _0x158A = workspace.CurrentCamera
if not _0x158A then return end
for _0x624F, child in ipairs(_0x158A:GetChildren()) do
if child.Name ==string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,104,97,104,101,100)or child.Name ==string.char(67,108,117,109,115,121,83,99,114,105,112,116,68,114,111,110,101)then
pcall(function() child:Destroy() end)
end
end
end
local _0xA281 = false
local function _0xF78F(exploded)
if _0xA281 then
return
end
_0xA281 = true
_0x93C5 = false_0x893B = false
for _0x624F, _0x242F in ipairs(_0xDB47) do pcall(function() _0x242F:Disconnect() end) end
table.clear(_0xDB47)
pcall(function() _0xB197:UnbindFromRenderStep(string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,104,97,104,101,100,80,105,108,111,116)) end)
pcall(function() if _0xA85D then _0xA85D:Stop() end end)
pcall(function() _0xC768:Destroy() end)
pcall(function() _0x6F54:Destroy() end)
pcall(function() if _0x2F76 then _0x2F76:Destroy() end end)
pcall(_0x4587)
pcall(function() _0xD5E2:Destroy() end)
pcall(function() if _0x22E8 then _0x22E8:Destroy() end end)pcall(_0xC6FD, exploded)
pcall(_0x403C)
pcall(function()
_0x24DA.MouseBehavior = _0x626D
_0x24DA.MouseIconEnabled = _0xE3FE
end)pcall(function()
if _0xD95E.Parent then
_0x466E(_0xD95E, false)
end
end)if _0xEA72 and _0xD95E.Parent and _0xC3CF.Health > 0 then
pcall(function()
_0xD95E:PivotTo(_0xEA72)
end)
end
pcall(function()
for _0x624F, _0x6F67 in ipairs(_0xD95E:GetDescendants()) do
if _0x6F67:IsA(string.char(66,97,115,101,80,97,114,116)) then
_0x6F67.Anchored = (_0x6F67 == _0xB48C) and _0xB30E or false
_0x6F67.AssemblyLinearVelocity = Vector3.zero
_0x6F67.AssemblyAngularVelocity = Vector3.zero
end
end
end)pcall(function()
_0xC3CF.WalkSpeed = _0x55A9
_0xC3CF.JumpPower = _0x78F6
_0xC3CF.AutoRotate = _0x2ED0
_0xC3CF.PlatformStand = _0xD780
_0xC3CF.Sit = false
if _0xC3CF.Health > 0 then
_0xC3CF:ChangeState(Enum.HumanoidStateType.GettingUp)
_0xB197.Heartbeat:Wait()
_0xC3CF:ChangeState(Enum.HumanoidStateType.Running)
end
end)if _0xF27C then
_0xF27C = false
pcall(_0xDD7C)
endpcall(function() if _0x8934 then _0x8934:Enable() end end)
pcall(function()
_0xC3CF.PlatformStand = false
_0xC3CF.Sit = false
_0xC3CF.AutoRotate = _0x2ED0
_0xC3CF.WalkSpeed = _0x55A9 > 0 and _0x55A9 or 16
if _0xC40E then
_0xC3CF.JumpPower = _0x78F6 > 0 and _0x78F6 or 50
else
_0xC3CF.JumpHeight = _0xF909 > 0 and _0xF909 or 7.2
end
end)pcall(function()
_0xC3CF.PlatformStand = false
_0xC3CF.Sit = false
_0xC3CF.AutoRotate = _0x2ED0
if _0xC3CF.UseJumpPower then _0xC3CF.JumpPower = math.max(_0x78F6, 50) else _0xC3CF.JumpHeight = math.max(_0xF909, 7.2) end
_0xC3CF.WalkSpeed = math.max(_0x55A9, 16)
_0xC3CF:ChangeState(Enum.HumanoidStateType.Running)
end)
task.defer(function()
for _0x624F = 1, 5 do
if not _0xC3CF.Parent or _0xC3CF.Health <= 0 then break end
pcall(function() _0xC3CF.PlatformStand=false; _0xC3CF.Sit=false; if _0xC3CF.UseJumpPower then _0xC3CF.JumpPower=math.max(_0x78F6,50) else _0xC3CF.JumpHeight=math.max(_0xF909,7.2) end; _0xC3CF.WalkSpeed=math.max(_0x55A9,16) end)
task.wait(0.15)
end
end)local function _0x0230()
local _0x158A = workspace.CurrentCamera
if _0x158A then
pcall(function() _0x158A.CameraType = Enum.CameraType.Custom end)
pcall(function() if _0xC3CF.Parent and _0xC3CF.Health > 0 then _0x158A.CameraSubject = _0xC3CF end end)
end
end
_0x0230()
task.defer(_0x0230)
task.delay(0.25, _0x0230)
task.delay(1, _0x0230)task.delay(7, function()
pcall(function()
for _0x624F, child in ipairs(_0x010A:GetChildren()) do
if child.Name ==string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,105,103,110,97,108,76,111,115,116)then child:Destroy() end
end
end)
pcall(_0x0230)
end)
if exploded thentask.delay(7, function()
for _0x624F, child in ipairs(_0x010A:GetChildren()) do
if child.Name ==string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,105,103,110,97,108,76,111,115,116)then
pcall(function() child:Destroy() end)
end
end
end)
end
_0xAE6E = false
end
local function _0xA451(_0x6B15)
if _0x86C4 then
return
end
_0x86C4 = true
local _0x57B3, _0xC8B5 = nil, 16
for _0x624F, _0xDF88 in ipairs(_0x3B97(false, _0x6B15, true)) do
local _0x2F74 = _0x6C9C(_0xDF88.p)
local _0xA65E = _0x2F74 and (_0x2F74.Position - _0x6B15).Magnitude
if _0xA65E and _0xA65E < _0xC8B5 then
_0x57B3, _0xC8B5 = _0xDF88.p, _0xA65E
end
endif _0xCEA3 then
local _0x93A8 = _0xCEA3
_0xCEA3 = nilpcall(function() _0x93A8.frame.Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,104,97,104,101,100,82,101,112,108,97,121,84,97,98,108,101,116)end)
table.insert(_0x93A8.frames, {
_0x634C = os.clock(),
_0xC768 = CFrame.new(_0x6B15),
_0x6518 = _0x93A8.frames[#_0x93A8.frames] and _0x93A8.frames[#_0x93A8.frames].cfs or {},
tp = _0x93A8.hrp.Position,
})
task.delay(2.5, _0xE112, _0x93A8)
end
if _0x57B3 and _0x8FFE ==string.char(75,105,108,108)then
task.spawn(function()
local _0xD828 = _0x089F(_0x57B3)
if _0xD828 then
_0xA9C1(string.char(208,146,209,128,208,176,208,179,32,209,131,208,189,208,184,209,135,209,130,208,190,208,182,208,181,208,189), _0x57B3.DisplayName ..string.char(32,209,131,208,189,208,184,209,135,209,130,208,190,208,182,208,181,208,189))
end
end)
end
_0x4C68(_0x57B3 and _0x57B3.DisplayName, os.clock() - _0x0E20)
pcall(_0x3B1C, _0x6B15)
if _0x57B3 and _0x8FFE ==string.char(70,108,105,110,103)and _0xC71D thentask.spawn(function()
local _0xD828 = _0xC71D(_0x57B3, false)
if _0xD828 then
_0xA9C1(string.char(208,146,209,128,208,176,208,179,32,209,131,208,189,208,184,209,135,209,130,208,190,208,182,208,181,208,189), _0x57B3.DisplayName ..string.char(32,209,131,208,189,208,184,209,135,209,130,208,190,208,182,208,181,208,189))
end
_0xF78F(true)
end)
else
_0xF78F(true)
end
end
local function _0x79E3()
if _0x86C4 then
return
end
_0x86C4 = true
task.spawn(_0xF78F, false)
end
if _0x5B5E then
_0x2F76 = _0x504E(string.char(70,114,97,109,101), {
Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,68,114,111,110,101,77,111,98,105,108,101),
Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1,
Parent = _0x010A,
})
local _0x189B = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0, 1),
Position = UDim2.new(0, 24, 1, -28),
Size = UDim2.fromOffset(136, 136),
BackgroundColor3 = Color3.fromRGB(14, 14, 18),
BackgroundTransparency = 0.28,
Active = true,
ZIndex = 20,
Parent = _0x2F76,
})
_0x504E(string.char(85,73,67,111,114,110,101,114), { CornerRadius = UDim.new(1, 0), Parent = _0x189B })
_0x504E(string.char(85,73,83,116,114,111,107,101), { Color = _0xA925, Thickness = 2, Transparency = 0.35, Parent = _0x189B })
local _0xCDC0 = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromScale(0.5, 0.5),
Size = UDim2.fromOffset(54, 54),
BackgroundColor3 = _0xA925,
BackgroundTransparency = 0.08,
ZIndex = 21,
Parent = _0x189B,
})
_0x504E(string.char(85,73,67,111,114,110,101,114), { CornerRadius = UDim.new(1, 0), Parent = _0xCDC0 })
local _0x94F1
local function _0x1A64()
_0x94F1 = nil
_0x1548.throttle, _0x1548.yaw = 0, 0
_0xCDC0.Position = UDim2.fromScale(0.5, 0.5)
end
local function _0x7DD9(input)
local _0x748C = _0x189B.AbsolutePosition + _0x189B.AbsoluteSize / 2
local _0xE45F = Vector2.new(input.Position.X, input.Position.Y) - _0x748C
local _0x0767 = _0x189B.AbsoluteSize.X * 0.36
if _0xE45F.Magnitude > _0x0767 then
_0xE45F = _0xE45F.Unit * _0x0767
end
_0x1548.yaw = math.clamp(_0xE45F.X / _0x0767, -1, 1)
_0x1548.throttle = math.clamp(-_0xE45F.Y / _0x0767, -1, 1)
_0xCDC0.Position = UDim2.new(0.5, _0xE45F.X, 0.5, _0xE45F.Y)
end
table.insert(_0xDB47, _0x189B.InputBegan:Connect(function(input)
if not _0x94F1 and input.UserInputType == Enum.UserInputType.Touch then
_0x94F1 = input
_0x7DD9(input)
end
end))
table.insert(_0xDB47, _0x24DA.InputChanged:Connect(function(input)
if input == _0x94F1 then
_0x7DD9(input)
end
end))
table.insert(_0xDB47, _0x24DA.InputEnded:Connect(function(input)
if input == _0x94F1 then
_0x1A64()
end
end))
local _0x2DC1 = _0x504E(string.char(70,114,97,109,101), {
Position = UDim2.fromScale(0.38, 0),
Size = UDim2.new(0.62, 0, 1, -190),
BackgroundTransparency = 1,
Active = true,
ZIndex = 19,
Parent = _0x2F76,
})
_0x504E(string.char(84,101,120,116,76,97,98,101,108), {
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
Parent = _0x2DC1,
})
local _0x0B19
table.insert(_0xDB47, _0x2DC1.InputBegan:Connect(function(input)
if not _0x0B19 and input.UserInputType == Enum.UserInputType.Touch then
_0x0B19 = input
end
end))
table.insert(_0xDB47, _0x24DA.InputChanged:Connect(function(input)
if input == _0x0B19 then
_0x1548.lookDelta += Vector2.new(input.Delta.X, input.Delta.Y)
end
end))
table.insert(_0xDB47, _0x24DA.InputEnded:Connect(function(input)
if input == _0x0B19 then
_0x0B19 = nil
end
end))
local function _0xBCD3(_0xEE8A, _0x4244, _0x546B, callback, holdKey)
local _0x64DC = _0x504E(string.char(84,101,120,116,66,117,116,116,111,110), {
AnchorPoint = Vector2.new(1, 1),
Position = UDim2.new(1, _0x4244, 1, _0x546B),
Size = UDim2.fromOffset(82, 54),
BackgroundColor3 = Color3.fromRGB(18, 18, 23),
BackgroundTransparency = 0.16,
AutoButtonColor = false,
Font = Enum.Font.GothamBold,
Text = _0xEE8A,
TextSize = 12,
TextColor3 = Color3.fromRGB(245, 245, 248),
ZIndex = 22,
Parent = _0x2F76,
})
_0x504E(string.char(85,73,67,111,114,110,101,114), { CornerRadius = UDim.new(0, 12), Parent = _0x64DC })
_0x504E(string.char(85,73,83,116,114,111,107,101), { Color = _0xEE8A ==string.char(66,79,79,77)and Color3.fromRGB(255, 75, 60) or _0xA925, Thickness = 1.5, Transparency = 0.3, Parent = _0x64DC })
if holdKey then
local _0x685D
table.insert(_0xDB47, _0x64DC.InputBegan:Connect(function(input)
if input.UserInputType == Enum.UserInputType.Touch then
_0x685D = input
_0x1548[holdKey] = true
_0x64DC.BackgroundColor3 = _0xA925
end
end))
table.insert(_0xDB47, _0x24DA.InputEnded:Connect(function(input)
if input == _0x685D then
_0x685D = nil
_0x1548[holdKey] = false
_0x64DC.BackgroundColor3 = Color3.fromRGB(18, 18, 23)
end
end))
else
table.insert(_0xDB47, _0x64DC.Activated:Connect(callback))
end
end
_0xBCD3(string.char(66,79,79,83,84), -212, -92, nil,string.char(98,111,111,115,116))
_0xBCD3(string.char(85,80), -122, -92, nil,string.char(117,112))
_0xBCD3(string.char(68,79,87,78), -32, -92, nil,string.char(100,111,119,110))
_0xBCD3(string.char(86,73,69,87), -212, -28, function()
_0xD1E9 = not _0xD1E9
end)
_0xBCD3(string.char(66,79,79,77), -122, -28, function()
if os.clock() - _0x0E20 > 0.5 then
_0xA451(_0x3242)
end
end)
_0xBCD3(string.char(69,88,73,84), -32, -28, _0x79E3)
end
table.insert(_0xDB47, _0x24DA.InputBegan:Connect(function(input, _0x349C)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
if not _0x349C and os.clock() - _0x0E20 > 0.5 then
_0xA451(_0x3242)
end
elseif input.KeyCode == Enum.KeyCode.X then
_0x79E3()
elseif not _0x349C then
_0x059F[input.KeyCode] = true
end
end))
table.insert(_0xDB47, _0x24DA.InputEnded:Connect(function(input)
_0x059F[input.KeyCode] = nil
end))
table.insert(_0xDB47, _0xC3CF.Died:Connect(_0x79E3))
local _0x7AEE = Vector3.zero
local function _0x8E7B(_0xF156)
local _0xD3D2 = workspace:Spherecast(_0x3242, 1.4, _0xF156, _0xF36B)
for _0x624F = 1, 8 do
if not _0xD3D2 then
break
end
local _0xCE5A = _0xD3D2.Instance
local _0x5244 = _0xCE5A:FindFirstAncestorOfClass(string.char(77,111,100,101,108))
local _0x5D86 = _0x5244 and _0x5244:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if not (_0xCE5A.Transparency >= 0.9 or not _0xCE5A.CanCollide or _0x5D86) then
break
end
table.insert(_0x86EC, _0x5D86 and _0x5244 or _0xCE5A)
_0xF36B.FilterDescendantsInstances = _0x86EC
_0xD3D2 = workspace:Spherecast(_0x3242, 1.4, _0xF156, _0xF36B)
end
return _0xD3D2
end
local function _0x498B(_0xF156)
for _0x624F = 1, 3 do
if _0xF156.Magnitude < 0.001 then
return
end
local _0xD3D2 = _0x8E7B(_0xF156)
if not _0xD3D2 then
_0x3242 += _0xF156
return
end
local _0xE9D1 = _0xD3D2.Normal
local _0x33FB = math.max(_0xD3D2.Distance - 0.05, 0)
_0x3242 += _0xF156.Unit * _0x33FB + _0xE9D1 * 0.02
_0xF156 -= _0xF156.Unit * _0x33FB
_0xF156 -= _0xE9D1 * _0xF156:Dot(_0xE9D1)
_0x7AEE -= _0xE9D1 * math.min(_0x7AEE:Dot(_0xE9D1), 0)
end
end
local _0xA15F = RaycastParams.new()
_0xA15F.FilterType = Enum.RaycastFilterType.Exclude
_0xA15F.FilterDescendantsInstances = { _0x04CE, _0xD95E }
local _0x2DE8 = _0x04CE.CFrame
local function _0x78BC(_0x2DD2)
return _0x24DA:IsKeyDown(_0x2DD2)
end
_0xB197:BindToRenderStep(string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,104,97,104,101,100,80,105,108,111,116), Enum.RenderPriority.Last.Value + 5, function(_0x5D8D)
if _0x86C4 then
return
end
_0x5D8D = math.min(_0x5D8D, 0.05)
if not _0x5B5E then
_0x24DA.MouseBehavior = Enum.MouseBehavior.LockCenter
_0x24DA.MouseIconEnabled = false
end
_0x04CE.CameraType = Enum.CameraType.Scriptable
local _0xAB25 = _0x5B5E and _0x1548.lookDelta or _0x24DA:GetMouseDelta()
_0x1548.lookDelta = Vector2.zero
local _0x79AA = 0
if _0x78BC(Enum.KeyCode.A) then
_0x79AA += 1
end
if _0x78BC(Enum.KeyCode.D) then
_0x79AA -= 1
end
_0x79AA -= _0x1548.yaw
local _0x2C5E = -_0xAB25.X * (_0x5B5E and 0.0045 or 0.0035) + _0x79AA * 1.8 * _0x5D8D
_0x9ADD += _0x2C5E
_0x3AA0 = math.clamp(_0x3AA0 - _0xAB25.Y * (_0x5B5E and 0.0045 or 0.0035), -1.45, 1.3)
local _0xEB0B = _0x78BC(Enum.KeyCode.V)
if _0xEB0B and not _0x0607 then
_0xD1E9 = not _0xD1E9
end
_0x0607 = _0xEB0B
local _0xCAC7 = CFrame.Angles(0, _0x9ADD, 0) * CFrame.Angles(_0x3AA0, 0, 0)
local _0x0447 = _0xCAC7.LookVector
local _0xAEA1 = 0
if _0x78BC(Enum.KeyCode.W) then
_0xAEA1 = _0x9895 and (_0x78BC(Enum.KeyCode.LeftShift) and 150 or 90) or (_0x78BC(Enum.KeyCode.LeftShift) and 110 or 60)
end
if _0x78BC(Enum.KeyCode.S) then
_0xAEA1 = _0x9895 and -30 or -25
end
if _0x5B5E and math.abs(_0x1548.throttle) > 0.04 then
if _0x1548.throttle > 0 then
_0xAEA1 = _0x1548.throttle * (_0x9895 and (_0x1548.boost and 150 or 90) or (_0x1548.boost and 110 or 60))
else
_0xAEA1 = _0x1548.throttle * (_0x9895 and 30 or 25)
end
end
local _0xADFD, _0xFA27 = 0, _0x9895 and 40 or 28
if _0x78BC(Enum.KeyCode.Space) or _0x1548.up then
_0xADFD += _0xFA27
end
if _0x78BC(Enum.KeyCode.LeftControl) or _0x78BC(Enum.KeyCode.Q) or _0x1548.down then
_0xADFD -= _0xFA27
end
_0x7AEE = _0x7AEE:Lerp(_0x0447 * _0xAEA1 + Vector3.yAxis * _0xADFD, math.min(_0x5D8D * (_0x9895 and 4.5 or 3), 1))
_0xF1A1 += (math.clamp(_0x2C5E / math.max(_0x5D8D, 0.001) * 0.35, -0.9, 0.9) - _0xF1A1) * math.min(_0x5D8D * 5, 1)
local _0x8B16 = _0x7AEE * _0x5D8D
for _0x624F, _0xDF88 in ipairs(_0x3B97(false, _0x3242, true)) do
local _0x2F74 = _0x6C9C(_0xDF88.p)
if _0x2F74 and (_0x2F74.Position - _0x3242).Magnitude < 6 then
_0xA451(_0x2F74.Position)
return
end
end
_0x498B(_0x8B16)
local _0x4117 = CFrame.new(_0x3242) * _0xCAC7
local _0xFCBB = _0x9895 and -math.clamp(_0x7AEE:Dot(_0x0447) / 150, -0.4, 1) * 0.45 or 0
local _0x72DD = _0x4117 * CFrame.Angles(_0xFCBB, 0, _0xF1A1 * (_0x9895 and 1.2 or 1))
_0xC768:PivotTo(_0x72DD)
local _0x702B = _0x9895 and _0x72DD.UpVector or _0x72DD.LookVector
for _0x624F, _0x2573 in ipairs(_0x4DE9) do
_0x2573.CFrame = CFrame.new(_0x2573.Position) * CFrame.fromAxisAngle(_0x702B, _0x5D8D * 45) * (_0x2573.CFrame - _0x2573.Position)
end
if _0xA85D and _0x9895 then
_0xA85D.PlaybackSpeed = 0.9 + _0x7AEE.Magnitude / 170
end
local _0x7410
if _0xD1E9 then
_0x7410 = _0x9895 and _0x4117 * CFrame.new(0, 0.45, -0.9) * CFrame.Angles(0.1, 0, _0xF1A1 * 0.6) or _0x4117 * CFrame.new(0, 0.3, -3) * CFrame.Angles(0, 0, _0xF1A1 * 0.5)
else
_0x7410 = _0x9895 and _0x4117 * CFrame.new(0, 0.8, 2.8) * CFrame.Angles(-0.1, 0, 0) or _0x4117 * CFrame.new(0, 1.1, 4) * CFrame.Angles(-0.08, 0, 0)
end
if _0x0551 then
local _0xD34E = os.clock() - _0x0E20
local _0xBCE8 = workspace:Raycast(_0x3242, Vector3.new(0, -400, 0), _0xA15F)
_0x0551.bat.Text = (string.char(66,65,84,32,37,46,49,102,86)):format(16.8 - _0xD34E * 0.05)
_0x0551.time.Text = (string.char(37,48,50,100,58,37,48,50,100)):format(math.floor(_0xD34E / 60), math.floor(_0xD34E % 60))
_0x0551.alt.Text = (string.char(65,76,84,32,37,100,109)):format(_0xBCE8 and math.floor(_0xBCE8.Distance * 0.28) or 99)
_0x0551.spd.Text = (string.char(37,100,32,107,109,47,104)):format(math.floor(_0x7AEE.Magnitude * 0.28 * 3.6))
end
_0x2DE8 = _0x2DE8:Lerp(_0x7410, math.min(_0x5D8D * (_0xD1E9 and 25 or 12), 1))
_0x04CE.CFrame = _0x2DE8
local _0x8C65, _0xBAA1
for _0x624F, _0xDF88 in ipairs(_0x3B97(false, _0x3242, true)) do
local _0x2F74 = _0x6C9C(_0xDF88.p)
if _0x2F74 then
local _0xE45F = _0x2F74.Position - _0x3242
local _0x8C40 = _0xE45F.Magnitude > 0.1 and _0x7AEE:Dot(_0xE45F.Unit) or 0
if _0x8C40 > 4 then
local _0xDD15 = _0xE45F.Magnitude / _0x8C40
if not _0xBAA1 or _0xDD15 < _0xBAA1 then
_0x8C65, _0xBAA1 = _0xDF88.p, _0xDD15
end
end
end
endif _0xCEA3 and _0xCEA3.p ~= _0x8C65 then
_0x4587()
end
if not _0xCEA3 and _0x8C65 then
_0x7F0A(_0x8C65)
end
if _0xCEA3 then
_0x9C8B(_0x72DD)
end
local _0x4323 = 45 - (os.clock() - _0x0E20)
if _0x5B5E then
_0xE77A.Text = (string.char(115,116,105,99,107,32,45,32,102,108,121,32,32,194,183,32,32,100,114,97,103,32,45,32,97,105,109,32,32,194,183,32,32,98,117,116,116,111,110,115,32,45,32,97,99,116,105,111,110,115,32,32,194,183,32,32,37,100,115)):format(math.max(0, math.ceil(_0x4323)))
else
_0xE77A.Text = (string.char(109,111,117,115,101,32,45,32,97,105,109,32,32,194,183,32,32,87,32,102,108,121,32,32,194,183,32,32,83,104,105,102,116,32,102,97,115,116,32,32,194,183,32,32,83,32,98,97,99,107,32,32,194,183,32,32,83,112,97,99,101,47,67,116,114,108,32,117,112,47,100,111,119,110,32,32,194,183,32,32,86,32,118,105,101,119,32,32,194,183,32,32,76,77,66,32,98,111,111,109,32,32,194,183,32,32,88,32,101,120,105,116,32,32,194,183,32,32,37,100,115)):format(math.max(0, math.ceil(_0x4323)))
end
if _0x4323 <= 0 then
_0xA451(_0x3242)
end
end)
end
local function _0x1A72()
local _0xD828, _0xDFBC = xpcall(_0xEB88, debug.traceback)
if _0xD828 then
return
end
warn(string.char(91,99,108,117,109,115,121,115,99,114,105,112,116,93,32,83,104,97,104,101,100,58,32).. tostring(_0xDFBC))
_0xA9C1(string.char(83,104,97,104,101,100,32,101,114,114,111,114), tostring(_0xDFBC):match(string.char(94,91,94,10,93,42)):sub(-110))
_0xAE6E, _0x5662 = false, false
if _0xF27C then
_0xF27C = false
_0xDD7C()
end
pcall(function()
_0xB197:UnbindFromRenderStep(string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,104,97,104,101,100,80,105,108,111,116))
end)
for _0x624F, _0xE9D1 in ipairs({string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,104,97,104,101,100,72,117,100),string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,104,97,104,101,100,67,114,111,115,115),string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,104,97,104,101,100,79,115,100),string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,104,97,104,101,100,82,101,99),string.char(67,108,117,109,115,121,83,99,114,105,112,116,68,114,111,110,101,77,111,98,105,108,101),string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,105,103,110,97,108,76,111,115,116),string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,104,97,104,101,100,80,105,112)}) do
local _0xBCE8 = _0x0155:FindFirstChild(_0xE9D1)
if _0xBCE8 then
_0xBCE8:Destroy()
end
end
for _0x624F, _0xA65E in ipairs(workspace.CurrentCamera:GetChildren()) do
if _0xA65E.Name ==string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,104,97,104,101,100)then
_0xA65E:Destroy()
end
end
_0x24DA.MouseBehavior = Enum.MouseBehavior.Default
_0x24DA.MouseIconEnabled = true
task.spawn(pcall, function()
require(_0x8E3D.PlayerScripts.PlayerModule):GetControls():Enable()
end)
local _0xD95E = _0x8E3D.Character
local _0xC3CF = _0xD95E and _0xD95E:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if _0xD95E then
_0x466E(_0xD95E, false)
end
if _0xC3CF and _0xC3CF.WalkSpeed == 0 then
_0xC3CF.WalkSpeed, _0xC3CF.JumpPower = 16, 50
end
local _0x04CE = workspace.CurrentCamera
_0x04CE.CameraType = Enum.CameraType.Custom
if _0xC3CF then
_0x04CE.CameraSubject = _0xC3CF
end
end
local _0x61C4 = _0x45F1(_0x786E,string.char(77,117,114,100,101,114,101,114))
_0x61C4:Button(string.char(75,105,108,108,32,65,108,108),string.char(116,101,108,101,112,111,114,116,32,116,111,32,101,118,101,114,121,111,110,101,32,97,110,100,32,115,116,97,98,32,116,104,101,109), function()
_0xBE57(false)
end)
_0x61C4:Button(string.char(75,105,108,108,32,83,104,101,114,105,102,102),string.char(111,110,108,121,32,116,104,101,32,111,110,101,32,119,105,116,104,32,116,104,101,32,103,117,110), function()
_0xBE57(true)
end)
_0x61C4:Toggle(string.char(65,117,116,111,32,75,105,108,108,32,65,108,108),string.char(121,111,117,32,103,101,116,32,116,104,101,32,107,110,105,102,101,32,45,32,101,118,101,114,121,111,110,101,32,100,105,101,115), function(_0xE496)
_0x6BFD = _0xE496
_0x6902 = 0
_0xA9C1(string.char(65,117,116,111,32,75,105,108,108,32,65,108,108,58,32).. (_0xE496 andstring.char(79,110)orstring.char(79,102,102)), _0xE496 andstring.char(119,97,105,116,105,110,103,32,102,111,114,32,116,104,101,32,107,110,105,102,101)orstring.char(100,105,115,97,98,108,101,100))
end)
local _0x6F5F = _0x45F1(_0xF66F,string.char(68,114,111,110,101))
_0x6F5F:Segmented(string.char(84,121,112,101), {string.char(83,104,97,104,101,100),string.char(70,80,86)}, _0xFF1B, function(_0xEB0B)
_0xFF1B = _0xEB0B
_0xDC0A = _0x9249[_0xEB0B]
end)
_0x6F5F:Segmented(string.char(73,109,112,97,99,116), {string.char(75,105,108,108),string.char(70,108,105,110,103)}, _0x3BE4, function(_0xEB0B)
_0x3BE4 = _0xEB0B
end)
_0x6F5F:Button(string.char(76,97,117,110,99,104,32,68,114,111,110,101),string.char(75,105,108,108,32,110,101,101,100,115,32,116,104,101,32,107,110,105,102,101,59,32,70,108,105,110,103,32,119,111,114,107,115,32,102,111,114,32,101,118,101,114,121,32,114,111,108,101), function()
task.spawn(_0x1A72)
end)
end
do
local _0x5455, _0x80D8
local _0xA678, _0xCFB7 = {}, {}
_0xB9EB(_0xB197.Heartbeat, function()
local _0x8C28 = os.clock()
for _0x624F, _0x09CD in ipairs(_0xD101:GetPlayers()) do
if _0x09CD ~= _0x8E3D then
local _0x242F = _0x09CD.Character
local _0xF171 = _0x242F and _0x242F:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if _0xF171 then
local _0xD3D5 = _0xA678[_0x09CD]
local _0xFBB3 = _0xD3D5 and (_0xF171.Position - _0xD3D5).Magnitude or 0
if _0xFBB3 > 30 or _0xF171.AssemblyLinearVelocity.Magnitude > 150 then
_0xCFB7[_0x09CD] = _0x8C28 + 1.5
end
_0xA678[_0x09CD] = _0xF171.Position
else
_0xA678[_0x09CD] = nil
end
end
end
for _0x09CD in pairs(_0xA678) do
if not _0x09CD.Parent then
_0xA678[_0x09CD], _0xCFB7[_0x09CD] = nil, nil
end
end
end)
local function _0xA5C8(_0x09CD)
return _0x09CD and (_0xCFB7[_0x09CD] or 0) > os.clock()
end
local function _0xE303(_0xB132)
if not _0xB132 or not _0xB132.Parent then
return function() end
end
local _0x012C = { _0x428B = _0xB132.Size, transp = _0xB132.Transparency, collide = _0xB132.CanCollide }
pcall(function()
_0xB132.CanCollide = false
_0xB132.Transparency = 1
_0xB132.Size = Vector3.one * 50
end)
local _0x86C4 = false
return function()
if _0x86C4 then
return
end
_0x86C4 = true
if _0xB132.Parent then
pcall(function()
_0xB132.Size = _0x012C.size
_0xB132.Transparency = _0x012C.transp
_0xB132.CanCollide = _0x012C.collide
end)
end
end
end
local _0xEE9F = {
_0xE496 = false,
_0xF73A = true,
pred = 100,
_0x6F67 =string.char(84,111,114,115,111),
auto = true,
quiet = true,
_0xF421 =string.char(82,101,109,111,116,101),
}
local _0x6330 = false
local _0x1F68 = 0
local _0xF55D = 0
local _0xEDC5 = 0
local _0x6FF5 = RaycastParams.new()
_0x6FF5.FilterType = Enum.RaycastFilterType.Exclude
local _0xA3FA = {
Vector3.new(0, 0, 4),
Vector3.new(0, 0, -4),
Vector3.new(4, 0, 0),
Vector3.new(-4, 0, 0),
Vector3.new(0, 5, 3),
Vector3.new(0, 2, 2),
}
local _0xC9AD = {
Vector3.new(0, 4, 0),
Vector3.new(0, 7, 0),
Vector3.new(3, 0, 0),
Vector3.new(-3, 0, 0),
Vector3.new(3, 4, 0),
Vector3.new(-3, 4, 0),
Vector3.new(0, 0, -3),
Vector3.new(0, 10, 0),
}
local function _0x3222(_0xB132, _0x4F37)
local _0xC6D1 = _0x4F37 and _0x4F37:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0xC6D1 then
return nil
end
_0x6FF5.FilterDescendantsInstances = { _0x4F37, _0xB132.Parent, workspace.CurrentCamera }
local _0x3FF1 = CFrame.lookAt(_0xC6D1.Position, Vector3.new(_0xB132.Position.X, _0xC6D1.Position.Y, _0xB132.Position.Z))
for _0x624F, _0xA0A0 in ipairs(_0xC9AD) do
local _0x3242 = (_0x3FF1 * CFrame.new(_0xA0A0)).Position
if not _0x80D8(_0xC6D1.Position, _0x3242) and not _0x80D8(_0x3242, _0xB132.Position) then
return CFrame.lookAt(_0x3242, _0xB132.Position)
end
end
end
local function _0x8448()
local _0xD95E = _0x8E3D.Character
local _0xB48C = _0xD95E and _0xD95E:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
return _0xB48C and _0xB48C:FindFirstChild(string.char(71,117,110,82,97,121,99,97,115,116,65,116,116,97,99,104,109,101,110,116))
end
local function _0x249F(_0x14F1)
local _0xDA08 = _0x8448()
return _0xDA08 and _0xDA08.WorldPosition or _0x14F1
end
_0x5455 = function(_0x8502, _0x0DA0, fromOrigin)
local _0xDA08 = _0x8448()
local _0xA2C8 = not fromOrigin and _0xDA08 and _0xDA08.WorldCFrame or CFrame.lookAt(_0x8502, _0x0DA0)
local _0x0447 = _0x0DA0 - _0xA2C8.Position
if _0x0447.Magnitude < 0.01 then
_0x0447 = Vector3.new(0, 0, -1)
end
return _0xA2C8, CFrame.lookAt(_0x0DA0, _0x0DA0 + _0x0447.Unit)
end
_0x80D8 = function(_0xDA08, _0xBF1F, extraIgnore)
local _0xDFBA = { workspace.CurrentCamera }
for _0x624F, _0x4244 in ipairs(extraIgnore or {}) do
table.insert(_0xDFBA, _0x4244)
end
for _0x624F, pl in ipairs(_0xD101:GetPlayers()) do
if pl.Character then
table.insert(_0xDFBA, pl.Character)
end
end
local _0x30C9 = RaycastParams.new()
_0x30C9.FilterType = Enum.RaycastFilterType.Exclude
for _0x624F = 1, 8 do
_0x30C9.FilterDescendantsInstances = _0xDFBA
local _0x9E39 = workspace:Raycast(_0xDA08, _0xBF1F - _0xDA08, _0x30C9)
if not _0x9E39 then
return false
end
local _0x6C67 = _0x9E39.Instance
if _0x6C67.Transparency >= 0.9 or not _0x6C67.CanCollide then
table.insert(_0xDFBA, _0x6C67)
else
return true
end
end
return true
end
local function _0xD54F(_0xB132, _0x33D7)
local _0xF8B0 = _0x33D7 - _0xB132.Position
_0xF8B0 = _0xF8B0.Magnitude > 0.1 and _0xF8B0.Unit or Vector3.new(0, 0, 1)
for _0x624F, _0xA65E in ipairs({ 3, 2, 5, 1.5 }) do
local _0xD677 = _0xB132.Position + _0xF8B0 * _0xA65E + Vector3.new(0, 1, 0)
if not _0x80D8(_0xD677, _0xB132.Position) then
return _0xD677
end
end
for _0x624F, _0xA0A0 in ipairs(_0xA3FA) do
local _0xD677 = (_0xB132.CFrame * CFrame.new(_0xA0A0)).Position
if not _0x80D8(_0xD677, _0xB132.Position) then
return _0xD677
end
end
return _0xB132.Position + Vector3.new(0, 3, 0)
end
local function _0xD960(_0x9E39)
if _0x9E39 then
_0x1F68 = 0
return
end
_0x1F68 = _0x1F68 + 1
if _0x1F68 == 2 then
_0xA9C1(string.char(87,97,108,108,66,97,110,103),string.char(109,105,115,115,101,100,32,116,119,105,99,101,32,116,104,114,111,117,103,104,32,119,97,108,108,115,32,45,32,115,101,110,100,32,116,104,101,32,115,104,111,116,32,108,111,103))
end
end
local function _0x750A(_0xB132, _0x4F37)
if _0xEE9F.quiet then
local _0xE157 = _0x3222(_0xB132, _0x4F37)
if _0xE157 then
return _0xE157
end
end
_0x6FF5.FilterDescendantsInstances = { _0x4F37, _0xB132.Parent, workspace.CurrentCamera }
for _0x624F, _0xA0A0 in ipairs(_0xA3FA) do
local _0x3242 = (_0xB132.CFrame * CFrame.new(_0xA0A0)).Position
if not _0x80D8(_0x3242, _0xB132.Position) then
return CFrame.lookAt(_0x3242, _0xB132.Position)
end
end
local _0x1572 = _0xB132.CFrame * CFrame.new(0, 0, 3)
return CFrame.lookAt(_0x1572.Position, _0xB132.Position)
end
local function _0x459B()
for _0x624F, _0x09CD in ipairs(_0xD101:GetPlayers()) do
if _0x09CD ~= _0x8E3D and _0x2768(_0x09CD,string.char(75,110,105,102,101)) then
local _0xD95E = _0x09CD.Character
local _0xB48C = _0xD95E and _0xD95E:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xC3CF = _0xD95E and _0xD95E:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if _0xB48C and _0xC3CF and _0xC3CF.Health > 0 then
return _0x09CD, _0xB48C
end
end
end
end
local function _0xCAB8(_0x226E)
local _0xEEF1 = _0x226E:FindFirstChild(string.char(75,110,105,102,101,76,111,99,97,108))
local _0xDBC8 = _0xEEF1 and _0xEEF1:FindFirstChild(string.char(67,114,101,97,116,101,66,101,97,109))
local _0x8D38 = _0xDBC8 and _0xDBC8:FindFirstChild(string.char(82,101,109,111,116,101,70,117,110,99,116,105,111,110))
if _0x8D38 then
return _0x8D38,string.char(98,101,97,109)end
for _0x624F, _0xA65E in ipairs(_0x226E:GetDescendants()) do
if (_0xA65E:IsA(string.char(82,101,109,111,116,101,69,118,101,110,116)) or _0xA65E:IsA(string.char(82,101,109,111,116,101,70,117,110,99,116,105,111,110))) and _0xA65E.Name:lower():find(string.char(115,104,111,111,116)) then
return _0xA65E,string.char(115,104,111,111,116)end
end
end
local function _0x5497()
local _0xD95E = _0x8E3D.Character
local _0xC3CF = _0xD95E and _0xD95E:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if not _0xC3CF then
return
end
local _0x226E = _0xD95E:FindFirstChild(string.char(71,117,110))
if _0x226E then
return _0x226E
end
local _0xF5BE = _0x8E3D:FindFirstChildOfClass(string.char(66,97,99,107,112,97,99,107))
_0x226E = _0xF5BE and _0xF5BE:FindFirstChild(string.char(71,117,110))
if not _0x226E then
return
end
_0xC3CF:EquipTool(_0x226E)
for _0x624F = 1, 10 do
if _0x226E.Parent == _0xD95E then
break
end
_0xB197.Heartbeat:Wait()
end
return _0x226E
end
local function _0xCA59(manual)
if _0x6330 then
return
end
local _0xD95E = _0x8E3D.Character
local _0xB48C = _0xD95E and _0xD95E:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xC3CF = _0xD95E and _0xD95E:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if not _0xB48C or not _0xC3CF or _0xC3CF.Health <= 0 then
return
end
if not _0x2768(_0x8E3D,string.char(71,117,110)) then
if manual then
_0xA9C1(string.char(83,104,111,111,116,32,77,117,114,100,101,114,101,114),string.char(121,111,117,32,100,111,110,39,116,32,104,97,118,101,32,116,104,101,32,103,117,110))
end
return
end
local _0x624F, _0xB132 = _0x459B()
if not _0xB132 then
if manual then
_0xA9C1(string.char(83,104,111,111,116,32,77,117,114,100,101,114,101,114),string.char(109,117,114,100,101,114,101,114,32,110,111,116,32,102,111,117,110,100))
end
return
end
local _0x226E = _0x5497()
if not _0x226E then
return
end
if _0xEE9F.mode ==string.char(77,111,100,117,108,101)then
_0xF55D = os.clock() + 0.5
pcall(function()
_0x226E:Activate()
end)
return
end
local _0x540F, _0x7969 = _0xCAB8(_0x226E)
local _0xC220 = os.clock()
while not _0x540F and os.clock() - _0xC220 < 1 do
_0xB197.Heartbeat:Wait()
_0x540F, _0x7969 = _0xCAB8(_0x226E)
end
if not _0x540F then
_0xA9C1(string.char(83,104,111,111,116,32,77,117,114,100,101,114,101,114),string.char(103,117,110,32,114,101,109,111,116,101,32,110,111,116,32,102,111,117,110,100))
return
end
_0x6330 = true
_0x16E5(_0xB48C)
local _0xA14C = _0xB48C.CFrame
local _0x04CE = workspace.CurrentCamera
local _0xE311 = _0x04CE.CameraType
local _0xF73A = _0xEE9F.wallbang
local _0x2D03 = _0x2D61() / 1000
local _0x264B = _0xB132.Parent
local _0x1642 = _0xD101:GetPlayerFromCharacter(_0x264B)
local _0xBC40 = _0xA5C8(_0x1642)
local function _0x147A()
if _0xBC40 then
return _0xB132.Position
end
local _0xCC3C = _0xB132
if _0xEE9F.part ==string.char(72,101,97,100)then
_0xCC3C = _0x264B:FindFirstChild(string.char(72,101,97,100)) or _0xB132
else
_0xCC3C = _0x264B:FindFirstChild(string.char(85,112,112,101,114,84,111,114,115,111)) or _0x264B:FindFirstChild(string.char(84,111,114,115,111)) or _0xB132
end
local _0xEB0B = _0xB132.AssemblyLinearVelocity
local _0xAD8A = _0xEE9F.pred / 1000
return _0xCC3C.Position + Vector3.new(_0xEB0B.X, _0xEB0B.Y * 0.5, _0xEB0B.Z) * _0xAD8A
end
local _0x1820, _0xFF4A
local _0xA360
if _0xF73A then
local _0x33D7 = _0x249F(_0x226E:FindFirstChild(string.char(72,97,110,100,108,101)) and _0x226E.Handle.Position or _0xB48C.Position)
if not _0x80D8(_0x33D7, _0xB132.Position) then
_0xF73A = false
else
_0xA360 = _0xD54F(_0xB132, _0x33D7)
_0xF73A = false
end
end
if _0xF73A then
_0x04CE.CameraType = Enum.CameraType.Scriptable
_0x1820 = _0x750A(_0xB132, _0xD95E)
_0xB48C.CFrame = _0x1820
_0xB48C.AssemblyLinearVelocity = Vector3.zero
_0xFF4A = _0xB197.Stepped:Connect(function()
if _0x1820 and _0xB48C.Parent then
if _0xB132.Parent and not _0xEE9F.quiet then
_0x1820 = _0x750A(_0xB132, _0xD95E)
end
_0xB48C.CFrame = _0x1820
_0xB48C.AssemblyLinearVelocity = Vector3.zero
end
end)
end
local _0x8150 = os.clock() - (_0x3CC6.lastFakeAt or 0) < 0.6
if _0xF73A and not _0x8150 then
_0xB197.Heartbeat:Wait()
end
if _0x8150 then
local _0x3550 = (_0x3CC6.lastFakeAt or 0) + math.clamp(_0x2D03 / 2, 0.02, 0.2) + 0.05
while os.clock() < _0x3550 do
_0xB197.Heartbeat:Wait()
end
end
local _0x0DA0 = _0x147A()
local _0xDD2C = _0x226E:FindFirstChild(string.char(72,97,110,100,108,101))
local _0x8502 = _0xA360 or (_0xDD2C and _0xDD2C.Position or _0xB48C.Position)
local _0x3F4B = _0x264B and _0x264B:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if _0x3F4B then
task.spawn(function()
local _0x634C = os.clock()
while os.clock() - _0x634C < 1.2 do
if _0x3F4B.Health <= 0 or not _0x3F4B.Parent then
if _0xA360 then
_0xD960(true)
end
_0xA9C1(string.char(83,105,108,101,110,116,32,65,105,109,98,111,116),string.char(104,105,116))
return
end
_0xB197.Heartbeat:Wait()
end
if _0xA360 then
_0xD960(false)
end
_0xA9C1(string.char(83,105,108,101,110,116,32,65,105,109,98,111,116), _0xEE9F.auto andstring.char(109,105,115,115)orstring.char(109,105,115,115,32,45,32,116,114,121,32,99,104,97,110,103,105,110,103,32,80,114,101,100,105,99,116,105,111,110))
end)
end
local _0x9D07 = _0xE303(_0xB132)
task.delay(0.4, _0x9D07)
task.spawn(function()
local _0xD828, _0x7B91 = pcall(function()
if _0x7969 ==string.char(98,101,97,109)then
return _0x540F:InvokeServer(1, _0x0DA0,string.char(65,72,50))
elseif _0x540F:IsA(string.char(82,101,109,111,116,101,70,117,110,99,116,105,111,110)) then
return _0x540F:InvokeServer(_0x5455(_0x8502, _0x0DA0, _0xA360 ~= nil))
else
_0x540F:FireServer(_0x5455(_0x8502, _0x0DA0, _0xA360 ~= nil))
returnstring.char(40,101,118,101,110,116,44,32,110,111,32,114,101,112,108,121,41)end
end)
if not _0xD828 then
warn(string.char(91,99,108,117,109,115,121,115,99,114,105,112,116,93,32,115,104,111,116,32,102,97,105,108,101,100,58,32).. tostring(_0x7B91))
end
end)
if _0xF73A then
local _0x634C = os.clock()
local _0x5C49 = math.clamp(_0x2D03 / 2 + 0.03333333333333333, 0.05, 0.18)
repeat
_0xB197.Heartbeat:Wait()
until os.clock() - _0x634C >= _0x5C49
_0xFF4A:Disconnect()
if _0xB48C.Parent and _0xC3CF.Health > 0 then
_0xB48C.CFrame = _0xA14C
_0xB48C.AssemblyLinearVelocity = Vector3.zero
end
_0x04CE.CameraType = _0xE311
_0x04CE.CameraSubject = _0xC3CF
end
_0x6330 = false
_0xDD7C()
end
_0x68C7 = function(_0xCC3C)
if not _0xCC3C or not _0x2768(_0xCC3C,string.char(75,110,105,102,101)) then
_0xA9C1(string.char(75,105,108,108),string.char(116,104,101,32,115,104,101,114,105,102,102,32,99,97,110,32,111,110,108,121,32,115,104,111,111,116,32,116,104,101,32,109,117,114,100,101,114,101,114))
return
end
_0xCA59(true)
end
local _0xF2EB = {}
local function _0xC384(_0x226E)
for _0x624F, _0xA65E in ipairs(_0x226E:GetDescendants()) do
if _0xA65E:IsA(string.char(76,111,99,97,108,83,99,114,105,112,116)) and not _0xA65E.Disabled then
_0xF2EB[_0xA65E] = true
_0xA65E.Disabled = true
end
end
end
local function _0x30A5()
for ls in pairs(_0xF2EB) do
if ls.Parent then
ls.Disabled = false
end
end
table.clear(_0xF2EB)
end
table.insert(_0x523A, {
Disconnect = function()
_0x30A5()
for _0x624F, _0xC4E3 in ipairs({ _0x8E3D.Character, _0x8E3D:FindFirstChildOfClass(string.char(66,97,99,107,112,97,99,107)) }) do
local _0xBCE8 = _0xC4E3 and _0xC4E3:FindFirstChild(string.char(71,117,110))
if _0xBCE8 then
pcall(function()
_0xBCE8.ManualActivationOnly = false
end)
end
end
end,
})
local _0x5670, _0x62AD
_0xB9EB(_0xB197.Heartbeat, function()
local _0xD95E = _0x8E3D.Character
local _0x226E = _0xD95E and _0xD95E:FindFirstChild(string.char(71,117,110))
if _0xEE9F.on and _0x226E and _0xEE9F.mode ==string.char(82,101,109,111,116,101)then
_0xC384(_0x226E)
end
if _0x226E then
local _0x71F4 = _0xEE9F.on and _0xEE9F.mode ==string.char(78,97,116,105,118,101)if _0x226E.ManualActivationOnly ~= _0x71F4 then
_0x226E.ManualActivationOnly = _0x71F4
end
end
if _0x226E == _0x62AD then
return
end
if _0x5670 then
_0x5670:Disconnect()
_0x5670 = nil
end
_0x62AD = _0x226E
if _0x226E then
_0x5670 = _0x226E.Activated:Connect(function()
if _0xEE9F.on and _0x0155.Parent and _0xEE9F.mode ==string.char(77,111,100,117,108,101)and _0x459B() then
local _0x634C = os.clock()
task.delay(0.3, function()
if _0xEE9F.mode ==string.char(77,111,100,117,108,101)and _0xEDC5 < _0x634C then
_0xEE9F.mode =string.char(82,101,109,111,116,101)_0xA9C1(string.char(83,105,108,101,110,116,32,65,105,109,98,111,116),string.char(115,119,105,116,99,104,101,100,32,116,111,32,98,97,99,107,117,112,32,109,111,100,101,32,45,32,115,104,111,111,116,32,97,103,97,105,110))
end
end)
end
if _0xEE9F.on and _0x0155.Parent and _0xEE9F.mode ==string.char(82,101,109,111,116,101)then
if _0x459B() then
task.spawn(_0xCA59, false)
else
task.spawn(function()
local _0x540F, _0x7969 = _0xCAB8(_0x226E)
if not _0x540F then
return
end
local _0x0DA0 = _0x8E3D:GetMouse().Hit.Position
local _0xDD2C = _0x226E:FindFirstChild(string.char(72,97,110,100,108,101))
local _0x8502 = _0xDD2C and _0xDD2C.Position or _0x0DA0
pcall(function()
if _0x7969 ==string.char(98,101,97,109)then
_0x540F:InvokeServer(1, _0x0DA0,string.char(65,72,50))
elseif _0x540F:IsA(string.char(82,101,109,111,116,101,70,117,110,99,116,105,111,110)) then
_0x540F:InvokeServer(_0x5455(_0x8502, _0x0DA0))
else
_0x540F:FireServer(_0x5455(_0x8502, _0x0DA0))
end
end)
end)
end
end
end)
table.insert(_0x523A, _0x5670)
end
end)
local _0x3D7C = false
local function _0x38C6()
if _0x3D7C then
return
end
local _0xD95E = _0x8E3D.Character
local _0x226E = _0xD95E and _0xD95E:FindFirstChild(string.char(71,117,110))
local _0xB48C = _0xD95E and _0xD95E:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0x226E or not _0xB48C then
return
end
local _0x624F, _0xB132 = _0x459B()
if not _0xB132 then
pcall(function()
_0x226E:Activate()
end)
return
end
local _0xDD2C = _0x226E:FindFirstChild(string.char(72,97,110,100,108,101))
local _0x33D7 = _0x249F(_0xDD2C and _0xDD2C.Position or _0xB48C.Position)
if _0x80D8(_0x33D7, _0xB132.Position) and _0xEE9F.wallbang then
task.spawn(_0xCA59, false)
return
end
_0x3D7C = true
local _0x264B = _0xB132.Parent
local _0xCC3C = _0x264B:FindFirstChild(string.char(85,112,112,101,114,84,111,114,115,111)) or _0x264B:FindFirstChild(string.char(84,111,114,115,111)) or _0xB132
local _0xEB0B = _0xB132.AssemblyLinearVelocity
local _0xAD8A = _0xEE9F.pred / 1000
local _0x0DA0 = _0xCC3C.Position + Vector3.new(_0xEB0B.X, _0xEB0B.Y * 0.5, _0xEB0B.Z) * _0xAD8A
local _0x04CE = workspace.CurrentCamera
local _0xD8A6 = _0x24DA.MouseBehavior == Enum.MouseBehavior.LockCenter
if _0xD8A6 or not mousemoveabs then
_0x04CE.CFrame = CFrame.lookAt(_0x04CE.CFrame.Position, _0x0DA0)
_0xB197.RenderStepped:Wait()
_0x04CE.CFrame = CFrame.lookAt(_0x04CE.CFrame.Position, _0x0DA0)
pcall(function()
_0x226E:Activate()
end)
else
local _0x09CD = _0x04CE:WorldToViewportPoint(_0x0DA0)
local _0xF7C5 = _0x24DA:GetMouseLocation()
mousemoveabs(_0x09CD.X, _0x09CD.Y)
_0xB197.RenderStepped:Wait()
_0xB197.RenderStepped:Wait()
pcall(function()
_0x226E:Activate()
end)
_0xB197.RenderStepped:Wait()
mousemoveabs(_0xF7C5.X, _0xF7C5.Y)
end
local _0x3F4B = _0x264B:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if _0x3F4B then
task.spawn(function()
local _0x634C = os.clock()
while os.clock() - _0x634C < 1.2 do
if _0x3F4B.Health <= 0 or not _0x3F4B.Parent then
_0xA9C1(string.char(83,105,108,101,110,116,32,65,105,109,98,111,116),string.char(104,105,116))
return
end
_0xB197.Heartbeat:Wait()
end
_0xA9C1(string.char(83,105,108,101,110,116,32,65,105,109,98,111,116),string.char(109,105,115,115))
end)
end
task.delay(0.15, function()
_0x3D7C = false
end)
end
_0xB9EB(_0x24DA.InputBegan, function(input, gameProcessed)
if gameProcessed or not _0xEE9F.on or _0xEE9F.mode ~=string.char(78,97,116,105,118,101)then
return
end
if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch then
return
end
local _0xD95E = _0x8E3D.Character
if _0xD95E and _0xD95E:FindFirstChild(string.char(71,117,110)) then
task.spawn(_0x38C6)
end
end)
;(function()
local _0xD828, _0xC2C8 = pcall(function()
return require(game:GetService(string.char(82,101,112,108,105,99,97,116,101,100,83,116,111,114,97,103,101)):WaitForChild(string.char(67,108,105,101,110,116,83,101,114,118,105,99,101,115), 5):WaitForChild(string.char(87,101,97,112,111,110,83,101,114,118,105,99,101), 5))
end)
if not _0xD828 or type(_0xC2C8) ~=string.char(116,97,98,108,101)then
return
end
local _0x626D, _0x62FD = _0xC2C8.GetMouseTargetCFrame, _0xC2C8.GetTargetPosition
if type(_0x626D) ~=string.char(102,117,110,99,116,105,111,110)then
return
end
local _0x79CB = {string.char(85,112,112,101,114,84,111,114,115,111),string.char(84,111,114,115,111),string.char(76,111,119,101,114,84,111,114,115,111),string.char(72,101,97,100),string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116),string.char(82,105,103,104,116,85,112,112,101,114,65,114,109),string.char(76,101,102,116,85,112,112,101,114,65,114,109),string.char(82,105,103,104,116,32,65,114,109),string.char(76,101,102,116,32,65,114,109),string.char(82,105,103,104,116,85,112,112,101,114,76,101,103),string.char(76,101,102,116,85,112,112,101,114,76,101,103),string.char(82,105,103,104,116,32,76,101,103),string.char(76,101,102,116,32,76,101,103)}
local _0xDAB1 = {string.char(72,101,97,100),string.char(85,112,112,101,114,84,111,114,115,111),string.char(84,111,114,115,111),string.char(76,111,119,101,114,84,111,114,115,111),string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116),string.char(82,105,103,104,116,85,112,112,101,114,65,114,109),string.char(76,101,102,116,85,112,112,101,114,65,114,109),string.char(82,105,103,104,116,32,65,114,109),string.char(76,101,102,116,32,65,114,109),string.char(82,105,103,104,116,85,112,112,101,114,76,101,103),string.char(76,101,102,116,85,112,112,101,114,76,101,103),string.char(82,105,103,104,116,32,76,101,103),string.char(76,101,102,116,32,76,101,103)}
local _0x397A = RaycastParams.new()
_0x397A.FilterType = Enum.RaycastFilterType.Exclude
local _0x93CB = game:GetService(string.char(67,111,108,108,101,99,116,105,111,110,83,101,114,118,105,99,101))
local _0xFEB4, _0xC72F = {}, 0
local function _0x8566(...)
if os.clock() - _0xC72F > 1 then
_0xC72F = os.clock()
_0xFEB4 = _0x93CB:GetTagged(string.char(87,101,97,112,111,110,80,97,115,115,116,104,114,111,117,103,104))
end
local _0xDFBA = { ... }
for _0x624F, _0x4244 in ipairs(_0xFEB4) do
table.insert(_0xDFBA, _0x4244)
end
return _0xDFBA
end
local _0xE7E9 = {}
_0xB9EB(_0xB197.Heartbeat, function()
if not _0xEE9F.on then
table.clear(_0xE7E9)
return
end
local _0x624F, _0xCB90 = _0x459B()
local _0x8C28 = os.clock()
for _0xF171 in pairs(_0xE7E9) do
if _0xF171 ~= _0xCB90 then
_0xE7E9[_0xF171] = nil
end
end
if not _0xCB90 then
return
end
local _0xDFBA = _0xE7E9[_0xCB90] or {}
_0xE7E9[_0xCB90] = _0xDFBA
table.insert(_0xDFBA, { _0x8C28, _0xCB90.Position })
while #_0xDFBA > 2 and _0x8C28 - _0xDFBA[1][1] > 0.5 do
table.remove(_0xDFBA, 1)
end
end)
local function _0x4719(_0xB132)
local _0xDFBA = _0xE7E9[_0xB132]
if not _0xDFBA or #_0xDFBA < 2 then
return _0xB132.AssemblyLinearVelocity
end
local _0xDA08, _0xBF1F = _0xDFBA[1], _0xDFBA[#_0xDFBA]
local _0x5D8D = _0xBF1F[1] - _0xDA08[1]
if _0x5D8D < 0.15 then
return _0xB132.AssemblyLinearVelocity
end
return (_0xBF1F[2] - _0xDA08[2]) / _0x5D8D
end
local function _0x0FE5(_0xB132, _0xA2C8)
local _0x264B = _0xB132.Parent
if _0xA5C8(_0xD101:GetPlayerFromCharacter(_0x264B)) then
return _0xB132.Position
end
local _0xEB0B = _0x4719(_0xB132)
local _0xAD8A = _0xEE9F.auto and math.clamp(_0x2D61() / 2000 + 0.1, 0, 0.45) or _0xEE9F.pred / 1000
local _0x3F4B = _0x264B:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0xB14C = _0x3F4B and _0x3F4B.FloorMaterial == Enum.Material.Air
local _0x1466 = 0
if _0xB14C then
local _0xC8D2 = _0xB132.AssemblyLinearVelocity.Y
_0x1466 = _0xC8D2 * _0xAD8A - 0.5 * workspace.Gravity * _0xAD8A * _0xAD8A
if _0x1466 < 0 then
_0x397A.FilterDescendantsInstances = _0x8566(_0x264B, _0x8E3D.Character, workspace.CurrentCamera)
local _0x088F = workspace:Raycast(_0xB132.Position, Vector3.new(0, -60, 0), _0x397A)
if _0x088F then
_0x1466 = math.max(_0x1466, -(_0xB132.Position.Y - _0x088F.Position.Y - 3))
end
end
end
local _0x1F3D = Vector3.new(_0xEB0B.X * _0xAD8A, _0x1466, _0xEB0B.Z * _0xAD8A)
local _0x7FF1
_0x397A.FilterDescendantsInstances = _0x8566(_0x8E3D.Character, workspace.CurrentCamera)
for _0x624F, _0xE9D1 in ipairs(_0xEE9F.part ==string.char(72,101,97,100)and _0xDAB1 or _0x79CB) do
local _0x6F67 = _0x264B:FindFirstChild(_0xE9D1)
if _0x6F67 and _0x6F67:IsA(string.char(66,97,115,101,80,97,114,116)) then
local _0xCC3C = _0x6F67.Position + _0x1F3D
_0x7FF1 = _0x7FF1 or _0xCC3C
if not _0xA2C8 then
return _0xCC3C
end
local _0x0447 = _0xCC3C - _0xA2C8
local _0x9E39 = workspace:Raycast(_0xA2C8, _0x0447.Unit * (_0x0447.Magnitude + 2), _0x397A)
if not _0x9E39 or _0x9E39.Instance:IsDescendantOf(_0x264B) then
return _0xCC3C
end
end
end
return _0x7FF1 or _0xB132.Position + _0x1F3D
end
local function _0xB697(_0x264B, _0xDB04)
local _0x3F4B = _0x264B and _0x264B:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if not _0x3F4B then
return
end
task.spawn(function()
local _0x634C = os.clock()
while os.clock() - _0x634C < 1.2 do
if _0x3F4B.Health <= 0 or not _0x3F4B.Parent then
if _0xDB04 then
_0xD960(true)
end
_0xA9C1(string.char(83,105,108,101,110,116,32,65,105,109,98,111,116),string.char(104,105,116))
return
end
_0xB197.Heartbeat:Wait()
end
if _0xDB04 then
_0xD960(false)
end
_0xA9C1(string.char(83,105,108,101,110,116,32,65,105,109,98,111,116), _0xEE9F.auto andstring.char(109,105,115,115)orstring.char(109,105,115,115,32,45,32,116,114,121,32,99,104,97,110,103,105,110,103,32,80,114,101,100,105,99,116,105,111,110))
end)
end
local function _0x4072(_0x8502, _0x264B, _0xCC3C)
_0x397A.FilterDescendantsInstances = _0x8566(_0x8E3D.Character, workspace.CurrentCamera)
local _0xA65E = _0xCC3C - _0x8502
local _0x9E39 = workspace:Raycast(_0x8502, _0xA65E.Unit * (_0xA65E.Magnitude + 2), _0x397A)
return not _0x9E39 or _0x9E39.Instance:IsDescendantOf(_0x264B)
end
local function _0x5EF4(_0x264B, _0x8502)
for _0x624F, _0xE9D1 in ipairs(_0x79CB) do
local _0x6F67 = _0x264B:FindFirstChild(_0xE9D1)
if _0x6F67 and _0x6F67:IsA(string.char(66,97,115,101,80,97,114,116)) and _0x4072(_0x8502, _0x264B, _0x6F67.Position) then
return true
end
end
return false
end
local function _0x4E76(_0x8502, to)
_0x397A.FilterDescendantsInstances = _0x8566(_0x8E3D.Character, workspace.CurrentCamera)
local _0xA65E = to - _0x8502
if _0xA65E.Magnitude < 0.05 then
return false
end
return workspace:Raycast(_0x8502, _0xA65E, _0x397A) ~= nil
end
local function _0xEED5(_0xB132, _0x33D7)
local _0x264B = _0xB132.Parent
local _0xF8B0 = _0x33D7 - _0xB132.Position
local _0x12EF = math.atan2(_0xF8B0.Z, _0xF8B0.X)
for _0x624F, _0x02F3 in ipairs({ 3, 5, 7 }) do
for _0x2DD2 = 0, 11 do
local _0x2BD6 = _0x12EF + (_0x2DD2 % 2 == 0 and 1 or -1) * math.ceil(_0x2DD2 / 2) * (math.pi / 6)
for _0x624F, _0xF171 in ipairs({ 1.5, 3.5 }) do
local _0x09CD = _0xB132.Position + Vector3.new(math.cos(_0x2BD6) * _0x02F3, _0xF171, math.sin(_0x2BD6) * _0x02F3)
if _0x4072(_0x09CD, _0x264B, _0xB132.Position) and _0x5EF4(_0x264B, _0x09CD) then
return _0x09CD
end
end
end
end
end
local function _0x8909(_0x7B91)
_0xEDC5 = os.clock()
if not ((_0xEE9F.on or os.clock() < _0xF55D) and _0x0155.Parent) then
return _0x7B91
end
if _0x6330 then
local _0x624F, _0xCB90 = _0x459B()
local _0x6B15 = _0x8448()
if not _0xCB90 or not _0x6B15 or typeof(_0x7B91) ~=string.char(67,70,114,97,109,101)then
return _0x7B91
end
local _0x47F5 = _0x0FE5(_0xCB90, _0x6B15.WorldPosition)
local _0x3F8D = _0x47F5 - _0x6B15.WorldPosition
if _0x3F8D.Magnitude < 0.01 then
return _0x7B91
end
return CFrame.lookAt(_0x47F5, _0x47F5 + _0x3F8D.Unit)
end
local _0x4A65 = _0x3CC6.lastFakeAt or 0
if os.clock() - _0x4A65 < 0.6 then
local _0x3550 = _0x4A65 + math.clamp(_0x2D61() / 2000, 0.02, 0.25) + 0.05
while os.clock() < _0x3550 do
_0xB197.Heartbeat:Wait()
end
end
local _0x624F, _0xB132 = _0x459B()
local _0xD95E = _0x8E3D.Character
local _0xB48C = _0xD95E and _0xD95E:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xC3CF = _0xD95E and _0xD95E:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if not _0xB132 or not _0xB48C or not _0xC3CF then
return _0x7B91
end
local _0xDA08 = _0x8448()
local _0x33D7 = _0xDA08 and _0xDA08.WorldPosition or _0xB48C.Position
local _0xDB04 = false
local _0xE13F = _0xD95E:FindFirstChild(string.char(72,101,97,100))
local _0x29E4 = _0x4E76(_0xE13F and _0xE13F.Position or _0xB48C.Position, _0x33D7) or _0x4E76(_0xB48C.Position, _0x33D7)
local _0x54F5 = _0x5EF4(_0xB132.Parent, _0x33D7)
if not _0x54F5 and not _0x29E4 and (_0xB132.Position - _0x33D7).Magnitude < 6 then
_0x54F5 = true
end
local _0x1E2A = false
if _0xDA08 then
local _0x264B = _0xB132.Parent
local _0xCB90 = _0x264B:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0xE57A = _0xCB90 and _0xCB90.FloorMaterial ~= Enum.Material.Air
local _0xFA27 = _0x4719(_0xB132)
local _0xE614 = Vector3.new(_0xFA27.X, 0, _0xFA27.Z)
if _0xE57A and _0xE614.Magnitude > 4 and (_0xEE9F.wallbang or not _0x29E4 and _0x54F5) then
local _0x5D93 = _0x0FE5(_0xB132, nil)
local _0xC126 = (_0x264B:FindFirstChild(string.char(85,112,112,101,114,84,111,114,115,111)) or _0x264B:FindFirstChild(string.char(84,111,114,115,111)) or _0xB132).Position
local _0x7169 = _0x5D93 - _0xC126
local _0x0447 = _0x7169.Magnitude > 0.5 and _0x7169.Unit or _0xE614.Unit
local _0x012C = _0xC126 - _0x0447 * 5
if (_0x012C - _0xB132.Position).Magnitude >= 4 and _0x4072(_0x012C, _0x264B, _0xC126) and _0x4072(_0x012C, _0x264B, _0x5D93) then
_0x1E2A = true
_0xDB04 = _0x29E4 or not _0x54F5
local _0x1939 = _0xDA08.CFrame
_0xDA08.WorldPosition = _0x012C
task.defer(function()
if _0xDA08.Parent then
_0xDA08.CFrame = _0x1939
end
end)
_0x33D7 = _0x012C
end
end
end
if not _0x1E2A and _0xEE9F.wallbang and (_0x29E4 or not _0x54F5) and _0xDA08 then
local _0x09CD = _0xEED5(_0xB132, _0x33D7)
if _0x09CD then
_0xDB04 = true
local _0x1939 = _0xDA08.CFrame
_0xDA08.WorldPosition = _0x09CD
task.defer(function()
if _0xDA08.Parent then
_0xDA08.CFrame = _0x1939
end
end)
_0x33D7 = _0x09CD
end
end
local _0x0DA0 = _0x0FE5(_0xB132, _0x33D7)
_0xB697(_0xB132.Parent, _0xDB04)
if typeof(_0x7B91) ==string.char(86,101,99,116,111,114,51)then
return _0x0DA0
end
local _0xA2C8 = _0xDA08 and _0xDA08.WorldPosition or _0x33D7
local _0x0447 = _0x0DA0 - _0xA2C8
if _0x0447.Magnitude < 0.01 then
_0x0447 = Vector3.new(0, 0, -1)
end
return CFrame.lookAt(_0x0DA0, _0x0DA0 + _0x0447.Unit)
end
local function _0x2294(_0x7B91)
local _0xF0AD, _0x00EA = pcall(_0x8909, _0x7B91)
if _0xF0AD then
return _0x00EA
end
warn(string.char(91,99,108,117,109,115,121,115,99,114,105,112,116,93,32,97,105,109,32,114,101,100,105,114,101,99,116,32,102,97,105,108,101,100,58,32).. tostring(_0x00EA))
return _0x7B91
end
_0xC2C8.GetMouseTargetCFrame = function(...)
return _0x2294(_0x626D(...))
end
if type(_0x62FD) ==string.char(102,117,110,99,116,105,111,110)then
_0xC2C8.GetTargetPosition = function(...)
return _0x2294(_0x62FD(...))
end
end
_0xEE9F.mode =string.char(77,111,100,117,108,101)table.insert(_0x523A, {
Disconnect = function()
_0xC2C8.GetMouseTargetCFrame = _0x626D
if _0x62FD then
_0xC2C8.GetTargetPosition = _0x62FD
end
end,
})
end)()
local _0x61C4 = _0x45F1(_0x786E,string.char(83,104,101,114,105,102,102))
_0x61C4:Toggle(string.char(83,105,108,101,110,116,32,65,105,109),string.char(115,104,111,111,116,32,97,110,121,119,104,101,114,101,32,45,32,116,104,101,32,98,117,108,108,101,116,32,104,105,116,115,32,116,104,101,32,109,117,114,100,101,114,101,114), function(_0xE496)
_0xEE9F.on = _0xE496
if not _0xE496 then
_0x30A5()
local _0xBCE8 = _0x8E3D.Character and _0x8E3D.Character:FindFirstChild(string.char(71,117,110))
if _0xBCE8 then
_0xBCE8.ManualActivationOnly = false
end
end
_0xA9C1(string.char(83,105,108,101,110,116,32,65,105,109,58,32).. (_0xE496 andstring.char(79,110)orstring.char(79,102,102)), _0xE496 andstring.char(101,118,101,114,121,32,115,104,111,116,32,103,111,101,115,32,116,111,32,116,104,101,32,109,117,114,100,101,114,101,114)orstring.char(100,105,115,97,98,108,101,100))
end)
local _0x9392 = _0x61C4:Toggle(string.char(87,97,108,108,66,97,110,103),string.char(115,104,111,116,115,32,103,111,32,115,116,114,97,105,103,104,116,32,116,104,114,111,117,103,104,32,119,97,108,108,115), function(_0xE496)
_0xEE9F.wallbang = _0xE496
_0x1F68 = 0
end)
_0x9392.Set(true, true)
local _0x291A
local function _0x4D25()
local _0xEB0B = math.clamp(math.floor((_0x2D61() / 2 + 100) / 10 + 0.5) * 10, 0, 700)
_0xEE9F.pred = _0xEB0B
if _0x291A then
_0x291A.Set(_0xEB0B, true)
end
end
local _0x68CB = _0x61C4:Toggle(string.char(65,117,116,111,32,112,114,101,100,105,99,116,105,111,110),string.char(115,101,116,115,32,80,114,101,100,105,99,116,105,111,110,32,102,114,111,109,32,121,111,117,114,32,112,105,110,103,32,101,118,101,114,121,32,115,101,99,111,110,100), function(_0xE496)
_0xEE9F.auto = _0xE496
if _0xE496 then
_0x4D25()
end
end)
_0x68CB.Set(true, true)
_0x291A = _0x61C4:Slider(string.char(80,114,101,100,105,99,116,105,111,110), 0, 700, _0xEE9F.pred, function(_0xEB0B)
_0xEE9F.pred = _0xEB0B
end, function(_0xEB0B)
return _0xEB0B ..string.char(109,115)end)
local _0xE2EF = 0
_0xB9EB(_0xB197.Heartbeat, function()
if not _0xEE9F.auto or os.clock() - _0xE2EF < 1 then
return
end
_0xE2EF = os.clock()
_0x4D25()
end)
local _0x3A6D = false
local _0x6902 = 0
_0xB9EB(_0xB197.Heartbeat, function()
if not _0x3A6D or _0x6330 or os.clock() - _0x6902 < 2 then
return
end
local _0xD95E = _0x8E3D.Character
local _0xB48C = _0xD95E and _0xD95E:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xC3CF = _0xD95E and _0xD95E:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if not _0xB48C or not _0xC3CF or _0xC3CF.Health <= 0 or _0x01BA(_0xB48C.Position) then
return
end
if not _0x2768(_0x8E3D,string.char(71,117,110)) or not _0x459B() then
return
end
_0x6902 = os.clock()
task.spawn(_0xCA59, false)
end)
_0x61C4:Toggle(string.char(65,117,116,111,32,83,104,111,111,116,32,77,117,114,100,101,114,101,114),string.char(121,111,117,32,104,97,118,101,32,116,104,101,32,103,117,110,32,45,32,116,104,101,32,109,117,114,100,101,114,101,114,32,103,101,116,115,32,115,104,111,116), function(_0xE496)
_0x3A6D = _0xE496
_0x6902 = 0
_0xA9C1(string.char(65,117,116,111,32,83,104,111,111,116,58,32).. (_0xE496 andstring.char(79,110)orstring.char(79,102,102)), _0xE496 andstring.char(119,97,105,116,105,110,103,32,102,111,114,32,116,104,101,32,103,117,110)orstring.char(100,105,115,97,98,108,101,100))
end)
_0x61C4:Button(string.char(83,104,111,111,116,32,77,117,114,100,101,114,101,114),string.char(116,97,107,101,32,111,117,116,32,116,104,101,32,103,117,110,32,97,110,100,32,102,105,114,101), function()
_0xCA59(true)
end)
end
do
local _0xE496 = false
local _0xA678 = {}
local _0x0668 = 0
local _0x784D = false
local _0xF421 =string.char(86,50)local _0xA14C, _0xE311
local function _0xB52A(_0xB48C, _0xC3CF)
if _0xB48C and _0xB48C.Parent and _0xA14C then
_0xB48C.CFrame = _0xA14C
_0xB48C.AssemblyLinearVelocity = Vector3.zero
end
if _0xA14C then
_0xDD7C()
end
_0xA14C = nil
local _0x04CE = workspace.CurrentCamera
_0x04CE.CameraType = _0xE311 or Enum.CameraType.Custom
if _0xC3CF then
_0x04CE.CameraSubject = _0xC3CF
end
end
_0xB9EB(_0xB197.Heartbeat, function()
if not _0xE496 then
if _0x3CC6.force then
_0x3CC6.force = false
end
_0x3CC6.v2 = false
if _0xA14C then
local _0x242F = _0x8E3D.Character
_0xB52A(_0x242F and _0x242F:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)), _0x242F and _0x242F:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100)))
end
return
end
local _0xD95E = _0x8E3D.Character
local _0xB48C = _0xD95E and _0xD95E:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xC3CF = _0xD95E and _0xD95E:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0x8C28 = os.clock()
if not _0xB48C or not _0xC3CF or _0xC3CF.Health <= 0 or _0x2768(_0x8E3D,string.char(75,110,105,102,101)) or _0x01BA(_0xB48C.Position) or _0xD95E:FindFirstChild(string.char(71,117,110)) then
_0x3CC6.force = false
_0x3CC6.v2 = false
_0x784D = false
if _0xA14C then
_0xB52A(_0xB48C, _0xC3CF)
end
return
end
for _0x624F, _0x09CD in ipairs(_0xD101:GetPlayers()) do
if _0x09CD ~= _0x8E3D then
local _0x242F = _0x09CD.Character
local _0xCB90 = _0x242F and _0x242F:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if _0xCB90 and _0x2768(_0x09CD,string.char(75,110,105,102,101)) then
local _0x3242 = _0xCB90.Position
if _0x242F:FindFirstChild(string.char(75,110,105,102,101)) and (_0x3242 - _0xB48C.Position).Magnitude < 20 then
_0x0668 = math.max(_0x0668, _0x8C28 + 0.8)
end
local _0xD3D5 = _0xA678[_0x09CD]
if _0xD3D5 and (_0x3242 - _0xD3D5).Magnitude > 25 and not _0x01BA(_0xD3D5) and not _0x01BA(_0x3242) then
_0x0668 = _0x8C28 + 2
end
_0xA678[_0x09CD] = _0x3242
else
_0xA678[_0x09CD] = nil
end
end
end
local _0xBF67 = _0x8C28 < _0x0668
if _0xF421 ==string.char(86,49)and _0xBF67 and not _0x784D then
_0x784D = true
_0xA9C1(string.char(65,110,116,105,32,75,105,108,108,32,65,108,108),string.char(109,117,114,100,101,114,101,114,32,105,115,32,99,111,109,105,110,103,32,45,32,121,111,117,39,114,101,32,117,110,116,111,117,99,104,97,98,108,101))
elseif not _0xBF67 then
_0x784D = false
end
if _0xF421 ==string.char(86,50)then
local _0x3242
for _0x624F, _0x09CD in ipairs(_0xD101:GetPlayers()) do
if _0x09CD ~= _0x8E3D and _0x2768(_0x09CD,string.char(75,110,105,102,101)) and _0x09CD.Character and _0x09CD.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)) then
_0x3242 = _0x09CD.Character.HumanoidRootPart.Position
end
end
_0x3CC6.murdererPos = _0x3242
_0x3CC6.force = true
_0x3CC6.v2 = true
return
end
_0x3CC6.v2 = false
_0x3CC6.force = false
if _0xBF67 then
if not _0xA14C then
_0x16E5(_0xB48C)
_0xA14C = _0xB48C.CFrame
local _0x04CE = workspace.CurrentCamera
_0xE311 = _0x04CE.CameraType
_0x04CE.CameraType = Enum.CameraType.Scriptable
end
_0xB48C.CFrame = CFrame.new(_0xA14C.Position + Vector3.new(math.random(-30, 30), math.random(60, 90), math.random(-30, 30)))
_0xB48C.AssemblyLinearVelocity = Vector3.zero
elseif _0xA14C then
_0xB52A(_0xB48C, _0xC3CF)
end
end)
local _0x61C4 = _0x45F1(_0x786E,string.char(68,101,102,101,110,115,101))
_0x61C4:Toggle(string.char(65,110,116,105,32,75,105,108,108,32,65,108,108),string.char(67,108,117,109,115,121,83,99,114,105,112,116,32,112,114,111,116,101,99,116,105,111,110), function(_0xEB0B)
_0xE496 = _0xEB0B
if not _0xEB0B then
_0x3CC6.force = false
end
_0xA9C1(string.char(65,110,116,105,32,75,105,108,108,32,65,108,108,58,32).. (_0xEB0B andstring.char(79,110)orstring.char(79,102,102)), _0xEB0B andstring.char(119,97,116,99,104,105,110,103,32,116,104,101,32,109,117,114,100,101,114,101,114)orstring.char(100,105,115,97,98,108,101,100))
end)
_0x61C4:Segmented(string.char(77,111,100,101), {string.char(86,49),string.char(86,50)}, _0xF421, function(_0xEB0B)
_0xF421 = _0xEB0B
_0x3CC6.force = false
if _0xEB0B ~=string.char(86,49)and _0xA14C then
local _0x242F = _0x8E3D.Character
_0xB52A(_0x242F and _0x242F:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)), _0x242F and _0x242F:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100)))
end
end)
end
do
local _0xE724 = { _0xE496 = false, _0xF421 =string.char(82,97,110,100,111,109), _0x0767 = 80, interval = 30, tracer = true }
local _0x8333
local _0x19B6 = 0
local _0x397A = RaycastParams.new()
_0x397A.FilterType = Enum.RaycastFilterType.Exclude
local function _0xDE10(_0x748C, _0xD95E)
_0x397A.FilterDescendantsInstances = { _0xD95E, workspace.CurrentCamera }
for _0x624F = 1, 8 do
local _0xDA08 = math.random() * math.pi * 2
local _0xA65E = _0xE724.radius * (0.4 + 0.6 * math.random())
local _0x09CD = _0x748C + Vector3.new(math.cos(_0xDA08) * _0xA65E, 0, math.sin(_0xDA08) * _0xA65E)
local _0x9E39 = workspace:Raycast(_0x09CD + Vector3.new(0, 40, 0), Vector3.new(0, -120, 0), _0x397A)
if _0x9E39 then
return _0x9E39.Position + Vector3.new(0, 3, 0)
end
end
return _0x748C + Vector3.new(0, 0, _0xE724.radius)
end
_0xB9EB(_0xB197.Heartbeat, function()
if not (_0xE724.on or _0x3CC6.force) or _0x3CC6.pause > 0 then
return
end
local _0xD95E = _0x8E3D.Character
local _0xB48C = _0xD95E and _0xD95E:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xC3CF = _0xD95E and _0xD95E:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if not _0xB48C or not _0xC3CF or _0xC3CF.Health <= 0 then
return
end
_0x3CC6.gunHold = _0xD95E:FindFirstChild(string.char(71,117,110)) ~= nil
if _0x3CC6.gunHold then
_0x3CC6.fakeCF = nil
return
end
local _0x8C28 = os.clock()
local _0x3242 = _0xB48C.Position
if _0x3CC6.force and _0x3CC6.v2 then
local _0x57B3, _0xC8B5
for _0x624F = 1, 6 do
local _0x0447 = Vector3.new(math.random() * 2 - 1, (math.random() * 2 - 1) * 0.4, math.random() * 2 - 1)
if _0x0447.Magnitude < 0.05 then
_0x0447 = Vector3.xAxis
end
local _0xD677 = _0x3242 + _0x0447.Unit * (40 + math.random() * 60)
local _0xA65E = _0x3CC6.murdererPos and (_0xD677 - _0x3CC6.murdererPos).Magnitude or 999
if _0xA65E >= 40 and (not _0xC8B5 or _0xA65E > _0xC8B5) then
_0x57B3, _0xC8B5 = _0xD677, _0xA65E
end
end
_0x8333 = _0x57B3 or _0x3242 + Vector3.new(0, 80, 0)
elseif _0xE724.mode ==string.char(82,97,110,100,111,109)then
if not _0x8333 or _0x8C28 >= _0x19B6 then
_0x8333 = _0xDE10(_0x3242, _0xD95E)
_0x19B6 = _0x8C28 + _0xE724.interval / 1000
end
elseif _0xE724.mode ==string.char(79,114,98,105,116)then
local _0xDA08 = _0x8C28 * 3
_0x8333 = _0x3242 + Vector3.new(math.cos(_0xDA08) * _0xE724.radius * 0.3, 0, math.sin(_0xDA08) * _0xE724.radius * 0.3)
else
_0x8333 = _0x3242 + Vector3.new(0, 200, 0)
end
local _0xD1EB = _0xB48C.CFrame
_0x3CC6.real = _0xD1EB
_0x3CC6.lastFakeAt = os.clock()
local _0x5DA3 = _0x8C28 * 40
_0x3CC6.fakeCF = CFrame.new(_0x8333) * CFrame.Angles(_0x5DA3 * 1.3 + math.random() * 6.28, _0x5DA3 + math.random() * 6.28, _0x5DA3 * 0.7 + math.random() * 6.28)
_0xB48C.CFrame = _0x3CC6.fakeCF
if sethiddenproperty then
pcall(sethiddenproperty, _0xB48C,string.char(78,101,116,119,111,114,107,73,115,83,108,101,101,112,105,110,103), false)
end
local _0xEB0B = _0xB48C.AssemblyLinearVelocity
_0x3CC6.realVel = _0xEB0B
if _0xEB0B.Magnitude < 8 then
local _0xDA08 = math.random() * math.pi * 2
_0xB48C.AssemblyLinearVelocity = Vector3.new(math.cos(_0xDA08) * 12, 6, math.sin(_0xDA08) * 12)
end
end)
pcall(function()
_0xB197:UnbindFromRenderStep(string.char(67,108,117,109,115,121,83,99,114,105,112,116,68,101,115,121,110,99))
end)
_0xB197:BindToRenderStep(string.char(67,108,117,109,115,121,83,99,114,105,112,116,68,101,115,121,110,99), Enum.RenderPriority.First.Value, function()
if not _0x3CC6.real then
return
end
local _0xD95E = _0x8E3D.Character
local _0xB48C = _0xD95E and _0xD95E:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if _0xB48C then
_0xB48C.CFrame = _0x3CC6.real
if _0x3CC6.realVel then
_0xB48C.AssemblyLinearVelocity = _0x3CC6.realVel
end
end
_0x3CC6.real, _0x3CC6.realVel = nil, nil
end)
local _0x0255 = { _0xD95E = nil, _0xE998 = nil, _0x0341 = {}, _0x9E0B = nil, _0x9784 = nil }
local function _0x2E37()
if _0x0255.folder then
_0x0255.folder:Destroy()
end
_0x0255.folder, _0x0255.char = nil, nil
table.clear(_0x0255.parts)
end
local function _0xC9BF(_0xD95E)
_0x2E37()
_0x0255.char = _0xD95E
_0x0255.folder = _0x504E(string.char(77,111,100,101,108), { Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,68,101,115,121,110,99,71,104,111,115,116), Parent = workspace.CurrentCamera })
for _0x624F, _0x1369 in ipairs(_0xD95E:GetChildren()) do
if _0x1369:IsA(string.char(66,97,115,101,80,97,114,116)) and _0x1369.Name ~=string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)then
local _0xD828, _0xBCE8 = pcall(function()
return _0x1369:Clone()
end)
if _0xD828 and _0xBCE8 then
for _0x624F, _0x242F in ipairs(_0xBCE8:GetChildren()) do
if not _0x242F:IsA(string.char(68,97,116,97,77,111,100,101,108,77,101,115,104)) then
_0x242F:Destroy()
end
end
pcall(function()
_0xBCE8.TextureID =""end)
_0xBCE8.Anchored, _0xBCE8.CanCollide, _0xBCE8.CanQuery, _0xBCE8.CanTouch, _0xBCE8.CastShadow = true, false, false, false, false
_0xBCE8.Material = Enum.Material.ForceField
_0xBCE8.Color = _0xA925
_0xBCE8.Transparency = 0.2
_0xBCE8.Parent = _0x0255.folder
_0x0255.parts[_0x1369] = _0xBCE8
end
end
end
_0x504E(string.char(72,105,103,104,108,105,103,104,116), {
Adornee = _0x0255.folder,
FillTransparency = 1,
OutlineColor = _0xA925,
OutlineTransparency = 0.3,
DepthMode = Enum.HighlightDepthMode.AlwaysOnTop,
Parent = _0x0255.folder,
})
local function _0xC410()
local _0x6C67 = _0x504E(string.char(80,97,114,116), {
Anchored = true,
CanCollide = false,
CanQuery = false,
CanTouch = false,
Transparency = 1,
Size = Vector3.new(0.1, 0.1, 0.1),
Parent = _0x0255.folder,
})
return _0x504E(string.char(65,116,116,97,99,104,109,101,110,116), { Parent = _0x6C67 }), _0x6C67
end
local _0x9E0B, _0x5E7D = _0xC410()
local _0x9784, _0x8878 = _0xC410()
_0x0255.p0, _0x0255.p1 = _0x5E7D, _0x8878
_0x504E(string.char(66,101,97,109), {
Attachment0 = _0x9E0B,
Attachment1 = _0x9784,
FaceCamera = true,
LightEmission = 1,
LightInfluence = 0,
Width0 = 0.14,
Width1 = 0.14,
Segments = 1,
Color = ColorSequence.new(_0xA925),
Transparency = NumberSequence.new(0.15, 0.55),
Parent = _0x5E7D,
})
end
pcall(function()
_0xB197:UnbindFromRenderStep(string.char(67,108,117,109,115,121,83,99,114,105,112,116,68,101,115,121,110,99,86,105,115))
end)
_0xB197:BindToRenderStep(string.char(67,108,117,109,115,121,83,99,114,105,112,116,68,101,115,121,110,99,86,105,115), Enum.RenderPriority.First.Value + 1, function()
local _0xD95E = _0x8E3D.Character
local _0xB48C = _0xD95E and _0xD95E:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not (_0xE724.on or _0x3CC6.force) or not _0xE724.tracer or _0x3CC6.pause > 0 or _0x3CC6.gunHold or not _0xB48C or not _0x3CC6.fakeCF then
if _0x0255.folder then
_0x2E37()
end
return
end
if _0x0255.char ~= _0xD95E or not _0x0255.folder or not _0x0255.folder.Parent then
_0xC9BF(_0xD95E)
end
local _0x6613 = _0x3CC6.fakeCF
local _0xF60D = _0xB48C.CFrame
for _0x1369, _0xBCE8 in pairs(_0x0255.parts) do
if _0x1369.Parent then
_0xBCE8.CFrame = _0x6613 * _0xF60D:ToObjectSpace(_0x1369.CFrame)
end
end
_0x0255.p0.CFrame = _0xF60D
_0x0255.p1.CFrame = _0x6613
end)
table.insert(_0x523A, {
Disconnect = function()
pcall(function()
_0xB197:UnbindFromRenderStep(string.char(67,108,117,109,115,121,83,99,114,105,112,116,68,101,115,121,110,99,86,105,115))
end)
_0x2E37()
end,
})
table.insert(_0x523A, {
Disconnect = function()
pcall(function()
_0xB197:UnbindFromRenderStep(string.char(67,108,117,109,115,121,83,99,114,105,112,116,68,101,115,121,110,99))
end)
end,
})
local _0x61C4 = _0x45F1(_0x786E,string.char(68,101,115,121,110,99))
_0x61C4:Toggle(string.char(69,110,97,98,108,101),string.char(67,108,117,109,115,121,83,99,114,105,112,116,32,101,120,99,108,117,115,105,118,101), function(_0xE496)
_0xE724.on = _0xE496
_0x3CC6.on = _0xE496
_0x8333 = nil
if not _0xE496 then
_0x3CC6.fakeCF = nil
end
_0xA9C1(string.char(68,101,115,121,110,99,58,32).. (_0xE496 andstring.char(79,110)orstring.char(79,102,102)), _0xE496 andstring.char(121,111,117,39,114,101,32,101,118,101,114,121,119,104,101,114,101,32,97,110,100,32,110,111,119,104,101,114,101)orstring.char(98,97,99,107,32,116,111,32,110,111,114,109,97,108))
end)
local _0x80C8 = _0x61C4:Toggle(string.char(84,114,97,99,101,114),string.char(115,104,111,119,32,119,104,101,114,101,32,111,116,104,101,114,115,32,115,101,101,32,121,111,117), function(_0xE496)
_0xE724.tracer = _0xE496
end)
_0x80C8.Set(true, true)
end
dodo
local _0x93CB = game:GetService(string.char(67,111,108,108,101,99,116,105,111,110,83,101,114,118,105,99,101))
local _0x2A3C = _0x8E3D
local _0xB2FA = workspace
local function _0xFFB3()
local _0x242F = _0x2A3C.Character
return _0x242F and _0x242F:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
end
local function _0x81DB()
local _0x242F = _0x2A3C.Character
return _0x242F and _0x242F:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
end
local function _0x5591(_0xDA08, _0xBF1F)
local _0xEC9D, _0x313F = _0xDA08.X - _0xBF1F.X, _0xDA08.Z - _0xBF1F.Z
return math.sqrt(_0xEC9D * _0xEC9D + _0x313F * _0x313F)
end
local _0xAAD0 = (function()
local _0x7CEC = { _0xE496=false, _0xAEA1=25, depth=14, rise_xz=4, auto_reset=false, collect_only=false, coin_limit=40, max_distance=600, was_down=false, down_ref_y=nil, last_touch=0, collected=0, noclip_cache={} }
local _0xAB17 = 0.05
local _0x4D46 = RaycastParams.new()
_0x4D46.FilterType = Enum.RaycastFilterType.Exclude
_0x4D46.IgnoreWater = true
local function _0xEC62()
local _0x8C28=os.clock()
if _0x8C28-_0x7CEC.last_touch<_0xAB17 then return false end
_0x7CEC.last_touch=_0x8C28
return true
end
local function _0x40CD(_0xE496)
local _0xD95E=_0x2A3C.Character if not _0xD95E then return end
local _0xC3CF=_0xD95E:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if _0xE496 then
if _0xC3CF then pcall(function() _0xC3CF.PlatformStand=true end) end
for _0x624F,_0x09CD in ipairs(_0xD95E:GetDescendants()) do
if _0x09CD:IsA(string.char(66,97,115,101,80,97,114,116)) and _0x09CD.CanCollide then
if _0x7CEC.noclip_cache[_0x09CD]==nil then _0x7CEC.noclip_cache[_0x09CD]=true end
_0x09CD.CanCollide=false
end
end
else
if _0xC3CF then pcall(function() _0xC3CF.PlatformStand=false _0xC3CF.AutoRotate=true end) end
for _0x09CD in pairs(_0x7CEC.noclip_cache) do if _0x09CD and _0x09CD.Parent then pcall(function() _0x09CD.CanCollide=true end) end end
_0x7CEC.noclip_cache={}
end
end
local function _0xCCBE()
local _0xB48C=_0xFFB3() if not _0xB48C then return end
_0x4D46.FilterDescendantsInstances={_0x2A3C.Character}
local _0x9E39=_0xB2FA:Raycast(_0xB48C.Position,Vector3.new(0,400,0),_0x4D46)
local _0x546B=_0x9E39 and (_0x9E39.Position.Y+5) or (_0x7CEC.down_ref_y and _0x7CEC.down_ref_y+5)
if _0x546B then pcall(function() _0xB48C.CFrame=CFrame.new(_0xB48C.Position.X,_0x546B,_0xB48C.Position.Z) _0xB48C.AssemblyLinearVelocity=Vector3.zero _0xB48C.AssemblyAngularVelocity=Vector3.zero end) end
end
local function _0xAE37()
if _0x7CEC.was_down then _0x7CEC.was_down=false _0xCCBE() end
_0x40CD(false)
local _0xF171=_0x81DB() if _0xF171 then _0xF171.AutoRotate=true end
end
local function _0x7FAC(_0xEB0B)
return _0xEB0B and _0xEB0B.Parent and _0xEB0B:IsA(string.char(66,97,115,101,80,97,114,116)) and not _0xEB0B:GetAttribute(string.char(67,111,108,108,101,99,116,101,100)) and not _0xEB0B:GetAttribute(string.char(68,101,108,101,116,101))
end
local function _0x04F9()
local _0xDFBA={}
for _0x624F,_0xEB0B in ipairs(_0x93CB:GetTagged(string.char(67,111,105,110,86,105,115,117,97,108))) do if _0x7FAC(_0xEB0B) then _0xDFBA[#_0xDFBA+1]=_0xEB0B end end
if #_0xDFBA==0 then
for _0x624F,_0xEB0B in ipairs(_0xB2FA:GetDescendants()) do
if _0xEB0B:IsA(string.char(66,97,115,101,80,97,114,116)) then
local _0xE9D1=string.lower(_0xEB0B.Name)
if (_0xE9D1==string.char(99,111,105,110)or _0xE9D1==string.char(99,111,105,110,118,105,115,117,97,108)or _0xE9D1:find(string.char(99,111,105,110),1,true)) and _0x7FAC(_0xEB0B) then _0xDFBA[#_0xDFBA+1]=_0xEB0B end
end
end
end
return _0xDFBA
end
local function _0x6B36(_0xA2C8,_0xDFBA)
local _0x57B3,_0x7ABC=nil,math.huge
for _0x624F,_0xEB0B in ipairs(_0xDFBA) do local _0xA65E=(_0xEB0B.Position-_0xA2C8).Magnitude if _0xA65E<_0x7ABC then _0x7ABC=_0xA65E _0x57B3=_0xEB0B end end
return _0x57B3
end
local function _0xFB21(coin)
if type(firetouchinterest)~=string.char(102,117,110,99,116,105,111,110)or not coin or not coin.Parent or not _0xEC62() then return end
local _0xB48C=_0xFFB3() if not _0xB48C then return end
pcall(firetouchinterest,_0xB48C,coin,0)
pcall(firetouchinterest,_0xB48C,coin,1)
end
local function _0xE79B()
local _0x6BE5=_0x2A3C:FindFirstChild(string.char(80,108,97,121,101,114,71,117,105))
local _0xFF96=_0x6BE5 and _0x6BE5:FindFirstChild(string.char(77,97,105,110,71,85,73))
local _0xD8C2=_0xFF96 and _0xFF96:FindFirstChild(string.char(71,97,109,101))
local _0x9D8A=_0xD8C2 and _0xD8C2:FindFirstChild(string.char(67,111,105,110,66,97,103,115))
local _0xC4E3=_0x9D8A and _0x9D8A:FindFirstChild(string.char(67,111,110,116,97,105,110,101,114))
if not _0xC4E3 then return false end
local _0xA5F1=false
for _0x624F,_0xEB0B in ipairs(_0xC4E3:GetChildren()) do
if _0xEB0B:IsA(string.char(70,114,97,109,101)) and _0xEB0B.Visible then _0xA5F1=true local _0xDDAB=_0xEB0B:FindFirstChild(string.char(70,117,108,108)) if not (_0xDDAB and _0xDDAB.Visible) then return false end end
end
return _0xA5F1
end
_0xB9EB(_0xB197.Stepped,function(_0x624F,_0x5D8D)
if not _0x7CEC.on then _0xAE37() return end
if _0x7CEC.collect_only then return end
local _0xB48C,_0xC3CF=_0xFFB3(),_0x81DB()
if not _0xB48C or not _0xC3CF or _0xC3CF.Health<=0 then _0x40CD(false) return end
local _0xDFBA=_0x04F9()
if _0x7CEC.max_distance and _0x7CEC.max_distance > 0 then
local _0xFCE5={}
for _0x624F,coin in ipairs(_0xDFBA) do
if (coin.Position-_0xB48C.Position).Magnitude <= _0x7CEC.max_distance then _0xFCE5[#_0xFCE5+1]=coin end
end
_0xDFBA=_0xFCE5
end
if #_0xDFBA==0 then _0xAE37() return end
if _0x7CEC.coin_limit > 0 and _0x7CEC.collected >= _0x7CEC.coin_limit then
_0xAE37()
if _0x7CEC.auto_reset then _0x7CEC.collected=0 end
return
end
local _0xCC3C=_0x6B36(_0xB48C.Position,_0xDFBA)
if not _0xCC3C then _0xAE37() return end
_0x40CD(true) _0x7CEC.was_down=true _0x7CEC.down_ref_y=_0xCC3C.Position.Y
local _0xF657=_0xCC3C.Position
local _0xDE1F=_0x5591(_0xB48C.Position,_0xF657)<=_0x7CEC.rise_xz and _0xF657 or Vector3.new(_0xF657.X,_0xF657.Y-_0x7CEC.depth,_0xF657.Z)
local _0x0447=_0xDE1F-_0xB48C.Position local _0xA65E=_0x0447.Magnitude
local _0x6CBC=_0xA65E>0.1 and _0xB48C.Position+_0x0447.Unit*math.min(_0x7CEC.speed*_0x5D8D,_0xA65E) or _0xDE1F
pcall(function() _0xC3CF.AutoRotate=false _0xB48C.CFrame=CFrame.new(_0x6CBC)*CFrame.Angles(-math.pi*0.5,0,0) _0xB48C.AssemblyLinearVelocity=Vector3.zero _0xB48C.AssemblyAngularVelocity=Vector3.zero end)
_0xFB21(_0xCC3C)
if _0xCC3C:GetAttribute(string.char(67,111,108,108,101,99,116,101,100)) then _0x7CEC.collected = _0x7CEC.collected + 1 end
if _0x7CEC.auto_reset and _0xE79B() then pcall(function() _0xC3CF.Health=0 end) end
end)
_0xB9EB(_0x2A3C.CharacterAdded,function() _0x7CEC.noclip_cache={} _0x7CEC.was_down=false end)
return {
_0x0A30=function(_0xEB0B) _0x7CEC.on=_0xEB0B if not _0xEB0B then _0xAE37() end end,
set_speed=function(_0xEB0B) _0x7CEC.speed=tonumber(_0xEB0B) or 25 end,
set_depth=function(_0xEB0B) _0x7CEC.depth=tonumber(_0xEB0B) or 14 end,
set_rise_xz=function(_0xEB0B) _0x7CEC.rise_xz=tonumber(_0xEB0B) or 4 end,
set_collect_only=function(_0xEB0B) _0x7CEC.collect_only=_0xEB0B end,
set_auto_reset=function(_0xEB0B) _0x7CEC.auto_reset=_0xEB0B end,
set_coin_limit=function(_0xEB0B) _0x7CEC.coin_limit=math.max(0, tonumber(_0xEB0B) or 40) _0x7CEC.collected=0 end,
set_max_distance=function(_0xEB0B) _0x7CEC.max_distance=math.max(0, tonumber(_0xEB0B) or 600) end,
}
end)()
local _0xA045=_0x45F1(_0xC09E,string.char(65,117,116,111,32,70,97,114,109,32,67,111,105,110,115))
_0xA045:Toggle(string.char(65,117,116,111,32,70,97,114,109,32,67,111,105,110,115),string.char(99,111,108,108,101,99,116,32,99,111,105,110,115,32,97,117,116,111,109,97,116,105,99,97,108,108,121),function(_0xE496)
_0xAAD0.set(_0xE496)
_0xA9C1(string.char(65,117,116,111,32,70,97,114,109,32,67,111,105,110,115,58,32)..(_0xE496 andstring.char(79,110)orstring.char(79,102,102)),_0xE496 andstring.char(99,111,108,108,101,99,116,105,110,103,32,99,111,105,110,115)orstring.char(115,116,111,112,112,101,100))
end)
_0xA045:Slider(string.char(83,112,101,101,100),10,80,25,function(_0xEB0B) _0xAAD0.set_speed(_0xEB0B) end)
_0xA045:Slider(string.char(68,101,112,116,104),6,40,14,function(_0xEB0B) _0xAAD0.set_depth(_0xEB0B) end)
_0xA045:Slider(string.char(82,105,115,101,32,88,90),1,15,4,function(_0xEB0B) _0xAAD0.set_rise_xz(_0xEB0B) end)
_0xA045:Segmented(string.char(67,111,108,108,101,99,116,32,79,110,108,121),{string.char(79,102,102),string.char(79,110)},string.char(79,102,102),function(_0xEB0B) _0xAAD0.set_collect_only(_0xEB0B==string.char(79,110)) end)
_0xA045:Segmented(string.char(65,117,116,111,32,82,101,115,101,116),{string.char(79,102,102),string.char(79,110)},string.char(79,102,102),function(_0xEB0B) _0xAAD0.set_auto_reset(_0xEB0B==string.char(79,110)) end)
_0xA045:Slider(string.char(67,111,105,110,32,76,105,109,105,116),0,100,40,function(_0xEB0B) _0xAAD0.set_coin_limit(_0xEB0B) end)
_0xA045:Slider(string.char(77,97,120,32,68,105,115,116,97,110,99,101),50,1200,600,function(_0xEB0B) _0xAAD0.set_max_distance(_0xEB0B) end)
local _0x547A=false
local _0x490A
local function _0xF4DF()
local _0x242F=_0x2A3C.Character
local _0xB5F1=_0x242F and _0x242F:FindFirstChildOfClass(string.char(84,111,111,108))
local function _0x9AC0(_0x634C)
if not _0x634C or not _0x634C:IsA(string.char(84,111,111,108)) then return false end
local _0xE9D1=string.lower(_0x634C.Name)
return _0xE9D1:find(string.char(112,105,115,116,111,108),1,true) or _0xE9D1:find(string.char(114,101,118,111,108,118,101,114),1,true) or _0xE9D1:find(string.char(103,117,110),1,true)
end
if _0x9AC0(_0xB5F1) then return _0xB5F1 end
local _0xC713=_0x2A3C:FindFirstChildOfClass(string.char(66,97,99,107,112,97,99,107))
if _0xC713 then for _0x624F,_0x2B4F in ipairs(_0xC713:GetChildren()) do if _0x9AC0(_0x2B4F) then return _0x2B4F end end end
end
local function _0x1037()
if not _0x547A then return end
local _0x242F=_0x2A3C.Character local _0xC3CF=_0x242F and _0x242F:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100)) local _0x226E=_0xF4DF()
if not _0x242F or not _0xC3CF or not _0x226E then return end
if _0x226E.Parent~=_0x242F then pcall(function() _0xC3CF:EquipTool(_0x226E) end) task.wait(0.12) end
if _0x226E.Parent==_0x242F then pcall(function() _0x226E:Activate() end) end
end
local function _0x7D10(_0xEB0B)
_0x547A=_0xEB0B
if _0x490A then _0x490A:Disconnect() _0x490A=nil end
if _0xEB0B then
_0x490A=_0x24DA.InputBegan:Connect(function(input,processed)
if processed or not _0x547A then return end
if input.UserInputType==Enum.UserInputType.MouseButton1 or input.UserInputType==Enum.UserInputType.Touch then task.spawn(_0x1037) end
end)
end
end
local _0x086D=_0x45F1(_0x786E,string.char(87,97,108,108,32,83,104,111,116))
_0x086D:Toggle(string.char(87,97,108,108,32,83,104,111,116),string.char(102,105,114,101,32,116,104,101,32,112,105,115,116,111,108,32,116,104,114,111,117,103,104,32,119,97,108,108,115),function(_0xE496)
_0x7D10(_0xE496)
_0xA9C1(string.char(87,97,108,108,32,83,104,111,116,58,32)..(_0xE496 andstring.char(79,110)orstring.char(79,102,102)),_0xE496 andstring.char(101,110,97,98,108,101,100)orstring.char(100,105,115,97,98,108,101,100))
end)
local _0x47F6={
Blue=Color3.fromRGB(0,140,255), White=Color3.fromRGB(255,255,255),
Red=Color3.fromRGB(255,20,50), Purple=Color3.fromRGB(190,80,255), Green=Color3.fromRGB(80,255,180)
}
local _0x5929={_0xE496=false,effect=string.char(71,104,111,115,116),duration=4,_0xCC3C=string.char(69,118,101,114,121,111,110,101),clones={},_0x62CD={}}
local _0x94FA={}
local function _0xA0CA()
for _0x269E=#_0x5929.clones,1,-1 do local _0x4244=_0x5929.clones[_0x269E] if _0x4244 and _0x4244.Parent then _0x4244:Destroy() end _0x5929.clones[_0x269E]=nil end
for _0x269E=#_0x5929.emitters,1,-1 do local _0x4244=_0x5929.emitters[_0x269E] if _0x4244 and _0x4244.Parent then _0x4244:Destroy() end _0x5929.emitters[_0x269E]=nil end
endlocal function _0xC156()
return _0xA925
end
local _0xA2E0={_0xE13F=true,torso=true,[string.char(108,101,102,116,32,97,114,109)]=true,[string.char(114,105,103,104,116,32,97,114,109)]=true,[string.char(108,101,102,116,32,108,101,103)]=true,[string.char(114,105,103,104,116,32,108,101,103)]=true,uppertorso=true,lowertorso=true,leftupperarm=true,leftlowerarm=true,lefthand=true,rightupperarm=true,rightlowerarm=true,righthand=true,leftupperleg=true,leftlowerleg=true,leftfoot=true,rightupperleg=true,rightlowerleg=true,rightfoot=true}
local function _0x09C5(_0x6F67)
if not _0x6F67:IsA(string.char(66,97,115,101,80,97,114,116)) or _0x6F67.Name==string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)then return false end
if _0x6F67:FindFirstAncestorOfClass(string.char(65,99,99,101,115,115,111,114,121)) then return false end
local _0xE9D1=_0x6F67.Name:lower()
if not _0xA2E0[_0xE9D1] then return false end
local _0xDF1D=_0x6F67.Parent and _0x6F67.Parent.Name:lower() or""return not (_0xE9D1:find(string.char(104,97,110,100,108,101),1,true) or _0xDF1D:find(string.char(112,101,116),1,true) or _0xDF1D:find(string.char(107,110,105,102,101),1,true) or _0xDF1D:find(string.char(103,117,110),1,true))
end
local function _0x2EDE(_0x830D,dur)
task.delay(math.max(0.1,dur-0.8),function()
if not _0x830D.Parent then return end
for _0x624F,_0xCE5A in ipairs(_0x830D:GetDescendants()) do
if _0xCE5A:IsA(string.char(66,97,115,101,80,97,114,116)) then pcall(function() _0x8185:Create(_0xCE5A,TweenInfo.new(0.8),{Transparency=1}):Play() end)
elseif _0xCE5A:IsA(string.char(72,105,103,104,108,105,103,104,116)) then pcall(function() _0x8185:Create(_0xCE5A,TweenInfo.new(0.8),{FillTransparency=1,OutlineTransparency=1}):Play() end)
elseif _0xCE5A:IsA(string.char(70,114,97,109,101)) then pcall(function() _0x8185:Create(_0xCE5A,TweenInfo.new(0.8),{BackgroundTransparency=1}):Play() end) end
end
task.delay(0.9,function() if _0x830D.Parent then _0x830D:Destroy() end end)
end)
end
local function _0x5A7C(_0xD95E,_0xB130,dur)
local _0x138F=_0xD95E.Archivable
local _0xD828,_0xC65D=pcall(function() _0xD95E.Archivable=true return _0xD95E:Clone() end)
pcall(function() _0xD95E.Archivable=_0x138F end)
if not _0xD828 or not _0xC65D then return end
for _0x624F,_0xCE5A in ipairs(_0xC65D:GetDescendants()) do
if _0xCE5A:IsA(string.char(66,97,115,101,80,97,114,116)) then
if _0x09C5(_0xCE5A) then _0xCE5A.Anchored=true _0xCE5A.CanCollide=false _0xCE5A.CanQuery=false _0xCE5A.CanTouch=false _0xCE5A.CastShadow=false _0xCE5A.Material=Enum.Material.Neon _0xCE5A.Color=_0xB130 _0xCE5A.Transparency=0
else _0xCE5A:Destroy() end
elseif _0xCE5A:IsA(string.char(68,101,99,97,108)) or _0xCE5A:IsA(string.char(84,101,120,116,117,114,101)) or _0xCE5A:IsA(string.char(80,97,114,116,105,99,108,101,69,109,105,116,116,101,114)) or _0xCE5A:IsA(string.char(84,114,97,105,108)) or _0xCE5A:IsA(string.char(66,101,97,109)) or _0xCE5A:IsA(string.char(83,99,114,105,112,116)) or _0xCE5A:IsA(string.char(76,111,99,97,108,83,99,114,105,112,116)) or _0xCE5A:IsA(string.char(72,117,109,97,110,111,105,100)) or _0xCE5A:IsA(string.char(65,110,105,109,97,116,111,114)) or _0xCE5A:IsA(string.char(84,111,111,108)) or _0xCE5A:IsA(string.char(65,99,99,101,115,115,111,114,121)) then _0xCE5A:Destroy() end
end
_0xC65D.Name=string.char(67,108,117,109,115,121,95,68,101,97,116,104,67,108,111,110,101)_0xC65D.Parent=_0xB2FA _0x5929.clones[#_0x5929.clones+1]=_0xC65D
local _0xE342=Instance.new(string.char(72,105,103,104,108,105,103,104,116)) _0xE342.Name=string.char(67,108,117,109,115,121,95,68,101,97,116,104,88,82,97,121)_0xE342.Adornee=_0xC65D _0xE342.FillColor=_0xB130 _0xE342.OutlineColor=_0xB130 _0xE342.FillTransparency=0.18 _0xE342.OutlineTransparency=0 _0xE342.DepthMode=Enum.HighlightDepthMode.AlwaysOnTop _0xE342.Parent=_0xC65D
_0x2EDE(_0xC65D,dur)
end
local function _0x1006(_0xD95E,_0xB130,dur)
local _0xE998=Instance.new(string.char(70,111,108,100,101,114)) _0xE998.Name=string.char(67,108,117,109,115,121,95,68,101,97,116,104,68,111,116,115)_0xE998.Parent=_0xB2FA _0x5929.emitters[#_0x5929.emitters+1]=_0xE998
local _0x8B16=0.42local _0x3139=320 local _0x5A3D=0
for _0x624F,_0x6F67 in ipairs(_0xD95E:GetDescendants()) do
if _0x5A3D>=_0x3139 then break end
if _0x09C5(_0x6F67) then
local _0x428B=_0x6F67.Size local _0x4117=_0x6F67.CFrame
local _0xE85A=math.max(1,math.floor(_0x428B.X/_0x8B16)) local _0x0E0B=math.max(1,math.floor(_0x428B.Y/_0x8B16)) local _0x02FE=math.max(1,math.floor(_0x428B.Z/_0x8B16))
local function _0x63C8(_0x4244,_0x546B,_0x2675)
if _0x5A3D>=_0x3139 then return end
local _0x1B16=Instance.new(string.char(80,97,114,116)) _0x1B16.Name=string.char(68,101,97,116,104,68,111,116)_0x1B16.Shape=Enum.PartType.Ball _0x1B16.Size=Vector3.new(0.075,0.075,0.075) _0x1B16.Material=Enum.Material.Neon _0x1B16.Color=_0xB130 _0x1B16.Anchored=true _0x1B16.CanCollide=false _0x1B16.CanQuery=false _0x1B16.CanTouch=false _0x1B16.CastShadow=false _0x1B16.Transparency=0 _0x1B16.CFrame=_0x4117*CFrame.new(_0x4244,_0x546B,_0x2675) _0x1B16.Parent=_0xE998 _0x5A3D+=1
local _0x699B=Instance.new(string.char(66,105,108,108,98,111,97,114,100,71,117,105)) _0x699B.Name=string.char(68,101,97,116,104,68,111,116,66,105,108,108,98,111,97,114,100)_0x699B.AlwaysOnTop=true _0x699B.LightInfluence=0 _0x699B.Size=UDim2.fromOffset(7,7) _0x699B.Adornee=_0x1B16 _0x699B.Parent=_0x1B16
local _0xF0CB=Instance.new(string.char(70,114,97,109,101)) _0xF0CB.Size=UDim2.fromScale(1,1) _0xF0CB.BackgroundColor3=_0xB130 _0xF0CB.BorderSizePixel=0 _0xF0CB.Parent=_0x699B
local _0x31EB=Instance.new(string.char(85,73,67,111,114,110,101,114)) _0x31EB.CornerRadius=UDim.new(1,0) _0x31EB.Parent=_0xF0CB
end
for ix=0,_0xE85A do for iy=0,_0x0E0B do for iz=0,_0x02FE do
if _0x5A3D>=_0x3139 then break endif ix==0 or ix==_0xE85A or iy==0 or iy==_0x0E0B or iz==0 or iz==_0x02FE then
_0x63C8(-_0x428B.X/2+_0x428B.X*ix/_0xE85A,-_0x428B.Y/2+_0x428B.Y*iy/_0x0E0B,-_0x428B.Z/2+_0x428B.Z*iz/_0x02FE)
end
end end end
end
end
_0x2EDE(_0xE998,dur)
end
local function _0x3818(pl)
local _0x242F=pl and pl.Character
if _0x242F and _0x242F:FindFirstChild(string.char(75,110,105,102,101)) then returnstring.char(109,117,114,100,101,114,101,114)end
local _0xC713=pl and pl:FindFirstChildOfClass(string.char(66,97,99,107,112,97,99,107))
if _0xC713 and _0xC713:FindFirstChild(string.char(75,110,105,102,101)) then returnstring.char(109,117,114,100,101,114,101,114)end
returnstring.char(111,116,104,101,114)end
local function _0x37EA(pl,_0xD95E)
if not _0x5929.on or _0x5929.effect==string.char(79,102,102)then return end
if _0x5929.target==string.char(77,117,114,100,101,114,101,114)and _0x3818(pl)~=string.char(109,117,114,100,101,114,101,114)then return end
local _0xB130=_0xC156()
if _0x5929.effect==string.char(71,104,111,115,116)then _0x5A7C(_0xD95E,_0xB130,_0x5929.duration)
elseif _0x5929.effect==string.char(68,111,116,115)then _0x1006(_0xD95E,_0xB130,_0x5929.duration) end
end
local function _0x5481(pl)
if _0x94FA[pl] then return end
_0x94FA[pl]=true
local function _0x3AB5(_0xD95E)
local _0xC3CF=_0xD95E:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100)) or _0xD95E:WaitForChild(string.char(72,117,109,97,110,111,105,100),5)
if _0xC3CF then _0xB9EB(_0xC3CF.Died,function() _0x37EA(pl,_0xD95E) end) end
end
if pl.Character then task.spawn(_0x3AB5,pl.Character) end
_0xB9EB(pl.CharacterAdded,function(_0x242F) task.spawn(_0x3AB5,_0x242F) end)
end
_0xB9EB(_0xB197.Heartbeat,function()
if not _0x5929.on then return end
for _0x624F,pl in ipairs(_0xD101:GetPlayers()) do _0x5481(pl) end
end)do
local _0x92EB = false
local _0x3130 = Color3.fromRGB(0, 220, 255)
local _0xA509 = 0.35
local _0x1C1C =string.char(65,108,108)local _0x18E5 = {}
local _0x121B = false
local _0xD7A8 = Color3.fromRGB(0, 230, 255)
local _0x5F19 = 0
local _0x647B = {}
local _0x6CE6 = {}
local _0x4DDE = {}
local function _0x5595(_0xA2E1)
if not _0xA2E1 or not _0xA2E1:IsA(string.char(84,111,111,108)) then return nil end
local _0xE9D1 = _0xA2E1.Name:lower()
if _0xE9D1:find(string.char(107,110,105,102,101), 1, true) or _0xE9D1:find(string.char(98,108,97,100,101), 1, true) or _0xE9D1:find(string.char(107,97,114,97,109,98,105,116), 1, true) or _0xE9D1:find(string.char(98,111,119,105,101), 1, true) or _0xE9D1:find(string.char(107,117,110,97,105), 1, true) then
returnstring.char(75,110,105,102,101)end
if _0xE9D1:find(string.char(103,117,110), 1, true) or _0xE9D1:find(string.char(112,105,115,116,111,108), 1, true) or _0xE9D1:find(string.char(114,101,118,111,108,118,101,114), 1, true) or _0xE9D1:find(string.char(115,104,101,114,105,102,102), 1, true) then
returnstring.char(80,105,115,116,111,108)end
returnstring.char(79,116,104,101,114)end
local function _0x7D84(_0xA2E1)
local _0xDFBA = _0x18E5[_0xA2E1]
if _0xDFBA then
for _0x624F, _0xF171 in ipairs(_0xDFBA) do
if _0xF171 and _0xF171.Parent then _0xF171:Destroy() end
end
end
_0x18E5[_0xA2E1] = nil
end
local function _0xF1EB()
for _0xA2E1 in pairs(_0x18E5) do
_0x7D84(_0xA2E1)
end
end
local function _0x9B5F(_0xA2E1)
if not _0x92EB or not _0xA2E1 or not _0xA2E1:IsA(string.char(84,111,111,108)) or not _0xA2E1.Parent then return end
local _0x7969 = _0x5595(_0xA2E1)
if _0x1C1C ~=string.char(65,108,108)and _0x7969 ~= _0x1C1C and _0xA2E1.Name ~= _0x1C1C then return end
_0x7D84(_0xA2E1)
local _0xDFBA = {}
for _0x624F, _0x6F67 in ipairs(_0xA2E1:GetDescendants()) do
if _0x6F67:IsA(string.char(66,97,115,101,80,97,114,116)) and _0x6F67.Transparency < 1 then
local _0xF171 = Instance.new(string.char(72,105,103,104,108,105,103,104,116))
_0xF171.Name =string.char(67,108,117,109,115,121,87,101,97,112,111,110,67,104,97,109,115)_0xF171.Adornee = _0x6F67
_0xF171.FillColor = _0x3130
_0xF171.OutlineColor = _0x3130
_0xF171.FillTransparency = math.clamp(_0xA509, 0, 1)
_0xF171.OutlineTransparency = 0
_0xF171.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
_0xF171.Parent = _0x6F67
_0xDFBA[#_0xDFBA + 1] = _0xF171
end
end
if #_0xDFBA > 0 then _0x18E5[_0xA2E1] = _0xDFBA end
end
local function _0xD6BB()
_0xF1EB()
if not _0x92EB then return end
local _0xD95E = _0x8E3D.Character
local _0xF5BE = _0x8E3D:FindFirstChildOfClass(string.char(66,97,99,107,112,97,99,107))
for _0x624F, _0xC4E3 in ipairs({_0xD95E, _0xF5BE}) do
if _0xC4E3 then
for _0x624F, child in ipairs(_0xC4E3:GetChildren()) do
if child:IsA(string.char(84,111,111,108)) then _0x9B5F(child) end
end
end
end
end
local function _0x8732(_0xCE5A, model)
if not _0x4DDE[model] then _0x4DDE[model] = {} end
for _0x624F, backup in ipairs(_0x4DDE[model]) do
if backup.Original == _0xCE5A then return end
end
local _0xD828, _0xC65D = pcall(function() return _0xCE5A:Clone() end)
if _0xD828 and _0xC65D then
_0xC65D.Parent = nil
_0x4DDE[model][#_0x4DDE[model] + 1] = {Original = _0xCE5A, Clone = _0xC65D, Parent = _0xCE5A.Parent}
end
pcall(function() _0xCE5A:Destroy() end)
end
local function _0x3568(model)
if not _0x121B or not model or not model.Parent then return end
for _0x624F, _0xCE5A in ipairs(model:GetDescendants()) do
pcall(function()
if _0xCE5A:IsA(string.char(72,105,103,104,108,105,103,104,116)) or _0xCE5A:IsA(string.char(83,101,108,101,99,116,105,111,110,66,111,120)) then
if _0xCE5A.Name ==string.char(67,108,117,109,115,121,67,104,97,114,97,99,116,101,114,67,104,97,109,115)or _0xCE5A:IsA(string.char(83,101,108,101,99,116,105,111,110,66,111,120)) then _0xCE5A:Destroy() end
elseif _0xCE5A:IsA(string.char(83,117,114,102,97,99,101,65,112,112,101,97,114,97,110,99,101)) or _0xCE5A:IsA(string.char(84,101,120,116,117,114,101)) or _0xCE5A:IsA(string.char(68,101,99,97,108)) or _0xCE5A:IsA(string.char(87,114,97,112,76,97,121,101,114)) or _0xCE5A:IsA(string.char(87,114,97,112,84,97,114,103,101,116)) then
_0x8732(_0xCE5A, model)
elseif _0xCE5A:IsA(string.char(83,104,105,114,116)) or _0xCE5A:IsA(string.char(80,97,110,116,115)) or _0xCE5A:IsA(string.char(83,104,105,114,116,71,114,97,112,104,105,99)) or _0xCE5A:IsA(string.char(66,111,100,121,67,111,108,111,114,115)) or _0xCE5A:IsA(string.char(67,104,97,114,97,99,116,101,114,77,101,115,104)) then
_0x8732(_0xCE5A, model)
elseif _0xCE5A:IsA(string.char(83,112,101,99,105,97,108,77,101,115,104)) then
if not _0x6CE6[_0xCE5A] then _0x6CE6[_0xCE5A] = _0xCE5A.TextureId end
_0xCE5A.TextureId =""elseif _0xCE5A:IsA(string.char(77,101,115,104,80,97,114,116)) then
if not _0x6CE6[_0xCE5A] then _0x6CE6[_0xCE5A] = _0xCE5A.TextureID end
if not _0x647B[_0xCE5A] then
_0x647B[_0xCE5A] = {Material=_0xCE5A.Material, Color=_0xCE5A.Color, Transparency=_0xCE5A.Transparency, LocalTransparencyModifier=_0xCE5A.LocalTransparencyModifier, CastShadow=_0xCE5A.CastShadow}
end
_0xCE5A.Material = Enum.Material.ForceField
_0xCE5A.Color = _0xD7A8
_0xCE5A.Transparency = math.clamp(_0x5F19, 0, 1)
_0xCE5A.LocalTransparencyModifier = 0
_0xCE5A.CastShadow = false
_0xCE5A.TextureID =""elseif _0xCE5A:IsA(string.char(66,97,115,101,80,97,114,116)) and _0xCE5A.Name ~=string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)then
if not _0x647B[_0xCE5A] then
_0x647B[_0xCE5A] = {Material=_0xCE5A.Material, Color=_0xCE5A.Color, Transparency=_0xCE5A.Transparency, LocalTransparencyModifier=_0xCE5A.LocalTransparencyModifier, CastShadow=_0xCE5A.CastShadow}
end
_0xCE5A.Material = Enum.Material.ForceField
_0xCE5A.Color = _0xD7A8
_0xCE5A.Transparency = math.clamp(_0x5F19, 0, 1)
_0xCE5A.LocalTransparencyModifier = 0
_0xCE5A.CastShadow = false
end
end)
end
end
local function _0x4B39()
for _0x6F67, _0xF7C5 in pairs(_0x647B) do
if _0x6F67 and _0x6F67.Parent then
pcall(function()
_0x6F67.Material = _0xF7C5.Material
_0x6F67.Color = _0xF7C5.Color
_0x6F67.Transparency = _0xF7C5.Transparency
_0x6F67.LocalTransparencyModifier = _0xF7C5.LocalTransparencyModifier
_0x6F67.CastShadow = _0xF7C5.CastShadow
end)
end
end
for _0xCE5A, oldTexture in pairs(_0x6CE6) do
if _0xCE5A and _0xCE5A.Parent then pcall(function() _0xCE5A.TextureId = oldTexture end) end
end
for model, backups in pairs(_0x4DDE) do
if model and model.Parent then
for _0x624F, _0x4F55 in ipairs(backups) do
if _0x4F55.Clone then pcall(function() _0x4F55.Clone.Parent = _0x4F55.Parent or model end) end
end
end
end
_0x647B = {}
_0x6CE6 = {}
_0x4DDE = {}
end
_0xBF15 = function()
_0x121B = false
_0x4B39()
end
_0xB9EB(_0xB197.RenderStepped, function()
if _0x121B and _0x8E3D.Character then
_0x3568(_0x8E3D.Character)
end
end)
_0xB9EB(_0x8E3D.CharacterAdded, function(_0xD534)
_0x647B = {}
_0x6CE6 = {}
_0x4DDE = {}
if _0x121B then
task.defer(function()
if _0xD534 and _0xD534.Parent then _0x3568(_0xD534) end
end)
end
end)
local _0x5C95 = _0x45F1(_0xD635,string.char(87,101,97,112,111,110,32,67,104,97,109,115),string.char(77,111,100,101,108,115))
_0x5C95:Toggle(string.char(87,101,97,112,111,110,32,67,104,97,109,115),string.char(115,105,110,103,108,101,32,99,104,97,109,115,32,102,111,114,32,116,104,101,32,115,101,108,101,99,116,101,100,32,119,101,97,112,111,110), function(_0xE496)
_0x92EB = _0xE496
_0xD6BB()
_0xA9C1(string.char(87,101,97,112,111,110,32,67,104,97,109,115), _0xE496 andstring.char(101,110,97,98,108,101,100)orstring.char(100,105,115,97,98,108,101,100))
end)
_0x5C95:Segmented(string.char(87,101,97,112,111,110), {string.char(65,108,108),string.char(80,105,115,116,111,108),string.char(75,110,105,102,101)},string.char(65,108,108), function(_0x08C2)
_0x1C1C = _0x08C2
_0xD6BB()
_0xA9C1(string.char(87,101,97,112,111,110,32,67,104,97,109,115), _0x08C2)
end)
_0x5C95:ColorPicker(string.char(67,111,108,111,114),string.char(119,101,97,112,111,110,32,99,104,97,109,115,32,99,111,108,111,114), _0x3130, function(_0x242F)
_0x3130 = _0x242F
if _0x92EB then _0xD6BB() end
end)
_0x5C95:Slider(string.char(84,114,97,110,115,112,97,114,101,110,99,121), 0, 100, 35, function(_0xEB0B)
_0xA509 = _0xEB0B / 100
if _0x92EB then _0xD6BB() end
end, function(_0xEB0B) return _0xEB0B ..string.char(37)end)do
local _0x8B71 = false
local _0x16A6 =string.char(82,97,105,110)local _0xD350, _0xD686, _0x17E5
local function _0x843F()
if _0x17E5 then
pcall(function() _0x17E5:Disconnect() end)
_0x17E5 = nil
end
if _0xD350 then
pcall(function() _0xD350:Destroy() end)
_0xD350 = nil
end
_0xD686 = nil
end
local function _0x34A3()
_0x843F()
if not _0x8B71 or _0x16A6 ==string.char(79,102,102)then return end
local _0x45C3 = workspace.CurrentCamera
if not _0x45C3 then return end
local _0x6F67 = Instance.new(string.char(80,97,114,116))
_0x6F67.Name =string.char(67,108,117,109,115,121,95,76,111,99,97,108,87,101,97,116,104,101,114)_0x6F67.Size = Vector3.new(100, 1, 100)
_0x6F67.Anchored = true
_0x6F67.CanCollide = false
_0x6F67.CanTouch = false
_0x6F67.CanQuery = false
_0x6F67.Transparency = 1
_0x6F67.CastShadow = false
_0x6F67.CFrame = CFrame.new(_0x45C3.CFrame.Position + Vector3.new(0, 32, 0))
_0x6F67.Parent = workspace
_0xD350 = _0x6F67
local _0x6B64 = Instance.new(string.char(80,97,114,116,105,99,108,101,69,109,105,116,116,101,114))
_0x6B64.Name =string.char(67,108,117,109,115,121,87,101,97,116,104,101,114,80,97,114,116,105,99,108,101,115)_0x6B64.Texture =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,50,52,49,56,55,54,52,50,56)_0x6B64.Enabled = true
_0x6B64.LockedToPart = false
_0x6B64.EmissionDirection = Enum.NormalId.Bottom
_0x6B64.Shape = Enum.ParticleEmitterShape.Box
_0x6B64.ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume
_0x6B64.SpreadAngle = Vector2.new(10, 10)
if _0x16A6 ==string.char(82,97,105,110)then
_0x6B64.Rate = 650
_0x6B64.Lifetime = NumberRange.new(0.65, 1.0)
_0x6B64.Speed = NumberRange.new(90, 115)
_0x6B64.Acceleration = Vector3.new(0, -20, 0)
_0x6B64.Size = NumberSequence.new(0.25)
_0x6B64.Transparency = NumberSequence.new(0.15)
_0x6B64.Color = ColorSequence.new(Color3.fromRGB(175, 200, 235))
_0x6B64.Orientation = Enum.ParticleOrientation.VelocityParallel
else_0x0623.Rate = 220
_0x6B64.Lifetime = NumberRange.new(3, 5)
_0x6B64.Speed = NumberRange.new(7, 13)
_0x6B64.Acceleration = Vector3.new(0, -2, 0)
_0x6B64.SpreadAngle = Vector2.new(25, 25)
_0x6B64.RotSpeed = NumberRange.new(-35, 35)
_0x6B64.Size = NumberSequence.new(0.35)
_0x6B64.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.1), NumberSequenceKeypoint.new(1, 0.4)})
_0x6B64.Color = ColorSequence.new(Color3.fromRGB(255, 255, 255))
end
_0x6B64.Parent = _0x6F67
_0xD686 = _0x6B64
_0x17E5 = _0xB197.RenderStepped:Connect(function()
if not _0x8B71 or not _0xD350 or not _0xD350.Parent then return end
local _0xEB10 = workspace.CurrentCamera
if _0xEB10 then
_0xD350.CFrame = CFrame.new(_0xEB10.CFrame.Position + Vector3.new(0, 32, 0))
end
end)
end
local _0x6EBE = _0x45F1(_0xD635,string.char(87,101,97,116,104,101,114,32,69,102,102,101,99,116,115,32,194,183,32,83,104,97,100,101,114),string.char(83,104,97,100,101,114))
_0x6EBE:Toggle(string.char(69,110,97,98,108,101,32,87,101,97,116,104,101,114),string.char(116,117,114,110,32,108,111,99,97,108,32,119,101,97,116,104,101,114,32,112,97,114,116,105,99,108,101,115,32,111,110,32,111,114,32,111,102,102), function(_0xE496)
_0x8B71 = _0xE496 == true
if _0x8B71 then _0x34A3() else _0x843F() end
if _0xA9C1 then _0xA9C1(string.char(87,101,97,116,104,101,114), _0x8B71 and _0x16A6 orstring.char(79,102,102)) end
end)
_0x6EBE:Dropdown(string.char(87,101,97,116,104,101,114,32,84,121,112,101),string.char(99,104,111,111,115,101,32,82,97,105,110,44,32,83,110,111,119,44,32,111,114,32,79,102,102), {string.char(82,97,105,110),string.char(83,110,111,119),string.char(79,102,102)},string.char(82,97,105,110), function(_0x08C2)
_0x16A6 = _0x08C2
if _0x8B71 then
if _0x16A6 ==string.char(79,102,102)then _0x843F() else _0x34A3() end
end
end)
local _0x6AC0 = _0x2E3D
_0x2E3D = function()
_0x8B71 = false
_0x843F()
if _0x6AC0 then pcall(_0x6AC0) end
end
end
local _0x9D2F = _0x45F1(_0xD635,string.char(83,104,97,100,101,114,115),string.char(83,104,97,100,101,114))
_0x9D2F:Toggle(string.char(67,104,97,114,97,99,116,101,114,32,67,104,97,109,115),string.char(99,108,101,97,110,32,70,111,114,99,101,70,105,101,108,100,32,99,104,97,109,115,32,111,110,32,121,111,117,114,32,99,104,97,114,97,99,116,101,114), function(_0xE496)
_0x121B = _0xE496
if _0xE496 then
if _0x8E3D.Character then _0x3568(_0x8E3D.Character) end
else
_0x4B39()
end
_0xA9C1(string.char(67,104,97,114,97,99,116,101,114,32,67,104,97,109,115), _0xE496 andstring.char(101,110,97,98,108,101,100)orstring.char(100,105,115,97,98,108,101,100))
end)
_0x9D2F:ColorPicker(string.char(67,111,108,111,114),string.char(99,104,97,114,97,99,116,101,114,32,99,104,97,109,115,32,99,111,108,111,114), _0xD7A8, function(_0x242F)
_0xD7A8 = _0x242F
if _0x121B and _0x8E3D.Character then _0x3568(_0x8E3D.Character) end
end)
_0x9D2F:Slider(string.char(84,114,97,110,115,112,97,114,101,110,99,121), 0, 100, 0, function(_0xEB0B)
_0x5F19 = _0xEB0B / 100
if _0x121B and _0x8E3D.Character then _0x3568(_0x8E3D.Character) end
end, function(_0xEB0B) return _0xEB0B ..string.char(37)end)do
local _0x04E7 = {
enabled = false,
_0x15D8 = Color3.fromRGB(120, 75, 40),
_0x0341 = {},
tweens = {},
originals = {},
transitionId = 0,
}
local function _0x9C6D(_0x6F67)
if not _0x6F67 or not _0x6F67:IsA(string.char(66,97,115,101,80,97,114,116)) then return true endif _0x6F67:FindFirstAncestorOfClass(string.char(84,111,111,108)) then return true endfor _0x624F, plr in ipairs(_0xD101:GetPlayers()) do
local _0xD534 = plr.Character
if _0xD534 and (_0x6F67 == _0xD534 or _0x6F67:IsDescendantOf(_0xD534)) then return true end
endlocal _0xDA08 = _0x6F67
while _0xDA08 and _0xDA08 ~= workspace do
local _0x08DF = string.lower(_0xDA08.Name)
if _0xDA08.Name ==string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,104,97,104,101,100)or _0xDA08.Name ==string.char(67,108,117,109,115,121,83,99,114,105,112,116,68,114,111,110,101)or _0xDA08.Name ==string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,104,97,104,101,100,82,101,112,108,97,121,84,97,98,108,101,116)or _0xDA08.Name ==string.char(67,108,117,109,115,121,83,99,114,105,112,116,83,104,97,104,101,100,82,101,99)or _0xDA08.Name ==string.char(67,108,117,109,115,121,95,68,101,97,116,104,67,108,111,110,101)or _0xDA08.Name ==string.char(67,108,117,109,115,121,95,68,101,97,116,104,80,97,114,116,105,99,108,101,115)or string.find(_0x08DF,string.char(100,101,97,116,104,102,120), 1, true)
or string.find(_0x08DF,string.char(100,101,97,116,104,95,101,102,102,101,99,116), 1, true)
or string.find(_0x08DF,string.char(114,97,103,100,111,108,108), 1, true)
or string.find(_0x08DF,string.char(99,111,114,112,115,101), 1, true) then
return true
endif _0xDA08:IsA(string.char(77,111,100,101,108)) and _0xDA08:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100)) then return true end
_0xDA08 = _0xDA08.Parent
end
return false
end
local function _0x3DDE()
for _0x6F67, _0xAD43 in pairs(_0x04E7.tweens) do
pcall(function() _0xAD43:Cancel() end)
_0x04E7.tweens[_0x6F67] = nil
end
end
local function _0xF2DF(_0x6F67)
if _0x9C6D(_0x6F67) then return false end
if not _0x04E7.originals[_0x6F67] then
local _0xFB60 = {
Color = _0x6F67.Color,
Material = _0x6F67.Material,
Transparency = _0x6F67.Transparency,
Reflectance = _0x6F67.Reflectance,
CastShadow = _0x6F67.CastShadow,
TextureID = _0x6F67:IsA(string.char(77,101,115,104,80,97,114,116)) and _0x6F67.TextureID or nil,
children = {},
meshTextures = {},
}
for _0x624F, child in ipairs(_0x6F67:GetChildren()) do
if child:IsA(string.char(83,117,114,102,97,99,101,65,112,112,101,97,114,97,110,99,101)) or child:IsA(string.char(84,101,120,116,117,114,101)) or child:IsA(string.char(68,101,99,97,108)) then
local _0xD828, _0xC65D = pcall(function() return child:Clone() end)
if _0xD828 and _0xC65D then table.insert(_0xFB60.children, _0xC65D) end
elseif child:IsA(string.char(83,112,101,99,105,97,108,77,101,115,104)) or child:IsA(string.char(66,108,111,99,107,77,101,115,104)) or child:IsA(string.char(67,121,108,105,110,100,101,114,77,101,115,104)) then
local _0xD828, _0xD408 = pcall(function() return child.TextureId end)
if _0xD828 then _0xFB60.meshTextures[child] = _0xD408 end
end
end
_0x04E7.originals[_0x6F67] = _0xFB60
end
pcall(function()
if _0x6F67:IsA(string.char(77,101,115,104,80,97,114,116)) then _0x6F67.TextureID =""end
for _0x624F, child in ipairs(_0x6F67:GetChildren()) do
if child:IsA(string.char(83,112,101,99,105,97,108,77,101,115,104)) or child:IsA(string.char(66,108,111,99,107,77,101,115,104)) or child:IsA(string.char(67,121,108,105,110,100,101,114,77,101,115,104)) then
pcall(function() child.TextureId =""end)
elseif child:IsA(string.char(83,117,114,102,97,99,101,65,112,112,101,97,114,97,110,99,101)) or child:IsA(string.char(84,101,120,116,117,114,101)) or child:IsA(string.char(68,101,99,97,108)) then
child:Destroy()
end
end
_0x6F67.Material = Enum.Material.SmoothPlastic
end)
return true
end
local function _0x8A23()
for _0x6F67, _0xFB60 in pairs(_0x04E7.originals) do
pcall(function()
if _0x6F67 and _0x6F67.Parent then
_0x6F67.Color = _0xFB60.Color
_0x6F67.Material = _0xFB60.Material
_0x6F67.Transparency = _0xFB60.Transparency
_0x6F67.Reflectance = _0xFB60.Reflectance
_0x6F67.CastShadow = _0xFB60.CastShadow
if _0x6F67:IsA(string.char(77,101,115,104,80,97,114,116)) and _0xFB60.TextureID ~= nil then _0x6F67.TextureID = _0xFB60.TextureID end
for child, _0xD408 in pairs(_0xFB60.meshTextures) do
if child and child.Parent then child.TextureId = _0xD408 end
end
for _0x624F, _0xC65D in ipairs(_0xFB60.children) do
if _0xC65D then _0xC65D.Parent = _0x6F67 end
end
end
end)
_0x04E7.originals[_0x6F67] = nil
end
_0x04E7.parts = {}
end
local function _0x91FA()
_0x04E7.parts = {}
for _0x624F, _0xCE5A in ipairs(workspace:GetDescendants()) do
if _0xCE5A:IsA(string.char(66,97,115,101,80,97,114,116)) and _0xF2DF(_0xCE5A) then
_0x04E7.parts[#_0x04E7.parts + 1] = _0xCE5A
end
end
end
local function _0x3024(_0x15D8)
if not _0x04E7.enabled then return end
_0x04E7.transitionId += 1
local _0x4FE3 = _0x04E7.transitionId
_0x3DDE()local _0xBD79 = 1
local _0x151C = 90
local _0x2193
_0x2193 = _0xB197.Heartbeat:Connect(function()
if _0x4FE3 ~= _0x04E7.transitionId or not _0x04E7.enabled then
_0x2193:Disconnect()
return
end
local _0x3133 = math.min(_0xBD79 + _0x151C - 1, #_0x04E7.parts)
for _0x269E = _0xBD79, _0x3133 do
local _0x6F67 = _0x04E7.parts[_0x269E]
if _0x6F67 and _0x6F67.Parent and not _0x9C6D(_0x6F67) then
local _0xAD43 = _0x8185:Create(_0x6F67, TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Color = _0x15D8})
_0x04E7.tweens[_0x6F67] = _0xAD43
_0xAD43.Completed:Connect(function()
if _0x04E7.tweens[_0x6F67] == _0xAD43 then _0x04E7.tweens[_0x6F67] = nil end
end)
_0xAD43:Play()
end
end
_0xBD79 = _0x3133 + 1
if _0xBD79 > #_0x04E7.parts then
_0x2193:Disconnect()
end
end)
end
local function _0x1774()
if not _0x04E7.enabled then return end
_0x91FA()
_0x3024(_0x04E7.color)
end
_0xB9EB(workspace.DescendantAdded, function(_0xCE5A)
if not _0x04E7.enabled then return end
task.defer(function()
if not _0xCE5A or not _0xCE5A.Parent then return end
if _0xCE5A:IsA(string.char(66,97,115,101,80,97,114,116)) then
if _0xF2DF(_0xCE5A) then
table.insert(_0x04E7.parts, _0xCE5A)
local _0xAD43 = _0x8185:Create(_0xCE5A, TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Color = _0x04E7.color})
_0xAD43:Play()
end
end
end)
end)
local _0x386B = _0x45F1(_0xD635,string.char(87,97,108,108,32,83,104,97,100,101,114,115),string.char(83,104,97,100,101,114))
_0x386B:Toggle(string.char(87,97,108,108,32,83,104,97,100,101,114),string.char(108,111,99,97,108,32,119,97,108,108,32,99,111,108,111,114,32,115,104,97,100,101,114,59,32,112,108,97,121,101,114,115,44,32,119,101,97,112,111,110,115,32,97,110,100,32,100,114,111,110,101,115,32,97,114,101,32,112,114,111,116,101,99,116,101,100), function(_0xE496)
_0x04E7.enabled = _0xE496
if _0xE496 then
_0x1774()
_0xA9C1(string.char(87,97,108,108,32,83,104,97,100,101,114),string.char(101,110,97,98,108,101,100))
else
_0x04E7.transitionId += 1
_0x3DDE()
_0x8A23()
_0xA9C1(string.char(87,97,108,108,32,83,104,97,100,101,114),string.char(100,105,115,97,98,108,101,100))
end
end)
_0x386B:ColorPicker(string.char(67,111,108,111,114),string.char(115,109,111,111,116,104,32,119,97,108,108,32,99,111,108,111,114), _0x04E7.color, function(_0x242F)
_0x04E7.color = _0x242F
if _0x04E7.enabled then _0x3024(_0x242F) end
end)_0x1AC0 = function()
_0x04E7.enabled = false
_0x04E7.transitionId += 1
_0x3DDE()
_0x8A23()
end
end
_0xB9EB(_0x8E3D.CharacterAdded, function()
task.wait(0.25)
if _0x92EB then _0xD6BB() end
if _0x121B and _0x8E3D.Character then _0x3568(_0x8E3D.Character) end
end)
_0xB9EB(_0x8E3D.ChildAdded, function(child)
if child:IsA(string.char(66,97,99,107,112,97,99,107)) then
task.wait(0.1)
if _0x92EB then _0xD6BB() end
end
end)
end
local _0xE31B=_0x45F1(_0xD635,string.char(68,101,97,116,104,32,69,102,102,101,99,116,115))
_0xE31B:Toggle(string.char(68,101,97,116,104,32,69,102,102,101,99,116,115),string.char(110,101,119,32,88,45,82,97,121,32,100,101,97,116,104,32,118,105,115,117,97,108,115),function(_0xE496)
_0x5929.on=_0xE496
if not _0xE496 then _0xA0CA() end
_0xA9C1(string.char(68,101,97,116,104,32,69,102,102,101,99,116,115,58,32)..(_0xE496 andstring.char(79,110)orstring.char(79,102,102)),_0xE496 andstring.char(101,110,97,98,108,101,100)orstring.char(100,105,115,97,98,108,101,100))
end)
_0xE31B:Segmented(string.char(69,102,102,101,99,116),{string.char(71,104,111,115,116),string.char(68,111,116,115),string.char(79,102,102)},string.char(71,104,111,115,116),function(_0xEB0B) _0x5929.effect=_0xEB0B end)
_0xE31B:Segmented(string.char(84,97,114,103,101,116),{string.char(69,118,101,114,121,111,110,101),string.char(77,117,114,100,101,114,101,114)},string.char(69,118,101,114,121,111,110,101),function(_0xEB0B) _0x5929.target=_0xEB0B end)
_0xE31B:Slider(string.char(68,117,114,97,116,105,111,110),1,8,4,function(_0xEB0B) _0x5929.duration=_0xEB0B end,function(_0xEB0B) return string.format(string.char(37,46,49,102,115),_0xEB0B) end)
enddo
local _0xCAA3 = {
[string.char(80,117,114,112,108,101,32,78,101,98,117,108,97)] = {string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,51,54,57,52,57,53,50,56,54,55),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,51,54,57,52,57,54,56,51,50,53),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,51,54,57,52,57,56,48,54,53,52),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,51,54,57,52,57,57,56,49,49,51),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,51,54,57,53,48,48,50,55,48,48),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,51,54,57,53,48,48,55,49,48,51),3000},
[string.char(82,101,100,32,78,105,103,104,116)] = {string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,52,48,49,54,54,52,56,51,57),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,52,48,49,54,54,52,56,54,50),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,52,48,49,54,54,52,57,54,48),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,52,48,49,54,54,52,56,56,49),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,52,48,49,54,54,52,57,48,49),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,52,48,49,54,54,52,57,51,54),3000},
[string.char(71,97,108,97,120,121)] = {string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,53,57,52,53,52,50,57,57),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,53,57,52,53,52,50,57,54),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,53,57,52,53,52,50,57,51),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,53,57,52,53,52,50,56,54),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,53,57,52,53,52,51,48,48),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,53,57,52,53,52,50,56,56),5000},
[string.char(66,108,111,115,115,111,109)] = {string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,50,55,49,48,52,50,53,49,54),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,50,55,49,48,55,55,50,52,51),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,50,55,49,48,52,50,53,53,54),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,50,55,49,48,52,50,51,49,48),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,50,55,49,48,52,50,52,54,55),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,50,55,49,48,55,55,57,53,56),3000},
[string.char(74,117,110,103,108,101)] = {string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,50,49,52,51,57,57,56,57,49),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,50,49,52,51,57,57,56,56,55),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,50,49,52,51,57,57,56,57,52),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,50,49,52,52,48,53,54,54,56),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,50,49,52,51,57,57,56,57,57),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,50,49,52,51,57,57,56,56,57),3000},
[string.char(70,111,103,103,121)] = {string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,51,55,48,55,49,55,50,52,52),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,51,55,48,55,49,55,51,51,54),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,51,55,48,55,49,55,52,51,56),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,51,55,48,55,49,55,53,54,55),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,51,55,48,55,49,55,54,57,56),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,51,55,48,55,49,55,55,56,50),1000},
[string.char(83,117,110,115,101,116)] = {string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,54,48,48,56,51,48,52,52,54),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,54,48,48,56,51,49,54,51,53),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,54,48,48,56,51,48,52,52,54),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,54,48,48,56,51,48,52,52,54),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,54,48,48,56,51,48,52,52,54),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,54,48,48,56,51,49,54,51,53),3000},
[string.char(83,116,97,114,114,121,32,78,105,103,104,116)] = {string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,50,48,54,52,49,48,55),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,50,48,54,52,49,53,50),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,50,48,54,52,49,50,49),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,50,48,54,51,57,56,52),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,50,48,54,52,49,49,53),string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,50,48,54,52,49,52,53),8000},
}
local _0x21C7, _0x1891, _0x3794 = false, {}, nil
local _0x6C53 =string.char(80,105,99,116,117,114,101,115)local _0xA0EB =string.char(80,117,114,112,108,101,32,78,101,98,117,108,97)local _0xAE4F = Color3.fromRGB(200, 0, 255)
local _0xB366
local function _0x1FB7()
for _0x624F, _0xF7C5 in ipairs(_0x8639:GetChildren()) do
if _0xF7C5:IsA(string.char(83,107,121)) and _0xF7C5 ~= _0x3794 then
pcall(function() _0xF7C5:Destroy() end)
end
end
end
local _0xF25A = {}
local _0x69A7 = Color3.fromRGB(0, 115, 255)
local _0x741B = 250
local function _0x5427()
for _0x624F, _0x6F67 in ipairs(_0xF25A) do pcall(function() _0x6F67:Destroy() end) end
table.clear(_0xF25A)
end
local function _0xDE33()
_0x5427()
local _0xA65E, _0x428B = _0x741B, _0x741B * 2
local _0x0180 = {Vector3.new(0,_0xA65E,0),Vector3.new(0,-_0xA65E,0),Vector3.new(0,0,-_0xA65E),Vector3.new(0,0,_0xA65E),Vector3.new(-_0xA65E,0,0),Vector3.new(_0xA65E,0,0)}
local _0x8AA3 = {Vector3.new(_0x428B,1,_0x428B),Vector3.new(_0x428B,1,_0x428B),Vector3.new(_0x428B,_0x428B,1),Vector3.new(_0x428B,_0x428B,1),Vector3.new(1,_0x428B,_0x428B),Vector3.new(1,_0x428B,_0x428B)}
local _0x04CE = workspace.CurrentCamera
local _0x748C = _0x04CE and _0x04CE.CFrame.Position or Vector3.zero
for _0x269E = 1, 6 do
local _0x6F67 = Instance.new(string.char(80,97,114,116))
_0x6F67.Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,95,77,77,50,67,117,98,101,87,97,108,108).. _0x269E
_0x6F67.Material = Enum.Material.Neon
_0x6F67.Anchored = true
_0x6F67.CanCollide = false
_0x6F67.CanTouch = false
_0x6F67.CanQuery = false
_0x6F67.CastShadow = false
_0x6F67.Size = _0x8AA3[_0x269E]
_0x6F67.Color = _0x69A7
_0x6F67.CFrame = CFrame.new(_0x748C + _0x0180[_0x269E])
_0x6F67.Parent = workspace
table.insert(_0xF25A, _0x6F67)
end
end
local function _0xCA5C()
_0x5427()
if _0x3794 then
pcall(function() _0x3794:Destroy() end)
_0x3794 = nil
end
end
local function _0x54A9()
if not _0x21C7 then return end
_0xCA5C()
if _0x6C53 ~=string.char(80,105,99,116,117,114,101,115)then
_0x1FB7()
end
if _0x6C53 ==string.char(80,105,99,116,117,114,101,115)then
local _0xA65E = _0xCAA3[_0xA0EB] or _0xCAA3[string.char(80,117,114,112,108,101,32,78,101,98,117,108,97)]
_0x3794 = Instance.new(string.char(83,107,121))
_0x3794.Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,95,83,107,121,98,111,120)_0x3794.SkyboxBk = _0xA65E[1]
_0x3794.SkyboxDn = _0xA65E[2]
_0x3794.SkyboxFt = _0xA65E[3]
_0x3794.SkyboxLf = _0xA65E[4]
_0x3794.SkyboxRt = _0xA65E[5]
_0x3794.SkyboxUp = _0xA65E[6]
_0x3794.StarCount = _0xA65E[7]
_0x3794.CelestialBodiesShown = false
_0x3794.Parent = _0x8639
_0x1FB7()
else_0x35A8()
end
end
local function _0x7A1A(_0xE496)
if _0xE496 and not _0x21C7 then
table.clear(_0x1891)
for _0x624F, _0xF7C5 in ipairs(_0x8639:GetChildren()) do
if _0xF7C5:IsA(string.char(83,107,121)) then table.insert(_0x1891, _0xF7C5:Clone()) end
end
_0x21C7 = true
elseif not _0xE496 and _0x21C7 then
_0x21C7 = false
if _0xB366 then pcall(function() _0xB366:Disconnect() end) _0xB366=nil end
_0xCA5C()
for _0x624F, _0xF7C5 in ipairs(_0x1891) do pcall(function() _0xF7C5.Parent = _0x8639 end) end
table.clear(_0x1891)
return
end
_0x54A9()
if _0x21C7 and not _0xB366 then
_0xB366 = _0x8639.ChildAdded:Connect(function(_0xCE5A)
if _0x21C7 and _0xCE5A:IsA(string.char(83,107,121)) and _0xCE5A ~= _0x3794 then
task.defer(function()
if _0x21C7 and _0xCE5A.Parent then pcall(function() _0xCE5A:Destroy() end) end
end)
end
end)
end
end
_0xF7F9 = function()
_0x21C7 = false
if _0xB366 then pcall(function() _0xB366:Disconnect() end) _0xB366=nil end
_0xCA5C()
for _0x624F, _0xCE5A in ipairs(_0x8639:GetChildren()) do
if _0xCE5A:IsA(string.char(83,107,121)) and _0xCE5A.Name ==string.char(67,108,117,109,115,121,83,99,114,105,112,116,95,83,107,121,98,111,120)then
pcall(function() _0xCE5A:Destroy() end)
end
end
for _0x624F, _0xF7C5 in ipairs(_0x1891) do
if _0xF7C5 and _0xF7C5.Parent == nil then pcall(function() _0xF7C5.Parent = _0x8639 end) end
end
table.clear(_0x1891)
end
_0xB9EB(_0xB197.Heartbeat, function()
if not _0x21C7 then return end
if _0x6C53 ==string.char(80,105,99,116,117,114,101,115)and (not _0x3794 or not _0x3794.Parent) then
_0x54A9()
elseif _0x6C53 ==string.char(67,117,98,101)then
local _0x04CE = workspace.CurrentCamera
if not _0x04CE or #_0xF25A < 6 then
_0xDE33()
else
local _0x748C, _0xA65E = _0x04CE.CFrame.Position, _0x741B
local _0x0180 = {Vector3.new(0,_0xA65E,0),Vector3.new(0,-_0xA65E,0),Vector3.new(0,0,-_0xA65E),Vector3.new(0,0,_0xA65E),Vector3.new(-_0xA65E,0,0),Vector3.new(_0xA65E,0,0)}
for _0x269E, _0x6F67 in ipairs(_0xF25A) do
if _0x6F67 and _0x6F67.Parent then
_0x6F67.Color = _0x69A7
_0x6F67.CFrame = CFrame.new(_0x748C + _0x0180[_0x269E])
end
end
end
end
end)
local _0xFF29 = _0x45F1(_0xD635,string.char(83,107,121,98,111,120),string.char(77,111,100,101,108,115))
_0xFF29:Toggle(string.char(83,107,121,98,111,120),string.char(112,105,99,116,117,114,101,115,32,111,114,32,116,104,101,32,77,77,50,32,99,117,98,101), function(_0xEB0B)
_0x7A1A(_0xEB0B)
_0xA9C1(string.char(83,107,121,98,111,120), _0xEB0B and _0x6C53 orstring.char(100,105,115,97,98,108,101,100))
end)
_0xFF29:Select(string.char(84,121,112,101),string.char(99,104,111,111,115,101,32,112,105,99,116,117,114,101,115,32,111,114,32,116,104,101,32,77,77,50,32,99,117,98,101), {string.char(80,105,99,116,117,114,101,115),string.char(67,117,98,101)}, _0x6C53, function(_0xEB0B)
_0x6C53 = _0xEB0B
if _0x21C7 then _0x7A1A(true) end
_0xA9C1(string.char(83,107,121,98,111,120), _0xEB0B)
end)
_0xFF29:Select(string.char(80,105,99,116,117,114,101),string.char(99,104,111,111,115,101,32,116,104,101,32,115,107,121,32,112,105,99,116,117,114,101), {string.char(80,117,114,112,108,101,32,78,101,98,117,108,97),string.char(82,101,100,32,78,105,103,104,116),string.char(71,97,108,97,120,121),string.char(66,108,111,115,115,111,109),string.char(74,117,110,103,108,101),string.char(70,111,103,103,121),string.char(83,117,110,115,101,116),string.char(83,116,97,114,114,121,32,78,105,103,104,116)}, _0xA0EB, function(_0xEB0B)
_0xA0EB = _0xEB0B
if _0x21C7 and _0x6C53 ==string.char(80,105,99,116,117,114,101,115)then _0x7A1A(true) end
_0xA9C1(string.char(83,107,121,98,111,120), _0xEB0B)
end)
_0xFF29:ColorPicker(string.char(67,117,98,101,32,67,111,108,111,114),string.char(99,104,111,111,115,101,32,116,104,101,32,99,111,108,111,114,32,102,111,114,32,116,104,101,32,77,77,50,32,99,117,98,101), _0xAE4F, function(_0x242F)
_0xAE4F = _0x242F
_0x69A7 = _0x242F
if _0x21C7 and _0x6C53 ==string.char(67,117,98,101)then
for _0x624F, _0x6F67 in ipairs(_0xF25A) do
if _0x6F67 and _0x6F67.Parent then _0x6F67.Color = _0x242F end
end
end
end)
enddo
local _0xCFC1 = {
White = Color3.fromRGB(235,235,235),
Orange = Color3.fromRGB(255,140,0),
Red = Color3.fromRGB(255,70,70),
Purple = Color3.fromRGB(190,100,255),
Blue = Color3.fromRGB(90,160,255),
Green = Color3.fromRGB(90,255,150),
}
local _0x7698 = _0xCFC1.White
local _0xDE4A = false
local _0x3767 = 50
local _0xCF22 = nil
local function _0xBEB9(_0xE496)
if _0xE496 and not _0xDE4A then
_0xCF22 = {_0x8639.FogColor, _0x8639.FogStart, _0x8639.FogEnd}
_0xDE4A = true
elseif not _0xE496 and _0xDE4A then
_0xDE4A = false
if _0xCF22 then
_0x8639.FogColor = _0xCF22[1]
_0x8639.FogStart = _0xCF22[2]
_0x8639.FogEnd = _0xCF22[3]
end
return
end
if _0xDE4A then
_0x8639.FogColor = _0x7698
_0x8639.FogStart = 0
_0x8639.FogEnd = _0x3767
end
end
local _0x7103 = _0x45F1(_0xD635,string.char(70,111,103),string.char(77,111,100,101,108,115))
_0x7103:Toggle(string.char(70,111,103),string.char(108,111,99,97,108,32,102,111,103,32,101,102,102,101,99,116), function(_0xEB0B)
_0xBEB9(_0xEB0B)
_0xA9C1(string.char(70,111,103), _0xEB0B andstring.char(101,110,97,98,108,101,100)orstring.char(100,105,115,97,98,108,101,100))
end)
_0x7103:Segmented(string.char(67,111,108,111,114), {string.char(87,104,105,116,101),string.char(79,114,97,110,103,101),string.char(82,101,100),string.char(80,117,114,112,108,101),string.char(66,108,117,101),string.char(71,114,101,101,110)},string.char(87,104,105,116,101), function(_0xEB0B)
_0x7698 = _0xCFC1[_0xEB0B] or _0xCFC1.White
if _0xDE4A then
_0x8639.FogColor = _0x7698
end
end)
_0x7103:Slider(string.char(68,105,115,116,97,110,99,101), 25, 1500, _0x3767, function(_0xEB0B)
_0x3767 = math.floor(_0xEB0B + 0.5)
if _0xDE4A then
_0x8639.FogEnd = _0x3767
end
end, function(_0xEB0B)
return tostring(math.floor(_0xEB0B + 0.5))
end)
_0x4654 = function()
_0xDE4A = false
if _0xCF22 then
pcall(function()
_0x8639.FogColor = _0xCF22[1]
_0x8639.FogStart = _0xCF22[2]
_0x8639.FogEnd = _0xCF22[3]
end)
end
_0xCF22 = nil
end
local _0xF2A3 = false
local _0x24A2 = Color3.fromRGB(255,70,70)
local _0x7DEC = 7
local _0x2819 = true
local _0xA01D = 0
local _0x7F06 = {
Red=Color3.fromRGB(255,70,70),
Orange=Color3.fromRGB(255,140,0),
Purple=Color3.fromRGB(190,100,255),
White=Color3.fromRGB(255,255,255),
Blue=Color3.fromRGB(90,160,255),
Green=Color3.fromRGB(90,255,150),
}
_0xB9EB(_0xB197.Heartbeat, function()
if not _0xF2A3 then
_0x2819 = true
return
end
local _0xD95E = _0x8E3D.Character
local _0xC3CF = _0xD95E and _0xD95E:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0xC6D1 = _0xD95E and _0xD95E:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0xC3CF or not _0xC6D1 then return end
local _0xE57A = _0xC3CF.FloorMaterial ~= Enum.Material.Air
if _0xE57A then _0x2819 = true end
if not _0xE57A and _0x2819 and os.clock() - _0xA01D >= 0.4 then
_0xA01D = os.clock()
_0x2819 = false
local _0xF36B = RaycastParams.new()
_0xF36B.FilterType = Enum.RaycastFilterType.Exclude
_0xF36B.FilterDescendantsInstances = {_0xD95E}
local _0x9E39 = workspace:Raycast(_0xC6D1.Position, Vector3.new(0,-10,0), _0xF36B)
local _0x546B = _0x9E39 and _0x9E39.Position.Y + 0.05 or _0xC6D1.Position.Y - 3
local _0x6608 = Instance.new(string.char(80,97,114,116))
_0x6608.Name =string.char(67,108,117,109,115,121,83,99,114,105,112,116,95,74,117,109,112,82,105,110,103)_0x6608.Shape = Enum.PartType.Cylinder
_0x6608.Size = Vector3.new(0.05, 1.5, 1.5)
_0x6608.CFrame = CFrame.new(_0xC6D1.Position.X, _0x546B, _0xC6D1.Position.Z) * CFrame.Angles(0,0,math.rad(90))
_0x6608.Anchored = true
_0x6608.CanCollide = false
_0x6608.CanQuery = false
_0x6608.CanTouch = false
_0x6608.Transparency = 0.15
_0x6608.Material = Enum.Material.Neon
_0x6608.Color = _0x24A2
_0x0961(_0x6608, 0.7)
_0x6608.Parent = workspace
local _0xAD43 = _0x8185:Create(
_0x6608,
TweenInfo.new(0.9, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
{Size = Vector3.new(0.05, _0x7DEC, _0x7DEC), Transparency = 1}
)
_0xAD43:Play()
task.delay(0.95, function()
if _0x6608.Parent then _0x6608:Destroy() end
end)
end
end)
local _0xD65D = _0x45F1(_0xD635,string.char(74,117,109,112,32,69,102,102,101,99,116),string.char(77,111,100,101,108,115))
_0xD65D:Toggle(string.char(74,117,109,112,32,82,105,110,103),string.char(111,108,100,32,67,108,117,109,115,121,32,106,117,109,112,32,101,102,102,101,99,116), function(_0xEB0B)
_0xF2A3 = _0xEB0B
end)
_0xD65D:Segmented(string.char(67,111,108,111,114), {string.char(82,101,100),string.char(79,114,97,110,103,101),string.char(80,117,114,112,108,101),string.char(87,104,105,116,101),string.char(66,108,117,101),string.char(71,114,101,101,110)},string.char(82,101,100), function(_0xEB0B)
_0x24A2 = _0x7F06[_0xEB0B] or _0x7F06.Red
end)
_0xD65D:Slider(string.char(82,97,100,105,117,115), 2, 18, _0x7DEC, function(_0xEB0B)
_0x7DEC = math.floor(_0xEB0B + 0.5)
end, function(_0xEB0B)
return tostring(math.floor(_0xEB0B + 0.5))
end)
end
local _0x46D0 = _0x6C5D.page
_0x6C5D.custom = true
local _0x7B8D = {}
local _0x10E9 = {}
local _0x713C
local _0x2997
local _0x82F1, _0xEBE5
local _0x0220 = 0
local function _0xD4F6(_0x09CD)
if _0x2768(_0x09CD,string.char(75,110,105,102,101)) then
returnstring.char(77,117,114,100,101,114,101,114), Color3.fromRGB(255, 80, 80)
end
if _0x2768(_0x09CD,string.char(71,117,110)) then
returnstring.char(83,104,101,114,105,102,102), Color3.fromRGB(80, 160, 255)
end
local _0xC982 = _0x10E9[_0x09CD.Name]
if _0xC982 ==string.char(77,117,114,100,101,114,101,114)then
returnstring.char(77,117,114,100,101,114,101,114), Color3.fromRGB(255, 80, 80)
end
if _0xC982 ==string.char(83,104,101,114,105,102,102)or _0xC982 ==string.char(72,101,114,111)then
return _0xC982, Color3.fromRGB(80, 160, 255)
end
returnstring.char(73,110,110,111,99,101,110,116), _0x2E02
end
local function _0x6415()
_0x2997 = nil
local _0xC3CF = _0xFFF1()
local _0x04CE = workspace.CurrentCamera
if _0xC3CF and _0x04CE then
_0x04CE.CameraType = Enum.CameraType.Custom
_0x04CE.CameraSubject = _0xC3CF
end
end
local function _0xCB0F(_0xCC3C)
if _0x2997 == _0xCC3C then
_0x6415()
_0xA9C1(string.char(83,112,101,99,116,97,116,101),string.char(98,97,99,107,32,116,111,32,121,111,117,114,32,99,104,97,114,97,99,116,101,114))
return
end
local _0xD95E = _0xCC3C.Character
local _0xC3CF = _0xD95E and _0xD95E:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if not _0xC3CF then
_0xA9C1(string.char(83,112,101,99,116,97,116,101),string.char(112,108,97,121,101,114,32,105,115,32,110,111,116,32,97,108,105,118,101))
return
end
_0x2997 = _0xCC3C
workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
workspace.CurrentCamera.CameraSubject = _0xC3CF
_0xA9C1(string.char(83,112,101,99,116,97,116,101), _0xCC3C.DisplayName)
end
local function _0xEE42()
_0x82F1 = nil
if _0xEBE5 then
pcall(function()
_0xEBE5:Stop(0.15)
_0xEBE5:Destroy()
end)
_0xEBE5 = nil
end
end
local function _0x7E3F(_0xCC3C)
if _0x82F1 == _0xCC3C then
_0xEE42()
_0xA9C1(string.char(66,97,110,103),string.char(115,116,111,112,112,101,100))
return
end
local _0xF224 = _0xCC3C.Character
local _0xE68A = _0xF224 and _0xF224:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0x5E5B = _0xF224 and _0xF224:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xC3CF = _0xFFF1()
if not (_0xE68A and _0xE68A.Health > 0 and _0x5E5B and _0xC3CF and _0xC3CF.Health > 0) then
_0xA9C1(string.char(66,97,110,103),string.char(112,108,97,121,101,114,32,105,115,32,110,111,116,32,97,118,97,105,108,97,98,108,101))
return
end
_0xEE42()
_0x82F1 = _0xCC3C
_0x0220 = os.clock()
local _0x2EDF = Instance.new(string.char(65,110,105,109,97,116,105,111,110))
_0x2EDF.AnimationId = _0xC3CF.RigType == Enum.HumanoidRigType.R15 andstring.char(114,98,120,97,115,115,101,116,105,100,58,47,47,53,57,49,56,55,50,54,54,55,52)orstring.char(114,98,120,97,115,115,101,116,105,100,58,47,47,49,52,56,56,52,48,51,55,49)local _0xD828, _0x4517 = pcall(function()
return (_0xC3CF:FindFirstChildOfClass(string.char(65,110,105,109,97,116,111,114)) or _0xC3CF):LoadAnimation(_0x2EDF)
end)
_0x2EDF:Destroy()
if _0xD828 and _0x4517 then
_0x4517.Priority = Enum.AnimationPriority.Action4
_0x4517.Looped = true
_0x4517:Play(0.15)
_0xEBE5 = _0x4517
end
_0xA9C1(string.char(66,97,110,103), _0xCC3C.DisplayName ..string.char(32,45,32,112,114,101,115,115,32,97,103,97,105,110,32,116,111,32,115,116,111,112))
end
_0xB9EB(_0xB197.Heartbeat, function()
if _0x2997 then
local _0xD95E = _0x2997.Character
local _0xC3CF = _0xD95E and _0xD95E:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if not _0xC3CF or _0xC3CF.Health <= 0 then
_0x6415()
end
end
if not _0x82F1 then
return
end
local _0x4F37, _0xF224 = _0x8E3D.Character, _0x82F1.Character
local _0xF9FB = _0x4F37 and _0x4F37:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0x2E7D = _0x4F37 and _0x4F37:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0x5E5B = _0xF224 and _0xF224:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xE68A = _0xF224 and _0xF224:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if not (_0xF9FB and _0x2E7D and _0x2E7D.Health > 0 and _0x5E5B and _0xE68A and _0xE68A.Health > 0) then
_0xEE42()
return
end
local _0x86D2 = math.sin((os.clock() - _0x0220) * 12) * 0.18
_0xF9FB.CFrame = _0x5E5B.CFrame * CFrame.new(0, 0, 1.15 + _0x86D2)
_0xF9FB.AssemblyLinearVelocity = Vector3.zero
end)
local function _0x823B(_0xDF1D, _0xEE8A, _0x4244, width, callback)
local _0x64DC = _0x504E(string.char(84,101,120,116,66,117,116,116,111,110), {
Text = _0xEE8A,
Font = Enum.Font.GothamBold,
TextSize = 9,
TextColor3 = _0xDC52,
BackgroundColor3 = _0xAA5A,
AutoButtonColor = false,
Position = UDim2.fromOffset(_0x4244, 54),
Size = UDim2.fromOffset(width, 22),
Parent = _0xDF1D,
})
_0xF153(_0x64DC, 6)
local _0xBC19 = _0x24BA(_0x64DC)
_0xB9EB(_0x64DC.MouseEnter, function()
_0x0903(_0x64DC, 0.15, { BackgroundColor3 = _0xF139, TextColor3 = _0xA925 })
_0x0903(_0xBC19, 0.15, { Color = _0xA925 })
end)
_0xB9EB(_0x64DC.MouseLeave, function()
_0x0903(_0x64DC, 0.15, { BackgroundColor3 = _0xAA5A, TextColor3 = _0xDC52 })
_0x0903(_0xBC19, 0.15, { Color = _0x2F00 })
end)
_0xB9EB(_0x64DC.MouseButton1Click, function()
task.spawn(callback)
end)
return _0x64DC
end
local function _0x478C()
for _0x624F, _0x5C29 in pairs(_0x7B8D) do
_0x5C29.frame:Destroy()
end
table.clear(_0x7B8D)
local _0xDFBA = _0xD101:GetPlayers()
table.sort(_0xDFBA, function(_0xDA08, _0xBF1F)
return _0xDA08.DisplayName:lower() < _0xBF1F.DisplayName:lower()
end)
local _0x546B = 48
for _0x624F, _0xCC3C in ipairs(_0xDFBA) do
if _0xCC3C == _0x8E3D then
continue
end
local _0x6E55 = _0x504E(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(0, _0x546B),
Size = UDim2.new(1, -8, 0, 84),
BackgroundColor3 = _0x7D00,
Parent = _0x46D0,
})
_0xF153(_0x6E55, 9)
_0x24BA(_0x6E55)
local _0x7321 = _0x504E(string.char(73,109,97,103,101,76,97,98,101,108), {
Image ="",
BackgroundColor3 = _0x6274,
AnchorPoint = Vector2.new(1, 0.5),
Position = UDim2.new(1, -8, 0.5, 0),
Size = UDim2.fromOffset(66, 66),
Parent = _0x6E55,
})
_0xF153(_0x7321, 9)
_0x24BA(_0x7321)
_0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text = _0xCC3C.DisplayName,
Font = Enum.Font.GothamBold,
TextSize = 14,
TextColor3 = _0xA925,
TextXAlignment = Enum.TextXAlignment.Left,
TextTruncate = Enum.TextTruncate.AtEnd,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(12, 7),
Size = UDim2.new(1, -240, 0, 17),
Parent = _0x6E55,
})
_0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(64).. _0xCC3C.Name,
Font = Enum.Font.Gotham,
TextSize = 10,
TextColor3 = _0xD6E4,
TextXAlignment = Enum.TextXAlignment.Left,
TextTruncate = Enum.TextTruncate.AtEnd,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(12, 25),
Size = UDim2.new(1, -240, 0, 14),
Parent = _0x6E55,
})
local _0xAF99 = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(73,110,110,111,99,101,110,116),
Font = Enum.Font.GothamBold,
TextSize = 10,
TextColor3 = _0x2E02,
TextXAlignment = Enum.TextXAlignment.Right,
BackgroundTransparency = 1,
Position = UDim2.new(1, -218, 0, 10),
Size = UDim2.fromOffset(130, 16),
Parent = _0x6E55,
})
_0x823B(_0x6E55,string.char(70,76,73,78,71), 12, 54, function()
if _0xC71D then
_0xC71D(_0xCC3C)
end
end)
_0x823B(_0x6E55,string.char(83,80,69,67,84,65,84,69), 72, 68, function()
_0xCB0F(_0xCC3C)
end)
_0x823B(_0x6E55,string.char(66,65,78,71), 146, 50, function()
_0x7E3F(_0xCC3C)
end)
_0x823B(_0x6E55,string.char(75,73,76,76), 202, 48, function()
if _0x2768(_0x8E3D,string.char(75,110,105,102,101)) and _0x8FCB then
_0x8FCB(_0xCC3C)
elseif _0x2768(_0x8E3D,string.char(71,117,110)) and _0x68C7 then
_0x68C7(_0xCC3C)
else
_0xA9C1(string.char(75,105,108,108),string.char(121,111,117,32,110,101,101,100,32,116,104,101,32,107,110,105,102,101,32,111,114,32,103,117,110))
end
end)
_0x7B8D[_0xCC3C] = { _0x6E55 = _0x6E55, _0xC982 = _0xAF99 }
task.spawn(function()
local _0xD828, _0x58B2 = pcall(_0xD101.GetUserThumbnailAsync, _0xD101, _0xCC3C.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150)
if _0xD828 and _0x6E55.Parent then
_0x7321.Image = _0x58B2
end
end)
_0x546B += 92
end
_0x46D0.CanvasSize = UDim2.fromOffset(0, _0x546B + 8)
end
_0xB9EB(_0xD101.PlayerAdded, _0x478C)
_0xB9EB(_0xD101.PlayerRemoving, function(leaving)
if _0x2997 == leaving then
_0x6415()
end
if _0x82F1 == leaving then
_0xEE42()
end
task.defer(_0x478C)
end)
task.spawn(function()
while _0x0155.Parent do
if _0x95DC == _0x6C5D then
if not _0x713C or not _0x713C.Parent then
_0x713C = game:GetService(string.char(82,101,112,108,105,99,97,116,101,100,83,116,111,114,97,103,101)):FindFirstChild(string.char(71,101,116,80,108,97,121,101,114,68,97,116,97), true)
end
if _0x713C and _0x713C:IsA(string.char(82,101,109,111,116,101,70,117,110,99,116,105,111,110)) then
local _0xD828, _0x5E99 = pcall(_0x713C.InvokeServer, _0x713C)
if _0xD828 and type(_0x5E99) ==string.char(116,97,98,108,101)then
local _0x0ED0 = {}
for _0x893F, _0x45F4 in pairs(_0x5E99) do
if type(_0x45F4) ==string.char(116,97,98,108,101)and type(_0x45F4.Role) ==string.char(115,116,114,105,110,103)and not _0x45F4.Dead and not _0x45F4.Killed then
_0x0ED0[_0x893F] = _0x45F4.Role
end
end
_0x10E9 = _0x0ED0
end
end
for _0xCC3C, _0x5C29 in pairs(_0x7B8D) do
if _0xCC3C.Parent and _0x5C29.frame.Parent then
local _0xC982, _0x15D8 = _0xD4F6(_0xCC3C)
_0x5C29.role.Text = _0xC982
_0x5C29.role.TextColor3 = _0x15D8
end
end
end
task.wait(1)
end
end)
_0x478C()
_0xF02D = function()
_0x6415()
_0xEE42()
end
end
do
local _0x77E0 = UDim2.new(0.55, 0, 0, 0)
local _0xDBC6 = _0x504E(string.char(70,114,97,109,101), {
Name =string.char(83,101,97,114,99,104),
AnchorPoint = Vector2.new(0.5, 0),
Position = UDim2.new(0.5, 0, 1, 10),
Size = _0x77E0 + UDim2.fromOffset(0, 32),
BackgroundColor3 = _0xAA5A,
ZIndex = 20,
Parent = _0xFF96,
})
_0xF153(_0xDBC6, 10)
local _0x8CBB = _0x504E(string.char(85,73,83,116,114,111,107,101), { Color = _0xA925, Transparency = 0.45, Thickness = 1, Parent = _0xDBC6 })
_0x3B7F(_0x8CBB)
local _0x93D6 = _0x504E(string.char(85,73,83,99,97,108,101), { Parent = _0xDBC6 })
local _0x2C1E = _0x504E(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(12, 9.5),
Size = UDim2.fromOffset(13, 13),
BackgroundTransparency = 1,
ZIndex = 21,
Parent = _0xDBC6,
})
local _0x6CBE = _0x504E(string.char(70,114,97,109,101), { Size = UDim2.fromOffset(9, 9), BackgroundTransparency = 1, ZIndex = 21, Parent = _0x2C1E })
_0x9A43(_0x6CBE)
local _0x9BBF = _0x504E(string.char(85,73,83,116,114,111,107,101), { Color = _0x2E02, Thickness = 1.5, Parent = _0x6CBE })
local _0xDD2C = _0x9E1D(_0x2C1E, 7.8, 7.8, 12, 12, 1.5, _0x2E02)
_0xDD2C.ZIndex = 21
local _0x9C44 = _0x504E(string.char(85,73,83,99,97,108,101), { Parent = _0x2C1E })
local _0x025A = _0x504E(string.char(84,101,120,116,66,111,120), {
Text ="",
PlaceholderText =string.char(83,101,97,114,99,104,46,46,46),
Font = Enum.Font.GothamMedium,
TextSize = 12,
TextColor3 = _0xA925,
PlaceholderColor3 = _0xD6E4,
TextXAlignment = Enum.TextXAlignment.Left,
ClearTextOnFocus = false,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(32, 0),
Size = UDim2.new(1, -100, 1, 0),
ZIndex = 21,
Parent = _0xDBC6,
})
local _0xE77A = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(67,116,114,108,32,32,70),
Font = Enum.Font.GothamBold,
TextSize = 9,
TextColor3 = _0x2E02,
BackgroundColor3 = _0x6274,
AnchorPoint = Vector2.new(1, 0.5),
Position = UDim2.new(1, -8, 0.5, 0),
Size = UDim2.fromOffset(46, 18),
Visible = _0x24DA.KeyboardEnabled,
ZIndex = 21,
Parent = _0xDBC6,
})
_0xF153(_0xE77A, 5)
_0x24BA(_0xE77A)
local _0x2011 = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text ="",
Font = Enum.Font.GothamMedium,
TextSize = 10,
TextColor3 = _0x2E02,
TextXAlignment = Enum.TextXAlignment.Right,
BackgroundTransparency = 1,
AnchorPoint = Vector2.new(1, 0.5),
Position = UDim2.new(1, -12, 0.5, 0),
Size = UDim2.fromOffset(80, 18),
Visible = false,
ZIndex = 21,
Parent = _0xDBC6,
})
local function _0x3F25(_0xAD45)
if _0xAD45.custom then
return 0
end
local _0xE9D1 = 0
for _0x624F, _0x61C4 in ipairs(_0xAD45.sections) do
for _0x624F, _0x2B4F in ipairs(_0x61C4.items) do
if _0x3B7C(_0x2B4F, _0x61C4, _0xAD45) then
_0xE9D1 += 1
end
end
end
return _0xE9D1
end
local function _0x5DB3(_0xAD45)
for _0x624F, _0x61C4 in ipairs(_0xAD45.sections) do
if _0x61C4.card.Visible then
for _0x624F, _0x2B4F in ipairs(_0x61C4.items) do
if _0x2B4F.row.Visible then
return _0x2B4F.row
end
end
end
end
end
local function _0x7DFE(_0x7D41)
if not _0x7D41 then
return
end
local _0x61F0 = _0x504E(string.char(85,73,83,116,114,111,107,101), { Color = _0xA925, Thickness = 2, Parent = _0x7D41 })
local _0x9470 = _0x504E(string.char(70,114,97,109,101), {
Size = UDim2.fromScale(1, 1),
BackgroundColor3 = _0xA925,
BackgroundTransparency = 0.8,
BorderSizePixel = 0,
ZIndex = 3,
Parent = _0x7D41,
})
_0xF153(_0x9470, 7)
task.delay(0.15, function()
_0x0903(_0x9470, 0.9, { BackgroundTransparency = 1 })
_0x0903(_0x61F0, 1.2, { Transparency = 1 })
end)
task.delay(1.4, function()
_0x61F0:Destroy()
_0x9470:Destroy()
end)
end
local function _0xBD2B()
local _0xB29B = _0x025A.Text:lower():gsub(string.char(94,37,115,43),""):gsub(string.char(37,115,43,36),"")
if _0xB29B ==""then
_0xAB5D = nil
_0x2011.Visible = false
_0xE77A.Visible = _0x24DA.KeyboardEnabled and not _0x025A:IsFocused()
for _0x624F, _0x634C in ipairs(_0x805E) do
_0xEA27(_0x634C)
end
return
end
local _0x7FCB = {}
for _0xCDE9 in _0xB29B:gmatch(string.char(37,83,43)) do
table.insert(_0x7FCB, _0xCDE9)
end
_0xAB5D = _0x7FCB
_0xE77A.Visible = false
local _0xB398, _0x57B3, _0xD38B = 0, nil, 0
for _0x624F, _0x634C in ipairs(_0x805E) do
local _0xE9D1 = _0x3F25(_0x634C)
_0xB398 += _0xE9D1
if _0xE9D1 > _0xD38B then
_0x57B3, _0xD38B = _0x634C, _0xE9D1
end
end
if _0x95DC and _0x3F25(_0x95DC) == 0 and _0x57B3 then
_0xE0BC(_0x57B3)
end
for _0x624F, _0x634C in ipairs(_0x805E) do
_0xEA27(_0x634C)
end
if _0x95DC then
_0x95DC.page.CanvasPosition = Vector2.zero
end
_0x2011.Visible = true
_0x2011.Text = _0xB398 == 0 andstring.char(110,111,116,104,105,110,103)or _0xB398 ..string.char(32,102,111,117,110,100)_0x2011.TextColor3 = _0xB398 == 0 and Color3.fromRGB(255, 120, 120) or _0x2E02
end
_0xB9EB(_0x025A:GetPropertyChangedSignal(string.char(84,101,120,116)), _0xBD2B)
_0xB9EB(_0x025A.Focused, function()
_0x0903(_0x8CBB, 0.2, { Transparency = 0 })
_0x0903(_0x9BBF, 0.2, { Color = _0xA925 })
_0x0903(_0xDD2C, 0.2, { BackgroundColor3 = _0xA925 })
_0x9C44.Scale = 0.8
_0x0903(_0x9C44, 0.35, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
_0x93D6.Scale = 0.97
_0x0903(_0x93D6, 0.3, { Scale = 1 }, Enum.EasingDirection.Out, Enum.EasingStyle.Back)
_0xE77A.Visible = false
end)
_0xB9EB(_0x025A.FocusLost, function(enter)
_0x0903(_0x8CBB, 0.2, { Transparency = 0.45 })
_0x0903(_0x9BBF, 0.2, { Color = _0x2E02 })
_0x0903(_0xDD2C, 0.2, { BackgroundColor3 = _0x2E02 })
if _0x025A.Text ==""then
_0xE77A.Visible = _0x24DA.KeyboardEnabled
end
if enter and _0xAB5D and _0x95DC then
_0x7DFE(_0x5DB3(_0x95DC))
end
end)
_0xB9EB(_0x24DA.InputBegan, function(input)
if input.UserInputType ~= Enum.UserInputType.Keyboard then
return
end
local _0x2DD2 = input.KeyCode
if _0x2DD2 == Enum.KeyCode.F and (_0x24DA:IsKeyDown(Enum.KeyCode.LeftControl) or _0x24DA:IsKeyDown(Enum.KeyCode.RightControl) or _0x24DA:IsKeyDown(Enum.KeyCode.LeftSuper) or _0x24DA:IsKeyDown(Enum.KeyCode.RightSuper)) then
if not _0x952B then
_0xFF42(true)
end
task.defer(function()
_0x025A:CaptureFocus()
end)
return
end
if _0x2DD2 == Enum.KeyCode.Escape and (_0x025A:IsFocused() or _0x025A.Text ~="") then
_0x025A.Text =""_0x025A:ReleaseFocus()
end
end)
end
_0xE0BC(_0xC09E)
for _0x624F, _0x00EA in ipairs(_0x278B) do
local _0xEB0B = _0x09F2[_0x00EA.key]
if _0xEB0B ~= nil then
pcall(_0x00EA.set, _0xEB0B)
end
end
_0x3E73 = false
_0x42B0 = false
_G.ClumsyScriptUnload = function()
pcall(_0x12D9)
for _0x624F, _0x242F in ipairs(_0x523A) do
_0x242F:Disconnect()
end
table.clear(_0x523A)
_0xF269 = nil
if _0x2E3D then
pcall(_0x2E3D)
end
if _0x1AC0 then
pcall(_0x1AC0)
end
if _0xBF15 then
pcall(_0xBF15)
end
if _0x2B12 then
pcall(_0x2B12)
end
if _0x37D9 then
pcall(_0x37D9)
end
if _0x7FCD then
pcall(_0x7FCD)
end
if _0xF02D then
pcall(_0xF02D)
end
pcall(_0xF972)
pcall(_0x8BCF)
if _0xE880 then
pcall(_0xE880)
end
if _0xBC3A then
pcall(_0xBC3A)
end
if _0x37B2 then
pcall(_0x37B2)
end
if _0xF2C7 then
pcall(_0xF2C7)
end
if _0x4654 then
pcall(_0x4654)
end
if stopAspectRatio then
pcall(stopAspectRatio)
end
if _0xE8ED then
pcall(_0xE8ED)
end
if _0xF7F9 then
pcall(_0xF7F9)
end
if _0x4654 then
pcall(_0x4654)
end
pcall(function()
for _0x624F, _0xCE5A in ipairs(_0x8639:GetChildren()) do
if _0xCE5A:IsA(string.char(65,116,109,111,115,112,104,101,114,101)) and _0xCE5A.Name ==string.char(67,108,117,109,115,121,83,99,114,105,112,116,95,70,111,103)then _0xCE5A:Destroy() end
end
end)
if _0xD796 then
pcall(_0xD796)
end
if _0x8BC7 then
pcall(_0x8BC7)
end
if _0xFEC5 then
pcall(_0xFEC5)
end
if _0x2E4A then
pcall(_0x2E4A)
end
if _0x3F87 then
pcall(_0x3F87)
end
if _0x1BCA then
pcall(_0x1BCA)
end
if _0x3E73 then
_0xC44C()
end
if _0xBB19 then
pcall(_0xBB19)
end
if _0x1331 then
pcall(_0x1331)
end
if _0xABCC then
_0xABCC:Destroy()
_0xABCC = nil
end
local _0xC3CF = _0xFFF1()
if _0xC3CF then
if _0x7108.speed then
_0xC3CF.WalkSpeed = 16
end
if _0x7108.jump then
_0xC3CF.JumpPower = 50
end
endpcall(function()
for _0x624F, _0xCE5A in ipairs(_0x8639:GetChildren()) do
if _0xCE5A.Name ==string.char(67,108,117,109,115,121,83,99,114,105,112,116,95,83,107,121,98,111,120)or _0xCE5A.Name ==string.char(67,108,117,109,115,121,83,99,114,105,112,116,95,70,111,103)then
_0xCE5A:Destroy()
end
end
end)
pcall(function()
local _0xD95E = _0x8E3D.Character
if _0xD95E then
for _0x624F, _0xCE5A in ipairs(_0xD95E:GetChildren()) do
if _0xCE5A.Name:find(string.char(67,108,117,109,115,121,83,99,114,105,112,116,95,83,111,117,114,99,101,65,117,114,97,95), 1, true) then _0xCE5A:Destroy() end
end
end
end)
if _0xC8E8 then pcall(function() _0xC8E8:Destroy() end) end
if _0xA737 then pcall(function() _0xA737:Destroy() end) end
_0xDEC0:Destroy()
_0x0155:Destroy()
_G.ClumsyScriptUnload = nil
end
local _0xBF85 = game:GetService(string.char(84,101,120,116,83,101,114,118,105,99,101))
local function _0xA870()
_0x2AE0 = true
_0x0155.IgnoreGuiInset = true
local _0x45F7 = _0x504E(string.char(70,114,97,109,101), {
Name =string.char(73,110,116,114,111),
Size = UDim2.fromScale(1, 1),
BackgroundColor3 = Color3.fromRGB(0, 0, 0),
BackgroundTransparency = 1,
BorderSizePixel = 0,
ZIndex = 200,
Parent = _0x0155,
})
local _0x748C = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromScale(0.5, 0.5),
Size = UDim2.fromOffset(420, 130),
BackgroundTransparency = 1,
Parent = _0x45F7,
})
local _0x690F = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(420, 130)
_0x504E(string.char(85,73,83,99,97,108,101), { Scale = math.clamp((_0x690F.X - 24) / 420, 0.55, 1), Parent = _0x748C })
local _0x9710 = Enum.Font.GothamBlack
local _0x69F7, _0xB398 = {}, 0
for _0x269E = 1, #string.char(67,76,85,77,83,89,83,67,82,73,80,84)do
local _0x5B9B = (string.char(67,76,85,77,83,89,83,67,82,73,80,84)):sub(_0x269E, _0x269E)
local _0xCDE9 = _0x5B9B ==string.char(32)and 16.099999999999998 or _0xBF85:GetTextSize(_0x5B9B, 46, _0x9710, Vector2.new(200, 200)).X
_0x69F7[_0x269E] = _0xCDE9
_0xB398 += _0xCDE9 + (_0x269E < #string.char(67,76,85,77,83,89,83,67,82,73,80,84)and 4 or 0)
end
local _0x4323 = (420 - _0xB398) / 2
local _0x58F4 = {}
local _0x4244 = _0x4323
for _0x269E = 1, #string.char(67,76,85,77,83,89,83,67,82,73,80,84)do
local _0x5B9B = (string.char(67,76,85,77,83,89,83,67,82,73,80,84)):sub(_0x269E, _0x269E)
if _0x5B9B ~=string.char(32)then
local _0x9121 = _0x504E(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(_0x4244, 14),
Size = UDim2.fromOffset(_0x69F7[_0x269E], 56),
BackgroundTransparency = 1,
Parent = _0x748C,
})
local _0xFE81 = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text = _0x5B9B,
Font = _0x9710,
TextSize = 46,
TextColor3 = _0xA925,
TextTransparency = 1,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(0, -26),
Size = UDim2.fromScale(1, 1),
Parent = _0x9121,
})
local _0x08CD = _0x504E(string.char(85,73,83,99,97,108,101), { Scale = 1.6, Parent = _0xFE81 })
table.insert(_0x58F4, { _0xFE81 = _0xFE81, sc = _0x08CD, _0x269E = _0x269E })
end
_0x4244 += _0x69F7[_0x269E] + 4
end
local _0xDBC6 = _0x504E(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0),
Position = UDim2.new(0.5, 0, 0, 86),
Size = UDim2.fromOffset(0, 2),
BackgroundColor3 = _0x2F00,
BorderSizePixel = 0,
Parent = _0x748C,
})
_0x9A43(_0xDBC6)
local _0xA70E = _0x504E(string.char(70,114,97,109,101), { Size = UDim2.fromScale(0, 1), BackgroundColor3 = _0xA925, BorderSizePixel = 0, Parent = _0xDBC6 })
_0x9A43(_0xA70E)
local _0x522D = _0x504E(string.char(85,73,71,114,97,100,105,101,110,116), { Parent = _0xA70E })
local _0x7A57 = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text ="",
Font = Enum.Font.Gotham,
TextSize = 12,
TextColor3 = _0x2E02,
TextTransparency = 1,
TextXAlignment = Enum.TextXAlignment.Left,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(_0x4323, 96),
Size = UDim2.fromOffset(_0xB398 - 44, 16),
Parent = _0x748C,
})
local _0x9716 = _0x504E(string.char(84,101,120,116,76,97,98,101,108), {
Text =string.char(48,37),
Font = Enum.Font.GothamMedium,
TextSize = 12,
TextColor3 = _0xDC52,
TextTransparency = 1,
TextXAlignment = Enum.TextXAlignment.Right,
BackgroundTransparency = 1,
Position = UDim2.fromOffset(_0x4323 + _0xB398 - 44, 96),
Size = UDim2.fromOffset(44, 16),
Parent = _0x748C,
})
local _0x0ABA = os.clock()
local _0x1FA8 = _0xB9EB(_0xB197.RenderStepped, function()
local _0x634C = os.clock() - _0x0ABA
for _0x624F, letter in ipairs(_0x58F4) do
local _0xEB0B = 0.5 + 0.5 * math.sin(_0x634C * 3 - letter.i * 0.55)
local _0x242F = math.floor(110 + _0xEB0B * 145)
letter.lbl.TextColor3 = Color3.fromRGB(_0x242F, _0x242F, _0x242F)
end
_0x522D.Color = _0x835C(_0x634C * 0.6)
end)
local _0x5470 = Instance.new(string.char(78,117,109,98,101,114,86,97,108,117,101))
_0x5470.Changed:Connect(function(_0xEB0B)
_0x9716.Text = math.floor(_0xEB0B * 100 + 0.5) ..string.char(37)end)
local _0xDB96, _0x51A7, _0xB848 = Enum.EasingDirection.Out, Enum.EasingDirection.In, Enum.EasingDirection.InOut
_0x0903(_0x45F7, 0.4, { BackgroundTransparency = 0.35 })
_0x0903(_0xDEC0, 0.5, { Size = 24 })
task.wait(0.3)
for _0x624F, letter in ipairs(_0x58F4) do
_0x0903(letter.lbl, 0.55, { TextTransparency = 0, Position = UDim2.fromOffset(0, 0) }, _0xDB96, Enum.EasingStyle.Back)
_0x0903(letter.sc, 0.55, { Scale = 1 }, _0xDB96, Enum.EasingStyle.Back)
task.wait(0.06)
end
task.wait(0.3)
_0x0903(_0xDBC6, 0.45, { Size = UDim2.fromOffset(_0xB398, 2) }, _0xDB96, Enum.EasingStyle.Quint)
_0x0903(_0x7A57, 0.3, { TextTransparency = 0 })
_0x0903(_0x9716, 0.3, { TextTransparency = 0 })
task.wait(0.35)
local _0x6550 = {
{string.char(108,111,97,100,105,110,103,32,105,110,116,101,114,102,97,99,101), 0.3 },
{string.char(108,111,97,100,105,110,103,32,109,111,118,101,109,101,110,116), 0.55 },
{string.char(108,111,97,100,105,110,103,32,118,105,115,117,97,108,115), 0.8 },
{string.char(100,111,110,101), 1 },
}
for _0x624F, _0xE157 in ipairs(_0x6550) do
if not _0x0155.Parent then
break
end
_0x7A57.Text = _0xE157[1]
_0x0903(_0xA70E, 0.45, { Size = UDim2.fromScale(_0xE157[2], 1) }, _0xB848)
_0x0903(_0x5470, 0.45, { Value = _0xE157[2] }, _0xB848)
task.wait(0.5)
end
_0x7A57.Text =string.char(119,101,108,99,111,109,101,44,32).. _0x8E3D.DisplayName
task.wait(0.6)
for _0x624F, letter in ipairs(_0x58F4) do
_0x0903(letter.lbl, 0.35, { TextTransparency = 1, Position = UDim2.fromOffset(0, -18) }, _0x51A7)
task.wait(0.03)
end
_0x0903(_0x7A57, 0.3, { TextTransparency = 1 })
_0x0903(_0x9716, 0.3, { TextTransparency = 1 })
_0x0903(_0xDBC6, 0.35, { Size = UDim2.fromOffset(0, 2) }, _0x51A7, Enum.EasingStyle.Quint)
_0x0903(_0xA70E, 0.3, { BackgroundTransparency = 1 })
_0x0903(_0x45F7, 0.45, { BackgroundTransparency = 1 })
task.wait(0.25)
_0x2AE0 = false
if not _0x0155.Parent then
return
end
_0x0155.IgnoreGuiInset = false
pcall(function()
_0x0155.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
_0x0155.ClipToDeviceSafeArea = true
end)
_0xC44A()
_0xFF42(true)
task.wait(0.4)
_0x1FA8:Disconnect()
_0x5470:Destroy()
_0x45F7:Destroy()
end
task.spawn(_0xA870)
end)(...)
end)(...)
