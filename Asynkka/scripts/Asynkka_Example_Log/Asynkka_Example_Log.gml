

/**
* Messgage logger with history.
* To visualize debug messages in example room.
* 
* @param {String} _message
*/
function Asynkka_Example_Log(_message="")
{ 
  static history = [ ];
  static maxCount = 32;
  
  for(var i = 0; i < argument_count; i++)
  {
    array_push(history, string(argument[i]));
    show_debug_message(argument[i]);
  }
  
  var _count = array_length(history);
  var _removeCount = max(0, _count - maxCount);
  if (_removeCount > 0)
  {
    array_delete(history, 0, _removeCount);
  }
  
  return undefined;
}