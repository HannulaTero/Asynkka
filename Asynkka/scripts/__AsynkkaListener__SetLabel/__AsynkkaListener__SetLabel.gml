

/**
* Set the label.
* 
* @context AsynkkaListener
* @param {String} _label
* @returns {Struct.AsynkkaListener}
*/ 
function __AsynkkaListener__SetLabel(_label="")
{
  self.label = _label;
  return self;
}