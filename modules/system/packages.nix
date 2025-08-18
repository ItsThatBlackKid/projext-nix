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
    pam_u2f
    nixpkgs-fmt
    nvidia-utils
    lib32-nvidia-utils
  ];
}
