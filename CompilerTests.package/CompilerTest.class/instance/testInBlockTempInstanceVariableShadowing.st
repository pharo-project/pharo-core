test shadowing
testInBlockTempInstanceVariableShadowing
	interactive := true.
	self initializeErrorMessage.

	(Compiler new 
		compile: 'temp [:temp | |var1|]'
		in: MockForCompilation
		classified: nil
		notifying: self
		ifFail: [
				self assert: (errorMessage = 'Name is already defined ->').
				self assert: (errorLocation = 16).
				self assert: (errorSource contents = 'temp [:temp | |var1|]').
				^nil]).
	self fail.
