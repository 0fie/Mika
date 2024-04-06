{pkgs, ...}: {
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "search";
      src = pkgs.fetchFromGitHub {
        owner = "FabianWirth";
        repo = "search.nvim";
        rev = "cfde7b91c713d17e590aad2f0d22a68ddeba3043";
        hash = "sha256-nLDwEkpu+SmcJgnjhtqaXkeeX8YwPp3S2QYKNXaTJCI=";
      };
    })
  ];
  extraConfigLua = ''    local builtin = require('telescope.builtin')
    require("search").setup({
      mappings = { -- optional: configure the mappings for switching tabs (will be set in normal and insert mode(!))
        next = "<Tab>",
        prev = "<S-Tab>"
      },
      append_tabs = { -- append_tabs will add the provided tabs to the default ones
        {
          "Commits", -- or name = "Commits"
          builtin.git_commits, -- or tele_func = require('telescope.builtin').git_commits
          available = function() -- optional
            return vim.fn.isdirectory(".git") == 1
          end
        }
      },
      -- its also possible to overwrite the default tabs using the tabs key instead of append_tabs
      tabs = {
        {
          "Files",
          function(opts)
            opts = opts or {}
            if vim.fn.isdirectory(".git") == 1 then
              builtin.git_files(opts)
            else
              builtin.find_files(opts)
            end
          end
        }
      },
    })'';
}
