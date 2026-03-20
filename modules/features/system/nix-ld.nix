{ den, ... }:
{
  den.provides.system-nix-ld = {
    nixos =
      { pkgs, ... }:
      {
        services.envfs.enable = true;
        programs.nix-ld.enable = true;
        programs.nix-ld.libraries = with pkgs; [
          stdenv.cc.cc
          openssl
          zlib
        ];
        environment.variables = {
          NIX_LD_LIBRARY_PATH = "/run/current-system/sw/share/nix-ld/lib";
        };
      };
  };
}
