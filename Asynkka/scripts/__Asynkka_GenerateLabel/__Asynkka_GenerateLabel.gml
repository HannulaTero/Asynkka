

/**
* Generates unique label.
* 
* @param {Struct} _target
*/ 
function __Asynkka_GenerateLabel(_target)
{
  static counters = ds_map_create();
  
  // Check whether counter exists.
  var _typeof = instanceof(_target);
  if (ds_map_exists(counters, _typeof) == false)
  {
    counters[? _typeof] = 0;
  }
  
  // Get the unique index, update counter.
  var _index = counters[? _typeof];
  counters[? _typeof] += 1;
  
  // Create new label.
  return $"{_typeof}_{_index}";
}