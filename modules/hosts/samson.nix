{ inputs, den, ... }:
{
  flake-file.inputs.disko = {
    url = "github:nix-community/disko";
    inputs.nixpkgs.follows = "nixpkgs";
  };

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
          inputs.disko.nixosModules.disko
          inputs.nixos-hardware.nixosModules.common-cpu-amd
          inputs.nixos-hardware.nixosModules.common-gpu-amd
        ];

        disko.devices = {
          disk.nvme1n1 = {
            device = "/dev/nvme1n1";
            type = "disk";
            content = {
              type = "gpt";
              partitions = {
                ESP = {
                  type = "EF00";
                  size = "1024M";
                  content = {
                    type = "filesystem";
                    format = "vfat";
                    mountpoint = "/boot";
                  };
                };
                root = {
                  size = "100%";
                  content = {
                    type = "filesystem";
                    format = "ext4";
                    mountpoint = "/";
                  };
                };
              };
            };
          };
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
