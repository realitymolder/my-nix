{
  den,
  lib,
  inputs,
  ...
}:
{
  flake-file.inputs.dank-material-shell = {
    url = "github:AvengeMedia/DankMaterialShell";
  };

  den.provides.niri-greeter.nixos =
    { pkgs, lib, ... }:
    {
      imports = [ inputs.dank-material-shell.nixosModules.greeter ];

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
