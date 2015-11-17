buttonFor: item
	^ (item children isNotEmpty and: [ self canDisplayChildrenOf: item ])
		ifTrue: [ item generateButton ]
		ifFalse: [ self class emptyMorph ]