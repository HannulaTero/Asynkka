/// @desc ENSURE ONLY ONE EXISTS.
/*
  Because the manager-instance may be destroyed accidently by user,
  it shouldn't contain any data which may be lost. 
  That's why the context is separately handled.
*/


// For convenience / faster access.
self.context = __Asynkka_Context();


// For convenience / faster access.
self.requests = self.context.requests;




