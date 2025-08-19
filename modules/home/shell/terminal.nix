{inputs, pkgs, ...}:
{
  programs.zsh = {
    enable = true;
    ohMyZsh.enable = true;
    ohMyZsh.theme = "agnoster";
    ohMyZsh.plugins = [ "git" "zsh-autosuggestions" "zsh-syntax-highlighting" ];
  };

  programs.bash = {
    enable = true;  
  }
}