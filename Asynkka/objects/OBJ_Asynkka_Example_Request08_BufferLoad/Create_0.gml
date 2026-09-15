/// @desc BUFFER LOAD.


// Preparations to make saveable buffer.
self.fileName = "AsynkkaTest.save";
self.count = 1;
self.buffer = buffer_create(1, buffer_grow, 1);


// Make asynchronous buffer saving request.
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






