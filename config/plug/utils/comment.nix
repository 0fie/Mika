{pkgs, ...}: {
  extraPlugins = [pkgs.vimPlugins.comment-nvim];

  extraConfigLua = ''
    require('Comment').setup()
  '';
}
