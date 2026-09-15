

/**
* Set the callback-function.
* 
* @context AsynkkaListener
* @returns {Struct.AsynkkaListener}
*/ 
function __AsynkkaListener__SetCallback(_Callback=Asynkka_SignatureCallback)
{
  self.Callback = _Callback;
  return self;
}