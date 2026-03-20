{ den, ... }:
{
  den.provides.apps = {
    includes = [
      den.provides.apps-base
      den.provides.apps-browsers
      den.provides.apps-firefox
      den.provides.apps-fonts
      den.provides.apps-printing
      den.provides.communication
      den.provides.media
      den.provides.pwas
    ];
  };
}
