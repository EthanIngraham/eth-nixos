{ config, pkgs, ... }:

let
  sops-nix = builtins.fetchTarball {
    url = "https://github.com/Mic92/sops-nix/archive/master.tar.gz";
  };
in
{
  imports = [ "${sops-nix}/modules/sops" ];
  
  environment.systemPackages = with pkgs; [
    sops
    age
  ];
}
