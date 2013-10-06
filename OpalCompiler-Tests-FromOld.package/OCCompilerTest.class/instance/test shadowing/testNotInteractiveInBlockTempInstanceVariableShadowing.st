testNotInteractiveInBlockTempInstanceVariableShadowing
	
	interactive := false.
	self initializeErrorMessage.

	(OpalCompiler new
		compile: 'temp [:temp | |var1|]'
		in: MockForCompilation
		classified: nil
		notifying: self
		ifFail: [self fail.
				^nil]).

	self assert: ( newTranscript contents = '
MockForCompilation>>temp(var1 is shadowed)').
	