private-focus
keyStroke: anEvent fromMorph: aMorph

	((self isEventForNextFocus: anEvent) or: [ anEvent keyString = self eventStringForNextFocus])
		ifTrue: [ ^ self giveFocusToNextFrom: aMorph ].
		
	((self isEventForPreviousFocus: anEvent) or: [ anEvent keyString = self eventStringForPreviousFocus])
		ifTrue: [ ^ self giveFocusToPreviousFrom: aMorph ].
		
	^ false