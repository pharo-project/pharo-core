test shadowing
testNotInteractiveInBlockTempShadowing

	"This test is not completely correct in the sense that it is still interactive. I have to introduce self ( then is interactive) in order to be able to test it"
	
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


