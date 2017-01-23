openDebuggerOnContext: aContext label: aLabel
	Smalltalk tools debugger
		openOn: Processor activeProcess 
		context: aContext
		label: aLabel
		contents: nil 
		fullView: false