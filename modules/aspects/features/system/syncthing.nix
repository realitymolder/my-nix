{ den, ... }:
{
  # # Syncthing configuration - contributes to samson aspect
  # den.aspects.samson.nixos = {
  #   services.syncthing = {
  #     enable = true;
  #     user = "syncthing";
  #     group = "syncthing";
  #     dataDir = "/var/lib/syncthing";
  #     configDir = "/var/lib/syncthing/.config/syncthing";

  #     settings = {
  #       options = {
  #         listenAddresses = [ "default" ];
  #         globalAnnounceEnabled = false;
  #         localAnnounceEnabled = true;
  #         urAccepted = -1;
  #       };
  #     };
  #   };
  # };
}
