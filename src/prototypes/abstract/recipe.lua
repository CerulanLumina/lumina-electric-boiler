local leb_settings = require("utils").settings

data:extend({
    {
        name = "lumina-electric-boiler-steam",
        type = "recipe-category"
    }
})

local steam_recipe_base = {
    type = "recipe",
    name = "lumina-steam-",
    category = "lumina-electric-boiler-steam",
    ingredients = {
        {
            type   = "fluid",
            name   = "water",
            amount = leb_settings.basic_amount,
        }
    },
    results = {
        { type = "fluid", name = "steam", amount = leb_settings.basic_amount }
    }
}

return steam_recipe_base
