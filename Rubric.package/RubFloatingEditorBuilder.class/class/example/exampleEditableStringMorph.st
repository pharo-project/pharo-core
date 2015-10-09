exampleEditableStringMorph
	<example>
	| m stringMorph edBuilder |
	m := Morph new.
	m
		color: Color white;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		borderWidth: 5.
	stringMorph := StringMorph
		contents:
			'Open the mini editor: [Shift+mouseDown]; Update: [Enter|Cmd+s]; Abort: [Escape]'.
	stringMorph position: 5 asPoint.
	stringMorph := stringMorph yourself.
	m addMorph: stringMorph.
	edBuilder := RubFloatingEditorBuilder new.
	edBuilder
		customizeEditorWith:
				[ :arg1 | 
			| m1 |
			m1 := arg1.
			m1
				color: Color veryLightGray veryMuchLighter;
				bounds:
					(((stringMorph bounds withRight: m right) withBottom: stringMorph bottom + 40)
						translateBy: 2 negated asPoint) ];
		withEditedContentsDo:
				[ :arg2 | 
			| m2 |
			m2 := arg2 ifEmpty: [ 'Hey guy! I need something here...' ].
			stringMorph contents: m2.
			self inform: m2 ].
	stringMorph
		on: #mouseDown
		send: #value:
		to:
			[ :arg3 | 
			arg3 shiftPressed
				ifTrue: [ edBuilder openEditorWithContents: stringMorph contents ] ].
	(m embeddedInMorphicWindowLabeled: 'Editable sm example')
		openInWorld