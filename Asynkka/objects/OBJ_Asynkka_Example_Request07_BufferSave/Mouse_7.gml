/// @desc MAKE REQUEST.


// Make asynchronous buffer saving request.
var _request = buffer_save_async(self.buffer, self.fileName, 0, self.bytes);


// Wrap it with Asynkka.
new AsynkkaRequest(_request)
  .SetLabel("Buffer Async Save")
  .SetContext(self)
  .SetOnSuccess(function(_context)
  {
    show_debug_message("Saving buffer has succeed!");
  })
  .SetOnFailure(function(_context)
  {
    show_debug_message("Saving buffer has failed!");
  });






