{ den, ... }:
{
  den.provides.developer-git = {
    nixos =
      { pkgs, ... }:
      {
        environment.systemPackages = with pkgs; [ git ];
      };
    homeManager =
      { pkgs, ... }:
      {
        home.packages = with pkgs; [
          git
          gh
          delta
        ];
      };
  };
}
