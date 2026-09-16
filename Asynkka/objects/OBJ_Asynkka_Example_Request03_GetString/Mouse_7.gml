/// @desc MAKE REQUEST.


self.text = "...";


// Request a string.
// If request is successful, then update the "text"-variable.
new AsynkkaRequest()
  .SetRequest(get_string_async("Give me string:", "Hello world!"))
  .SetContext(self)
  .SetOnSuccess(function(_context)
  {
    _context.text = async_load[? "result"];
    Asynkka_Example_Log($"[Request] Get string success : {_context.text}");
  })
  .SetOnFailure(function(_context)
  {
    Asynkka_Example_Log("[Request] Get string cancelled");
  });

