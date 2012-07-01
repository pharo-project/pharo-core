tests
testRedundantMerge
	| base |
	base :=  self snapshot.
	self merge: base.
	self shouldnt: [self merge: base] raise: Error.