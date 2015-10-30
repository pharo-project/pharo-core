searchText: aString
	| result cpt |
	self flag: #todo.	"THIS IS JUST A BEGINNING, THIS WILL CHANGE."
	aString isEmptyOrNil
		ifTrue: [ ^ #() ].
	result := OrderedCollection new.
	cpt := 0.
	items
		do:
			[ :item | 
			1 to: item numberOfVisibleChildren + 1 do: [ :index | 
				| elem |
				elem := item selfOrChildAt: index.
				((self toString: elem) beginsWith: aString)
					ifTrue: [ result add: index + cpt ] ].
			cpt := cpt + (item numberOfVisibleChildren + 1) ].
	^ result asArray