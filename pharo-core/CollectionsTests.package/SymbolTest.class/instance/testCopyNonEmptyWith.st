tests - copy
testCopyNonEmptyWith
	"self debug: #testCopyNonEmptyWith"
	| res |
	res := self nonEmpty copyWith: self elementToAdd.
	"here we do not test the size since for a non empty set we would get a problem.
	Then in addition copy is not about duplicate management. The element should 
	be in at the end."
	self assert: (res includes: self elementToAdd).
	self nonEmpty do: [ :each | res includes: each ]