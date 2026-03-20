{ den, ... }:
{
  den.provides.developer-fs = {
    nixos =
      { pkgs, ... }:
      {
        environment.systemPackages = with pkgs; [
          tree
          fd
          ripgrep
        ];
      };
  };
}
