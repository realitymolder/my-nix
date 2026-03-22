{ inputs, den, ... }:
{

  flake-file.inputs = {
    nixos-hardware.url = "github:NixOS/nixos-hardware";
    disko = {
      url = "github:nix-community/disko";
      inputs.nixpkgs.follows = "nixpkgs";
    };
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
      {
        config,
        pkgs,
        lib,
        ...
      }:
      {

        imports = [
      #     # inputs.disko.nixosModules.disko
      #     # ./disko.nix
          ./hardware-config.nix
      #     inputs.nixos-hardware.nixosModules.common-cpu-amd-pstate
      #     inputs.nixos-hardware.nixosModules.common-gpu-amd
        ];

      #   boot.initrd.availableKernelModules = [
      #     "nvme"
      #     "xhci_pci"
      #     "ahci"
      #     "usbhid"
      #     "sd_mod"
      #   ];
      #   boot.kernelModules = [ "kvm-amd" ];
      #   hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;

      #   swapDevices = [
      #     {
      #       device = "/swapfile";
      #       size = 65536;
      #     }
      #   ];

      #   services.xserver = {
      #     videoDrivers = [ "amdgpu" ];
      #     deviceSection = lib.mkDefault ''
      #       Option "TearFree" "true"
      #     '';
      #   };

      #   hardware.graphics = {
      #     enable = true;
      #     extraPackages = with pkgs; [
      #       mesa
      #       vulkan-loader
      #     ];
      #   };
      };

    homeManager =
      { pkgs, ... }:
      {
        home.packages = [ pkgs.vim ];
      };
  };
}
