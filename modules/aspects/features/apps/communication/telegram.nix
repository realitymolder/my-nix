{ den, ... }:
{
  den.provides.telegram.homeManager =
    { pkgs, ... }:
    {
      home.packages = with pkgs; [ pkgs.telegram-desktop ];
    };
}
