tests
testParseBogus
	"self run: #testParseBogus"
	
	| path |
	path := Path from: 'parent?<>~ \child/grandChild' delimiter: $/.
	self assert: path size = 2.
	self assert: (path at: 1) = 'parent?<>~ \child'.
	self assert: (path at: 2) = 'grandChild'.
	
