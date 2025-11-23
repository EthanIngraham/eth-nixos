{ config, pkgs, ... }:

{

  # Allow VMs to access webcam/video devices
  services.udev.extraRules = ''
    SUBSYSTEM=="video4linux", MODE="0666"
  '';

}
