*EventModel
handleKeyboardInputEvent: sysEvent
	"For the moment just to give a try, working on generateKeyboardEvent2: "

	| stamp charCode keyValue keyEvent |

	recentModifiers := sysEvent modifiers.

	sysEvent isKeyDown ifTrue: [ lastKeyScanCode := sysEvent charCode].
	keyValue := sysEvent charCode. 
	charCode := sysEvent utf32Code.
	
	"Adjustments to provide consistent key value data for different VM's:
	- charCode always contains unicode code point.
	 - keyValue contains 0 if input is outside legacy range"
	"If there is no unicode data in the event, assume keyValue contains a correct (<256) Unicode codepoint, and use that"
	(charCode isNil
		or: [charCode = 0])
		ifTrue: [charCode := keyValue].
	"If charCode is not single-byte, we definately have Unicode input. Nil keyValue to avoid garbage values from som VMs."	
	charCode > 255 ifTrue: [keyValue := 0].

"

	This should be checked... 
	
	sysEvent isKeyStroke
		ifTrue: [
			combinedChar 
				ifNil: [
					(CombinedChar isCompositionCharacter: charCode) ifTrue: [ 
						combinedChar := CombinedChar new.
						combinedChar simpleAdd: charCode asCharacter.
						^ nil ].
				] ifNotNil: [
					(combinedChar simpleAdd: charCode asCharacter)
						ifTrue: [charCode := combinedChar combined charCode].
					combinedChar := nil]					
			].
"
		sysEvent isMouseWheel
		ifTrue: [^MouseWheelEvent new 
					setType: #mouseWheel
					position: lastMouseEvent cursorPoint
					direction: (charCode = 30 ifTrue: [#up] ifFalse: [#down])
					buttons: sysEvent buttons
					hand: self
					stamp: sysEvent timeStamp].	
	keyEvent := KeyboardEvent new
		setType: sysEvent pressType
		buttons: sysEvent buttons
		position: self position
		keyValue: keyValue
		charCode: charCode
		hand: self
		stamp: sysEvent timeStamp.
	keyEvent scanCode: lastKeyScanCode.
	
	^keyEvent
