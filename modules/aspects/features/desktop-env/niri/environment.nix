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
  den.provides.niri-environment.nixos = lib.mkIf cfg.enable {
    environment.sessionVariables = {
      NIXOS_OZONE_WL = "1";
      XCURSOR_SIZE = "24";
      XCURSOR_THEME = "Adwaita";
      GDK_BACKEND = "wayland,x11";
      QT_QPA_PLATFORM = "wayland;xcb";
      SDL_VIDEODRIVER = "wayland";
      MOZ_ENABLE_WAYLAND = "1";
      ELECTRON_OZONE_PLATFORM_HINT = "wayland";
      OZONE_PLATFORM = "wayland";
    };

    security.polkit.enable = true;
  };
}
