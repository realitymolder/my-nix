{ den, ... }:
{
  den.provides.themes = {
    nixos =
      { pkgs, ... }:
      {
        environment.systemPackages = with pkgs; [
          adwaita-icon-theme
          papirus-icon-theme
          gruvbox-dark-icons-gtk
          bibata-cursors
        ];
      };
  };
}
