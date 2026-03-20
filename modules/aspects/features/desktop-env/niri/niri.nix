{ den, ... }:
{
  den.provides.niri = {
    includes = [
      den.provides.niri-environment
      den.provides.niri-packages
      den.provides.niri-settings
      den.provides.niri-input
      den.provides.niri-layout
      den.provides.niri-workspaces
      den.provides.niri-keybindings
      den.provides.niri-animations
      den.provides.niri-mimes
      den.provides.niri-greeter
    ];
  };
}
