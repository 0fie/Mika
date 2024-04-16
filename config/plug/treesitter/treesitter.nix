{pkgs, ...}: let
  nu-grammar = pkgs.tree-sitter.buildGrammar {
    language = "nu";
    version = "0.0.0+rev=358c4f5";
    src = pkgs.fetchFromGitHub {
      owner = "nushell";
      repo = "tree-sitter-nu";
      rev = "2d0dd587dbfc3363d2af4e4141833e718647a67e";
      hash = "sha256-A0Lpsx0VFRYUWetgX3Bn5osCsLQrZzg90unGg9kTnVg=";
    };
  };
  gleam-grammar = pkgs.tree-sitter.buildGrammar {
    language = "gleam";
    version = "0.0.0+rev=bcf9c45";
    src = pkgs.fetchFromGitHub {
      owner = "gleam-lang";
      repo = "tree-sitter-gleam";
      rev = "bcf9c45b56cbe46e9dac5eee0aee75df270000ac";
      hash = "sha256-XdgPPX5gKvr4yIpMy6M7AKxaMrilt5Pzp6gUa8o+EwE=";
    };
  };
in {
  filetype.extension = {
    nu = "nu";
    gleam = "gleam";
  };
  plugins.treesitter = {
    enable = true;
    indent = true;
    folding = true;
    nixvimInjections = true;
    grammarPackages = with pkgs.vimPlugins.nvim-treesitter-parsers; [
      nu-grammar
      gleam-grammar
      nix
      markdown
      markdown_inline
      python
      rust
    ];
  };
  extraFiles = {
    "/queries/nu/highlights.scm" = builtins.readFile "${nu-grammar}/queries/nu/highlights.scm";
    "/queries/nu/injections.scm" = builtins.readFile "${nu-grammar}/queries/nu/injections.scm";

    "/queries/gleam/highlights.scm" = builtins.readFile "${gleam-grammar}/queries/highlights.scm";
    "/queries/gleam-grammar/locals.scm" = builtins.readFile "${gleam-grammar}/queries/locals.scm";
    "/queries/gleam-grammar/tags.scm" = builtins.readFile "${gleam-grammar}/queries/tags.scm";
  };

  extraConfigLua = ''
    local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

    parser_config.nu = {
      filetype = "nu",
      filetype = "gleam"
    }
  '';
}
