{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    citrix_workspace 
    zoom-us
    v4l-utils
    xdg-desktop-portal-kde
  ];

}
