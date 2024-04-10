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
    ("n" "<C-k>" "<C-W>k" {
      silent = true;
      desc = "Move to window over";
    })

    (bind "n" "<C-j>" "<C-W>j" {
      silent = true;
      desc = "Move to window bellow";
    })

    (bind "n" "<C-s>" "<cmd>w<cr><esc>" {
      silent = true;
      desc = "Save file";
    })

    # Quit/Session
    (bind "n" "<leader>qq" "<cmd>quitall<cr><esc>" {
      silent = true;
      desc = "Quit all";
    })

    (bind "v" "J" ":m '>+1<CR>gv=gv" {desc = "Use move command when line is highlighted";})
    (bind "v" "K" ":m '>-2<CR>gv=gv" {desc = "Use move command when line is highlighted";})
    (bind "n" "J" "mzJ`z" {desc = "Allow cursor to stay in the same place after appending to current line";})
    (bind "n" "<C-d>" "<C-d>zz" {desc = "Allow C-d and C-u to keep cursor in the middle.";})
    (bind "n" "<C-u>" "<C-u>zz" {desc = "Allow C-d and C-u to keep cursor in the middle";})
    (bind "n" "n" "nzzzv" {desc = "Allow search terms to stay in the middle";})
    (bind "n" "N" "Nzzzv" {desc = "Allow search terms to in the middle";})

    # Copy stuff to system clipboard with <leader> + y or just y to have it just in vim
    (bind ["n" "v"] "<leader>y" ''"+y'' {desc = "Copy to system clipboard";})
    (bind ["n" "v"] "<leader>Y" ''"+Y'' {desc = "Copy to system clipboard";})

    # Paste from system clipboard.
    (bind ["n" "v"] "<leader>p" ''"+P'' {desc = "Deletes to void register and paste over";})

    # Turn off highlight after searching
    (bind "n" "<leader>nh" "nohlsearch" {desc = "Turn off search highlight";})

    # Delete to void register
    (bind ["n" "v"] "<leader>D" {desc = "Delete to void register";})
  ];
}
