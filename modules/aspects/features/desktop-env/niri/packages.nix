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
  den.provides.niri-packages.homeManager = lib.mkIf cfg.enable (
    { pkgs, ... }:
    {
      home.packages = with pkgs; [
        xwayland-satellite
        xdg-desktop-portal-wlr
        grim
        slurp
        swww
        nirius
        fuzzel
        mako
        swaylock
        swayidle
        wofi
        brightnessctl
        playerctl
        gnome-keyring
        jq
        nautilus
      ];
    }
  );
}
