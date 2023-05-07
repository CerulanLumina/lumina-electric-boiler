local leb_settings = require("utils").settings

local boiler_base = {
    type = "assembling-machine",
    name = "lumina-electric-boiler",
    crafting_categories = {
        "lumina-electric-boiler-steam"
    },

    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = leb_settings.priority,
        drain = "0W"
    },
    energy_usage = "5MW",
    flags = {
        "placeable-neutral",
        "player-creation"
    },

    minable = {
        mining_time = data.raw["boiler"]["boiler"].minable.mining_time,
        result = "lumina-electric-boiler"
    },

    icon = "__lumina-electric-boiler__/graphics/icons/lumina-electric-boiler.png",
    icon_size = 32,

    fluid_boxes = {
        {
            base_area = 1,
            base_level = -1,
            filter = "water",
            height = 2,
            pipe_connections = {
                {
                    position = {
                        -2,
                        0.5
                    },
                    type = "input-output"
                },
                {
                    position = {
                        2,
                        0.5
                    },
                    type = "input-output"
                }
            },
            pipe_covers = {
                east = {
                    layers = {
                        {
                            filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east.png",
                            height = 64,
                            hr_version = {
                                filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-east.png",
                                height = 128,
                                priority = "extra-high",
                                scale = 0.5,
                                width = 128
                            },
                            priority = "extra-high",
                            width = 64
                        },
                        {
                            draw_as_shadow = true,
                            filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east-shadow.png",
                            height = 64,
                            hr_version = {
                                draw_as_shadow = true,
                                filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-east-shadow.png",
                                height = 128,
                                priority = "extra-high",
                                scale = 0.5,
                                width = 128
                            },
                            priority = "extra-high",
                            width = 64
                        }
                    }
                },
                north = {
                    layers = {
                        {
                            filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
                            height = 64,
                            hr_version = {
                                filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-north.png",
                                height = 128,
                                priority = "extra-high",
                                scale = 0.5,
                                width = 128
                            },
                            priority = "extra-high",
                            width = 64
                        },
                        {
                            draw_as_shadow = true,
                            filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north-shadow.png",
                            height = 64,
                            hr_version = {
                                draw_as_shadow = true,
                                filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-north-shadow.png",
                                height = 128,
                                priority = "extra-high",
                                scale = 0.5,
                                width = 128
                            },
                            priority = "extra-high",
                            width = 64
                        }
                    }
                },
                south = {
                    layers = {
                        {
                            filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south.png",
                            height = 64,
                            hr_version = {
                                filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-south.png",
                                height = 128,
                                priority = "extra-high",
                                scale = 0.5,
                                width = 128
                            },
                            priority = "extra-high",
                            width = 64
                        },
                        {
                            draw_as_shadow = true,
                            filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south-shadow.png",
                            height = 64,
                            hr_version = {
                                draw_as_shadow = true,
                                filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-south-shadow.png",
                                height = 128,
                                priority = "extra-high",
                                scale = 0.5,
                                width = 128
                            },
                            priority = "extra-high",
                            width = 64
                        }
                    }
                },
                west = {
                    layers = {
                        {
                            filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west.png",
                            height = 64,
                            hr_version = {
                                filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-west.png",
                                height = 128,
                                priority = "extra-high",
                                scale = 0.5,
                                width = 128
                            },
                            priority = "extra-high",
                            width = 64
                        },
                        {
                            draw_as_shadow = true,
                            filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west-shadow.png",
                            height = 64,
                            hr_version = {
                                draw_as_shadow = true,
                                filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-west-shadow.png",
                                height = 128,
                                priority = "extra-high",
                                scale = 0.5,
                                width = 128
                            },
                            priority = "extra-high",
                            width = 64
                        }
                    }
                }
            },
            production_type = "input"
        },
        {
            base_area = 1,
            base_level = 1,
            filter = "steam",
            height = 2,
            pipe_connections = {
                {
                    position = {
                        0,
                        -1.5
                    },
                    type = "output"
                }
            },
            pipe_covers = {
                east = {
                    layers = {
                        {
                            filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east.png",
                            height = 64,
                            hr_version = {
                                filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-east.png",
                                height = 128,
                                priority = "extra-high",
                                scale = 0.5,
                                width = 128
                            },
                            priority = "extra-high",
                            width = 64
                        },
                        {
                            draw_as_shadow = true,
                            filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east-shadow.png",
                            height = 64,
                            hr_version = {
                                draw_as_shadow = true,
                                filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-east-shadow.png",
                                height = 128,
                                priority = "extra-high",
                                scale = 0.5,
                                width = 128
                            },
                            priority = "extra-high",
                            width = 64
                        }
                    }
                },
                north = {
                    layers = {
                        {
                            filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
                            height = 64,
                            hr_version = {
                                filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-north.png",
                                height = 128,
                                priority = "extra-high",
                                scale = 0.5,
                                width = 128
                            },
                            priority = "extra-high",
                            width = 64
                        },
                        {
                            draw_as_shadow = true,
                            filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north-shadow.png",
                            height = 64,
                            hr_version = {
                                draw_as_shadow = true,
                                filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-north-shadow.png",
                                height = 128,
                                priority = "extra-high",
                                scale = 0.5,
                                width = 128
                            },
                            priority = "extra-high",
                            width = 64
                        }
                    }
                },
                south = {
                    layers = {
                        {
                            filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south.png",
                            height = 64,
                            hr_version = {
                                filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-south.png",
                                height = 128,
                                priority = "extra-high",
                                scale = 0.5,
                                width = 128
                            },
                            priority = "extra-high",
                            width = 64
                        },
                        {
                            draw_as_shadow = true,
                            filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south-shadow.png",
                            height = 64,
                            hr_version = {
                                draw_as_shadow = true,
                                filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-south-shadow.png",
                                height = 128,
                                priority = "extra-high",
                                scale = 0.5,
                                width = 128
                            },
                            priority = "extra-high",
                            width = 64
                        }
                    }
                },
                west = {
                    layers = {
                        {
                            filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west.png",
                            height = 64,
                            hr_version = {
                                filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-west.png",
                                height = 128,
                                priority = "extra-high",
                                scale = 0.5,
                                width = 128
                            },
                            priority = "extra-high",
                            width = 64
                        },
                        {
                            draw_as_shadow = true,
                            filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west-shadow.png",
                            height = 64,
                            hr_version = {
                                draw_as_shadow = true,
                                filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-west-shadow.png",
                                height = 128,
                                priority = "extra-high",
                                scale = 0.5,
                                width = 128
                            },
                            priority = "extra-high",
                            width = 64
                        }
                    }
                }
            },
            production_type = "output"
        },
        off_when_no_fluid_recipe = false
    },

    animation = table.deepcopy(data.raw["boiler"]["boiler"].structure),
    working_visualisations = {
        {
            east_animation = {
                layers = {
                    {
                        blend_mode = "additive",
                        filename =
                        "__lumina-electric-boiler__/graphics/entity/lumina-electric-boiler-E-light.png",
                        height = 122,
                        hr_version = {
                            blend_mode = "additive",
                            filename =
                            "__lumina-electric-boiler__/graphics/entity/hr-lumina-electric-boiler-E-light.png",
                            height = 244,
                            priority = "extra-high",
                            scale = 0.5,
                            shift = {
                                -0.0546875,
                                0.0390625
                            },
                            width = 139
                        },
                        priority = "extra-high",
                        shift = {
                            -0.0546875,
                            0.0390625
                        },
                        width = 70
                    }
                }
            },
            north_animation = {
                layers = {
                    {
                        blend_mode = "additive",
                        filename =
                        "__lumina-electric-boiler__/graphics/entity/lumina-electric-boiler-N-light.png",
                        height = 87,
                        hr_version = {
                            blend_mode = "additive",
                            filename =
                            "__lumina-electric-boiler__/graphics/entity/hr-lumina-electric-boiler-N-light.png",
                            height = 173,
                            priority = "extra-high",
                            scale = 0.5,
                            shift = util.by_pixel(0, -8.5),
                            width = 200
                        },
                        priority = "extra-high",
                        shift = util.by_pixel(0, -8.5),
                        width = 100
                    }
                }
            },
            south_animation = {
                layers = {
                    {
                        blend_mode = "additive",
                        filename =
                        "__lumina-electric-boiler__/graphics/entity/lumina-electric-boiler-S-light.png",
                        height = 81,
                        hr_version = {
                            blend_mode = "additive",
                            filename =
                            "__lumina-electric-boiler__/graphics/entity/hr-lumina-electric-boiler-S-light.png",
                            height = 162,
                            priority = "extra-high",
                            scale = 0.5,
                            shift = {
                                0.125,
                                0.3359375
                            },
                            width = 200
                        },
                        priority = "extra-high",
                        shift = {
                            0.125,
                            0.3359375
                        },
                        width = 100
                    }
                }
            },
            west_animation = {
                layers = {
                    {
                        blend_mode = "additive",
                        filename =
                        "__lumina-electric-boiler__/graphics/entity/lumina-electric-boiler-W-light.png",
                        height = 109,
                        hr_version = {
                            blend_mode = "additive",
                            filename =
                            "__lumina-electric-boiler__/graphics/entity/hr-lumina-electric-boiler-W-light.png",
                            height = 217,
                            priority = "extra-high",
                            scale = 0.5,
                            shift = {
                                0.046875,
                                0.2421875
                            },
                            width = 136
                        },
                        priority = "extra-high",
                        shift = {
                            0.046875,
                            0.2421875
                        },
                        width = 68
                    }
                }
            }
        },
        -- {
        --     effect = "uranium-glow",
        --     light = {
        --         color = {
        --             b = 0.5,
        --             g = 0.9,
        --             r = 1
        --         },
        --         intensity = 0.5,
        --         shift = {
        --             0,
        --             0
        --         },
        --         size = 4
        --     }
        -- }
    },
    -- ---------------------------------------
    close_sound = table.deepcopy(data.raw["boiler"]["boiler"].close_sound),
    collision_box = table.deepcopy(data.raw["boiler"]["boiler"].collision_box),
    collision_mask = table.deepcopy(data.raw["boiler"]["boiler"].collision_mask),
    corpse = data.raw["boiler"]["boiler"].corpse,
    max_health = data.raw["boiler"]["boiler"].max_health,
    open_sound = table.deepcopy(data.raw["boiler"]["boiler"].open_sound),
    resistances = table.deepcopy(data.raw["boiler"]["boiler"].resistances),
    selection_box = table.deepcopy(data.raw["boiler"]["boiler"].selection_box),
    vehicle_impact_sound = table.deepcopy(data.raw["boiler"]["boiler"].vehicle_impact_sound),
    working_sound = table.deepcopy(data.raw["boiler"]["boiler"].working_sound),
}

local boiler_item_base = {
    type = "item",
    name = "lumina-electric-boiler",
    icon = "__lumina-electric-boiler__/graphics/icons/lumina-electric-boiler.png",
    icon_size = 32,
    place_result = "lumina-electric-boiler",
    stack_size = data.raw["item"]["boiler"].stack_size,
    subgroup = "energy",
    order = "b[steam-power]-ab[electric-boiler]",
    flags = { "primary-place-result" }
}

return {entity = boiler_base, item = boiler_item_base}