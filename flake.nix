{
	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
		nvf = {
			url = "github:notashelf/nvf";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};

	outputs = { nixpkgs, nvf, ... }: let
		system = "x86_64-linux";
		customNvf = nvf.lib.neovimConfiguration {
			inherit (nixpkgs.legacyPackages.${system}) pkgs;
			modules = [ ./configs ];
		};
	in {
		packages.${system}.nvf = customNvf.neovim;
	};
}
