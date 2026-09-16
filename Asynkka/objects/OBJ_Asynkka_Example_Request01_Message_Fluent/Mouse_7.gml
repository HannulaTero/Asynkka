/// @desc MAKE REQUEST.

// Same as previous example, 
// but this uses full fluent-interface.
// You can chain up the methods.
new AsynkkaRequest()
  .SetRequest(show_message_async("Hello World! Uses Fluent interface"))
  .SetCallback(function(_context)
  {
    Asynkka_Example_Log("[Request] Message Callback from Fluent Interface!");
  });

