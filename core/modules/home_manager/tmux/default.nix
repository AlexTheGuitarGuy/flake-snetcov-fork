{pkgs, ...}: {
  programs.tmux = {
    enable = true;

    baseIndex = 1;
    terminal = "xterm-256color";
    keyMode = "vi";
    shortcut = "a";

    plugins = with pkgs.tmuxPlugins; [
      continuum
      resurrect
      yank
      dracula
    ];
  };
}
