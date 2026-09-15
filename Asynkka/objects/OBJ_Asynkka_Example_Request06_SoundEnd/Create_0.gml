/// @desc SOUND END.


asynkka_request(
  audio_play_sound(SND_Asynkka_Example, 0, false), 
  function(_context)
  {
    show_debug_message("Audio has ended!");
  }
);

