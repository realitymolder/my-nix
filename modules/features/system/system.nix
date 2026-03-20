{ den, ... }:
{
  den.provides.system = {
    includes = [
      den.provides.system-boot
      den.provides.system-connectivity
      den.provides.system-graphics
      den.provides.system-locale
      den.provides.system-nix-ld
      den.provides.system-nix
      den.provides.system-security
      den.provides.system-sound
      den.provides.system-ssh
    ];
  };
}
