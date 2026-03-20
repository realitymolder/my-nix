{ den, ... }:
{
  den.provides.desktop-env = {
    includes = [
      den.provides.hyprland
      den.provides.xfce
      den.provides.niri
      den.provides.dms
    ];
  };
}
