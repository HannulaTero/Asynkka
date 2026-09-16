

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
  
  
  // Action for all other platforms.
  if (os_browser == browser_not_a_browser)
  {
    if (_status == 0)
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
    exit;
  }
  
  
  // But for HTML5, have to handle differently.
  switch(_status)
  {
    case 200: {
      self.OnSuccess(self.context);
      self.Remove();
      exit;
    }
      
    case 404: {
      self.OnFailure(self.context);
      self.Remove();
      exit;
    }
      
    default: {
      var _request = async_load[? "id"];
      show_debug_message($"Asynkka Save/Load request[{_request}]: Unknown status '{_status}'");
      break;
    }
  }
}