{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    # Applications
    spotify
    vscode
    brave
    firefox
    qbittorrent
  ];
}
