{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    papirus-icon-theme
    arc-theme
  ];

}
