accessing
itemName
	"Here I return the display of my item, wrapped or not, using a block or a selector which will be performed directly on the item"
	
	^ wrapBlockOrSelector 
		ifNil: [ self item ]
		ifNotNil: [ 
			wrapBlockOrSelector isBlock
				ifTrue: [ wrapBlockOrSelector cull: self item ]
				ifFalse: [ wrapBlockOrSelector isSymbol
							ifTrue: [| numArgs |
								numArgs := wrapBlockOrSelector numArgs.
								numArgs isZero 
									ifTrue: [ self item perform: wrapBlockOrSelector ]
									ifFalse: [ self error: 'Wrong number of arguments']]
							ifFalse: [ self item ]]]