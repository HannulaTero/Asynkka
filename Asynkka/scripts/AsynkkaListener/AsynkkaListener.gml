

/**
* Creates async-event listener.
* This can be either any async-events, or broadcast-event.
* 
* @param {Constant.AsyncEventType | Constant.EventNumber} _event
*/ 
function AsynkkaListener(_event=undefined) constructor
{
  //=============================================================
  // 
  #region PUBLIC : STATIC METHODS.
  
  
  static Remove       = __AsynkkaListener__Remove;
  static SetCallback  = __AsynkkaListener__SetCallback;
  static SetContext   = __AsynkkaListener__SetContext;
  static SetEvent     = __AsynkkaListener__SetEvent;
  static SetLabel     = __AsynkkaListener__SetLabel;
  static SetTimeOut   = __AsynkkaListener__SetTimeOut;
  
  
  #endregion
  // 
  //=============================================================
  // 
  #region PRIVATE : STRUCT INSTANCE VARIABLES.
  
  
  // What event type the listener is listening to.
  // @ignore
  self.event = _event;
  
  
  // For identiying the listener.
  // @ignore
  self.label = __Asynkka_GenerateLabel(self);
  
  
  // User-defined context, which is fed as parameter.
  // @ignore
  self.context = { };
  
  
  // Reference to timesource, used to time-out the request.
  // @ignore 
  self.timeOut = undefined;
    
    
  // Called either way whenever request id fires async event.
  // -> Listenere is fired before requests.
  // @ignore
  self.Callback = Asynkka_SignatureCallback;
  
  
  #endregion
  // 
  //=============================================================
  // 
  #region PRIVATE : HANDLE CONSTRUCTING.
  
  
  if (_event != undefined)
  {
    self.SetEvent(_event);
  }
  
  
  #endregion
  // 
  //=============================================================
}