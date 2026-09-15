

/**
* Set the callback-function, which is called when async-request failued.
* 
* @context AsynkkaRequest
* @returns {Struct.AsynkkaRequest}
*/ 
function __AsynkkaRequest__SetOnFailure(_Callback=Asynkka_SignatureCallback)
{
  self.OnFailure = _Callback;
  return self;
}