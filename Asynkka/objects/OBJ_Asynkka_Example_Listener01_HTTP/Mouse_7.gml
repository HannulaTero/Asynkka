/// @desc CREATE LISTENER.

// This uses full fluent-interface.
// You can chain up the methods.
self.handle = new AsynkkaListener()
  .SetEvent(ev_async_web)
  .SetCallback(function(_context)
  {
    Asynkka_Example_Log("[Listener] HTTP event fired!");
  });
  
