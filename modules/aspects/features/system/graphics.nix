{ den, ... }:
{
  den.provides.system-graphics = {
    nixos =
      { pkgs, ... }:
      {
        hardware.graphics = {
          enable = true;
          enable32Bit = true;
          extraPackages = with pkgs; [
            mesa
            vulkan-loader
            vulkan-validation-layers
          ];
        };

        boot.initrd.kernelModules = [ "amdgpu" ];
        services.xserver.videoDrivers = [ "amdgpu" ];
      };
  };
}
