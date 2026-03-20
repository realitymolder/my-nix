{ den, ... }:
{
  den.provides.system-connectivity = {
    nixos = {
      networking.networkmanager.enable = true;

      hardware.bluetooth = {
        enable = true;
        powerOnBoot = true;
      };
    };
  };
}
