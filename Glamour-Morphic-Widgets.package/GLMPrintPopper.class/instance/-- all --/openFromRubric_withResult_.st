openFromRubric: aMorph withResult: anObject
	| string |
	string := anObject printString.
	self withString: string from: aMorph.
	self width: self width + inspectButton width.
	textMorph
		on: $i command
		do: [ anObject inspect ].
	textMorph
		on: Character cr asKeyCombination
		do: [ 
			self delete.
			aMorph textArea removeHighlightSegment.
			aMorph editor atEndOfLineInsertAndSelect: string asComment.
			aMorph takeKeyboardFocus ].
	inspectButton addUpAction: [ anObject inspect ].
	self openInWorld