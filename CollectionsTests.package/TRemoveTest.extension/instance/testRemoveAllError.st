tests - remove
testRemoveAllError
	"self debug: #testRemoveElementThatExists"
	| el subCollection |
	el := self elementNotIn.
	subCollection := self nonEmptyWithoutEqualElements copyWith: el.
	self 
		should: [ | res | res := self nonEmptyWithoutEqualElements removeAll: subCollection ]
		raise: Error