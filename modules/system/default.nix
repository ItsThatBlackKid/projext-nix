{config, pkgs, ...}: 

{
  imports = [
    ./packages.nix
    ./security.nix
    ./hardware.nix
    ./desktop.nix
    ./shell
  ];
}