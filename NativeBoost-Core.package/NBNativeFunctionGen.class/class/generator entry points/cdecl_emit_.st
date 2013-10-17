cdecl: fnSpec emit: aFunctionBodyBlock
	^ self new cdecl;
		fnSpec: fnSpec;
		generate: aFunctionBodyBlock;
		yourself