generator entry points
cdecl: fnSpec emit: aFunctionBodyBlock options: anOptions

	^ self new cdecl;
		parseOptions: anOptions;
		fnSpec: fnSpec;
		generate: aFunctionBodyBlock;
		yourself