local utils = require("utils")
local leb_settings = utils.settings

local provided_recipes = require("prototypes.boiler-recipe")
local provided_tech = require("prototypes.technology")

require("prototypes.boilers")

for i = 1, leb_settings.tiers do
    LuminaElectricBoiler.create_boiler({ tier = i, energy_usage = leb_settings.basic_power * 60 * i .. "W" })
    if provided_recipes[i] ~= nil then
        data:extend({ provided_recipes[i] })
    end
    if provided_tech[i] ~= nil then
        data:extend({ provided_tech[i] })
    end
end

for _, v in ipairs(utils.split(leb_settings.extra_temperatures, ",")) do
    local temp = tonumber(v)
    if temp == nil then
        error("Unable to parse steam temperature setting: " .. v)
    end
    if temp < data.raw["fluid"]["steam"].default_temperature then
        error("Registered temperature is too low: " ..
        temp .. ". Must be at least " .. data.raw["fluid"]["steam"].default_temperature)
    end
    if temp > data.raw["fluid"]["steam"].max_temperature then
        error("Registered temperature is too high: " ..
        temp .. ". Must be at most " .. data.raw["fluid"]["steam"].max_temperature)
    end
    LuminaElectricBoiler.register_steam(temp)
end
