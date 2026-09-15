

/**
* Returns global context for Asynkka.
* This is also used to keep it as singleton.
* 
* @ignore PRIVATE
*/ 
function __Asynkka_Context()
{
  static context = new __Asynkka();
  return context;
}