test shadowing
testNotInteractiveInBlockTempArgumentShadowing

	"This test is not completely correct in the sense that it is still interactive. I have to introduce self ( then is interactive) in order to be able to test it"
	
	interactive := true.
	self initializeErrorMessage.

	(Compiler new
		compile: 'temp [:temp | |temp|]'
		in: MockForCompilation
		classified: nil
		notifying: self
		ifFail: [
				self assert: (errorMessage = 'Name is already defined ->').
				self assert: (errorLocation = 16).
				self assert: (errorSource contents = 'temp [:temp | |temp|]').
				^nil]).
	self fail.
