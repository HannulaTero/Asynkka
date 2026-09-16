

// Handle listeners.
__AsynkkaListener_Execute();


// Check whether request exists.
with(self.requests[? async_load[? "id"]])
{
  if (self.event != undefined)
  && (self.event != event_number)
  {
    return;
  }
  
  self.Callback(self.context);
  
  
  // Trigger request based on status.
  var _status = async_load[? "status"];
  if (_status >= 0)
  {
    self.OnSuccess(self.context);
    self.Remove();
    exit;
  }

  if (_status < 0)
  {
    self.OnFailure(self.context);
    self.Remove();
    exit;
  }
}