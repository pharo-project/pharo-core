as yet unclassified
hasEquivalentIn: aCollection

	aCollection detect: [ :each | 
		each withoutListWrapper = item withoutListWrapper
	] ifNone: [^false].
	^true