{inputs, pkgs, ...}:
{
  programs.kitty.enable = true; # required for the default Hyprland config
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    systemd.enable = true;
    systemd.setPath.enable = true;
    package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
    # make sure to also set the portal package, so that they are in sync
    portalPackage = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;

    settings = {
      # Set the default cursor theme and size
      cursorTheme = "Breeze";
      cursorSize = 24;

      # Set the default wallpaper
      wallpaper = "file:///usr/share/backgrounds/Hyprland/default.jpg";

      # Enable animations
      animations.enable = true;
    };
  };

  # Optional, hint Electron apps to use Wayland:
  home.sessionVariables.NIXOS_OZONE_WL = "1";
}