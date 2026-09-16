# Asynkka
### [GameMaker] Async-event wrapper for requests and listeners.
<img width="128" height="128" align="right" alt="icon-Asynkka" src="https://github.com/user-attachments/assets/1597e4a2-64e6-4dbf-a634-63c45fce6605" />


[Itchio page](https://terohannula.itch.io/asynkka)

---

### GENERAL INFORMATION
Asynkka makes using async-related functions more convenient by giving callback-wrappers for them. You can define callbacks for whenever request is succesful, failure, pending, timed out or pending. Then there is general callback, which is fired whenever async-event is done with request id. Asynkka also allows making listeners, which fire callbacks always related async-event happens.

Asynkka-handles supports fluent interface,  therefore you can chain method calls to set properties. For example handle.SetLabel(...).SetCallback(...).SetOnRemove(...) 

### GENERAL INFORMATION - REQUEST
Whenever making Async-request, wrap it with either 
* asynkka_request(requestID, callback) 
* new AsynkkaRequest(requestID) 
Both generate same handle. Request removes itself after it has finished, failed or timed out. User may also remove it by themselves. This doesn't stop actual native async process, just removes Asynkka from being managed and calling callbacks.
```gml
​handle = asynkka_request(
  show_message_async("Hello World! Uses Fluent interface"),
​  function(_context)
​  {
    ​show_debug_message("[Request] Message Callback from Fluent Interface!");
​  }​
​);
​  
​// Same example with fluent api. 
​// You may chain more method calls too.
​handle = new AsynkkaRequest()
​  .SetRequest(show_message_async("Hello World! Uses Fluent interface"))
​  .SetCallback(function(_context)
​  {
​    show_debug_message("[Request] Message Callback from Fluent Interface!");
​  });
```

### GENERAL INFORMATION - LISTENER
Whenever you want to listen to Async-event, make handle with either
* asynkka_request(eventType, callback)
* new AsynkkaRequest(eventType)
Listener must be removed manually, if no time-out period has been given.
```gml
// Example with convenience function.
​handle = asynkka_listener(ev_async_dialog, function(_context) 
​{
  ​show_debug_message("[Listener] Async Dialog fired!"); 
​});
​
​​// Same example with fluent api.
​handle = new AsynkkaListener(ev_async_dialog)
​  .SetCallback(function(_context)
​  {
​    show_debug_message("[Listener] Async Dialog fired!");
​  });
```
