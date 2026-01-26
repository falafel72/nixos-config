{ ... }:
{
  wayland.windowManager.hyprland.settings = {
    "$mod" = "SUPER";
    bind  =
      [
        "$mod, F, exec, hyprlauncher"
        "$mod, E, exec, emacs"
        ", Print, exec, grimblast copy area"
        "$mod, Return, exec, kitty"
        "$mod, C, killactive,"
        "$mod, escape, exec, hyprlock "
        # Focus binds
        "$mod, H, movefocus, l"
        "$mod, K, movefocus, u"
        "$mod, J, movefocus, d"
        "$mod, L, movefocus, r"
        "$mod, S, togglespecialworkspace, magic"
        "$mod SHIFT, S, movetoworkspace, special:magic"
      ]
      ++ (
        # workspaces
        # binds $mod + [shift +] {1..9} to [move to] workspace {1..9}
        builtins.concatLists (builtins.genList (i:
          let ws = i + 1;
          in [
            "$mod, ${toString ws}, workspace, ${toString ws}"
            "$mod SHIFT, ${toString ws}, movetoworkspace, ${toString ws}"
          ]
        )
        9)
      );

    bindel = [
      # Audio binds
      ", XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
      ", XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
    ];

    bindl = [
      ", XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
    ];
  };
}
