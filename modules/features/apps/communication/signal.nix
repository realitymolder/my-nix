{ den, ... }:
{
  den.provides.signal.homeManager =
    { pkgs, ... }:
    {
      home.packages = with pkgs; [
        (pkgs.signal-desktop.override {
          commandLineArgs = "--password-store=gnome-libsecret";
        })
      ];
    };
}
