exampleEditableStringMorph
	<example>
	| pane sm edProvider |
	pane := Morph new
		color: Color white;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		borderWidth: 5;
		yourself.
	sm := (StringMorph contents: 'Open the mini editor: [Shift+mouseDown]; Update: [Enter|Cmd+s]; Abort: [Escape]')
		position: 5 asPoint;
		yourself.
	pane addMorph: sm.
	edProvider := RubFloatingEditorBuilder new
		customizeEditorWith: [ :editor | 
					editor
						color: Color veryLightGray veryMuchLighter;
						bounds: (((sm bounds withRight: pane right) withBottom: sm bottom + 40) translateBy: 2 negated asPoint) ];
		withEditedContentsDo: [ :newContents | 
					| t |
					t := newContents ifEmpty: [ 'Hey guy! I need something here...' ].
					sm contents: t.
					self inform: t ];
		yourself.
	sm
		on: #mouseDown
		send: #value:
		to: [ :event | 
			event shiftPressed
				ifTrue: [ edProvider openEditorWithContents: sm contents ] ].
	(pane embeddedInMorphicWindowLabeled: 'Editable sm example') openInWorld