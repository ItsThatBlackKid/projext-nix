{config, pkgs, ...}: 

{
  imports = [
    ./hyprland/default.nix
    ./apps.nix
    ./dev.nix
    ./vscode.nix
  ];
}