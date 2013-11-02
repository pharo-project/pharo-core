initialize
"
	CharacterScanner initialize
"
	| a |
	a := TextStopConditions new.
	a at: 1 + 1 put: #embeddedObject.
	a at: Tab asciiValue + 1 put: #tab.
	a at: CR asciiValue + 1 put: #cr.
	a at: Character lf asciiValue + 1 put: #cr.
	
	NilCondition := a copy.
	DefaultStopConditions := a copy.

	PaddedSpaceCondition := a copy.
	PaddedSpaceCondition at: Space asciiValue + 1 put: #paddedSpace.
	
	SpaceCondition := a copy.
	SpaceCondition at: Space asciiValue + 1 put: #space.
