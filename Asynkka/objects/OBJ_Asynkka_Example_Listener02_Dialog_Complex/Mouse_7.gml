/// @desc CREATE LISTENER.

// This uses full fluent-interface.
// You can chain up the methods.
// There are lot different methods you can use to define listener.
self.handle = new AsynkkaListener()
  .SetLabel("Async Dialog Listener Example")
  .SetContext({ text : "Example text" })
  .SetEvent(ev_async_dialog)
  .SetTimeOut(10.0)
  .SetCallback(function(_context)
  {
    Asynkka_Example_Log($"[Listener] Async Dialog Fired! Context was : {_context}");
  })
