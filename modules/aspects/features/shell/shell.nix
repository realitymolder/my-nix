{ den, ... }:
{
  den.provides.shell = {
    includes = [
      den.provides.shell-fish
      den.provides.shell-tools
    ];
  };
}
