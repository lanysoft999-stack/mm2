-- Varuma Hack v7.0 -- loader
local BASE = "https://raw.githubusercontent.com/lanysoft999-stack/mm2/refs/heads/main/"

local mods = {"v_shared", "v_visuals", "v_logic", "v_ui"}

for _, name in ipairs(mods) do
    warn("[Varuma] loading " .. name .. "...")
    local ok, err = pcall(function()
        local src = game:HttpGet(BASE .. name .. ".lua")
        local fn = loadstring(src)
        if not fn then error("compile failed") end
        fn()
    end)
    if not ok then
        warn("[Varuma] FAILED at " .. name .. ": " .. tostring(err))
        return
    end
    warn("[Varuma] " .. name .. " OK")
end

warn("[Varuma] === ALL MODULES LOADED ===")
