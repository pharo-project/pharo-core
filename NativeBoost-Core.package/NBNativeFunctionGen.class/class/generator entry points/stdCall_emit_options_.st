stdCall: fnSpec emit: aFunctionBodyBlock options: anOptions
	^ self new 
		parseOptions: anOptions;
		stdcall;
		fnSpec: fnSpec;
		generate: aFunctionBodyBlock;
		yourself