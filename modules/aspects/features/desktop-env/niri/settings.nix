{ den, ... }:
{
  den.provides.niri-settings.homeManager = {
    programs.niri.settings = {
      screenshot-path = "~/Pictures/Screenshots/Screenshot from %Y-%m-%d %H-%M-%S.png";
      prefer-no-csd = true;

      overview = {
        workspace-shadow = {
          softness = 30;
          spread = 30;
        };
      };

      hotkey-overlay.skip-at-startup = true;
    };
  };
}
