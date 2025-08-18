{ config, pkgs, ... }:

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

    # IDE
    jetbrains-toolbox
  ];
}
