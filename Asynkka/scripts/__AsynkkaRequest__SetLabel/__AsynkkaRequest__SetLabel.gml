

/**
* Set the label.
* 
* @context AsynkkaRequest
* @param {String} label
* @returns {Struct.AsynkkaRequest}
*/ 
function __AsynkkaRequest__SetLabel(_label="")
{
  self.label = _label;
  return self;
}