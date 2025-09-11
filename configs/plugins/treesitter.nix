{ pkgs, ... }:
{
    vim = {
        treesitter = {
            enable = true;
            addDefaultGrammars = true;

            context.enable = true;
            highlight.enable = true;
            incrementalSelection.enable = true;
            indent.enable = true;

			autotagHtml = true;

			# Extra grammars
			grammars = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
				scheme
			];
        };

        languages.enableTreesitter = true;
    };
}
