{
    vim.keymaps = [
        {
            # Clear highlight
            key = "<Esc>";
            mode = "n";
            silent = true;
            action = "<Cmd>noh<CR>";
        }
        {
            # Visual gj
            key = "j";
            mode = [
                "n"
                "x"
            ];
            silent = true;
            action = "v:count == 0 ? 'gj' : 'j'";
        }
        {
            # Visual gk
            key = "k";
            mode = [
                "n"
                "x"
            ];
            silent = true;
            action = "v:count == 0 ? 'gk' : 'k'";
        }
    ];
}
