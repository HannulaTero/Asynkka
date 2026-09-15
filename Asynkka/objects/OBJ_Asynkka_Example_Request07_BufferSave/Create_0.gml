/// @desc BUFFER SAVE.


// Preparations to make saveable buffer.
self.fileName = "AsynkkaTest.save";
self.count = 1;
self.buffer = buffer_create(1, buffer_grow, 1);
buffer_seek(self.buffer, buffer_seek_start, 0);
buffer_write(self.buffer, buffer_string, "Hello from file!");


// Make asynchronous buffer saving request.
var _request = buffer_save_async(self.buffer, self.fileName, 0, self.bytes);


// Wrap it with Asynkka.
self.handle = new AsynkkaRequest(_request)
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






