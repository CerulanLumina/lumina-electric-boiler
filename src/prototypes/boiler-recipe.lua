local abstract_recipe = {
    type = "recipe",
    enabled = false,
}

local function recipe(name, overrides)
    return util.merge({abstract_recipe, overrides, { name = name, result = name }})
end

return {
    [1] = recipe("lumina-electric-boiler-1", {
        ingredients = {
            {"steel-plate", 10},
            {"advanced-circuit", 5},
            {"boiler", 1},
        },
        energy_required = 5,
    }),
    [2] = recipe("lumina-electric-boiler-2", {
        ingredients = {
            {"steel-plate", 10},
            {"processing-unit", 5},
            {"lumina-electric-boiler-1", 1},
        },
        energy_required = 5,
    }),
    [3] = recipe("lumina-electric-boiler-3", {
        ingredients = {
            {"steel-plate", 10},
            {"processing-unit", 15},
            {"lumina-electric-boiler-2", 1},
        },
        energy_required = 5,
    }),
}