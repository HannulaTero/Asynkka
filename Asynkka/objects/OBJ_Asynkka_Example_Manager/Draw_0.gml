/// @desc DRAW INFORMATION.


// Draw general info.
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(FNT_Asynkka_Example);

self.DrawText(32, 32, "Click [LEFT] to execute example.");
self.DrawText(32, 48, "Click [RIGHT] to cancel it.");
self.DrawText(32, 64, "Read console logs.");


// Draw information for hovered items.
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