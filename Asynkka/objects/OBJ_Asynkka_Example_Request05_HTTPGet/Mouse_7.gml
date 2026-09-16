/// @desc MAKE REQUEST.

self.url    = "https://httpbin.org/ip";
self.data   = undefined;
self.failed = false;

// Make HTTP request.
self.handle = new AsynkkaRequest()
  .SetRequest(http_get(self.url))
  .SetContext(self)
  
  // Still downloading the requested item.
  .SetOnPending(function(_context)
  {
    var _progress = "";
    var _contentLength = async_load[? "contentLength"];
    var _sizeDownloaded = async_load[? "sizeDownloaded"];
    if (_contentLength != -1)
    {
      _progress = $"{(_contentLength / _sizeDownloaded) * 100.0} %"
    }
    Asynkka_Example_Log($"[Request] HTTP-get pending: {_progress}");
  })
  
  // Handle succesful request.
  .SetOnSuccess(function(_context)
  {
    Asynkka_Example_Log("[Request] HTTP-get success!");
    self.data = async_load[? "result"];
  })
  
  // Handle failed request.
  .SetOnFailure(function(_context)
  {
    Asynkka_Example_Log("[Request] HTTP-get failure!");
    self.failed = true;
  });

