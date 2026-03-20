{ den, ... }:
{
  den.provides.dev-lm-studio.homeManager =
    { pkgs, ... }:
    {
      home.packages = with pkgs; [ lmstudio ];
    };
}
