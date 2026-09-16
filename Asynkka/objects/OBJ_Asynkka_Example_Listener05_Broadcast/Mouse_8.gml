/// @desc REMOVE LISTENER.

if (self.handle != undefined)
{
  self.handle.Remove();
  delete self.handle;
}