tests - fixture
test0FixtureIndexAccessFotMultipliness
	self 
		shouldnt: [ self collectionWithSameAtEndAndBegining ]
		raise: Error.
	self assert: self collectionWithSameAtEndAndBegining first = self collectionWithSameAtEndAndBegining last.
	self assert: self collectionWithSameAtEndAndBegining size > 1.
	1 to: self collectionWithSameAtEndAndBegining size
		do: 
			[ :i | 
			i > 1 & (i < self collectionWithSameAtEndAndBegining size) ifTrue: 
				[ self deny: (self collectionWithSameAtEndAndBegining at: i) = self collectionWithSameAtEndAndBegining first ] ]