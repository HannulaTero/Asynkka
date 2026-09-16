/// @desc MAKE REQUEST.

// You can define time-out, 
// which after if not finished, request is removed.
// It will call OnTimeOut-method.
// NOTE! Callback-method is not called, as async-event wasn't fired!
new AsynkkaRequest()
  .SetRequest(show_message_async("Oh no time is running out!"))
  .SetTimeOut(5.0)
  .SetCallback(function(_context)
  {
    Asynkka_Example_Log("[Request] Callback! Request has time-out.");
  })
  .SetOnTimeOut(function(_context)
  {
    Asynkka_Example_Log("[Request] Timed out!");
  });

