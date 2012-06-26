tests
testParse
	"self run: #testParse"
	
	| path |
	path := Path from: 'parent/child/grandChild' delimiter: $/.
	self assert: path size = 3.
	self assert: (path at: 1) = 'parent'.
	self assert: (path at: 2) = 'child'.
	self assert: (path at: 3) = 'grandChild'.
	
