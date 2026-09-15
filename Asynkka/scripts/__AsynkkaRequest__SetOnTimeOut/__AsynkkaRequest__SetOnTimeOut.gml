

/**
* Set the callback-function, which is called whenever request has timed out.
* 
* @context AsynkkaRequest
* @returns {Struct.AsynkkaRequest}
*/ 
function __AsynkkaRequest__SetOnTimeOut(_Callback=Asynkka_SignatureCallback)
{
  self.OnTimeOut = _Callback;
  return self;
}