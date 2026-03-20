{ den, ... }:
{
  den.aspects.samson = {
    includes = [
      den.provides.developer
    ];

    nixos =
      { pkgs, ... }:
      {
        environment.systemPackages = [ pkgs.hello ];
      };

    homeManager =
      { pkgs, ... }:
      {
        home.packages = [ pkgs.vim ];
      };
  };
}
