{ config, pkgs, user, ... }:

{
  virtualisation = {
    docker.enable = true;
  };

  users.groups.docker.members = [ "zed" ];

  environment.systemPackages = with pkgs; [
    docker-compose
  ];
}
