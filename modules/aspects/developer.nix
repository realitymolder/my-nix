{ den, ... }:
{
  den.provides.developer = {
    includes = [
      den.provides.developer-git
      den.provides.developer-cli
      den.provides.developer-fs
    ];
  };
}
