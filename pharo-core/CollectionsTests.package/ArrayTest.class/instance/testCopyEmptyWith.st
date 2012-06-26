tests - copy
testCopyEmptyWith
	"self debug: #testCopyWith"
	| res |
	res := self empty copyWith: self elementToAdd.
	self assert: res size = (self empty size + 1).
	self assert: (res includes: self elementToAdd)