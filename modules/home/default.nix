{config, pkgs, ...}: 

{
  imports = [
    ./apps.nix
    ./dev.nix
    ./vscode.nix
    ./shell
    ./hyprland
    ./theme
  ];
}