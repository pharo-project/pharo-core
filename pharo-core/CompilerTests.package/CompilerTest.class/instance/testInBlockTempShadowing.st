test shadowing
testInBlockTempShadowing

	interactive := true.
	self initializeErrorMessage.

	(Compiler new
		compile: 'temp |var2| [:temp| |var2|]'
		in: MockForCompilation
		classified: nil
		notifying: self
		ifFail: [
				self assert: (errorMessage = 'Name is already defined ->').
				self assert: (errorLocation = 22).
				self assert: (errorSource contents = 'temp |var2| [:temp| |var2|]').
				^nil]).


