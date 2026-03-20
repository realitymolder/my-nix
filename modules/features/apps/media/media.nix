{ den, ... }:
{
  den.provides.media = {
    includes = [
      den.provides.spotify
      den.provides.thunderbird
    ];
  };
}
