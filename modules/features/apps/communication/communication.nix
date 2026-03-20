{ den, ... }:
{
  den.provides.communication = {
    includes = [
      den.provides.discord
      den.provides.slack
      den.provides.signal
      den.provides.telegram
    ];
  };
}
