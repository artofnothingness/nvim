require("trailblazer").setup({
    lang = "en",
    auto_save_trailblazer_state_on_exit = false,
    auto_load_trailblazer_state_on_enter = false,
    custom_session_storage_dir = "", -- i.e. "~/trail_blazer_sessions/"
    trail_options = {
        -- The trail mark priority sets the global render priority of trail marks in the sign/number
        -- column as well as the highlights within the text (e.g. Treesitter sets a value of 100).
        -- Make sure this value is higher than any other plugin you use to ensure that trail marks
        -- are always visible and don't get overshadowed.
        trail_mark_priority = 10001,
        -- Available modes to cycle through. Remove any you don't need.
        available_trail_mark_modes = {
            "global_chron",
            "global_buf_line_sorted",
            "global_fpath_line_sorted",
            "global_chron_buf_line_sorted",
            "global_chron_fpath_line_sorted",
            "global_chron_buf_switch_group_chron",
            "global_chron_buf_switch_group_line_sorted",
            "buffer_local_chron",
            "buffer_local_line_sorted"
        },
        -- The current / initially selected trail mark selection mode. Choose from one of the
        -- available modes: global_chron, global_buf_line_sorted, global_chron_buf_line_sorted,
        -- global_chron_buf_switch_group_chron, global_chron_buf_switch_group_line_sorted,
        -- buffer_local_chron, buffer_local_line_sorted
        current_trail_mark_mode = "global_chron",
        current_trail_mark_list_type = "quickfix", -- currently only quickfix lists are supported
        trail_mark_list_rows = 10, -- number of rows to show in the trail mark list
        verbose_trail_mark_select = true, -- print current mode notification on mode change
        mark_symbol = "•", --  will only be used if trail_mark_symbol_line_indicators_enabled = true
        newest_mark_symbol = "⬤", -- disable this mark symbol by setting its value to ""
        cursor_mark_symbol = "⬤", -- disable this mark symbol by setting its value to ""
        next_mark_symbol = "⬤", -- disable this mark symbol by setting its value to ""
        previous_mark_symbol = "⬤", -- disable this mark symbol by setting its value to ""
        multiple_mark_symbol_counters_enabled = true,
        number_line_color_enabled = true,
        trail_mark_in_text_highlights_enabled = true,
        trail_mark_symbol_line_indicators_enabled = false, -- show indicators for all trail marks in symbol column
        symbol_line_enabled = true,
        default_trail_mark_stacks = {
            -- this is the list of trail mark stacks that will be created by default. Add as many
            -- as you like to this list. You can always create new ones in Neovim by using either
            -- `:TrailBlazerSwitchTrailMarkStack <name>` or `:TrailBlazerAddTrailMarkStack <name>`
            "default" -- , "stack_2", ...
        },
        available_trail_mark_stack_sort_modes = {
            "alpha_asc", -- alphabetical ascending
            "alpha_dsc", -- alphabetical descending
            "chron_asc", -- chronological ascending
            "chron_dsc", -- chronological descending
        },
        -- The current / initially selected trail mark stack sort mode. Choose from one of the
        -- available modes: alpha_asc, alpha_dsc, chron_asc, chron_dsc
        current_trail_mark_stack_sort_mode = "alpha_asc",
        -- Set this to true if you always want to move to the nearest trail mark first before
        -- continuing to peek move in the current selection mode order. This effectively disables
        -- the "current trail mark cursor" to which you would otherwise move first before continuing
        -- to move through your trail mark stack.
        move_to_nearest_before_peek = false,
        move_to_nearest_before_peek_motion_directive_up = "fpath_up", -- "up", "fpath_up" -> For more information see section "TrailBlazerMoveToNearest Motion Directives"
        move_to_nearest_before_peek_motion_directive_down = "fpath_down", -- "down", "fpath_down" -> For more information see section "TrailBlazerMoveToNearest Motion Directives"
        move_to_nearest_before_peek_dist_type = "lin_char_dist", -- "man_dist", "lin_char_dist" -> Manhattan Distance or Linear Character Distance
    },
    event_list = {
        -- Add the events you would like to add custom callbacks for here. For more information see section "Custom Events"
        -- "TrailBlazerTrailMarkStackSaved",
        -- "TrailBlazerTrailMarkStackDeleted",
        -- "TrailBlazerCurrentTrailMarkStackChanged",
        -- "TrailBlazerTrailMarkStackSortModeChanged"
    },
    mappings = { -- rename this to "force_mappings" to completely override default mappings and not merge with them
        nv = { -- Mode union: normal & visual mode. Can be extended by adding i, x, ...
            motions = {
                new_trail_mark = '<A-.>',
                track_back = '<A-,>',
                peek_move_next_down = '<A-i>',
                peek_move_previous_up = '<A-o>',
                toggle_trail_mark_list = '<A-m>',
            },
            actions = {
                delete_all_trail_marks = '<A-\'>',
                -- switch_to_next_trail_mark_stack = '<A-i>',
                -- switch_to_previous_trail_mark_stack = '<A-o>',
            },
        },
        -- You can also add/move any motion or action to mode specific mappings i.e.:
        -- i = {
        --     motions = {
        --         new_trail_mark = '<C-l>',
        --         ...
        --     },
        --     ...
        -- },
    },
    quickfix_mappings = { -- rename this to "force_quickfix_mappings" to completely override default mappings and not merge with them
        nv = {
            motions = {
                qf_motion_move_trail_mark_stack_cursor = "<CR>",
            },
            actions = {
                qf_action_delete_trail_mark_selection = "d",
                qf_action_save_visual_selection_start_line = "v",
            },
            alt_actions = {
                qf_action_save_visual_selection_start_line = "V",
            }
        },
        v = {
            actions = {
                qf_action_move_selected_trail_marks_down = "<C-j>",
                qf_action_move_selected_trail_marks_up = "<C-k>",
            }
        }
    },
    -- Your custom highlight group overrides go here
    -- hl_groups = {} 
})
