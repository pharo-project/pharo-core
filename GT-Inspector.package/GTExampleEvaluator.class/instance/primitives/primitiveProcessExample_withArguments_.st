primitiveProcessExample: anExample withArguments: arguments
	^ anExample method 
		valueWithReceiver: anExample provider 
		arguments: arguments