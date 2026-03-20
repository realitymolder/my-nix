{ den, ... }:
{
  den.provides.system-ssh = {
    nixos = {
      services.openssh = {
        enable = true;
        settings = {
          PermitRootLogin = "no";
          PasswordAuthentication = false;
          PubkeyAuthentication = true;
          ChallengeResponseAuthentication = false;
          X11Forwarding = false;
          MaxAuthTries = 3;
          ClientAliveInterval = 60;
          ClientAliveCountMax = 3;
        };
      };

      networking.firewall.allowedTCPPorts = [ 22 ];
    };

    homeManager =
      { pkgs, ... }:
      let
        onePassPath =
          if pkgs.stdenv.isDarwin then
            "\"~/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock\""
          else
            "~/.1password/agent.sock";
      in
      {
        programs.ssh = {
          enable = true;
          enableDefaultConfig = false;
          matchBlocks = {
            "github-443" = {
              match = "host github.com exec \"! nc -z -w 1 github.com 22\"";
              hostname = "ssh.github.com";
              port = 443;
            };
            "*" = {
              extraOptions = {
                IdentityAgent = onePassPath;
              };
            };
          };
        };
      };
  };
}
