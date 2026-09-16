/// @desc CREATE LISTENER.


// You may set timeout, after listener removes itself.
// It also calls OnRemove-callback.
self.handle = new AsynkkaListener()
  .SetEvent(ev_async_dialog)
  .SetTimeOut(10.0)
  .SetCallback(function(_context)
  {
    Asynkka_Example_Log("[Listener] Async Dialog fired! ");
  })
  .SetOnTimeOut(function(_context)
  {
    Asynkka_Example_Log("[Listener] Timed out!");
  });


Asynkka_Example_Log("[Listener] Started listener with 10 second time out!");
