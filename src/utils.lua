return {
    settings = {
        basic_amount = settings.startup["lumina-electric-boiler-fluid-amount"].value,
        basic_power = util.parse_energy(settings.startup["lumina-electric-boiler-basic-power"].value),
        basic_power_string = settings.startup["lumina-electric-boiler-basic-power"].value,
        efficiency = settings.startup["lumina-electric-boiler-efficiency"].value,
        auto_generate_temperatures = settings.startup["lumina-electric-boiler-auto-generate-temperatures"].value,
        extra_temperatures = settings.startup["lumina-electric-boiler-extra-temperatures"].value,
        tiers = settings.startup["lumina-electric-boiler-tiers"].value,
        priority = settings.startup["lumina-electric-boiler-priority"].value,
    },
    split = function(inputstr, sep)
        if sep == nil then
            sep = "%s"
        end
        local t = {}
        for str in string.gmatch(inputstr, "([^" .. sep .. "]+)") do
            table.insert(t, str)
        end
        return t
    end
}
