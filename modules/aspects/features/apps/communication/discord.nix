{ den, ... }:
{
  den.provides.discord.nixos =
    { pkgs, ... }:
    {
      environment.systemPackages = [ pkgs.discord ];
    };
}
