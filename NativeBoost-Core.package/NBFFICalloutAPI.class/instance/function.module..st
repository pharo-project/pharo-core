action
function: functionSignature module: moduleNameOrHandle

	^ NBFFICallout
		handleFailureIn: context nativeCode: [:gen |
			gen 
				callType: conv;
				sender: context;
				parseOptions: options;
				generateCall: functionSignature module: moduleNameOrHandle 
		]