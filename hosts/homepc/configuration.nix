{
  pkgs,
  flake_core,
  username,
  ...
}: let
  imports = with flake_core;
    [
      ./hardware-configuration.nix
      modules.nixos.hyprland
    ]
    ++ presets.devtools.nixos;
in {
  inherit imports;

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  nixpkgs.config.allowUnfree = true;
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 7d";
  };
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  users.users."${username}" = {
    password = "1234";
    shell = pkgs.nushell;
    isNormalUser = true;
    description = username;
    extraGroups = ["networkmanager" "wheel"];
  };
  system.stateVersion = "23.05";
}
