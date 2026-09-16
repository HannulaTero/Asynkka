/// @desc MAKE REQUEST.

Asynkka_Example_Log("Starting audio play!");

asynkka_request(
  audio_play_sound(SND_Asynkka_Example, 0, false), 
  function(_context)
  {
    Asynkka_Example_Log("[Request] Audio has ended!");
  }
);

