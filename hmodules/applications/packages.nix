{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    librewolf
    ghostty
    dmenu
    feh
  ];

}
