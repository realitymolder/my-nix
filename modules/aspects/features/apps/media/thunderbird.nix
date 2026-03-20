{ den, ... }:
{
  den.provides.thunderbird.nixos =
    { pkgs, ... }:
    {
      environment.systemPackages = [ pkgs.thunderbird ];
    };
}
