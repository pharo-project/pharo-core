running
runCase: aTestCase
	[
	aTestCase shouldSkip 
		ifTrue: [ self addSkip: aTestCase ]
		ifFalse: [
			aTestCase announce: TestCaseStarted withResult: self.
			aTestCase runCase.
			aTestCase announce: TestCaseEnded  withResult: self.
			self addPass: aTestCase]]
		on: self class failure , Warning, self class error
		do: [:ex | ex sunitAnnounce: aTestCase toResult: self]