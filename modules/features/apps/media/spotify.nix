{ den, ... }:
{
  den.provides.spotify.homeManager =
    { pkgs, ... }:
    {
      home.packages = with pkgs; [
        pkgs.spotify
        pkgs.alsa-scarlett-gui
      ];
    };
}
