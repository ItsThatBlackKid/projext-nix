{ config, pkgs, ... }:

{
  # KDE Plasma 6 with Wayland
  services.xserver.displayManager.sddm.enable = true;
  services.xserver.desktopManager.plasma6.enable = true;
  services.xserver.displayManager.sddm.wayland.enable = true;

  # Configure keymap in X11
  services.xserver.layout = "us";
  services.xserver.xkbVariant = "";

  # Enable CUPS to print documents.
  services.printing.enable = true;
}
