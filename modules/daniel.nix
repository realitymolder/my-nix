{ den, ... }:
{
  # user aspect
  den.aspects.daniel = {
    includes = [
      # den.provides.unfree
      den.provides.define-user
      den.provides.primary-user
      (den.provides.user-shell "fish")
    ];

    homeManager =
      { pkgs, ... }:
      {
        home.packages = [ pkgs.htop ];
      };

    # user can provide NixOS configurations
    # to any host it is included on
    # nixos = { pkgs, ... }: { };
  };
}
