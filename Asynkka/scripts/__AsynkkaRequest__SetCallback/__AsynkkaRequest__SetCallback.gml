

/**
* Set the callback-function, which is called whenever async-event with request-id fires.
* 
* @context AsynkkaRequest
* @returns {Struct.AsynkkaRequest}
*/ 
function __AsynkkaRequest__SetCallback(_Callback=Asynkka_SignatureCallback)
{
  self.Callback = _Callback;
  return self;
}