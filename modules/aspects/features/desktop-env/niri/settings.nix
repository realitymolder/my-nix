{
  config,
  den,
  lib,
  ...
}:
let
  cfg = config.den.desktop.niri;
in
{
  den.provides.niri-settings.homeManager = lib.mkIf cfg.enable {
    programs.niri.settings = {
      screenshot-path = "~/Pictures/Screenshots/Screenshot from %Y-%m-%d %H-%M-%S.png";
      prefer-no-csd = true;

      overview = {
        workspace-shadow = {
          softness = 30;
          spread = 30;
        };
      };

      hotkey-overlay.skip-at-startup = true;
    };
  };
}
