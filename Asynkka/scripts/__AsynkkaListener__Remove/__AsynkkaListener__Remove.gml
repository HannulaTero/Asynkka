

/**
* Removes the listener.
* 
* @context AsynkkaListener
* @returns {Undefined}
*/ 
function __AsynkkaListener__Remove()
{
  static context    = __Asynkka_Context();
  static listeners  = context.listeners; 
  
  var _array = listeners[? self.event];
  if (_array == undefined)
  {
    return undefined;
  }
  
  var _index = array_get_index(_array, self);
  if (_index >= 0)
  {
    array_delete(_array, _index, 1);
  }
  
  return undefined;
}