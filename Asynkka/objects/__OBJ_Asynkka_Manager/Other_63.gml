

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
  if (_status == true)
  {
    self.OnSuccess(self.context);
    self.Remove();
    exit;
  }

  // Condition is bugged in HTML5, it returns -1 even though should return false
  // As GML interpretes false as 0, both cases are covered with <= 0
  // https://github.com/YoYoGames/GameMaker-Bugs/issues/261
  if (_status <= 0)
  {
    self.OnFailure(self.context);
    self.Remove();
    exit;
  }
}