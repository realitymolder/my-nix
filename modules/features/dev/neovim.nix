{ den, ... }:
{
  den.provides.dev-neovim.nixos =
    { pkgs, ... }:
    {
      programs.neovim = {
        enable = true;
        defaultEditor = true;
      };

      environment.systemPackages = with pkgs; [
        neovim
        git
      ];
    };
}
