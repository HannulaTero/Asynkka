/// @desc CREATE LISTENER.

// The callback functions have context-argument.
// This is data tagged alongside the request.
// It may be struct, or anything else.
self.handle = new AsynkkaListener()
  .SetEvent(ev_async_dialog)
  .SetContext({ counter : 0 })
  .SetCallback(function(_context)
  {
    _context.counter += 1;
    Asynkka_Example_Log("[Listener] Async Dialog fired! Counting.");
    Asynkka_Example_Log($"[Listener] Current count : {_context.counter}");
  });
  
