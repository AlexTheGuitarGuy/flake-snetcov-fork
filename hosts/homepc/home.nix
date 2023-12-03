{
  flake_core,
  username,
  ...
}:
with flake_core.modules; {
  imports =
    [
      home_manager.bash
      home_manager.nushell
      home_manager.starship
      home_manager.kitty
    ]
    ++ flake_core.presets.devtools.home
    ++ flake_core.presets.utility.home;
  home = {
    inherit username;
    homeDirectory = "/home/${username}";
    stateVersion = "23.05";
  };

  nixpkgs.config.allowUnfree = true;
  programs.home-manager.enable = true;
}
