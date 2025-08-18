{inputs, pkgs, ...}:

{
  programs.kitty.enable = true; # required for the default Hyprland config
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.variables = ["--all"];
    xwayland.enable = true;
    systemd.enable = true;
    package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
    # make sure to also set the portal package, so that they are in sync
    portalPackage = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;
  };

  # Optional, hint Electron apps to use Wayland:
  home.sessionVariables.NIXOS_OZONE_WL = "1";
}