

/**
* Set the callback-function, which is called when async-request was successful.
* 
* @context AsynkkaRequest
* @returns {Struct.AsynkkaRequest}
*/ 
function __AsynkkaRequest__SetOnSuccess(_Callback=Asynkka_SignatureCallback)
{
  self.OnSuccess = _Callback;
  
  return self;
}