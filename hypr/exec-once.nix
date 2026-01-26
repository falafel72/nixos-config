# Startup scripts for hyprland, referred to as exec-once
{ ... }:
{
  wayland.windowManager.hyprland.settings = {
    exec-once = [
      "waybar"
      "hypridle"
    ];
  };
}
