{pkgs, ...}: let
  dotfiles = pkgs.vimUtils.buildVimPlugin {
    name = "daniel";
    src = ./config;
  };
in {
  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    defaultEditor = true;

    plugins = with pkgs.vimPlugins; [
      mason-nvim
      nvim-lspconfig
      nvim-treesitter.withAllGrammars

      telescope-nvim
      plenary-nvim
      popup-nvim

      catppuccin-nvim

      harpoon
      gitsigns-nvim
      lualine-nvim
      nerdcommenter
      nvim-colorizer-lua
      nvim-notify
      nvim-ts-rainbow2
      nvim-web-devicons

      dotfiles
    ];

    extraConfig = ''
      lua << EOF
          require 'daniel'.init()
      EOF
    '';
  };
}
