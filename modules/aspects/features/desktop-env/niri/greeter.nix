{ den, lib, ... }:
{
  den.provides.niri-greeter.nixos =
    { pkgs, lib, ... }:
    {
      programs.dank-material-shell.greeter = {
        enable = true;
        compositor = {
          name = "niri";
        };
        configHome = "/home/daniel";
        logs = {
          save = true;
          path = "/tmp/dms-greeter.log";
        };
      };

      services.displayManager.defaultSession = lib.mkDefault "dms-greeter";
    };
}
