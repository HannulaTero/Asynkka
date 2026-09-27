

/**
* Function to ensure manager exists.
* 
* @returns {Undefined}
*/ 
function __Asynkka_EnsureManager()
{
  // If exists, no worries then.
  if (instance_exists(__OBJ_Asynkka_Manager) == true)
  {
    return;
  }
      
  // Try reactivating first.
  if (instance_exists(__OBJ_Asynkka_Manager) == false)
  {
    instance_activate_object(__OBJ_Asynkka_Manager);
  }
      
  // If failed, then create it.
  if (instance_exists(__OBJ_Asynkka_Manager) == false)
  {
    instance_create_depth(0, 0, 0, __OBJ_Asynkka_Manager);
  }
}