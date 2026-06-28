-- Matugen template for Hyprland — borders only (Lua config)
-- Place this file at: ~/.config/matugen/templates/hyprland-borders-matugen.lua
--
-- Add to your matugen config.toml:
--
--   [templates.hyprland-borders]
--   input_path  = '~/.config/matugen/templates/hyprland-borders-matugen.lua'
--   output_path = '~/.config/hypr/colors.lua'
--   post_hook   = 'hyprctl reload'
--
-- Then require it at the top of your ~/.config/hypr/hyprland.lua:
--
--   require("colors")

hl.config({
    general = {
        col = {
            active_border        = { colors = { "rgb(ffb4a7)", "rgb(ddc48c)" }, angle= 45 },
            inactive_border      = { colors = { "rgb(a08c89)" } },
        }
    },
})

