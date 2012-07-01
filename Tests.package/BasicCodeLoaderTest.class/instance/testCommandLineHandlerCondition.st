tests
testCommandLineHandlerCondition
	| commandLine reference |
	
	commandLine := CommandLineArguments withArguments: {'/non/existing/file.st'}. 
	"the reponsibility is transfered tot the BasicCodeLoader as soon as there is a .st file in the arguments"
	self assert: (BasicCodeLoader isResponsibleFor: commandLine).
		
	[ reference := FileSystem disk workingDirectory / 'codeLoad1.st'.
	  reference writeStreamDo: [ :stream | stream nextPutAll: '42' ].
	  commandLine := CommandLineArguments withArguments: {reference fullName}. 
	  self assert: (BasicCodeLoader isResponsibleFor: commandLine) ]
	ensure: [ reference delete ]
