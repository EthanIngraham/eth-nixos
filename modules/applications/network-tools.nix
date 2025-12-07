{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    sshpass
    openssh
    netcat
    nmap
    traceroute
    bind
    wireshark
    tcpdump
    networkmanager
    networkmanagerapplet
    xfce.thunar
    xfce.tumbler
    networkmanagerapplet
  ];

}
