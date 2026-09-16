/// @desc CREATE LISTENER.

// Listens to sprite boradcast mesages..
self.handle = new AsynkkaListener()
  .SetEvent(ev_broadcast_message)
  .SetCallback(function(_context)
  {
    Asynkka_Example_Log($"[Listener] Broadcast : {event_data[? "message"]}");
  });
  
