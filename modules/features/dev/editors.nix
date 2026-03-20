{ den, inputs, ... }:
{
  flake-file.inputs.opencode.url = "github:anomalyco/opencode";

  den.provides.dev-editors.homeManager =
    { pkgs, ... }:
    {
      home.packages =
        with pkgs;
        [
          nomachine-client
          vscode
          goose-cli
          bun
          nemo-with-extensions
          pywal
          ripgrep
          github-desktop
          claude-code
          opencode
          opencode-desktop
        ]
        ++ (with inputs.opencode.packages.${pkgs.stdenv.hostPlatform.system}; [ ]);
    };
}
