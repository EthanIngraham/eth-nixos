{ config, pkgs, lib, ... }:

let

  # logic to conditionally use i3 or hyprland based on host
  hostname = builtins.readFile /etc/hostname;
  hostnameTrimmed = lib.removeSuffix "\n" hostname;
  desktopImports = {
    blackbridge = ./desktop/i3.nix;
    thinkpad = ./desktop/hyprland.nix;
  };
  
  desktopModule = desktopImports.${hostnameTrimmed} or ./desktop/hyprland.nix;

  hyprlockModule = if hostnameTrimmed == "blackbridge" then [] else [ ./desktop/hyprlock.nix ];
in
{
  imports = [
    ./applications/packages.nix
    ./shell/bash.nix
    ./shell/tmux.nix
    ./shell/ghostty.nix
    ./shell/neovim.nix
    desktopModule
  ] ++ hyprlockModule;
  
  home.stateVersion = "24.11";
  programs.home-manager.enable = true;

  home.pointerCursor = {
    name = "Adwaita";
    package = pkgs.adwaita-icon-theme;
    size = 24;
    gtk.enable = true;
    x11.enable = true;
  };
}
