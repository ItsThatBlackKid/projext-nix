{ pkgs, ...}:
 {
  imports = [
    ./rnix.nix {inherit pkgs; }
    ./treefmt.nix {inherit pkgs; treefmt-nix = pkgs.treefmt-nix; }
  ];
}