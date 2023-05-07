data:extend({
    {
        type = "int-setting",
        name = "lumina-electric-boiler-fluid-amount",
        setting_type = "startup",
        default_value = 240,
        order = "b",
    },
    {
        type = "string-setting",
        name = "lumina-electric-boiler-basic-power",
        setting_type = "startup",
        default_value = "7.2MW",
        order = "a",
    },
    {
        type = "double-setting",
        name = "lumina-electric-boiler-efficiency",
        setting_type = "startup",
        default_value = 0.9,
        minimum_value = 0.001,
        maximum_value = 1.0,
        order = "c",
    },
    {
        type = "bool-setting",
        name = "lumina-electric-boiler-auto-generate-temperatures",
        setting_type = "startup",
        default_value = true,
        order = "d",
    },
    {
        type = "string-setting",
        name = "lumina-electric-boiler-extra-temperatures",
        setting_type = "startup",
        default_value = "",
        allow_blank = true,
        order = "da",
    },
    {
        type = "int-setting",
        name = "lumina-electric-boiler-tiers",
        setting_type = "startup",
        default_value = 1,
        minimum_value = 0,
        order = "e",
    },
    {
        type = "string-setting",
        name = "lumina-electric-boiler-priority",
        setting_type = "startup",
        default_value = "tertiary",
        allowed_values = {
            "tertiary",
            "secondary-input",
            "primary-input",
        }
    }
})