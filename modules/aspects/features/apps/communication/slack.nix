{ den, ... }:
{
  den.provides.slack.nixos =
    { pkgs, ... }:
    {
      environment.systemPackages = [ pkgs.slack ];
    };
}
