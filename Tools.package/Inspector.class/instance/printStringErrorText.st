private
printStringErrorText
	| nm |
	nm := self selectionIndex < 3
					ifTrue: ['self']
					ifFalse: [self selectedSlotName].
	^ ('<error in printString: evaluate "' , nm , ' printString" to debug>') asText.