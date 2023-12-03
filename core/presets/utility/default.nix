inputs: let
  home = import ./home.nix inputs;
  nixos = import ./nixos.nix inputs;
  darwin = import ./darwin.nix inputs;
in {
  inherit home nixos darwin;
}
