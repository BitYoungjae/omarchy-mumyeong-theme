-- Mumyeong Theme for Hyprland
-- Luminous active border + high-contrast inactive (glass edge effect).
local active_border_color = "rgb(F4F4F5)"
local inactive_border_color = "rgb(71717A)"

hl.config({
  general = {
    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },
  },

  group = {
    col = {
      border_active = active_border_color,
      border_inactive = inactive_border_color,
    },
  },
})
