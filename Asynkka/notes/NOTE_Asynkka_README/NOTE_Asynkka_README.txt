===============================================================
ASYNKKA
Async-event handler wrapper.
Tero Hannula 16.9.2026
===============================================================
GENERAL INFORMATION
===============================================================

Examples provide explanations in their source code, 
on how to use Asynkka and what something does.

Function callbacks always follow function signature,
which is shown in "Asynkka_SignatureCallback".
Context in callback-argument is data user has given for the asynkka-handle.

Asynkka-handles supports fluent interface, 
therefore you can chain method calls to set properties.
For example handle.SetLabel(...).SetCallback(...).SetOnRemove(...)

===============================================================
GENERAL INFORMATION - REQUEST
===============================================================
Whenever making Async-request, wrap it with either
1) asynkka_request(requestID, callback)
2) new AsynkkaRequest(requestID)
Both generate same handle.

Request removes itself after it has finished, failed or timed out.
User may also remove it by themselves. This doesn't stop actual
native async process, just removes Asynkka from being managed 
and calling callbacks.

===============================================================
GENERAL INFORMATION - LISTENER
===============================================================
Whenever you want to listen to Async-event, make handle with either
1) asynkka_request(eventType, callback)
2) new AsynkkaRequest(eventType)
Both generate same handle.

Listener must be removed manually, if no time-out period has been given.

===============================================================