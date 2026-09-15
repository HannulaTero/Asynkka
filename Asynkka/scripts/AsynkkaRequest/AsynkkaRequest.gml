

/**
* Creates async-event request handler.
* 
* @param {Real} _request Async-request number.
*/ 
function AsynkkaRequest(_request=undefined) constructor
{
  //=============================================================
  // 
  #region PUBLIC : STATIC METHODS.
  
  
  static Remove       = __AsynkkaRequest__Remove;
  static SetCallback  = __AsynkkaRequest__SetCallback;
  static SetContext   = __AsynkkaRequest__SetContext;
  static SetEvent     = __AsynkkaRequest__SetEvent;
  static SetLabel     = __AsynkkaRequest__SetLabel;
  static SetOnFailure = __AsynkkaRequest__SetOnFailure;
  static SetOnPending = __AsynkkaRequest__SetOnPending;
  static SetOnRemove  = __AsynkkaRequest__SetOnRemove;
  static SetOnSuccess = __AsynkkaRequest__SetOnSuccess;
  static SetOnTimeOut = __AsynkkaRequest__SetOnTimeOut;
  static SetRequest   = __AsynkkaRequest__SetRequest;
  static SetTimeOut   = __AsynkkaRequest__SetTimeOut;
  
  
  #endregion
  // 
  //=============================================================
  // 
  #region PRIVATE : STRUCT INSTANCE VARIABLES.
  
  
  // The request handle.
  // @ignore
  self.request = _request;
  
  
  // Enforce some specific event.
  // @ignore
  self.event = undefined;
  
  
  // For identiying the listener.
  // @ignore
  self.label = __Asynkka_GenerateLabel(self);
  
  
  // User-defined context, which is fed as parameter.
  // @ignore
  self.context = { };
  
  
  // Reference to timesource, used to time-out the request.
  // @ignore 
  self.timeOut = undefined;
  
  
  // Flag whether this has been removed already.
  // @ignore
  self.isRemoved = false;
    
    
  // Called either way whenever request id fires async event.
  // -> Listenere is fired before requests.
  // @ignore
  self.Callback = Asynkka_SignatureCallback;
    
    
  // Only fired whenever async-event is succesful.
  // @ignore
  self.OnSuccess = Asynkka_SignatureCallback;
    
    
  // Only fired whenever async-event is pending.
  // @ignore
  self.OnPending = Asynkka_SignatureCallback;
  
  
  // Executed when listener is removed.
  // @ignore
  self.OnRemove = Asynkka_SignatureCallback;
    
    
  // Only fired whenever async-event is failed.
  // @ignore
  self.OnFailure = Asynkka_SignatureCallback;
    
    
  // Only fired whenever request has timed out.
  // @ignore
  self.OnTimeOut = Asynkka_SignatureCallback;
  
  
  #endregion
  // 
  //=============================================================
  // 
  #region PRIVATE : HANDLE CONSTRUCTING.
  
  
  if (_request != undefined)
  {
    self.SetRequest(_request);
  }
  
  
  #endregion
  // 
  //=============================================================
}