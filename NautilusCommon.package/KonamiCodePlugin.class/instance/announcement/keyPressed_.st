keyPressed: ann
	| aChar milliSeconds slowKeyStroke |
	aChar := ann key keyCharacter.
	milliSeconds := Time millisecondClockValue.
	slowKeyStroke := milliSeconds - lastKeystrokeTime > 500.
	lastKeystrokeTime := milliSeconds.
	lastKeystrokes := slowKeyStroke
		ifTrue: [ aChar asLowercase asString ]
		ifFalse: [ lastKeystrokes , aChar asLowercase asString ].	"forget previous keystrokes and search in following elements"	"append quick keystrokes but don't move selection if it still matches"	"Get rid of blanks and style used in some lists"
	lastKeystrokes = self konamiCode
		ifTrue: [ self openKonamiCode ]