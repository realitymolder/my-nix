# Importing Existing Modules into Den

This guide explains where to import your existing NixOS and Home Manager modules in a Den configuration.

## Quick Reference

| Old module type | Import location |
|-----------------|------------------|
| NixOS system config | `modules/aspects/<hostname>.nix` → `nixos.imports` |
| Home Manager config | `modules/aspects/<username>.nix` → `homeManager.imports` |
| Shared across all hosts | `modules/aspects/defaults.nix` → `den.default` |
| Per-user on specific host | `modules/aspects/<hostname>/<username>.nix` |

## Detailed Examples

### 1. NixOS System Config

If you have an old `configuration.nix` for host "samson":

**File: `modules/aspects/samson.nix`**
```nix
{ den, ... }:
{
  den.aspects.samson = {
    includes = [ den.provides.hostname ];

    nixos = { pkgs, ... }: {
      # Import your old NixOS module here
      imports = [ 
        ./my-old-configuration.nix
      ];
    };
  };
}
```

### 2. Home Manager Config

If you have an old Home Manager config for user "daniel":

**File: `modules/aspects/daniel.nix`**
```nix
{ den, ... }:
{
  den.aspects.daniel = {
    includes = [ 
      den.provides.define-user
      den.provides.primary-user
    ];

    homeManager = { pkgs, ... }: {
      # Import your old Home Manager module here
      imports = [
        ./my-old-home.nix
      ];
    };
  };
}
```

### 3. Shared Config (All Hosts)

If you have config that should apply to every host:

**File: `modules/aspects/defaults.nix`**
```nix
{
  den.default = {
    includes = [
      <den/define-user>
      <den/hostname>
    ];

    nixos = {
      # Config for ALL hosts
      # environment.systemPackages = [ pkgs.hello ];
    };
  };
}
```

### 4. User on Specific Host

If "daniel" only exists on host "samson" and has specific config:

**File: `modules/aspects/samson-daniel.nix`**
```nix
{ den, ... }:
{
  den.aspects.samson-daniel = {
    includes = [
      den.provides.define-user
      den.provides.primary-user
    ];

    homeManager = { pkgs, ... }: {
      # Only applies to daniel ON samson
      home.packages = [ pkgs.emacs ];
    };
  };
}
```

## Battery Reference

| Battery | Purpose |
|---------|---------|
| `<den/hostname>` | Auto-sets `networking.hostName` from host definition |
| `<den/define-user>` | Creates user account on system |
| `<den/primary-user>` | Marks user as primary (sudo, etc.) |
| `<den/mutual-provider>` | Enables `<user>.provides.<host>` syntax |
