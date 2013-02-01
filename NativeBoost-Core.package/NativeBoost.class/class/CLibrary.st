retrieving symbols
CLibrary
	"answer a C library path, or module handle,
	use in FFI callouts as module: argument to call C run-time library function(s)"
	
	^ self forCurrentPlatform CLibrary