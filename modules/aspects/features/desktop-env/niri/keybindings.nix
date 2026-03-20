{ den, ... }:
let
  dms = args: {
    action.spawn = [
      "dms"
      "ipc"
      "call"
    ]
    ++ args;
  };
  sh = cmd: { action.spawn-sh = cmd; };
in
{
  den.provides.niri-keybindings.homeManager = {
    programs.niri.settings.binds = {
      "Ctrl+Alt+A" = dms [
        "dash"
        "toggle"
        "overview"
      ];
      "Ctrl+Alt+C" = dms [
        "control-center"
        "toggle"
      ];
      "Ctrl+Alt+D" = dms [
        "dash"
        "toggle"
        "media"
      ];
      "Ctrl+Alt+L" = dms [
        "wallpaper"
        "next"
      ];
      "Ctrl+Alt+S" = dms [
        "powermenu"
        "toggle"
      ];
      "Ctrl+Alt+W" = dms [
        "dankdash"
        "wallpaper"
      ];

      "Mod+0".action.focus-workspace = 10;
      "Mod+1".action.focus-workspace = 1;
      "Mod+2".action.focus-workspace = 2;
      "Mod+3".action.focus-workspace = 3;
      "Mod+4".action.focus-workspace = 4;
      "Mod+5".action.focus-workspace = 5;
      "Mod+6".action.focus-workspace = 6;
      "Mod+7".action.focus-workspace = 7;
      "Mod+8".action.focus-workspace = 8;
      "Mod+9".action.focus-workspace = 9;

      "Mod+B" = sh "foot -e ~/Music/music.sh";
      "Mod+BracketLeft".action.consume-or-expel-window-left = [ ];
      "Mod+BracketRight".action.consume-or-expel-window-right = [ ];
      "Mod+C".action.center-column = [ ];
      "Mod+F".action.maximize-column = [ ];
      "Mod+H".action.focus-column-left = [ ];
      "Mod+J".action.focus-window-or-workspace-down = [ ];
      "Mod+K".action.focus-window-or-workspace-up = [ ];
      "Mod+L".action.focus-column-right = [ ];
      "Mod+M" = dms [
        "processlist"
        "toggle"
      ];
      "Mod+N" = dms [
        "notifications"
        "toggle"
      ];
      "Mod+P" = sh "wl-mirror $(niri msg --json focused-output | jq -r .name)";
      "Mod+R".action.switch-preset-column-width-back = [ ];

      "Mod+Return".action.spawn = "ghostty";
      "Mod+Shift+C".action.center-visible-columns = [ ];
      "Mod+Shift+F".action.fullscreen-window = [ ];
      "Mod+Shift+H".action.move-column-left = [ ];
      "Mod+Shift+J".action.move-column-to-workspace-down = [ ];
      "Mod+Shift+K".action.move-column-to-workspace-up = [ ];
      "Mod+Shift+L".action.move-column-right = [ ];
      "Mod+Shift+R".action.switch-preset-column-width = [ ];

      "Mod+Space" = dms [
        "spotlight"
        "toggle"
      ];
      "Mod+Slash".action.show-hotkey-overlay = [ ];
      "Mod+Shift+Escape".action.quit = [ ];
      "Mod+Tab".action.toggle-overview = [ ];
      "Mod+V" = dms [
        "clipboard"
        "toggle"
      ];
      "Mod+W".action.close-window = [ ];
      "Mod+Y" = sh "foot -e yazi";
      "Print".action.screenshot = [ ];

      "XF86AudioLowerVolume" =
        sh "wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%-; dms ipc call audio increment 0";
      "XF86AudioMute" = dms [
        "audio"
        "mute"
      ];
      "XF86AudioPlay" = dms [
        "mpris"
        "playPause"
      ];
      "XF86AudioRaiseVolume" =
        sh "wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%+; dms ipc call audio increment 0";
      "XF86MonBrightnessDown" = dms [
        "brightness"
        "decrement"
        "5"
        ""
      ];
      "XF86MonBrightnessUp" = dms [
        "brightness"
        "increment"
        "5"
        ""
      ];
    };
  };
}
