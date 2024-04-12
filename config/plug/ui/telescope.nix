{
  plugins.telescope = {
    enable = true;
    highlightTheme = "catppuccin-mocha";
    extensions = {
      file-browser.enable = true;
      fzf-native.enable = true;
    };
    settings.defaults = {
      layout_config.horizontal.prompt_position = "top";
      sorting_strategy = "ascending";
    };
    keymaps = {
      "<leader><space>" = {
        action = "find_files, {}";
      };
      "<leader>/" = {
        action = "live_grep";
      };
      "<leader>:" = {
        action = "command_history, {}";
      };
      "<leader>b" = {
        action = "buffers, {}";
      };
      "<leader>ff" = {
        action = "find_files, {}";
      };
      "<leader>fr" = {
        action = "live_grep, {}";
      };
      "<leader>fR" = {
        action = "resume, {}";
      };
      "<leader>fg" = {
        action = "oldfiles, {}";
      };
      "<leader>fb" = {
        action = "buffers, {}";
      };
      "<C-p>" = {
        action = "git_files, {}";
      };
      "<leader>gc" = {
        action = "git_commits, {}";
      };
      "<leader>gs" = {
        action = "git_status, {}";
      };
      "<leader>sa" = {
        action = "autocommands, {}";
      };
      "<leader>sb" = {
        action = "current_buffer_fuzzy_find, {}";
      };
      "<leader>sc" = {
        action = "command_history, {}";
      };
      "<leader>sC" = {
        action = "commands, {}";
      };
      "<leader>sD" = {
        action = "diagnostics, {}";
      };
      "<leader>sh" = {
        action = "help_tags, {}";
      };
      "<leader>sH" = {
        action = "highlights, {}";
      };
      "<leader>sk" = {
        action = "keymaps, {}";
      };
      "<leader>sM" = {
        action = "man_pages, {}";
      };
      "<leader>sm" = {
        action = "marks, {}";
      };
      "<leader>so" = {
        action = ''
          vim_options, {}'';
      };
      "<leader>sR" = {
        action = "resume, {}";
      };
      "<leader>uC" = {
        action = "colorscheme, {}";
      };
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>sd";
      action = "<cmd>Telescope diagnostics bufnr=0<cr>";
      options.desc = "Document diagnostics";
    }
    {
      mode = "n";
      key = "<leader>fe";
      action = "<cmd>Telescope file_browser<cr>";
      options.desc = "File browser";
    }
    {
      mode = "n";
      key = "<leader>fE";
      action = "<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>";
      options.desc = "File browser";
    }
  ];
  extraConfigLua = ''
    require("telescope").setup{
      pickers = {
        colorscheme = {
          enable_preview = true
        }
      }
    }
  '';
}
