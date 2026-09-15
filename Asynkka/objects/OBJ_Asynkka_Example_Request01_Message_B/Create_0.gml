/// @desc MESSAGE B.

// Same as previous example, 
// but this uses full fluent-interface.
// You can chain up the methods.
self.handle = new AsynkkaRequest()
  .SetRequest(show_message_async("Hello World!"))
  .SetCallback(function(_context)
  {
    show_debug_message("Callback!");
  });

