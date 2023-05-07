local leb_settings = require("utils").settings

if leb_settings.auto_generate_temperatures then
    for _,v in pairs(data.raw["boiler"]) do
        if v.mode == "output-to-separate-pipe" and v.output_fluid_box.filter == "steam" then
            LuminaElectricBoiler.register_steam(v.target_temperature)
        end
    end
end