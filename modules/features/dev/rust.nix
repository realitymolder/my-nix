{ den, ... }:
{
  den.provides.dev-rust.nixos =
    { pkgs, ... }:
    {
      environment.systemPackages = with pkgs; [
        rustc
        cargo
        rustfmt
        clippy
        wasm-pack
      ];
    };
}
