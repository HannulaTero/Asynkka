/// @desc MAKE REQUEST.

// The callback functions have context-argument.
// This is data tagged alongside the request.
// It may be struct, or anything else.
new AsynkkaRequest()
  .SetRequest(show_message_async("Context?"))
  .SetContext("Context was this string!")
  .SetCallback(function(_context)
  {
    show_debug_message(_context);
  });

