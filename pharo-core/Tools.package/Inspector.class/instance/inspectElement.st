menu commands
inspectElement
	"Create and schedule an Inspector on an element of the receiver's model's currently selected collection."
	| sel selSize countString count nameStrs |
	self selectionIndex = 0 ifTrue: [ ^ self changed: #flash ].
	((sel := self selection) isKindOf: SequenceableCollection) ifFalse: 
		[ (sel isKindOf: MorphExtension) ifTrue: [ ^ sel inspectElement ].
		^ sel inspect ].
	(selSize := sel size) = 1 ifTrue: [ ^ sel first inspect ].
	selSize <= 20 ifTrue: 
		[ nameStrs := (1 to: selSize) asArray collect: 
			[ :ii | 
			ii printString , '   ' , (((sel at: ii) printStringLimitedTo: 25) 
					replaceAll: Character cr
					with: Character space) ].
		count := UIManager default 
			chooseFrom: nameStrs substrings
			title: 'which element?'.
		count = 0 ifTrue: [ ^ self ].
		^ (sel at: count) inspect ].
	countString := UIManager default 
		request: 'Which element? (1 to ' , selSize printString , ')'
		initialAnswer: '1'.
	countString isEmptyOrNil ifTrue: [ ^ self ].
	count := Integer readFrom: countString readStream.
	(count > 0 and: [ count <= selSize ]) 
		ifTrue: [ (sel at: count) inspect ]
		ifFalse: [ Beeper beep ]