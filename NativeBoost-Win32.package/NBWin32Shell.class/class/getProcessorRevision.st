accessing
getProcessorRevision
	"Return the revision number of the processor.
	
		self getProcessorRevision
	"
	
	^self getEnvironmentVariable: 'PROCESSOR_REVISION'