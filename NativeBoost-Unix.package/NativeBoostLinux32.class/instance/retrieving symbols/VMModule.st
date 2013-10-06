VMModule
	"taken from CLibrary. Should work for fetching VM functions too.
	use in FFI callouts as module: argument to call C run-time library function(s)"
	
	"use global symbol space"
	^ RTLD_DEFAULT