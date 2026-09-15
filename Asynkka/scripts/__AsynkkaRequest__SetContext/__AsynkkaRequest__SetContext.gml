

/**
* Set the context, which is provided in callbacks.
* 
* @context AsynkkaRequest
* @param {Any} _context
* @returns {Struct.AsynkkaRequest}
*/ 
function __AsynkkaRequest__SetContext(_context={ })
{
  self.context = _context;
  return self;
}