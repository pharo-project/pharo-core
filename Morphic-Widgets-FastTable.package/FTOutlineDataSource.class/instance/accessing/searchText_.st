searchText: aString
	| index |
	aString isEmptyOrNil
		ifTrue: [ ^ #() ].
	index := 0.
	self items
		do: [ :elements | 
			elements
				do: [ :each | 
					index := index + 1.
					((self toString: each) beginsWith: aString)
						ifTrue: [ ^ {index} ] ] ].
	^ #()