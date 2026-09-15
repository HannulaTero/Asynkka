

/**
* Set the timeout period, after it will be removed.
* Setting timeout to undefined will remove it.
* 
* @context AsynkkaListener
* @param {Real | Undefined} _seconds
* @returns {Struct.AsynkkaListener}
*/ 
function __AsynkkaListener__SetTimeOut(_seconds=undefined)
{
  if (self.timeOut != undefined)
  {
    call_cancel(self.timeOut);
  }
  
  if (_seconds == undefined)
  {
    self.timeOut = undefined;
    return self;
  }
  
  self.timeOut = call_later(_seconds, time_source_units_seconds, function()
  {
    self.Remove();
  });
  
  return self;
}