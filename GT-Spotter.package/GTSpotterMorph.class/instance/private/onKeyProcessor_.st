onKeyProcessor: aProcessor
	" this is really ugly, we should make an abstraction of the query/input and the key-identifier of a processor ...... "
	| searchField newText newTextFragment newSelection oldText oldSelection oldSelectionOffset newSeparator |
	aProcessor title isEmptyOrNil ifTrue: [ ^ self ].
	searchField := [ paneBrick contentsBrick headerBrick searchField ] on: Error do: [ ^ self ]. " ups "
	" backup old text and selection "
	oldText := searchField text asString.
	oldSelection := searchField rubric selectionInterval.
	oldSelectionOffset := 0.
	" create the new text (first fragment only) "
	newTextFragment := '#' , (aProcessor title copyUpTo: Character space).
	(oldText includesSubstring: newTextFragment caseSensitive: false) ifTrue: [ ^ self ].  " already present"
	" try replacing the old category by the new one - preserving the relative cursor position "
	(oldText includesSubstring: '#' caseSensitive: false) ifTrue: [ 
		| oldTextFragmentStart oldTextFragmentStop oldTextFragment |
		oldTextFragmentStart := oldText indexOf: $#.
		oldTextFragmentStop := oldText indexOf: Character space startingAt: oldTextFragmentStart + 1 ifAbsent: [ oldText size + 1 ].
		oldTextFragment := (oldText copyFrom: 1 to: oldTextFragmentStart - 1) , (oldText copyFrom: oldTextFragmentStop to: oldText size).
		oldSelectionOffset := 0 - (oldTextFragmentStop - oldTextFragmentStart).
		oldText := oldTextFragment ].
	" try avoiding adding unneccessary spaces "
	newSeparator := (oldText at: 1 ifAbsent: [ nil ]) = Character space 
		ifTrue: [ '' ] 
		ifFalse: [ ' ' ].
	" create and set the new text "
	newText := newTextFragment , newSeparator , oldText.
	" set the new cursor position "
	newSelection := (oldSelectionOffset + newTextFragment size + oldSelection first + 1) to: (oldSelectionOffset + newTextFragment size + oldSelection last + 1).
	searchField
		text: newText;
		selectFrom: newSelection first to: newSelection last