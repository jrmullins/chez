-- The only required line is this one.
local wezterm = require 'wezterm'

-- Some shortcut references
local mux = wezterm.mux
local act = wezterm.action

local keys = {
    { key = 'k', mods = 'CMD', action = act.ClearScrollback 'ScrollbackAndViewport',},
    { key = ' ', mods = 'CTRL', action = act.ShowLauncher },
    { key = '[', mods = 'CTRL', action = act.ScrollByPage(-1) },
    { key = ']', mods = 'CTRL', action = act.ScrollByPage(1) },
}
local mouse_bindings = {}
local launch_menu = {}

local config = {
    -- import the shit above
    keys = keys,
    mouse_bindings = mouse_bindings,
    launch_menu = launch_menu,

    -- general ui/ux
    font_size = 12,
    initial_cols = 120,
    initial_rows = 28,
    default_cursor_style = 'BlinkingBlock',
    color_scheme = 'Tokyo Night Moon',
    adjust_window_size_when_changing_font_size = false,
    window_background_opacity = 0.95,
    -- enable_scroll_bar = true,

    -- tab bar
    use_fancy_tab_bar = true, -- false makes it look better somehow
    -- window_decorations = "INTEGRATED_BUTTONS | RESIZE",
    -- window_padding = {
        -- top = 50,
        -- bottom = 0,
    -- },
    hide_tab_bar_if_only_one_tab = true,

    -- Scrollback
    scrollback_lines = 100000,
}

return config
