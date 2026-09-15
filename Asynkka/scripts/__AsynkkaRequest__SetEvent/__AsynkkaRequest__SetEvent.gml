

/**
* Set the event request expects.
* 
* This is to enforce request to happen in correct event, 
* if there are shared request ids between different async-events.
* 
* @context AsynkkaRequest
* @param {Constant.AsyncEventType | Constant.EventNumber} _event
* @returns {Struct.AsynkkaRequest}
*/ 
function __AsynkkaRequest__SetEvent(_event=undefined)
{
  self.event = _event;
  return self;
}