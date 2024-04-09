let
  bind = mode: key: action: {
    desc ? "",
    silent ? false,
  }: {
    inherit mode;
    inherit key;
    inherit action;
    options = {
      inherit desc;
      inherit silent;
    };
  };
in {
  globals.mapleader = " ";

  keymaps = [
    # General maps
    (bind "n" "<leader>f" "+find/file" {})
    (bind "n" "<leader>s" "+search" {})
    (bind "n" "<leader>q" "+quit/session" {})
    (bind ["n" "v"] "<leader>g" "+git" {})
    (bind "n" "<leader>+u" "+ui" {})
    (bind "n" "<leader>w" "+windows" {})
    (bind "n" "<leader><Tab>" "+tab" {})
    (bind ["n" "v"] "<leader>d" "+debug" {})
    (bind ["n" "v"] "<leader>c" "+code" {})
    (bind ["n" "v"] "<leader>t" "+test" {})

    # Tabs
    (bind "n" "<leader><tab><tab>" "<cmd>tabnew<cr>" {
      desc = "New Tab";
      silent = true;
    })
    (bind "n" "<leader><tab>d" "<cmd>tabclose<cr>" {
      silent = true;
      desc = "Close Tab";
    })

    # Windows
    (bind "n" "<leader>ww" "<C-W>p" {
      silent = true;
      desc = "Other window";
    })
    (bind "n" "<leader>wd" "<C-W>c" {
      silent = true;
      desc = "Delete window";
    })
    (bind "n" "<leader>w-" "<C-W>s" {
      silent = true;
      desc = "Split window below";
    })
    (bind "n" "<leader>w|" "<C-W>v" {
      silent = true;
      desc = "Split window right";
    })
    (bind "n" "<C-h>" "<C-W>h" {
      silent = true;
      desc = "Move to window left";
    })
    (bind "n" "<C-l>" "<C-W>l" {
      silent = true;
      desc = "Move to window right";
    })

    {
      mode = "n";
      key = "<C-k>";
      action = "<C-W>k";
      options = {
        silent = true;
        desc = "Move to window over";
      };
    }

    {
      mode = "n";
      key = "<C-j>";
      action = "<C-W>j";
      options = {
        silent = true;
        desc = "Move to window bellow";
      };
    }

    {
      mode = "n";
      key = "<C-s>";
      action = "<cmd>w<cr><esc>";
      options = {
        silent = true;
        desc = "Save file";
      };
    }

    # Quit/Session
    {
      mode = "n";
      key = "<leader>qq";
      action = "<cmd>quitall<cr><esc>";
      options = {
        silent = true;
        desc = "Quit all";
      };
    }

    {
      mode = "v";
      key = "J";
      action = ":m '>+1<CR>gv=gv";
      options = {desc = "Use move command when line is highlighted ";};
    }

    {
      mode = "v";
      key = "K";
      action = ":m '>-2<CR>gv=gv";
      options = {desc = "Use move command when line is highlighted ";};
    }

    {
      mode = "n";
      key = "J";
      action = "mzJ`z";
      options = {
        desc = "Allow cursor to stay in the same place after appending to current line ";
      };
    }

    {
      mode = "n";
      key = "<C-d>";
      action = "<C-d>zz";
      options = {
        desc = "Allow C-d and C-u to keep the cursor in the middle";
      };
    }

    {
      mode = "n";
      key = "<C-u>";
      action = "<C-u>zz";
      options = {
        desc = "Allow C-d and C-u to keep the cursor in the middle";
      };
    }

    {
      mode = "n";
      key = "n";
      action = "nzzzv";
      options = {desc = "Allow search terms to stay in the middle ";};
    }

    {
      mode = "n";
      key = "N";
      action = "Nzzzv";
      options = {desc = "Allow search terms to stay in the middle ";};
    }

    # Copy stuff to system clipboard with <leader> + y or just y to have it just in vim
    {
      mode = ["n" "v"];
      key = "<leader>y";
      action = ''"+y'';
      options = {desc = "Copy to system clipboard";};
    }

    {
      mode = ["n" "v"];
      key = "<leader>Y";
      action = ''"+Y'';
      options = {desc = "Copy to system clipboard";};
    }

    # Paste from system clipboard.
    {
      mode = ["n" "v"];
      key = "<leader>p";
      action = ''"+P'';
      options = {desc = "Deletes to void register and paste over";};
    }

    # Turn off highlight after searching
    {
      mode = ["n"];
      key = "<leader>nh";
      action = ''nohlsearch'';
      options.desc = "Turns off search highlight";
    }

    # Delete to void register
    {
      mode = ["n" "v"];
      key = "<leader>D";
      action = ''"_d'';
      options = {desc = "Delete to void register";};
    }
  ];
}
