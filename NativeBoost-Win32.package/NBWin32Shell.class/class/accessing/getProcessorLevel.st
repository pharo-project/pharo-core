getProcessorLevel
	"Return the model number of the computer's processor.
	
		self getProcessorLevel
	"
	
	^self getEnvironmentVariable: 'PROCESSOR_LEVEL'