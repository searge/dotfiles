local wezterm = require "wezterm"

local keybinds = {{
    key = "=",
    mods = "CTRL",
    action = "IncreaseFontSize"
}, {
    key = "-",
    mods = "CTRL",
    action = "DecreaseFontSize"
}, {
    key = "0",
    mods = "CTRL",
    action = "ResetFontSize"
}, {
    key = ";",
    mods = "CTRL",
    action = wezterm.action.SplitHorizontal {
            domain = "CurrentPaneDomain"
        }
}, {
    key = "'",
    mods = "CTRL",
    action = wezterm.action.SplitVertical {
            domain = "CurrentPaneDomain"
        }
}, {
    key = "q",
    mods = "CTRL",
    action = wezterm.action({
        CloseCurrentPane = {
            confirm = false
        }
    })
}, {
    key = "!",
    mods = "CTRL | SHIFT",
    action = wezterm.action_callback(function(win, pane)
        local tab, window = pane:move_to_new_window()
    end)
}}

local config = {
    -- Font setting
    color_scheme = "nordfox",
    default_cursor_style = "BlinkingBlock",
    allow_square_glyphs_to_overflow_width = "WhenFollowedBySpace",
    adjust_window_size_when_changing_font_size = false,
    -- "EnvyCodeR Nerd Font"; "0xProto Nerd Font"; "Hack Nerd Font Mono"
    font = wezterm.font_with_fallback { "0xProto Nerd Font Mono", "Hack Nerd Font Mono", "Noto Color Emoji",
                                        "Code2001", "Emoji One", "Apple Color Emoji"},
    font_size = 11.0,

    -- Tabs and hacks
    hide_tab_bar_if_only_one_tab = true,
    use_fancy_tab_bar = true,
    enable_wayland = false,
    audible_bell = "Disabled",

    keys = keybinds,

    -- Window behavior
    window_close_confirmation = "NeverPrompt",
    skip_close_confirmation_for_processes_named = {"sh", "zsh", "bash", "fish", "tmux", "ssh", "nu"},

    -- Window settings
    initial_cols = 140,
    initial_rows = 40,
    window_background_opacity = 0.98,
    text_background_opacity = 1.0,

    window_padding = {
        left = "2cell",
        right = "2cell",
        top = "1cell",
        bottom = "1cell"
    },

    window_frame = {
        font = wezterm.font {
            family = "Departure Mono"
        },

        -- The size of the font in the tab bar.
        -- Default to 10.0 on Windows but 12.0 on other systems
        font_size = 10.0,

        -- The overall background color of the tab bar when
        -- the window is focused
        active_titlebar_bg = "#2e3440",

        -- The overall background color of the tab bar when
        -- the window is not focused
        inactive_titlebar_bg = "#2e3440"
    },
    visual_bell = {
        fade_in_function = "EaseIn",
        fade_in_duration_ms = 108,
        fade_out_function = "EaseOut",
        fade_out_duration_ms = 108,
        target = "CursorColor"
    },
    colors = {
        visual_bell = "#5e81ac",
        selection_bg = "#88c0d0",
        selection_fg = "black",

        cursor_bg = "#b48ead",
        cursor_fg = "black",
        cursor_border = "#b48ead",
        tab_bar = {
            -- The color of the strip that goes along the top of the window
            -- (does not apply when fancy tab bar is in use)
            background = "#2e3440",
            inactive_tab_edge = "#2e3440",
            -- The active tab is the one that has focus in the window
            active_tab = {
                -- The color of the background area for the tab
                bg_color = "#3b4252",
                -- The color of the text for the tab
                fg_color = "#e5e9f0",

                -- Specify whether you want "Half", "Normal" or "Bold" intensity for the
                -- label shown for this tab.
                -- The default is "Normal"
                intensity = "Normal",

                -- Specify whether you want "None", "Single" or "Double" underline for
                -- label shown for this tab.
                -- The default is "None"
                underline = "None",

                -- Specify whether you want the text to be italic (true) or not (false)
                -- for this tab.  The default is false.
                italic = false,

                -- Specify whether you want the text to be rendered with strikethrough (true)
                -- or not for this tab.  The default is false.
                strikethrough = false
            },
            inactive_tab = {
                bg_color = "#2e3440",
                fg_color = "#4c566a"
            },
            inactive_tab_hover = {
                bg_color = "#2e3440",
                fg_color = "#d8dee9",
                italic = true
            },
            new_tab = {
                bg_color = "#2e3440",
                fg_color = "#4c566a"
            },
            new_tab_hover = {
                bg_color = "#3b4252",
                fg_color = "#d8dee9",
                italic = true
            }
        }

    }
}
return config
