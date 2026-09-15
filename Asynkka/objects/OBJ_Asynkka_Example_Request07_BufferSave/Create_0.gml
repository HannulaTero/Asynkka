/// @desc PREPARATIONS.


// Preparations to make saveable buffer.
self.fileName = "AsynkkaTest.save";
self.count = 1;
self.buffer = buffer_create(1, buffer_grow, 1);
buffer_seek(self.buffer, buffer_seek_start, 0);
buffer_write(self.buffer, buffer_string, "Hello from file!");
