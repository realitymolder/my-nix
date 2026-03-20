{
  den,
  inputs,
  pkgs,
  ...
}:
let
  waterfox = inputs.waterfox.packages.${pkgs.stdenv.hostPlatform.system}.default;
in
{
  flake-file.inputs.waterfox.url = "github:realitymolder/waterfox-flake";

  den.provides.apps-browsers.homeManager =
    { pkgs, ... }:
    {
      home.packages = with pkgs; [
        chromium
        brave
        waterfox
      ];
    };
}
