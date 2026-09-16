

/**
* Set the callback-function, which is called whenever listener has timed out.
* 
* @context AsynkkaListener
* @returns {Struct.AsynkkaListener}
*/ 
function __AsynkkaListener__SetOnTimeOut(_Callback=Asynkka_SignatureCallback)
{
  self.OnTimeOut = _Callback;
  return self;
}