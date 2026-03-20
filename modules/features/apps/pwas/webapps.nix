{ den, ... }:
{
  den.provides.webapps.homeManager = {

    home.file."whatsapp-web.desktop" = {
      source = ./desktop-files/whatsapp-web.desktop;
      target = ".local/share/applications/whatsapp-web.desktop";
    };

    home.file."whatsapp.png" = {
      source = ./icons/whatsapp.png;
      target = ".local/share/icons/hicolor/48x48/apps/whatsapp.png";
    };
  };
}
