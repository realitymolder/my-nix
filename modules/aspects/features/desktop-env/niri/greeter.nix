{
  config,
  den,
  lib,
  ...
}:
let
  cfg = config.den.desktop.niri;
  desktopCfg = config.den.desktop;
in
{
  den.provides.niri-greeter.nixos =
    lib.mkIf (cfg.enable && desktopCfg.defaultDesktopEnvironment == "niri")
      (
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
        }
      );
}
