{ config, pkgs, ... }:

{
  programs.vscode = {
    enable = true;
    extensions = (import ./vscode-extensions.nix { inherit pkgs; });
    userSettings = {
      "workbench.colorTheme" = "Material Theme Ocean";
    };
  };
}
