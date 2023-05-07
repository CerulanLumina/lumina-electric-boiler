return {
    [1] = {
        type = "technology",
        name = "lumina-electric-boilers-electric-boilers",
        icon = "__lumina-electric-boiler__/graphics/technology/electric-boilers.png",
        icon_size = 256,
        unit = table.deepcopy(data.raw["technology"]["advanced-material-processing-2"].unit),
        prerequisites = {"advanced-material-processing-2"},
        effects = {
            {type = "unlock-recipe", recipe = "lumina-electric-boiler-1"}
        }
    },
    [2] = {
        type = "technology",
        name = "lumina-electric-boilers-electric-boilers-2",
        icon = "__lumina-electric-boiler__/graphics/technology/electric-boilers.png",
        icon_size = 256,
        unit = {
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
            },
            count = 350,
            time = 60
        },
        prerequisites = {"lumina-electric-boilers-electric-boilers"},
        effects = {
            {type = "unlock-recipe", recipe = "lumina-electric-boiler-2"}
        }
    },
    [3] = {
        type = "technology",
        name = "lumina-electric-boilers-electric-boilers-3",
        icon = "__lumina-electric-boiler__/graphics/technology/electric-boilers.png",
        icon_size = 256,
        unit = {
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1},
            },
            count = 400,
            time = 60
        },
        prerequisites = {"lumina-electric-boilers-electric-boilers-2"},
        effects = {
            {type = "unlock-recipe", recipe = "lumina-electric-boiler-3"}
        }
    },
}