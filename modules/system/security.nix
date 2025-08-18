{config, pkgs, ...}: 
{
  # services.fido-udev-rules.enable = true;
  services.udev.packages = [ pkgs.yubikey-personalization ];
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  }
}