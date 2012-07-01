announcement
keyPressed: ann

	| aChar milliSeconds slowKeyStroke |

	aChar := ann key keyCharacter.

	milliSeconds := Time millisecondClockValue.
	slowKeyStroke := milliSeconds - lastKeystrokeTime > 500.
	lastKeystrokeTime := milliSeconds.
	slowKeyStroke
		ifTrue: ["forget previous keystrokes and search in following elements"
			lastKeystrokes := aChar asLowercase asString.]
		ifFalse: ["append quick keystrokes but don't move selection if it still matches"
			lastKeystrokes := lastKeystrokes , aChar asLowercase asString.].
	"Get rid of blanks and style used in some lists"
	lastKeystrokes = self konamiCode
		ifTrue: [ self openKonamiCode ].