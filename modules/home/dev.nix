{  pkgs, ... }:

{
  home.packages = with pkgs; [
    # C/C++ Development
    gcc
    gnumake
    cmake

    # Java Development
#     jdk17
    jdk21

    # Flutter Development
    flutter

    # Node.js Development
    nodejs
    yarn
    nodePackages.typescript
    nodePackages.pnpm

    (pkgs.jetbrains-toolbox.override {
      # This ensures the desktop entry is properly set up to handle the jetbrains:// protocol
      xdg-desktop-portal-sh = true; 
    })
  ];
}
