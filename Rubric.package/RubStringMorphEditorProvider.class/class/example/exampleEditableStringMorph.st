exampleEditableStringMorph
	<example>
	| pane stringMorph editorProvider |
	pane := Morph new
		color: Color white;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		borderWidth: 5;
		yourself.
	stringMorph := (StringMorph
		contents: 'Shift+mouseDown to edit. Escape to abort. Abort if focus lost. Enter or Cmd+s to save')
		position: 10 asPoint;
		yourself.
	editorProvider := self new.
	stringMorph editorProvider: editorProvider.
	editorProvider announcer subscribe: RubStringMorphContentsEdited do: [ :ann | self inform: ann morph contents ].
	pane addMorph: stringMorph.
	(pane embeddedInMorphicWindowLabeled: 'Editable StringMorph example') openInWorld