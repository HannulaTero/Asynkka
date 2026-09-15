/// @desc 

depth = -100;

self.DrawText = function(_x, _y, _text)
{
  // Simple and inefficient way to make text with outline.
  draw_set_color(c_black);
  draw_text(_x - 1, _y - 1, _text);
  draw_text(_x - 1, _y + 1, _text);
  draw_text(_x + 1, _y + 1, _text);
  draw_text(_x + 1, _y - 1, _text);
  
  draw_set_color(c_white);
  draw_text(_x, _y, _text);
};