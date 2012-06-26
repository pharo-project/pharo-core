tests - fixture
test0CopyTest
	self 
		shouldnt: self empty
		raise: Error.
	self assert: self empty size = 0.
	self 
		shouldnt: self nonEmpty
		raise: Error.
	self assert: (self nonEmpty size = 0) not.
	self 
		shouldnt: self collectionWithElementsToRemove
		raise: Error.
	self assert: (self collectionWithElementsToRemove size = 0) not.
	self 
		shouldnt: self elementToAdd
		raise: Error