{ den, ... }:
{
  den.provides.system-security = {
    homeManager =
      { pkgs, ... }:
      {
        home.packages = with pkgs; [
          gnome-keyring
          libsecret
          seahorse
          _1password-gui
        ];
      };
  };
}
