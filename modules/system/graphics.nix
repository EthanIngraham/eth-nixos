{ config, pkgs, ... }:
{
  # Enable OpenGL
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };
  
  environment.systemPackages = with pkgs; [
    dotnet-sdk_8
    mono
  ];
}
