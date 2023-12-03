let
  utils = import ./utils;
  modules = (import ./modules) {inherit utils;};
  presets = (import ./presets) {inherit utils modules;};
in {
  flake_core = {
    inherit utils modules presets;
  };
}
