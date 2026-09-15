/// @desc GET STRING.


self.text = "";


// Request a string.
// If request is successful, then update the "text"-variable.
self.handle = new AsynkkaRequest()
  .SetRequest(get_string_async("Give me string:", "Hello world!"))
  .SetContext(self)
  .SetOnSuccess(function(_context)
  {
    _context.text = async_load[? "result"];
  })
  .SetOnFailure(function(_context)
  {
    show_debug_message("Get string cancelled");
  });

