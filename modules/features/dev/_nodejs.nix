{ den, ... }:
{
  den.provides.dev-nodejs.nixos =
    { pkgs, ... }:
    {
      environment.systemPackages = with pkgs; [ nodejs_20 ];
    };
}
