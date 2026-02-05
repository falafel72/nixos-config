{
  programs.hyprlock = {
    enable = true;
    settings = {
      background = [
        {
          path = "screenshot";
          blur_passes = 1;
          noise = 0;
          blur_size = 3;
        }
      ];
      general = {
        hide_cursor = true;
      };
    };
  };
}
