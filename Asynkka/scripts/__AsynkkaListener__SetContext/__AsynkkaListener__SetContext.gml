

/**
* Set the context, which is provided in callback.
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