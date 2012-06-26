*EventModel
handleMouseInputEvent: sysEvent
	"it is complex... ignore it"
	
	| type oldButtons |

	type := sysEvent typeBasedOnPreviousEvent: self lastSystemEvent.
	oldButtons := self lastSystemEvent buttons. 
	lastSystemEvent := sysEvent.
	recentModifiers := lastSystemEvent modifiers.
	type == #mouseMove 
		ifTrue: 
			[
			^MouseMoveEvent basicNew 
				setType: type
				startPoint: self position
				endPoint: sysEvent trail last
				trail:  sysEvent trail
				buttons: sysEvent buttons
				hand: self
				stamp: sysEvent timeStamp].
	
	^MouseButtonEvent basicNew 
		setType: type
		position: self  position
		which: ( oldButtons bitXor: sysEvent buttons)
		buttons:  sysEvent buttons
		hand: self
		stamp: sysEvent timeStamp