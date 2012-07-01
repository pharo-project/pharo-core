instance creation
readFrom: aStream

	"Read a MorphicEvent from the given stream."
	| typeString |
	typeString := String streamContents:
		[:s | | c |   [(c := aStream next) isLetter] whileTrue: [s nextPut: c]].
	typeString = 'mouseMove' ifTrue:[^MouseMoveEvent type: #mouseMove readFrom: aStream].
	typeString = 'mouseDown' ifTrue:[^MouseButtonEvent type: #mouseDown readFrom: aStream].
	typeString = 'mouseUp' ifTrue:[^MouseButtonEvent type: #mouseUp readFrom: aStream].

	typeString = 'keystroke' ifTrue:[^KeyboardEvent type: #keystroke readFrom: aStream].
	typeString = 'keyDown' ifTrue:[^KeyboardEvent type: #keyDown readFrom: aStream].
	typeString = 'keyUp' ifTrue:[^KeyboardEvent type: #keyUp readFrom: aStream].

	typeString = 'mouseOver' ifTrue:[^MouseEvent type: #mouseOver readFrom: aStream].
	typeString = 'mouseEnter' ifTrue:[^MouseEvent type: #mouseEnter readFrom: aStream].
	typeString = 'mouseLeave' ifTrue:[^MouseEvent type: #mouseLeave readFrom: aStream].

	typeString = 'unknown' ifTrue:[^MorphicUnknownEvent type: #unknown readFrom: aStream].

	^nil
