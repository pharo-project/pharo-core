registerClassShortcuts: aWidget

	aWidget bindKeyCombination: $b command toAction: [ self selectedClass ifNotNil:[ self browseMethodFull ]].
	aWidget bindKeyCombination: $d command toAction: [ self selectedClass ifNotNil:[ self forgetClass ]].
	aWidget bindKeyCombination: $x command toAction: [ self selectedClass ifNotNil:[ self removeClass ]].