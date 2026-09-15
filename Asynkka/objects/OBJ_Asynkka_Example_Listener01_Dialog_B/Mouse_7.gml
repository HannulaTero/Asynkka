/// @desc CREATE LISTENER.

// Same as previous example, 
// but this uses full fluent-interface.
// You can chain up the methods.
self.handle = new AsynkkaListener()
  .SetEvent(ev_async_dialog)
  .SetCallback(function(_context)
  {
    show_debug_message("Async Dialog fired!");
  });
  
