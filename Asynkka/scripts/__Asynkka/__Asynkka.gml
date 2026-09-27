

/**
* Global context for async handling.
* Also ensures async-handler object exists.
* 
* This is singleton!
* 
* @ignore PRIVATE
*/ 
function __Asynkka() constructor
{
  //=============================================================
  // 
  #region STRUCT INSTANCE VARIABLES.
  
  
  // All async requests, which are removed when handle is done.
  self.requests = ds_map_create();
  
  
  // All async listeners, which are fired when their 
  // These are only removed by the user.
  self.listeners = ds_map_create();
  
  
  // Timesource, which ensures OBJ_Asynkka always exists.
  self.timeSource = undefined;
  
  
  #endregion
  // 
  //=============================================================
  // 
  #region HANDLE INITIALIZATING LISTENER-STRUCTURE.
  
  
  array_foreach([
    ev_async_web_image_load,
    ev_async_web,
    ev_async_dialog,
    ev_async_web_iap,
    ev_async_web_cloud,
    ev_async_web_networking,
    ev_async_web_steam,
    ev_async_social,
    ev_async_push_notification,
    ev_async_save_load,
    ev_async_audio_recording,
    ev_async_audio_playback,
    ev_async_audio_playback_ended,
    ev_async_system_event,
    ev_broadcast_message,
  ], function(_type, i) 
  {
    self.listeners[? _type] = [ ];
  });
  
  
  #endregion
  // 
  //=============================================================
  // 
  #region HANDLE INITIALIZATING TIME-SOURCE.
  
  
  // This is meant to keep manager alive, no matter what.
  // -> User might accidently deactivate/destroy the manager.
  self.timeSource = call_later(time_source_units_frames, 1, __Asynkka_EnsureManager, true);
  
  
  #endregion
  // 
  //=============================================================
}