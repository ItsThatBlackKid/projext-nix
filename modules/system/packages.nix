{ config, pkgs, ... }:

{
  # List packages installed in system profile.
  environment.systemPackages = with pkgs; [
    vim
    wget
    git
    google-chrome
    sbctl
    libfido2
    usbutils
  ];
}
