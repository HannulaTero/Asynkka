

/**
* Set the context, which is provided as argument in the callbacks.
* 
* @context AsynkkaListener
* @param {Any} _context
* @returns {Struct.AsynkkaListener}
*/ 
function __AsynkkaListener__SetContext(_context={ })
{
  self.context = _context;
  return self;
}