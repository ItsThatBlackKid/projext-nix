{ pkgs, ...}:
{
  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    syntaxHighlighting.enable = true;
    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
        "docker"
        "zsh-autosuggestions"
        "zsh-syntax-highlighting"
      ];
      themes = [ "robbyrussell" ];
    }
  }

}