/// @desc GET INTEGER.


self.integer = 0;


// Request a integer.
// If request is successful, then update the "integer"-variable.
self.handle = new AsynkkaRequest()
  .SetRequest(get_integer_async("Give me integer:", 0))
  .SetContext(self)
  .SetOnSuccess(function(_context)
  {
    _context.integer = async_load[? "value"];
  })
  .SetOnFailure(function(_context)
  {
    show_debug_message("Get integer cancelled");
  });

