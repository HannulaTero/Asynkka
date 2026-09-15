/// @desc CREATE LISTENER.

// This uses full fluent-interface.
// You can chain up the methods.
// There are lot different methods you can use to define listener.
self.handle = new AsynkkaListener()
  .SetLabel("Async Dialog Listener Example")
  .SetContext({ text : "Example text" })
  .SetEvent(ev_async_dialog)
  .SetTimeOut(5.0)
  .SetCallback(function(_context)
  {
    show_debug_message("Message success!");
    show_debug_message(_context.text);
  })
