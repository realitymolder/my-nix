{ den, lib, ... }:
{
  den.provides.apps-firefox.nixos =
    { pkgs, lib, ... }:
    {
      programs.firefox = lib.mkForce {
        enable = true;
        package = pkgs.firefox;

        policies = {
          DisableTelemetry = true;
          DisableFirefoxStudies = true;
          EnableTrackingProtection = {
            Value = true;
            Locked = true;
            Cryptomining = true;
            Fingerprinting = true;
          };
          DisablePocket = true;
          DisableFirefoxAccounts = false;
          DisableAccounts = false;
          DisableFirefoxScreenshots = false;
          OverrideFirstRunPage = "";
          OverridePostUpdatePage = "";
          DontCheckDefaultBrowser = true;
          DisplayBookmarksToolbar = "newtab";
          DisplayMenuBar = "default-off";
          SearchBar = "unified";
        };

        preferences = {
          "browser.tabs.firefox-view" = false;
          "browser.compactmode.show" = true;
          "browser.startup.page" = 3;
          "browser.startup.homepage" = "about:home";
        };
      };
    };
}
