{
  config,
  den,
  lib,
  ...
}:
let
  layoutConfig = "us,il";
  cfg = config.den.desktop.niri;
in
{
  den.provides.niri-input.homeManager = lib.mkIf cfg.enable {
    programs.niri.settings.input = {
      keyboard = {
        xkb = {
          layout = layoutConfig;
          options = "grp:alt_space_toggle";
        };
        repeat-delay = 600;
        repeat-rate = 25;
        track-layout = "global";
        numlock = true;
      };

      touchpad = {
        tap = true;
        dwt = true;
        natural-scroll = true;
        accel-speed = 0.1;
        accel-profile = "adaptive";
        scroll-method = "two-finger";
      };

      mouse = {
        accel-speed = -0.5;
      };

      warp-mouse-to-focus.enable = true;
      workspace-auto-back-and-forth = true;

      mod-key = "Super";
      mod-key-nested = "Alt";
    };
  };
}
