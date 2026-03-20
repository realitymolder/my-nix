{ den, ... }:
{
  den.provides.system-nix = {
    nixos = {
      nix.settings = {
        trusted-users = [
          "root"
          "@wheel"
        ];
        trusted-substituters = [
          "https://cache.nixos.org"
          "https://nix-community.cachix.org"
          "https://cache.garnix.io"
        ];
        trusted-public-keys = [
          "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
          "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
          "cache.garnix.io-1:8n4zlxBC4vhS3z2V9cT3kQ6Q2j7v9Xc5Y1h4R6z8A0B="
        ];
      };
    };

    homeManager =
      { pkgs, ... }:
      {
        home.packages = with pkgs; [
          nixd
          nixfmt
          bottles
        ];
      };
  };
}
