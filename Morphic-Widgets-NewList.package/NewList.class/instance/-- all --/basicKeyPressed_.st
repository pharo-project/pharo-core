basicKeyPressed: aChar 
	| nextSelection milliSeconds slowKeyStroke oldSelection |
	
	nextSelection := oldSelection := self selectedIndex.
	milliSeconds := Time millisecondClockValue.
	slowKeyStroke := milliSeconds - lastKeystrokeTime > 500.
	lastKeystrokeTime := milliSeconds.
	
	aChar = Character space
		ifTrue: [ 
			self clickOnSelectedItem.
			^ self secondSelection: 0 ].
	
	self ensureFullDisplayListCache.
		
	slowKeyStroke
		ifTrue: ["forget previous keystrokes and search in following elements"
			lastKeystrokes := aChar asLowercase asString.]
		ifFalse: ["append quick keystrokes but don't move selection if it still matches"
			lastKeystrokes :=String streamContents: [:s | s << lastKeystrokes << aChar asLowercase asString ]].
	"Get rid of blanks and style used in some lists"
	nextSelection := displayListCache findFirst: [:a | a 
												ifNil: [ false "in case it's not loaded yet" ]
												ifNotNil: [:e | e beginsWith: lastKeystrokes fromList: self ]].
	nextSelection isZero ifTrue: [ ^ self secondSelection: 0 ].
	
	"No change if model is locked"
	model okToChange ifFalse: [ ^ self ].	"No change if model is locked"

	"The following line is a workaround around the behaviour of OBColumn>>selection:,
	 which deselects when called twice with the same argument."
	oldSelection = nextSelection ifTrue: [ ^ self ].
	
	self secondSelection: nextSelection. 