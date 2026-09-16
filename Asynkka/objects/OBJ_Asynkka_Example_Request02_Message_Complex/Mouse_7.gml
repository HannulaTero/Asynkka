/// @desc MAKE REQUEST.

// This uses full fluent-interface.
// You can chain up the methods.
// There are lot different methods you can use to define request.
self.handle = new AsynkkaRequest()
  .SetLabel("Message Example")
  .SetContext({ text : "Example text" })
  .SetRequest(show_message_async("This example chains method calls!"))
  .SetTimeOut(5.0)
  .SetOnSuccess(function(_context)
  {
    Asynkka_Example_Log("[Request] Message success!");
    Asynkka_Example_Log(_context.text);
  })
  .SetOnFailure(function(_context)
  {
    Asynkka_Example_Log("[Request] Message failure!");
  })
  .SetOnTimeOut(function(_context)
  {
    Asynkka_Example_Log("[Request] Message timed out!");
  });

