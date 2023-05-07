local boiler_base = require("abstract.entity")
local recipe_base = require("abstract.recipe")

local leb_settings = require("utils").settings

LuminaElectricBoiler = {}


--[[
    boiler_options = {
        tier = number,
        energy_usage = EnergyString
    }
]]
function LuminaElectricBoiler.create_boiler(boiler_options)

    local speed_ratio = util.parse_energy(boiler_options.energy_usage) / leb_settings.basic_power

    local boiler = table.deepcopy(boiler_base.entity)
    local boiler_item  = table.deepcopy(boiler_base.item)

    boiler.energy_usage = boiler_options.energy_usage
    boiler.crafting_speed = speed_ratio

    boiler.name = "lumina-electric-boiler-" .. boiler_options.tier
    boiler_item.name = "lumina-electric-boiler-" .. boiler_options.tier

    boiler_item.place_result = boiler.name
    boiler.minable.result = boiler_item.name

    local local_key = "entity-name.lumina-electric-boiler"
    if leb_settings.tiers == 1 then
        local_key = "entity-name.lumina-electric-boiler-single"
    end
    boiler.localised_name = {local_key, boiler_options.tier}
    boiler_item.localised_name = {local_key, boiler_options.tier}

    boiler_item.order = boiler_item.order .. "-" .. string.format("%02d", boiler_options.tier)

    data:extend({boiler, boiler_item})
end



function LuminaElectricBoiler.register_steam(temperature)
    local energy = util.parse_energy(util.parse_energy(data.raw["fluid"]["steam"].heat_capacity) * leb_settings.basic_amount * (temperature - data.raw["fluid"]["steam"].default_temperature) .. "J")
    local time = energy / leb_settings.basic_power / 60

    time = time / leb_settings.efficiency

    log({"", "Registering steam recipe: ", serpent.line({temperature = temperature, time = time, energy = energy, power = leb_settings.basic_power})})

    local recipe = table.deepcopy(recipe_base)
    recipe.name = recipe.name .. temperature
    recipe.results[1].temperature = temperature
    recipe.energy_required = time

    recipe.order = "a[lumina-steam]-" .. string.format("%010d", temperature)

    data:extend({recipe})
end