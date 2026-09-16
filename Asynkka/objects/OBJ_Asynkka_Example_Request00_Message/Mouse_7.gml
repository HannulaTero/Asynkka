/// @desc MAKE REQUEST.

// This uses convenience function to make the request.
// -> Callback is called always when request-id related happens.
asynkka_request(
  show_message_async("Hello World!"), 
  function(_context)
  {
    Asynkka_Example_Log("[Request] Message Callback!");
  }
);


