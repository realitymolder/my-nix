{ den, ... }:
{
  den.provides.dev-zed.homeManager =
    { pkgs, ... }:
    {
      programs.zed-editor = {
        enable = true;
        extensions = [ "nix" ];
        extraPackages = with pkgs; [
          nixd
          nixfmt
        ];
        userSettings = {
          languages.Nix = {
            formatter = {
              external = {
                command = "nixfmt";
                arguments = [ "--" ];
              };
            };
            format_on_save = "on";
          };

          lsp.nix = {
            binary = {
              path_lookup = true;
            };
          };
        };
      };
    };
}
