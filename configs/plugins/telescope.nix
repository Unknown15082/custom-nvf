{
    vim = {
        # TODO: Move devicons
        visuals.nvim-web-devicons.enable = true;
        telescope = {
            enable = true;

            mappings = {
                buffers = "<leader>fb";
                diagnostics = "<leader>fd";
                findFiles = "<leader>ff";
                liveGrep = "<leader>fg";

                # others binding are omitted, including git and lsp stuffs
            };

            setupOpts = {
                defaults = {
                    prompt_prefix = " ";
                    selection_caret = " ";
                    color_devicons = true;

                    set_env = {
                        COLORTERM = "truecolor";
                    };

                    sorting_strategy = "ascending";

					layout_config = {
                        horizontal = {
                            prompt_position = "top";
                            preview_width = 0.4;
                        };
                        width = 0.8;
                        height = 0.9;
                        preview_cutoff = 120;
                    };

					mappings.i = {
						"<Esc>" = "close";
					};

                    preview = {
                        treesitter = true;
                    };
                };

                extensions = {
                    fzf-native = {
                        enable = true;
                        settings.caseMode = "smart_case";
                    };
                    frecency = {
                        enable = true;
                        settings = {
                            showUnindexed = true;
                            defaultWorkspace = "CWD";
                        };
                    };
                };

                pickers = {
                    find_files.hidden = true;
                };
            };
        };
    };
}
