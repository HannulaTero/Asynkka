

/**
* Set the callback-function, which is called whenever async-event with request-id fires,
* but the request is not finished (no success/failure yet).
* 
* @context AsynkkaRequest
* @returns {Struct.AsynkkaRequest}
*/ 
function __AsynkkaRequest__SetOnPending(_Callback=Asynkka_SignatureCallback)
{
  self.OnPending = _Callback;
  return self;
}