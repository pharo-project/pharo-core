tests - remove
testRemoveAllSuchThat
	"self debug: #testRemoveElementThatExists"
	| el subCollection |
	el := self nonEmptyWithoutEqualElements anyOne.
	subCollection := self nonEmptyWithoutEqualElements copyWithout: el.
	self nonEmptyWithoutEqualElements removeAllSuchThat: [ :each | subCollection includes: each ].
	self assert: self nonEmptyWithoutEqualElements size = 1.
	self nonEmptyWithoutEqualElements do: [ :each | self assert: each = el ]