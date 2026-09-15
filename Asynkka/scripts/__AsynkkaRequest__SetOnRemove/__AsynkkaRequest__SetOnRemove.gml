

/**
* Set the callback-function, which is called when request is removed.
* Removal can happen by user, timing out, failing or success.
* 
* @context AsynkkaRequest
* @returns {Struct.AsynkkaRequest}
*/ 
function __AsynkkaRequest__SetOnRemove(_Callback=Asynkka_SignatureCallback)
{
  self.OnRemove = _Callback;
  return self;
}