event handling
basicKeyPressed: aChar 
	| nextSelection milliSeconds slowKeyStroke  nextSelectionText oldSelection |
	
	nextSelection := oldSelection := self getCurrentSelectionIndex.
	milliSeconds := Time millisecondClockValue.
	slowKeyStroke := milliSeconds - lastKeystrokeTime > 500.
	lastKeystrokeTime := milliSeconds.
	
	self searchedElement: nil.
	
	slowKeyStroke
		ifTrue: ["forget previous keystrokes and search in following elements"
			lastKeystrokes := aChar asLowercase asString.]
		ifFalse: ["append quick keystrokes but don't move selection if it still matches"
			lastKeystrokes := lastKeystrokes , aChar asLowercase asString.].
	"Get rid of blanks and style used in some lists"
	nextSelection := self listForSearching
		findFirst: [:a | a beginsWith: lastKeystrokes fromList: self ].
	nextSelection isZero ifTrue: [ ^ self ].
	"No change if model is locked"

	model okToChange ifFalse: [ ^ self ].	"No change if model is locked"

	"The following line is a workaround around the behaviour of OBColumn>>selection:,
	 which deselects when called twice with the same argument."
	oldSelection = nextSelection ifTrue: [^ self].
	
	"change scrollbarvalue"
	self searchedElement: nextSelection.