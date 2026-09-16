

/**
* 
* 
* @context __OBJ_Asynkka_Manager
* @param {String} _key What is being accessed.
* @ignore
*/ 
function __AsynkkaRequest_Execute(_key="id")
{
  with(self.requests[? async_load[? _key]])
  {
    if (self.event != undefined)
    && (self.event != event_number)
    {
      return;
    }
    self.Callback(self.context);
    self.OnSuccess(self.context);
    self.Remove(); 
  }
}