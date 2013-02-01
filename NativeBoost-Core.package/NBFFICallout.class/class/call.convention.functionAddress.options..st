generator entry points
call: anonFunctionSignature convention: callConvention functionAddress: aFunctionAddressBlock options: aCodeGenerationOptions

	"
	For documentation, please look at #call:convention:functionAddress:
	This method differs only by having additional argument - a code generation options
	" 
	| sender |
	sender := thisContext sender.
	^ self 
		handleFailureIn: sender
		nativeCode: [ :gen |
			gen
				sender: sender;
				callType: callConvention;
				parseOptions: aCodeGenerationOptions;
				anonSpec: anonFunctionSignature;
				generateCallToAddress: aFunctionAddressBlock
			]
