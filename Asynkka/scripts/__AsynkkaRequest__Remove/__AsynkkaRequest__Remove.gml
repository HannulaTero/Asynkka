

/**
* Removes request from being managed.
* Afterwards this does not do any callbacks.
* 
* @context AsynkkaRequest
* @returns {Undefined}
*/ 
function __AsynkkaRequest__Remove()
{
  static context  = __Asynkka_Context();
  static requests = context.requests; 
  
  self.OnRemove();
  
  ds_map_delete(requests, self.request);
  
  return undefined;
}