data:extend({
  {
      type = "furnace",
      name = "steam-powered-furnace",
      icon = "__steam_powered_furnace__/graphics/steam_furnace_icon.png",
      icon_size = 32,
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 0.2, result = "steam-powered-furnace"},
      max_health = 200,
      corpse = "small-remnants",
      crafting_categories = {"smelting"},
      collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
      selection_box = { { -0.8, -1 }, { 0.8, 1 } },
      resistances = { {type = "fire", percent = 80} },

      energy_source = {
          type = "fluid",
          fluid_box = {
              base_area = 1,
              height = 2,
              base_level = -1,
              pipe_connections = {
                { type = "input-output", position = { 1.5, 0.5 } },
                { type = "input-output", position = { -1.5, 0.5 } },
              },
              pipe_covers = pipecoverspictures(),
              pipe_picture = assembler2pipepictures(),
              production_type = "input-output",
              filter = "steam",
          },
          burns_fluid = false,
          scale_fluid_usage = false,
          fluid_usage_per_tick = (4 / 60),
          maximum_temperature = 765,
          smoke = {
              {
                name = "light-smoke",
                frequency = 10 / 32,
                starting_vertical_speed = 0.08,
                slow_down_factor = 1,
                starting_frame_deviation = 60,
              },
          },
      },

      animation = {
        filename = "__steam_powered_furnace__/graphics/stone-mixing-furnace.png",
        priority = "extra-high",
        width = 81,
        height = 64,
        frame_count = 1,
        shift = { 0.5, 0.05 },
      },
      working_visualisations = {
        {
          north_position = { 0.078125, 0.5234375 },
          west_position = { 0.078125, 0.5234375 },
          south_position = { 0.078125, 0.5234375 },
          east_position = { 0.078125, 0.5234375 },
          animation = {
            filename = "__steam_powered_furnace__/graphics/stone-mixing-furnace-fire.png",
            width = 23,
            height = 27,
            frame_count = 12,
          },
        },
      },
      fast_replaceable_group = "furnace",
      

      
      crafting_speed = 1,
      energy_usage = "180kW",
      source_inventory_size = 1,
      result_inventory_size = 1,
      working_sound = {
          sound = { filename = "__base__/sound/furnace.ogg" },
          apparent_volume = 1.5
      }
  }
})
