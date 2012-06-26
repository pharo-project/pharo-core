tests
testAbsoluteWithParents
	| path allPaths |
	path := Path / 'plonk' / 'griffle' / 'nurb'.
	allPaths := path withParents.
	
	self assert: allPaths size = 4.
	self assert: allPaths first isRoot.
	self assert: allPaths second basename = 'plonk'.
	self assert: allPaths second size = 1.
	self assert: (allPaths second isChildOf: allPaths first).
	self assert: allPaths third basename = 'griffle'.
	self assert: allPaths third size = 2.
	self assert: (allPaths third isChildOf: allPaths second).
	self assert: allPaths fourth basename = 'nurb'.
	self assert: allPaths fourth size = 3.
	self assert: (allPaths fourth isChildOf: allPaths third).
	
	self assert: allPaths fourth = path.
	self assert: allPaths fourth == path