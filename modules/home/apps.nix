{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    # Applications
    spotify
    jetbrains-toolbox
    vscode
  ];
}
