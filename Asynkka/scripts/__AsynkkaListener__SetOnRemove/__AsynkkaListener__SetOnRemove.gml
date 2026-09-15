

/**
* Set the callback-function, which is called when request is removed.
* Removal can happen by user, timing out.
* 
* @context AsynkkaListener
* @returns {Struct.AsynkkaListener}
*/ 
function __AsynkkaListener__SetOnRemove(_Callback=Asynkka_SignatureCallback)
{
  self.OnRemove = _Callback;
  return self;
}