system startup
enableNativeCode
	"Enable the native code,
	answer true if operation was successfull or false if not"
	
	self isEnabled ifFalse: [
		"If native code is disable in plugin, this means 
		that a system is just started.
		Create a fresh instance of receiver "

		Current := nil. 
	].
	self forCurrentPlatform. 

	^ Current notNil