function: functionSignature emit: aCallEmittingBlock

	^ NBFFICallout handleFailureIn: context nativeCode: [:gen |
			gen
				useEmitCall;
				callType: conv;
				sender: context;
				parseOptions: options;
				
				anonSpec: functionSignature;
				generate: aCallEmittingBlock  
		]
