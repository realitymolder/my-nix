{ inputs, den, ... }:
{
    flake-file.inputs.opencode.url = "github:NixOS/nixos-hardware";


  den.hosts.x86_64-linux.samson.users.daniel = { };

  den.aspects.samson = {
    includes = [
      den.aspects.daniel
      den.provides.dev
      den.provides.system
      den.provides.gaming
      den.provides.shell
      den.provides.desktop-env
    ];

    nixos =
      { pkgs, lib, ... }:
      {
        
        imports = [
          inputs.nixos-hardware.nixosModules.common-cpu-amd
          inputs.nixos-hardware.nixosModules.common-gpu-amd
        ];

        # File systems based on nixos-generate-config output
        fileSystems."/boot" = {
          device = "/dev/disk/by-uuid/XXX"; # Replace with actual UUID
          fsType = "vfat";
        };

        fileSystems."/" = {
          device = "/dev/disk/by-uuid/XXX"; # Replace with actual UUID
          fsType = "ext4";
        };

        swapDevices = [
          {
            device = "/swapfile";
            size = 65536;
          }
        ];

        services.xserver = {
          videoDrivers = [ "amdgpu" ];
          deviceSection = lib.mkDefault ''
            Option "TearFree" "true"
          '';
        };

        hardware.graphics = {
          enable = true;
          extraPackages = with pkgs; [
            mesa
            vulkan-loader
          ];
        };
      };

    homeManager =
      { pkgs, ... }:
      {
        home.packages = [ pkgs.vim ];
      };
  };
}
