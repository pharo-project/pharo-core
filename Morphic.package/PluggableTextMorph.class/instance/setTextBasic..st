model access
setTextBasic: aText

	scrollBar setValue: 0.0.
	textMorph
		ifNil: [textMorph := self textMorphClass new
						contents: aText wrappedTo: self innerBounds width-6.
				textMorph setEditView: self.
				scroller addMorph: textMorph.
				self textMorph 
					autoAccept: self autoAccept;
					selectionColor: self selectionColor.
				self initializeKeymappings.
		]
		ifNotNil: [textMorph newContents: aText].
	self hasUnacceptedEdits: false.
	self setScrollDeltas.