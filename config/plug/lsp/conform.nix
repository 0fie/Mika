{
  plugins.conform-nvim = {
    enable = true;
    formatOnSave = {
      lspFallback = true;
      timeoutMs = 500;
    };
    notifyOnError = true;
    formattersByFt = {
      python = ["black"];
      nix = ["alejandra"];
      markdown = [["prettierd" "prettier"]];
    };
  };
}
