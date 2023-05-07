return {
    [1] = {
        name = "lumina-electric-boiler-1",
        type = "recipe",
        ingredients = {
            {"steel-plate", 10},
            {"advanced-circuit", 5},
            {"boiler", 1},
        },
        result = "lumina-electric-boiler-1",
        energy_required = 5,
    },
    [2] = {
        name = "lumina-electric-boiler-2",
        type = "recipe",
        ingredients = {
            {"steel-plate", 10},
            {"processing-unit", 5},
            {"lumina-electric-boiler-1", 1},
        },
        result = "lumina-electric-boiler-2",
        energy_required = 5,
    },
    [3] = {
        name = "lumina-electric-boiler-3",
        type = "recipe",
        ingredients = {
            {"steel-plate", 10},
            {"processing-unit", 15},
            {"lumina-electric-boiler-2", 1},
        },
        result = "lumina-electric-boiler-3",
        energy_required = 5,
    },
}