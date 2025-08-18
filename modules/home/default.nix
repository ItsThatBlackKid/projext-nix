{config, pkgs, ...}: 

{
  imports = [
    ./hyprland/default.nix.nix
    ./apps.nix
    ./dev.nix
    ./vscode.nix
  ];
}