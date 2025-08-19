{ pkgs, treefmt-nix }:
treefmt-nix.mkWrapper pkgs {
  programs.nixfmt.enable = true;
};