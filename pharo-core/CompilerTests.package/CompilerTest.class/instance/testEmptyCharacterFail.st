test shadowing
testEmptyCharacterFail
	interactive := true.
	self initializeErrorMessage.

	(Compiler new 
		compile: 'test $'
		in: MockForCompilation
		classified: nil
		notifying: self
		ifFail: [^nil]).
	self fail.
