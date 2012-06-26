test shadowing
testNotInteractiveInBlockTempInstanceVariableShadowing
	
	self initializeErrorMessage.

	(Compiler new
		compile: 'temp [:temp | |var1|]'
		in: MockForCompilation
		classified: nil
		notifying: nil
		ifFail: [self fail.
				^nil]).

	self assert: ( newTranscript contents = '
MockForCompilation>>temp(var1 is shadowed)').
	