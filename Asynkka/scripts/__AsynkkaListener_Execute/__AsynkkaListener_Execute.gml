


/**
* Executes listeners in given event.
* 
* @ignore PRIVATE
*/ 
function __AsynkkaListener_Execute()
{
  static context = __Asynkka_Context();
  
  var _listeners = context.listeners[? event_number];
  if (_listeners == undefined)
  {
    return;
  }
  
  array_foreach(_listeners, function(_listener, _index)
  {
    _listener.Callback(_listener.context);
  });
}