{ den, ... }:
{
  den.provides.system-locale = {
    nixos =
      { lib, ... }:
      {
        time.timeZone = lib.mkDefault "Europe/Berlin";
        i18n.defaultLocale = "en_US.UTF-8";
        i18n.extraLocaleSettings = {
          LC_ADDRESS = "he_IL.UTF-8";
          LC_IDENTIFICATION = "en_US.UTF-8";
          LC_MEASUREMENT = "de_DE.UTF-8";
          LC_MONETARY = "de_DE.UTF-8";
          LC_NAME = "he_IL.UTF-8";
          LC_NUMERIC = "de_DE.UTF-8";
          LC_PAPER = "de_DE.UTF-8";
          LC_TELEPHONE = "he_IL.UTF-8";
          LC_TIME = "de_DE.UTF-8";
        };
      };
  };
}
