{ den, ... }:
{
  den.provides.dev = {
    includes = [
      den.provides.dev-git
      den.provides.dev-docker
      den.provides.dev-editors
      den.provides.dev-neovim
      # den.provides.dev-nodejs
      # den.provides.dev-python
      den.provides.dev-rust
      den.provides.dev-vscode
      den.provides.dev-zed
      den.provides.dev-lm-studio
    ];
  };
}
