{
    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
        flake-utils.url = "github:numtide/flake-utils";
        nvf = {
            url = "github:notashelf/nvf";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };

    outputs =
        {
            nixpkgs,
            nvf,
            flake-utils,
            ...
        }:
        flake-utils.lib.eachDefaultSystem (
            system:
            let
                pkgs = nixpkgs.legacyPackages.${system};
                customNvf = nvf.lib.neovimConfiguration {
                    inherit pkgs;
                    modules = [ ./configs ];
                };
            in
            rec {
                # nix build + nix run
                packages.nvf = customNvf.neovim;
                defaultPackage = packages.nvf;

                # nix develop
                devShell = pkgs.mkShell {
                    inputsFrom = [ packages.nvf ];
                    packages = [ ];
                };

                # nix fmt
                formatter = pkgs.nixfmt-rfc-style;
            }
        );
}
