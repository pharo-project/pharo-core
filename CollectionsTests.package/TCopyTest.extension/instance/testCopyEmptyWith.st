tests - copy
testCopyEmptyWith
	"self debug: #testCopyWith"
	| res element |
	element := self elementToAdd.
	res := self empty copyWith: element.
	self assert: res size = (self empty size + 1).
	self assert: (res includes: (element value))