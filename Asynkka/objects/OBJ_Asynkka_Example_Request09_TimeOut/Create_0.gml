/// @desc TIME-OUT

// You can define time-out, 
// which after if not finished, request is removed.
// It will call OnTimeOut-method.
// NOTE! Callback-method is not called, as async-event wasn't fired!
self.handle = new AsynkkaRequest()
  .SetRequest(show_message_async("Oh no time is running out!"))
  .SetTimeOut(5.0)
  .SetCallback(function(_context)
  {
    show_debug_message("Callback!");
  })
  .SetTimeOut(function(_context)
  {
    show_debug_message("Timed out!");
  });

