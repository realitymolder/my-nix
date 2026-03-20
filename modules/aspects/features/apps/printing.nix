{ den, ... }:
{
  den.provides.apps-printing.nixos =
    { pkgs, ... }:
    {
      services.printing = {
        enable = true;
        drivers = with pkgs; [
          hplip
          gutenprint
        ];
      };

      services.avahi = {
        enable = true;
        nssmdns4 = true;
        openFirewall = true;
      };

      environment.systemPackages = with pkgs; [
        cups
        system-config-printer
      ];
    };
}
