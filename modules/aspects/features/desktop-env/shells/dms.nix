{
  config,
  den,
  lib,
  ...
}:
{
  den.provides.dms.homeManager =
    { pkgs, ... }:
    {
      programs.dank-material-shell = {
        enable = true;
        systemd = {
          enable = true;
          restartIfChanged = true;
        };

        enableSystemMonitoring = true;
        enableVPN = true;
        enableDynamicTheming = true;
        enableAudioWavelength = true;
        enableCalendarEvents = false;
        niri.includes = {
          enable = true;
          override = true;
          originalFileName = "hm";
          filesToInclude = [
            "alttab"
            "binds"
            "colors"
            "layout"
            "outputs"
            "wpblur"
            "cursor"
          ];
        };
      };
    };
}
