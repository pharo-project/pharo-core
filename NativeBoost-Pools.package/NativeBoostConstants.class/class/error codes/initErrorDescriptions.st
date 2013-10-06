initErrorDescriptions

	NBErrorDescriptions := Dictionary newFromPairs:
	{
		NBPrimNoErr. 'No error'.
		NBPrimErrGenericFailure. 'Generic failure'.
		NBPrimErrBadReceiver. 'Bad receiver'.
		NBPrimErrBadArgument. 'Bad argument'.
		NBPrimErrBadIndex. 'Bad index'.
		NBPrimErrBadNumArgs. 'Invalid number of arguments'.
		NBPrimErrInappropriate. 'Inappropriate operation'.
		NBPrimErrUnsupported. 'unsupported operation'. 
		NBPrimErrNoModification. 'No modification allowed to immutable object'.
		NBPrimErrNoMemory. 'Insufficient object memory'.
		NBPrimErrNoCMemory. 'Insufficient C memory'.
		NBPrimErrNotFound. 'Not found'.
		NBPrimErrBadMethod. 'Bad method'.
		NBPrimErrNamedInternal. 'Internal error in named primitive machinery'.
		NBPrimErrObjectMayMove. 'Object may move'.
		NBPrimErrLimitExceeded. 'Resource limit exceeded'.
	
		ErrNotEnabled. 'Execution of native code is not enabled by plugin'.
		ErrNoNativeCodeInMethod. 'No native code installed in primitive method'.
		ErrInvalidPlatformId. 'Native code in primitive method are for different platform'.
	
		ErrNoNBPrimitive. 'A method where native code will be installed, missing a <primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode> pragma'.
		ErrRunningViaInterpreter.  'A method with primitive 220 (primitiveVoltage), contains JIT code, but VM decided to execute this method via interpreter '.
		ErrInvalidPrimitiveVoltageUse. 'A method uses primitive 220 (primitiveVoltage), but does not use an error code: <primitive: 220 error: errorCode> '
	 }