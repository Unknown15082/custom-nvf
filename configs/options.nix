{
	config.vim = {
		# Basics
		enableEditorconfig = true;
		useSystemClipboard = true;
		lineNumberMode = "number";
		preventJunkFiles = true;
		searchCase = "smart";

		# Globals
		globals.mapleader = " ";
		globals.maplocalleader = " ";

		# Options
		options = {
			# UI
			mouse = "a";
			termguicolors = true;
			wrap = true;

			# Indent
			shiftwidth = 4;
			tabstop = 4;
			softtabstop = 4;
			expandtab = false;

			# Splits
			splitbelow = true;
			splitright = true;
			splitkeep = "cursor";
		};
	};
}
