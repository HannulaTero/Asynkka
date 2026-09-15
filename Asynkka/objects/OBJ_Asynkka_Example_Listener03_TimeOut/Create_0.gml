/// @desc 

// You may set timeout, after listener removes itself.
// It also calls OnRemove-callback.
self.handle = new AsynkkaListener()
  .SetEvent(ev_async_dialog)
  .SetTimeOut(5.0)
  .SetCallback(function(_context)
  {
    show_debug_message("Async Dialog fired!");
  })
  .SetOnTimeOut(function(_context)
  {
    show_debug_message("Listener timed out!");
  });
  
