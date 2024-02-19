return {
    'akinsho/bufferline.nvim',
    config = function()
        require('bufferline').setup(
            {
                options = {
                    numbers = "ordinal",
                    number_style = "superscript",
                    mappings = true,
                    close_command = "bdelete! %d",
                    right_mouse_command = "bdelete! %d",
                    left_mouse_command = "buffer %d",
                    middle_mouse_command = nil,
                    offsets = { { filetype = "NvimTree", text = "File Explorer", text_align = "left" } },
                    show_buffer_close_icons = false,
                    show_close_icon = false,
                    show_tab_indicators = true,
                    persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
                    separator_style = "thin",
                    enforce_regular_tabs = false,
                    always_show_bufferline = true,
                    sort_by = 'id',
                    diagnostics = "nvim_lsp",
                    diagnostics_indicator = function(count, level, diagnostics_dict, context)
                        return "(" .. count .. ")"
                    end,
                }
            })
    end
}
