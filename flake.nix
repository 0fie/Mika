{
  description = "0fie's ultra-simple Neovim configuration";

  inputs = {
    nixpkgs.url = "nixpkgs/nixpkgs-unstable";
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {nixpkgs,nixvim, ...}: let
    forAllSystems = nixpkgs.lib.genAttrs ["x86_64-linux" "x86_64-darwin" "i686-linux" "aarch64-linux" "aarch64-darwin"];
    pkgsForEach = nixvim.legacyPackages;
  in{
    packages = forAllSystems (system: {
      default = pkgsForEach.${system}.makeNixvimWithModule {
        module = ./config;
      };
    });
  };
}
