{ den, ... }:
{
  den.provides.gaming = {
    includes = [
      den.provides.gaming-steam
      den.provides.gaming-lutris
    ];
  };
}
