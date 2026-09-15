/// @desc MAKE REQUEST.

// This uses full fluent-interface.
// You can chain up the methods.
// There are lot different methods you can use to define request.
self.handle = new AsynkkaRequest()
  .SetLabel("Message Example")
  .SetContext({ text : "Example text" })
  .SetRequest(show_message_async("Hello World!"))
  .SetTimeOut(5.0)
  .SetOnSuccess(function(_context)
  {
    show_debug_message("Message success!");
    show_debug_message(_context.text);
  })
  .SetOnFailure(function(_context)
  {
    show_debug_message("Message failure!");
  })
  .SetOnTimeOut(function(_context)
  {
    show_debug_message("Message timed out!");
  });

