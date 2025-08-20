{ pkgs, ...}:
{
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
        "docker"
        "zsh-autosuggestions"
        "zsh-syntax-highlighting"
      ];
      theme ="robbyrussell" ;
    };
  };
}