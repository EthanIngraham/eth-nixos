{ config, pkgs, ... }:

{
  programs.tmux = {
    enable = true;
    
    prefix = "C-Space";
    
    terminal = "screen-256color";
    
    baseIndex = 1;
    
    mouse = true;
    
    extraConfig = ''
    bind C-Space send-prefix
  
    bind r source-file ~/.config/tmux/tmux.conf \; display-message "Config reloaded!"
  
    set -g pane-base-index 1
  
    bind-key f run-shell "tmux split-window -h 'fzf-tmux'"
  
    set -g status-position bottom
    set -g status-justify left
  
    set -g status-style bg=default,fg=default
  
    set -g status-left ""
    set -g status-right ""
  
    set -g window-status-format " #I:#W "
    set -g window-status-current-format " #I:#W "
  
    set -g window-status-current-style "bg=#a6fcaa,fg=#000000"
  
    set -g window-status-style "bg=default,fg=#a6fcaa"
  
    set -g window-status-separator ""
    '';
  };
  
  # recreate-tmux script
  home.packages = [ pkgs.fzf ];
  
  home.file.".local/bin/recreate-tmux" = {
    text = ''
    #!/usr/bin/env bash
    
    tmux new-session -d -s caverne -n nixconf -c ~/nixos-config
    
    tmux new-window -t caverne:2 -n dev1 
    tmux new-window -t caverne:3 -n dev2 
    
    tmux select-window -t caverne:1
    
    tmux attach-session -t caverne
    '';
    executable = true;
  };
  
  programs.bash.shellAliases = {
    recreate-tmux = "~/.local/bin/recreate-tmux";
  };
}
