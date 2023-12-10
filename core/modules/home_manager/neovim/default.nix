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

    ];

    extraConfig = ''
      lua << EOF
          require 'daniel'.init()
      EOF
    '';

    extraPackages = with pkgs; [
      # LSP
      lua-language-server
      nodePackages."typescript-language-server"
      gopls
      jdt-language-server
    ];
  };
}
