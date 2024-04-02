{ pkgs, ... }:

{
  plugins.treesitter = {
    enable = true;
    indent = true;
    folding = true;
    nixvimInjections = true;
    grammarPackages = with pkgs; [ vimPlugins.nvim-treesitter-parsers.nix ];
  };
  filetype = { extension = { liq = "liquidsoap"; }; };
  extraConfigLua = ''
    local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

    parser_config.liquidsoap = {
      filetype = "liquidsoap",
    }
  '';
}
