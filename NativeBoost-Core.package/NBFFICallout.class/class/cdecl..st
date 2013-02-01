generator entry points
cdecl: functionSpec
	" A shortcut for writing
	    cdecl: AFunctionSpecification module: NativeBoost CLibrary"
	| sender |
	sender := thisContext sender.
	^ self 
		handleFailureIn: sender
		nativeCode: [ :gen |
			gen
				sender: sender;
				cdecl;
				generateCall: functionSpec module: NativeBoost CLibrary ]