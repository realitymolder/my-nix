{ den, ... }:
{
  den.provides.niri-packages.homeManager =
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
    };
}
