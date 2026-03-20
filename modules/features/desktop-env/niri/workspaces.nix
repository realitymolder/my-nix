{ den, ... }:
{
  den.provides.niri-workspaces.homeManager = {
    programs.niri.settings = {
      workspaces = {
        "browse" = { };
        "chat" = { };
        "develop" = { };
        "listen" = { };
        "game" = { };
        "lifeos" = { };
      };

      window-rules = [
        {
          matches = [ { app-id = "waterfox"; } ];
          open-on-workspace = "browse";
        }
        {
          matches = [ { app-id = "signal"; } ];
          open-on-workspace = "chat";
        }
        {
          matches = [ { app-id = "org.telegram.desktop"; } ];
          open-on-workspace = "chat";
        }
        {
          matches = [ { app-id = "dev.zed.Zed"; } ];
          open-on-workspace = "develop";
        }
        {
          matches = [ { app-id = "com.mitchellh.ghostty"; } ];
          open-on-workspace = "develop";
        }
        {
          matches = [ { app-id = "spotify"; } ];
          open-on-workspace = "listen";
        }
        {
          matches = [ { app-id = "anytype"; } ];
          open-on-workspace = "lifeos";
        }
        {
          matches = [ { app-id = "steam"; } ];
          open-on-workspace = "game";
        }
      ];
    };
  };
}
