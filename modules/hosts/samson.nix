{ den, ... }:
{
  den.hosts.x86_64-linux.samson.users.daniel = { };

  den.aspects.samson = {
    includes = [
      den.aspects.daniel
      den.provides.dev
      den.provides.system
      den.provides.gaming
      den.provides.shell
      den.provides.desktop-env
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
