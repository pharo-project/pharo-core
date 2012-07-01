tests
testRelativeWithParents
	| path allPaths |
	path := Path * 'plonk' / 'griffle' / 'nurb'.
	allPaths := path withParents.
	
	self assert: allPaths size = 3.
	self assert: allPaths first basename = 'plonk'.
	self assert: allPaths first size = 1.
	self assert: allPaths second basename = 'griffle'.
	self assert: allPaths second size = 2.
	self assert: (allPaths second isChildOf: allPaths first).
	self assert: allPaths third basename = 'nurb'.
	self assert: allPaths third size = 3.
	self assert: (allPaths third isChildOf: allPaths second).
	self assert: allPaths third == path