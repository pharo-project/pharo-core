testAbsolutePath

	| path |

	self assert: (AbsolutePath new isAbsolute).
	self assert: (Path root isAbsolute).
	
	path := AbsolutePath from: 'parent/child/grandChild' delimiter: $/.
	self assert: path size = 3.
	self assert: (path at: 1) = 'parent'.
	self assert: (path at: 2) = 'child'.
	self assert: (path at: 3) = 'grandChild'.
	
	path := AbsolutePath from: '/' delimiter: $/.
	self assert: path = Path root.
	
