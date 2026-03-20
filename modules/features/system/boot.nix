{ den, lib, ... }:
{
  den.provides.system-boot = {
    nixos = {
      boot.loader.grub = {
        enable = true;
        efiSupport = true;
        device = lib.mkDefault "nodev";
        timeoutStyle = "menu";
      };

      boot.loader.timeout = 5;
      boot.loader.efi.canTouchEfiVariables = true;
    };
  };
}
