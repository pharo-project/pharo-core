contentSelectionFor: aTextMorph

	aTextMorph locked ifTrue: [ ^ (1 to: 0) ].

	self selectedClass 	
		ifNotNil: [:class | self selectedMethod 
			ifNil: [ self selectedCategory 
				ifNotNil: [^ (1 to: class sourceCodeTemplate size) ]]].
	^ (1 to: 0)
