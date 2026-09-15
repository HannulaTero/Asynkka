

/**
* Set the event async request id (eg. from buffer_load_async etc.)
* 
* 
* @context AsynkkaRequest
* @returns {Struct.AsynkkaRequest}
*/ 
function __AsynkkaRequest__SetRequest(_request)
{
  static context = __Asynkka_Context();
  
  context.requests[? _request] = self;
  self.request = _request;
  
  return self;
}