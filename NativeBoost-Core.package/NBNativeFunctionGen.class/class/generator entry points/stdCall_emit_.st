stdCall: fnSpec emit: aFunctionBodyBlock
	^ self new stdcall;
		fnSpec: fnSpec;
		generate: aFunctionBodyBlock;
		yourself