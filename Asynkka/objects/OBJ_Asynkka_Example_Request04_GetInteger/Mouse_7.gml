/// @desc MAKE REQUEST.


self.integer = 0;


// Request a integer.
// If request is successful, then update the "integer"-variable.
new AsynkkaRequest()
  .SetRequest(get_integer_async("Give me integer:", 0))
  .SetContext(self)
  .SetOnSuccess(function(_context)
  {
    _context.integer = async_load[? "value"];
    Asynkka_Example_Log($"[Request] Get integer success : {_context.integer}");
  })
  .SetOnFailure(function(_context)
  {
    Asynkka_Example_Log("[Request] Get integer cancelled");
  });

