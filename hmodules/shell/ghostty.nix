{ config, pkgs, ... }:

{
  programs.ghostty = {
    enable = true;
    settings = {
      theme = "catppuccin-mocha";

      font-family = "JetBrains Mono";
      font-size = 15; 
      
      font-thicken = true;

      "window-padding-x" = 10;
    };
  };
}
