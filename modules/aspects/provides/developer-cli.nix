{ den, ... }:
{
  den.provides.developer-cli = {
    nixos =
      { pkgs, ... }:
      {
        environment.systemPackages = with pkgs; [
          curl
          wget
          jq
          fzf
        ];
      };
  };
}
