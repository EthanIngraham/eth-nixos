{ config, pkgs, ... }:

{
  sops = {
    defaultSopsFile = ../../secrets/secrets.yaml;
    defaultSopsFormat = "yaml";
    
    age.keyFile = "/etc/sops/age/keys.txt";
    
    secrets = {
      "user-password-hash" = {
        neededForUsers = true;
      };
    };
  };
}
