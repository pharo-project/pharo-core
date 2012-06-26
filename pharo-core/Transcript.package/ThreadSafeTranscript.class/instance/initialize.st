initialize
initialize
 
	super initialize.
	accessSemaphore := Mutex new.
	stream := String new writeStream.