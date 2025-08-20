{ keyboard, inputs, ... }:

{

  # Enable the X11 windowing system.
  # You can disable this if you're only using the Wayland session.
  services.xserver.enable = true;

  # Enable the KDE Plasma Desktop Environment.
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;
  services.desktopManager.plasma6.enable = true;
  programs.hyprland = {
    enable = true;
    withUWSM = true; # Enable UWSM support
  };

  # Configure keymap in X11
  services.xserver.xkb = keyboard;

  # Enable CUPS to print documents.
  services.printing.enable = true;
  programs.zsh.enable = true;
  virtualisation.docker.enable = true;
  services.openssh.enable = true;

}
