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
    (bind "n" "<leader>s" "+search" {})
    (bind "n" "<leader>q" "+quit/session" {})
    (bind ["n" "v"] "<leader>g" "+git" {})
    (bind "n" "<leader>+u" "+ui" {})
    (bind "n" "<leader>w" "+windows" {})
    (bind "n" "<leader><Tab>" "+tab" {})
    (bind "n" "<leader>f" "+find/file" {})
    (bind ["n" "v"] "<leader>d" "+debug" {})
    (bind ["n" "v"] "<leader>c" "+code" {})
    (bind ["n" "v"] "<leader>t" "+test" {})

    (bind "v" "J" ":m '>+1<CR>gv=gv" {desc = "Move line(s) down.";})
    (bind "v" "K" ":m '>-2<CR>gv=gv" {desc = "Move line(s) up.";})
    (bind "n" "<leader>nh" "nohlsearch" {desc = "Turn off search highlight.";})
    (bind ["n" "v"] "<leader>y" ''"+y'' {desc = "Copy to system clipboard.";})
    (bind ["n" "v"] "<leader>p" ''"+P'' {desc = "Paste from system clipboard.";})

    # Do stuff whilst keeping the cursor in the center.
    (bind "n" "<C-d>" "<C-d>zz" {})
    (bind "n" "<C-u>" "<C-u>zz" {})
    (bind "n" "n" "nzzzv" {})
    (bind "n" "N" "Nzzzv" {})
  ];
}
