focus
keyStroke: anEvent fromMorph: aMorph

	anEvent keyString = '<space>'
		ifTrue: [ self action ].
		
	super keyStroke: anEvent fromMorph: aMorph