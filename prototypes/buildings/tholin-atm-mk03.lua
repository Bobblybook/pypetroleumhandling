RECIPE {
    type = "recipe",
    name = "tholin-atm-mk03",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"tholin-atm-mk02", 1},
        {"small-parts-03", 20},
        {"nbfe-alloy", 10},
        {"processing-unit", 15},
        {"concrete", 50},
        {"engine-unit", 10},
    },
    results = {
        {"tholin-atm-mk03", 1}
    }
}:add_unlock("tholin-mk03")

ITEM {
    type = "item",
    name = "tholin-atm-mk03",
    icon = "__pypetroleumhandling__/graphics/icons/tholin-atm-mk03.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk03",
    order = "b",
    place_result = "tholin-atm-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "tholin-atm-mk03",
    icon = "__pypetroleumhandling__/graphics/icons/tholin-atm-mk03.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "tholin-atm-mk03"},
    fast_replaceable_group = "tholin-atm",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    fixed_recipe = "tholins",
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"tholin-atm"},
    crafting_speed = 3,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 50,
    },
    energy_usage = "1200kW",
    ingredient_count = 10,
    animation = {
        layers = {
            {
                filename = "__pypetroleumhandling__/graphics/entity/tholin-atm-mk01/base-mk01.png",
                width = 300,
                height = 352,
                line_length = 6,
                frame_count = 30,
                run_mode= "forward-then-backward",
                animation_speed = 0.2,
                shift = util.by_pixel(-37, -64)
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/tholin-atm-mk01/base-mk01-mask.png",
                width = 300,
                height = 352,
                line_length = 6,
                frame_count = 30,
                run_mode= "forward-then-backward",
                animation_speed = 0.2,
                shift = util.by_pixel(-37, -64),
                tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/tholin-atm-mk01/baloon-mk01.png",
                width = 320,
                height = 384,
                line_length = 6,
                frame_count = 30,
                run_mode= "forward-then-backward",
                animation_speed = 0.2,
                shift = util.by_pixel(-173, -360)
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/tholin-atm-mk01/baloon-mk01-mask.png",
                width = 320,
                height = 384,
                line_length = 6,
                frame_count = 30,
                run_mode= "forward-then-backward",
                animation_speed = 0.2,
                shift = util.by_pixel(-173, -360),
                tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/tholin-atm-mk01/helice-mk01.png",
                width = 96,
                height = 64,
                line_length = 6,
                frame_count = 60,
                animation_speed = 0.2,
                shift = util.by_pixel(21, -208)
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/tholin-atm-mk01/helice-mk01-mask.png",
                width = 96,
                height = 64,
                line_length = 6,
                frame_count = 60,
                animation_speed = 0.2,
                shift = util.by_pixel(21, -208),
                tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
            },
        }
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, -4.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {0.0, 4.0}}}
        },
        off_when_no_fluid_recipe = false,
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pypetroleumhandling__/sounds/tholin-atm.ogg", volume = 1.5},
        idle_sound = {filename = "__pypetroleumhandling__/sounds/tholin-atm.ogg", volume = 1.0},
        apparent_volume = 2.5
    }
}
