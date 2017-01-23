openDebuggerOnContext: aContext label: aLabel
	UIManager default
		debugProcess: Processor activeProcess
		context: aContext
		label: aLabel
		fullView: false
		notification: aLabel