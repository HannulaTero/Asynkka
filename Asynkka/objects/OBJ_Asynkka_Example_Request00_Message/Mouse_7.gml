/// @desc MAKE REQUEST.

// This uses convenience function to make the request.
// -> Callback is called always when request-id related happens.
asynkka_request(
  show_message_async("Hello World!"), 
  function(_context)
  {
    show_debug_message("Callback!");
  }
);


