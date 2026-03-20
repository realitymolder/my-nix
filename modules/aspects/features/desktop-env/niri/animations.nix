{
  config,
  den,
  lib,
  ...
}:
let
  standardBezier = {
    curve = "cubic-bezier";
    duration-ms = 324;
    curve-args = [
      0.20
      1.0
      0.20
      1.0
    ];
  };
  cfg = config.den.desktop.niri;
in
{
  den.provides.niri-animations.homeManager = lib.mkIf cfg.enable {
    programs.niri.settings.animations = {
      slowdown = 1.0;

      workspace-switch.kind.easing = standardBezier;
      window-open.kind.easing = standardBezier;
      window-close.kind.easing = standardBezier;
      horizontal-view-movement.kind.easing = standardBezier;
      window-movement.kind.easing = standardBezier;
      window-resize.kind.easing = standardBezier;
      overview-open-close.kind.easing = standardBezier;
      config-notification-open-close.kind.easing = standardBezier;
      exit-confirmation-open-close.kind.easing = standardBezier;
      screenshot-ui-open.kind.easing = standardBezier;
    };
  };
}
