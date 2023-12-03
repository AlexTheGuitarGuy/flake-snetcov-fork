{
  config,
  nvidia ? false,
  ...
}: let
  hardware_nvidia =
    if nvidia == true
    then {
      # Most wayland compositors need this
      modesetting.enable = true;
      open = false;
      nvidiaSettings = true;

      package = config.boot.kernelPackages.nvidiaPackages.stable;
    }
    else {};
in {
  services.xserver = {
    enable = true;
  };
  programs.hyprland = {
    enable = true;
    enableNvidiaPatches = nvidia;
    xwayland.enable = true;
  };

  environment.sessionVariables = {
    # In case the cursor becomes invisible
    # WLR_NO_HARDWARE_CURSORS = "1";

    # Hint to electron apps to use wayland
    NIXOS_OZONE_WL = "1";
    WLR_RENDERER_ALLOW_SOFTWARE = "1";
  };

  hardware.opengl.enable = true;
  hardware.nvidia = hardware_nvidia;
}
