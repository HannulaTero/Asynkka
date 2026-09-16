/// @desc 

self.depth = -100;


// Initialize logger.
Asynkka_Example_Log("<Log initialized>");


/**
* Helper function to draw the text with outline.
* Simple and inefficient way to make text with outline.
*/ 
self.DrawText = function(_x, _y, _text)
{
  draw_set_color(c_black);
  draw_text(_x - 1, _y - 1, _text);
  draw_text(_x - 1, _y + 1, _text);
  draw_text(_x + 1, _y + 1, _text);
  draw_text(_x + 1, _y - 1, _text);
  
  draw_set_color(c_white);
  draw_text(_x, _y, _text);
};