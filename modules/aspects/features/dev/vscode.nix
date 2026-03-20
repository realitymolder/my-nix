{ den, ... }:
{
  den.provides.dev-vscode.nixos =
    { pkgs, ... }:
    {
      environment.systemPackages = [ pkgs.vscode ];
    };
}
