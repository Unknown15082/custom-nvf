{
	config.vim = {
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
