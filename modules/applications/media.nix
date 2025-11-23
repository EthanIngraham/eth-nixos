{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    streamlink
    mpv
    discord
    spotify
  ];

}
