{ den, ... }:
{
  den.provides.apps-fonts.nixos =
    { pkgs, ... }:
    {
      fonts = {
        packages = with pkgs; [
          fira-code
          jetbrains-mono
          cascadia-code
          noto-fonts
          noto-fonts-cjk-sans
          noto-fonts-color-emoji
          font-awesome
          material-icons
        ];

        fontconfig = {
          enable = true;
          defaultFonts = {
            monospace = [
              "Fira Code"
              "Noto Sans Mono"
            ];
            sansSerif = [
              "Noto Sans"
              "Noto Sans Hebrew"
            ];
            serif = [
              "Noto Serif"
              "Noto Serif Hebrew"
            ];
          };
        };
      };
    };
}
