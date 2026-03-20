{ den, ... }:
{
  den.provides.shell-fish = {
    nixos = {
      programs.fish.enable = true;
    };

    homeManager =
      { pkgs, ... }:
      {
        programs.fish = {
          enable = true;
          loginShellInit = ''
            set -x NIX_PATH nixpkgs=channel:nixos-unstable
            set -x NIX_LOG info
            set -x TERMINAL ghostty
            if test (tty) = "/dev/tty1"
              exec Hyprland &> /dev/null
            end
          '';
          shellAbbrs = {
            ".." = "cd ..";
            "..." = "cd ../..";
            ls = "eza";
            grep = "rg";
            ps = "procs";
          };
        };
        home.sessionVariables.SHELL = "${pkgs.fish}/bin/fish";
      };
  };
}
