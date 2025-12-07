{ config, pkgs, ... }:

{

  users.users.caverne = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "video" "audio" ];
    hashedPasswordFile = config.sops.secrets."user-password-hash".path;
  };

}
