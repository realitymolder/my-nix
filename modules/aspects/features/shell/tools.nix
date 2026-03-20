{ den, ... }:
{
  den.provides.shell-tools = {
    nixos =
      { pkgs, ... }:
      {
        environment.systemPackages = with pkgs; [
          eza
          bat
          fzf
          zoxide
          fastfetch
        ];
      };

    homeManager =
      { pkgs, ... }:
      {
        home.packages = [ pkgs.fastfetch ];

        programs.eza.enable = true;
        programs.bat.enable = true;
        programs.fzf.enable = true;
        programs.zoxide.enable = true;
      };
  };
}
