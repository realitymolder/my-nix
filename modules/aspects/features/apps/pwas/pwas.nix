{ den, ... }:
{
  den.provides.pwas = {
    includes = [
      den.provides.webapps
    ];
  };
}
