accessing
getNumberOfProcessors
	"Return the number of processors/cores.
	
		self getNumberOfProcessors
	"
	
	^self getEnvironmentVariable: 'NUMBER_OF_PROCESSORS'