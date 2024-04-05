{pkgs, ...}: {
  extraPlugins = [
    pkgs.vimPlugins.neoscroll-nvim
  ];

  extraConfigLua = ''
    require('neoscroll').setup {}
  '';
}
