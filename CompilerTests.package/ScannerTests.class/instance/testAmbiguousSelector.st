testing
testAmbiguousSelector
	"Non regression test.
	See http://code.google.com/p/pharo/issues/detail?id=2271
	and http://bugs.squeak.org/view.php?id=7491"
	
	self shouldnt: [Scanner new scanTokens: '1@-1'] raise: Error.
	self assert: ((Scanner new scanTokens: '1@-1') at: 2) asString = '@-'