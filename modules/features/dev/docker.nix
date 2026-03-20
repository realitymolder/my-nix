{ den, ... }:
{
  den.provides.dev-docker.nixos =
    { pkgs, ... }:
    {
      virtualisation.docker = {
        enable = true;
        autoPrune = {
          enable = true;
          dates = "weekly";
        };
      };

      environment.systemPackages = [ pkgs.docker-compose ];
    };
}
