/// @desc MAKE REQUEST.


// Make asynchronous buffer laoding request.
var _request = buffer_load_async(self.buffer, self.fileName, 0, -1);


// Wrap it with Asynkka.
self.handle = new AsynkkaRequest(_request)
  .SetLabel("Buffer Async Load")
  .SetContext(self)
  .SetOnSuccess(function(_context)
  {
    show_debug_message("Loading buffer has succeed!");
    show_debug_message("Contents were : ");
    show_debug_message(buffer_peek(_context.buffer, 0, buffer_string));
  })
  .SetOnFailure(function(_context)
  {
    show_debug_message("Loading buffer has failed!");
  });






