/// @desc CREATE LISTENER.

// This makes a listener.
self.handle = asynkka_listener(ev_async_dialog, function(_context)
{
  Asynkka_Example_Log("[Listener] Async Dialog fired!");
});