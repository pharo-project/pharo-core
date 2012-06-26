"Hold a password.  There are three ways to get the password.

If there is no password (sequence == nil), ask the user for it.

If the use supplied one during this session, return that.  It is cleared at shutDown.

If sequence is a number, get the server passwords off the disk.  File 'sqk.info' must be in the same folder 'Squeak.sources' file.  Decode the file.  Return the password indexed by sequence."