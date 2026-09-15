/// @desc 

// The callback functions have context-argument.
// This is data tagged alongside the request.
// It may be struct, or anything else.
self.handle = new AsynkkaListener()
  .SetEvent(ev_async_dialog)
  .SetContext({ counter : 0 })
  .SetCallback(function(_context)
  {
    _context.counter += 1;
    show_debug_message("Async Dialog fired!");
    show_debug_message($"Current count : {_context.counter}");
  });
  
