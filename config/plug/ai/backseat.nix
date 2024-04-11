{pkgs, ...}: {
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "backseat";
      src = pkgs.fetchFromGitHub {
        owner = "james1236";
        repo = "backseat.nvim";
        rev = "3bb2781cdbf9b26c60e9ba45bfb22625e235c142";
        hash = "sha256-OdKcNxxD51hbhJ8U0GcD6Eo9jTGv+fErhwJJ+OAlSjU=";
      };
    })
  ];

  extraConfigLua = ''
    require("backseat").setup({
      openai_model_id = 'gpt-3.5-turbo',
      split_threshold = 100,
      highlight = {
        icon = '', -- ''
        group = 'Comment',
      }
    })
  '';
}
