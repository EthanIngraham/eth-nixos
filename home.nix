{ config, pkgs, ... }:

{

  imports = [
    ./hmodules/applications/packages.nix
    ./hmodules/applications/anki/anki.nix
    ./hmodules/desktop/i3.nix
    ./hmodules/shell/bash.nix
    ./hmodules/shell/tmux.nix
    ./hmodules/shell/ghostty.nix
    ./hmodules/shell/neovim.nix
  ];

  home.stateVersion = "24.11";
  programs.home-manager.enable = true;

}
