checkCurrentHandForObjectToPaste

	| response |
	self primaryHand pasteBuffer ifNil: [^self].
	response := self confirm: ('Hand is holding a Morph in its paste buffer:' translated, '\') withCRs,
			self primaryHand pasteBuffer printString, 
			('\', 'Delete it ?' translated) withCRs.
	response = 1 ifTrue: [self primaryHand pasteBuffer: nil].
