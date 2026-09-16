/// @desc DRAW INFORMATION.


// Draw general info.
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(FNT_Asynkka_Example);

self.DrawText(32, 32, "Read source comments for explanations.");
self.DrawText(32, 64, "Click [LEFT] to execute example.");
self.DrawText(32, 96, "Click [RIGHT] to cancel it.");


// Draw the message log.
// -> Create-event has initialized logger first.
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);
draw_set_font(FNT_Asynkka_Example_Small);

var _array = Asynkka_Example_Log.history;
var _count = array_length(_array);
var _height = (string_height("M") + 4);
var _offset = (_height * (_count + 1));
var _yposition = (room_height - _offset);

for(var i = 0; i < _count; i++)
{
  var _x = 750;
  var _y = _yposition + i * _height;
  self.DrawText(_x, _y, _array[i]);
}


// Draw information for hovered items.
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(FNT_Asynkka_Example);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
var _instance = instance_position(mouse_x, mouse_y, all);
if (_instance != noone)
{
  var _type = object_get_name(_instance.object_index);
  var _prefix = "OBJ_Asynkka_Example_";
  _type = string_replace(_type, _prefix, "");
  
  self.DrawText(mouse_x, mouse_y - 32, _type);
}