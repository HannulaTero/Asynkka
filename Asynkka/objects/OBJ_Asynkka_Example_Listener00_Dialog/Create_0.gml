/// @desc 

// This makes a listener.
self.handle = asynkka_listener(ev_async_dialog, function(_context)
{
  show_debug_message("Async Dialog fired!");
});