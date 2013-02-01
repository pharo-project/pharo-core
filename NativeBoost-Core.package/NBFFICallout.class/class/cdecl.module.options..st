generator entry points
cdecl: functionSpec module: aModuleName options: anOptions

"Note, this is a special method, which should be sent only from 
methods, which intend to use FFI callout code.
All such methods should use a 'primitiveNativeCall' primitive.

First argument is an array of types, where first element denotes a function return type,
and rest denoting argument types.
A CallEmittingBlock serves to emit an actual function call code. 

" 
	| sender |
	sender := thisContext sender.
	^ self 
		handleFailureIn: sender
		nativeCode: [ :gen |
			gen
				sender: sender;
				parseOptions: anOptions;
				cdecl;
				generateCall: functionSpec module: aModuleName ]
