error codes
initErrorCodes
	"An error codes used by Cog NB plugin.
	Note, at the moment of writing this, a primitive error codes 
	supported only in Cog VMs"
	
	NBErrorBase := 500.
	"execution of native code is not enabled by plugin"
	ErrNotEnabled := NBErrorBase + 1.  
	
	"failed to find a native code for primitive method"
	ErrNoNativeCodeInMethod := NBErrorBase + 2. 
	
	"native code generated for different platform"
	ErrInvalidPlatformId := NBErrorBase + 3. 
	
	 "the method which containing foreign call missing a #primitiveNativeCall primitive pragma"
	ErrNoNBPrimitive := NBErrorBase + 4.
	
 	"the method has a 220 primitive (primitiveVoltage), but VM decided to execute this method via interpreter "
	ErrRunningViaInterpreter := NBErrorBase + 5.
	
	"A method uses primitive 220 (primitiveVoltage), but does not use an error code: <primitive: 220 error: errorCode> "
	ErrInvalidPrimitiveVoltageUse := NBErrorBase + 6.