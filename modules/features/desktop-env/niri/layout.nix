{ den, ... }:
{
  den.provides.niri-layout.homeManager = {
    programs.niri.settings.layout = {
      shadow = {
        enable = true;
        spread = 3;
        softness = 3;
      };

      border = {
        enable = true;
        width = 1;
        active.color = "#404040";
        inactive.color = "#242424";
      };

      focus-ring.enable = false;

      default-column-width = {
        proportion = 0.5;
      };

      preset-column-widths = [
        { proportion = 0.25; }
        { proportion = 0.5; }
        { proportion = 0.75; }
      ];

      center-focused-column = "never";
    };
  };
}
