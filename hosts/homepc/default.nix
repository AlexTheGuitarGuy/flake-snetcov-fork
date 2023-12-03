{
  nixpkgs,
  home-manager,
  flake_core,
  hyprland,
  ...
}: let
  specialArgs = {
    inherit flake_core;
    nvidia = true;

    username = "daniel";

    git_username = "Daniel Snetcov";
    git_email = "developer@danielsnetcov.com";
  };
in
  nixpkgs.lib.nixosSystem {
    system = "x86_64-linux";
    inherit specialArgs;
    modules = [
      ./configuration.nix
      hyprland.nixosModules.default
      home-manager.nixosModules.home-manager
      {
        home-manager = {
          useGlobalPkgs = true;
          useUserPackages = true;
          users."${specialArgs.username}" = ./home.nix;
          extraSpecialArgs = specialArgs;
        };
      }
    ];
  }
