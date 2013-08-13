tests - remove
testRemoveAll
	"self debug: #testRemoveElementThatExists"
	| el aSubCollection collection |
	collection := self nonEmptyWithoutEqualElements.
	el := collection anyOne.
	aSubCollection := collection copyWithout: el.
	self 
		shouldnt: [ | res | res := collection removeAll: aSubCollection ]
		raise: Error.
	self assert: collection size = 1.
	self nonEmptyWithoutEqualElements do: [ :each | self assert: each = el ]