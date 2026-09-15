

/**
* Convenience function to create request without fluent-interface.
*/ 
function asynkka_request(_request, _Callback=Asynkka_SignatureCallback)
{
  return new AsynkkaRequest(_request).SetCallback(_Callback);
}