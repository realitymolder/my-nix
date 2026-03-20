{
  config,
  den,
  lib,
  ...
}:
let
  cfg = config.den.desktop;
in
{
  den.provides.xfce = lib.mkIf cfg.enableXfce {
    nixos =
      { pkgs, lib, ... }:
      {
        services.xserver.enable = true;
        services.xserver.desktopManager.xfce.enable = true;
        services.xserver.displayManager.lightdm.enable = true;
        services.displayManager.defaultSession = lib.mkDefault "xfce";

        environment.systemPackages = with pkgs; [
          xfce4-pulseaudio-plugin
          xfce4-whiskermenu-plugin
          xfce4-taskmanager
          xfce4-terminal
          xfce4-screenshooter
          xfce4-clipman-plugin
        ];
      };
  };
}
