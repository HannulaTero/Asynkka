

/**
* Set the event being listened.
* This can be either any async-events, or broadcast-event.
* 
* @context AsynkkaListener
* @param {Constant.AsyncEventType | Constant.EventNumber} _event
* @returns {Struct.AsynkkaListener}
*/ 
function __AsynkkaListener__SetEvent(_event)
{
  static context    = __Asynkka_Context();
  static listeners  = context.listeners; 
  
  array_push(listeners[? _event], self);
  
  self.event = _event;
  return self;
}