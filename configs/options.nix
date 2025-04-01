{
    vim = {
        # Basics
		viAlias = true;
		vimAlias = true;
        useSystemClipboard = true;
        preventJunkFiles = true;
        searchCase = "smart";

        # Globals
		globals = {
			mapleader = " ";
			maplocalleader = " ";
			editorconfig = true;
		};

        # Options
        options = {
            # UX
            mouse = "a";
            wrap = true;
            numberwidth = 4;
			cmdheight = 1;

			# UI
            termguicolors = true;
            shortmess = "ltToOCFsI";
			cursorline = true;
			cursorlineopt = "both";
			signcolumn = "yes";
			showmode = false;
			ruler = false;

            # Indent
            shiftwidth = 4;
            tabstop = 4;
            softtabstop = 4;
            expandtab = false;
			autoindent = true;
			smartindent = true;
			breakindent = true;

            # Splits
            splitbelow = true;
            splitright = true;
            splitkeep = "cursor";
        };
    };
}
