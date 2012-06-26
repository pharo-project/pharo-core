updating
update: aSymbol 
	aSymbol ifNil: [^self].
	(aSymbol == getColorSelector)
		ifTrue: [^ self color: (model perform: getColorSelector)].
	aSymbol == #flash ifTrue: [^self flash].
	aSymbol == getTextSelector 
		ifTrue: 
			[self setText: self getText.
			^self setSelection: self getSelection].
	aSymbol == getSelectionSelector 
		ifTrue: [^self setSelection: self getSelection].
	(aSymbol == #autoSelect and: [getSelectionSelector notNil]) 
		ifTrue: 
			[self handleEdit: 
					[(textMorph editor) setSelectorSearch: model autoSelectString.
					textMorph editor findAgain]].
	aSymbol == #clearUserEdits ifTrue: [^self hasUnacceptedEdits: false].
	aSymbol == #wantToChange 
		ifTrue: 
			[self canDiscardEdits ifFalse: [^self promptForCancel].
			^self].
	aSymbol == #appendEntry 
		ifTrue: 
			[self handleEdit: [self appendEntry].
			^self ].
	aSymbol == #clearText 
		ifTrue: 
			[self handleEdit: [self changeText: Text new].
			^self ].
	aSymbol == #bs 
		ifTrue: 
			[self handleEdit: [self bsText].
			^self ].
	aSymbol == #codeChangedElsewhere 
		ifTrue: 
			[self hasEditingConflicts: true.
			^self].
	aSymbol == self getEnabledSelector 
		ifTrue: [self updateEnabled].
	^ self