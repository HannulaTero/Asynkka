

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
  switch(async_load[? "status"])
  {
    case "1": {
      self.OnPending(self);
      break;
    }
    case "2": {
      self.OnSucces(self);
      self.Remove();
      break;
    }
    case "0": 
    case "3": {
      self.OnFailure(self);
      self.Remove();
      break;
    }
    default: {
      throw($"Asynkka Social: Unknown status '{async_load[? "status"]}'.");
      break;
    }
  }
}


