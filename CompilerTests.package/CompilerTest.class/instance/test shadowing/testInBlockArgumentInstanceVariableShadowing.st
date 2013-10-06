testInBlockArgumentInstanceVariableShadowing
	interactive := true.
	self initializeErrorMessage.

	(Compiler new 
		compile: 'temp [:var1 | ]'
		in: MockForCompilation
		classified: nil
		notifying: self
		ifFail: [
				self assert: (errorMessage = 'Name is already defined ->').
				self assert: (errorLocation = 8).
				self assert: (errorSource contents = 'temp [:var1 | ]').
				^nil]).
	self fail.
