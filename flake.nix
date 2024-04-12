{
  description = "0fie's ultra-simple Neovim configuration";

  inputs = {
    nixpkgs.url = "nixpkgs/nixpkgs-unstable";
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {nixvim, ...}:{
    packages.default = nixvim.legacyPackages."x86_64-linux".makeNixvimWithModule {
      module = ./config;
    };
  };
}
