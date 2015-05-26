generateKeyboardEvent: evtBuf
	"Generate the appropriate mouse event for the given raw event buffer"

	| buttons modifiers type pressType stamp charCode keyValue keyEvent |
	stamp := evtBuf second.
	stamp = 0 ifTrue: [stamp := Time millisecondClockValue].
	pressType := evtBuf fourth.
	pressType = EventKeyDown
		ifTrue: [
			type := #keyDown.
			lastKeyScanCode := evtBuf third].
	pressType = EventKeyUp ifTrue: [type := #keyUp].
	pressType = EventKeyChar ifTrue: [
		type := #keystroke].
	modifiers := evtBuf fifth.
	buttons := modifiers bitShift: 3.
	keyValue := evtBuf third. 
	charCode := evtBuf sixth.

	type = #keystroke
		ifTrue: [combinedChar
			ifNil: [
				| peekedEvent |
				peekedEvent := Sensor peekEvent.
				(peekedEvent notNil
					and: [peekedEvent fourth = EventKeyDown])
					ifTrue: [
						(CombinedChar isCompositionCharacter: charCode)
							ifTrue: [
								combinedChar := CombinedChar new.
								combinedChar simpleAdd: charCode asCharacter.
								(combinedChar combinesWith: peekedEvent third asCharacter)
									ifTrue: [^nil].
								]]]
			ifNotNil: [
				(combinedChar simpleAdd: charCode asCharacter)
					ifTrue: [charCode := combinedChar combined charCode].
				combinedChar := nil]].

	self flag: #fixme.
	"This piece of code handles the creation of scrolling events. When a scroll is done by the user, the VM forwards a keystroke event with the up/down key. So we reconvert it to a MouseWheelEvent in that case."
	(type = #keystroke 
	 and: [(buttons anyMask: 16) 
	  and: [{Character arrowUp. Character arrowDown} includes: (charCode asCharacter)]])
		ifTrue: [^ MouseWheelEvent
					fromCharacter: charCode asCharacter
					position: lastMouseEvent cursorPoint
					buttons: buttons
					hand: self
					stamp: stamp].

	keyEvent := KeyboardEvent new
		setType: type
		buttons: buttons
		position: self position
		keyValue: keyValue
		charCode: charCode
		hand: self
		stamp: stamp.
	keyEvent scanCode: lastKeyScanCode.
	^keyEvent
