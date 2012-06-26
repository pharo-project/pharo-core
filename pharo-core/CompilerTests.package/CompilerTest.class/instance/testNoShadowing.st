test shadowing
testNoShadowing

	interactive := true.
	self initializeErrorMessage.

	(Compiler new
		compile: 'temp |var2|'
		in: MockForCompilation
		classified: nil
		notifying: self
		ifFail: [self fail.
				^nil]).


