

/**
* Convenience function to create listener without fluent-interface.
*/ 
function asynkka_listener(_event, _Callback=Asynkka_SignatureCallback)
{
  return new AsynkkaListener(_event).SetCallback(_Callback);
}