openEditorForStringMorph: aStringMorph
	stringMorph := aStringMorph.
	self buildEditor.
	editor openInWorld.
	editor comeToFront
	