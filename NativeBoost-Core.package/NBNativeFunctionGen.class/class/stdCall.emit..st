generator entry points
stdCall: fnSpec emit: aFunctionBodyBlock
	^ self new stdcall;
		fnSpec: fnSpec;
		generate: aFunctionBodyBlock;
		yourself