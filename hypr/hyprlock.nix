{
  programs.hyprlock = {
    enable = true;
    settings = {
      background = [
        {
          path = "screenshot";
          blur_passes = 3;
          noise = 0;
          blur_size = 3;
        }
      ];
      input-field = {
        size = "200,50";
        outline_thickness = 2;
        dots_size = 0.2;
        dots_spacing = 0.35;
        dots_center = true;
        outer_color = "rgba(0, 0, 0, 0)";
        inner_color = "rgba(0, 0, 0, 0.2)";
        font_color = "rgb(243, 139, 168)";
        fade_on_empty = false;
        rounding = -1;
        check_color = "rgb(30, 107, 204)";
        placeholder_text = ''<i><span foreground="##cdd6f4">Input Password...</span></i>'';
        hide_input = false;
        position = "0, 0";
        halign = "center";
        valign = "center";
      };

      general = {
        hide_cursor = true;
      };
    };
  };
}
