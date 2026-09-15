/// @desc MESSAGE.


self.handle = new AsynkkaRequest()
  .SetRequest(show_message_async("Hello World!"))
  .SetOnSuccess(function(_context)
  {
    show_debug_message("Message success!");
  })
  .SetOnFailure(function(_context)
  {
    show_debug_message("Message failure!");
  });

