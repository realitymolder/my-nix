{ den, inputs, ... }:
let
  waterfox = inputs.waterfox.packages.x86_64-linux.default;
in
{
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
