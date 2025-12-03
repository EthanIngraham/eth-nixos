{ config, pkgs, ... }:

{

  imports = [
    ./applications/packages.nix
    ./applications/anki/anki.nix
    ./desktop/i3.nix
    ./shell/bash.nix
    ./shell/tmux.nix
    ./shell/ghostty.nix
    ./shell/neovim.nix
  ];

  home.stateVersion = "24.11";
  programs.home-manager.enable = true;

}
