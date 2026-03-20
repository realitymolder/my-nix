{ den, ... }:
{
  den.aspects.base.programs.git.enable = true;

  den.provides.dev-git = {
    nixos =
      { pkgs, ... }:
      {
        programs.git.enable = true;
        environment.systemPackages = [ pkgs.git-lfs ];
      };

    homeManager =
      { pkgs, ... }:
      {
        programs.git = {
          enable = true;
          settings.user = {
            name = "Reality Molder";
            email = "code@toubul.eu";
          };
        };
      };
  };
}
