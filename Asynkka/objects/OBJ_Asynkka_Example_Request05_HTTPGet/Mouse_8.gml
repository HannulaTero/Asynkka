/// @desc REMOVE HANDLE.

if (self.handle != undefined)
{
  self.handle.Remove();
  delete self.handle;
}