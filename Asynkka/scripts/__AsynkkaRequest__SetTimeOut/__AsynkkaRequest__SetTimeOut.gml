

/**
* Set the timeout period, after it will be removed.
* Setting timeout to undefined will remove it.
* 
* @context AsynkkaRequest
* @param {Real | Undefined} _seconds
* @returns {Struct.AsynkkaRequest}
*/ 
function __AsynkkaRequest__SetTimeOut(_seconds=undefined)
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
    self.OnTimeOut(self.context);
    self.Remove();
  });
  
  return self;
}