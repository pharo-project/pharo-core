call: anonFunctionSignature convention: callConvention functionAddress: aFunctionAddressBlock

	"Note, this is a special method, which should be sent only from 
	methods, which intend to use FFI callout code.
	All such methods should use a 'primitiveNativeCall' primitive.

	First argument should be an anonymous function signature, describing the return type and arguments. 
	Second argument is calling convention for the function, should be either #cdecl or #stdcall (more can be added later)
	Third argument is a block, which takes 0 or 1 argument (generator instance) and should return an address of function to call,
	either an unsigned integer value, or NBExternalAddress instance.
	
	Example of use: 
	
		myMethod 
			<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode >
			^ NBFFICallout call: #( int () ) convention: #cdecl functionAddress: [:generator | NativeBoost loadSymbol: 'fork' fromModule: NativeBoost CLibrary]
			
	which is equivalent to: 
	
		myMethod 
			<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode >
			^ self nbCall: #( int fork() )

	This API allows users to define own custom semantics, how/where to obtain a pointer to function which needs to be called.
	Please note that function address block is evaluated only once during code generation, and received function address 
	will be imprinted into generated code, so this API does not fits for cases, when function address needs to be always
	resolved dynamically during each activation of the method.
	For that , there is #cdecl:emitCall: / #stdCall:emitCall: API which allow user to provide own assembler code for calling the function. 
	" 
	| sender |
	sender := thisContext sender.
	^ self 
		handleFailureIn: sender
		nativeCode: [ :gen |
			gen
				sender: sender;
				callType: callConvention;
				anonSpec: anonFunctionSignature;
				generateCallToAddress: aFunctionAddressBlock
			]
