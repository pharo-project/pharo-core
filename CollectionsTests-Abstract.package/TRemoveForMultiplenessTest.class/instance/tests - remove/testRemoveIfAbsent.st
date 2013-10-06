testRemoveIfAbsent
	"self debug: #testRemoveElementThatExists"
	| el res |
	el := self elementNotIn.
	self 
		shouldnt: 
			[ res := self nonEmptyWithoutEqualElements 
				remove: el
				ifAbsent: [ 33 ] ]
		raise: Error.
	self assert: res = 33