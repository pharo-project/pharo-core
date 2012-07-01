tests
testValueWithinNonLocalReturnFixSimply
	"self run: #testValueWithinNonLocalReturnFixSimply"
	"The simple version to test the fix"
	self valueWithinNonLocalReturn.
	self shouldnt:[(Delay forMilliseconds: 50) wait] raise: TimedOut.