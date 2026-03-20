{ den, ... }:
{
  den.provides.niri-mimes.homeManager =
    { pkgs, ... }:
    {
      xdg.portal = {
        enable = true;
        xdgOpenUsePortal = true;
        extraPortals = [
          pkgs.xdg-desktop-portal-gtk
          pkgs.xdg-desktop-portal-gnome
        ];
        config = {
          common.default = [ "gnome" ];
        };
      };
      xdg.enable = true;
      xdg.mimeApps = {
        enable = true;
        defaultApplications = {
          "inode/directory" = [ "org.gnome.Nautilus.desktop" ];
          "text/html" = [ "waterfox.desktop" ];
          "x-scheme-handler/http" = [ "waterfox.desktop" ];
          "x-scheme-handler/https" = [ "waterfox.desktop" ];
          "application/xhtml+xml" = [ "waterfox.desktop" ];
          "text/plain" = [ "nvim.desktop" ];
          "text/markdown" = [ "nvim.desktop" ];
          "text/x-python" = [ "nvim.desktop" ];
          "text/x-shellscript" = [ "nvim.desktop" ];
          "image/jpeg" = [ "org.gnome.Loupe.desktop" ];
          "image/png" = [ "org.gnome.Loupe.desktop" ];
          "image/gif" = [ "org.gnome.Loupe.desktop" ];
          "image/webp" = [ "org.gnome.Loupe.desktop" ];
          "image/svg+xml" = [ "org.gnome.Loupe.desktop" ];
          "application/pdf" = [ "org.gnome.Evince.desktop" ];
          "application/zip" = [ "org.gnome.FileRoller.desktop" ];
          "application/x-tar" = [ "org.gnome.FileRoller.desktop" ];
          "application/x-compressed-tar" = [ "org.gnome.FileRoller.desktop" ];
          "audio/*" = [ "org.gnome.Lollypop.desktop" ];
          "video/*" = [ "io.github.celluloid_player.Celluloid.desktop" ];
          "application/x-terminal-emulator" = [ "com.mitchellh.ghostty.desktop" ];
          "x-scheme-handler/anytype" = [ "anytype.desktop" ];
        };
      };
    };
}
