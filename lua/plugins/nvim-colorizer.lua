return {
    "norcalli/nvim-colorizer.lua",
    config = function()
        require "colorizer".setup {
            ["*"] = {
                RGB = true,
                RRGGBB = true,
                RRGGBBAA = true,
                css = true,
                css_fn = true,
                hsl_fn = true,
                rgb_fn = true,
                name = false
            }
        }
    end
}
