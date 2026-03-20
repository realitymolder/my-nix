{ den, ... }:
{
  den.provides.apps-base = {
    nixos =
      { pkgs, ... }:
      {
        environment.systemPackages = with pkgs; [
          wget
          curl
          unzip
          git
        ];
      };

    homeManager =
      { pkgs, ... }:
      {
        home.packages = with pkgs; [
          obsidian
          upscayl
          qbittorrent
          ghostty
          anytype
        ];
      };
  };
}
