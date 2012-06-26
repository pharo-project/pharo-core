scanner methods
scanMultiCharactersFrom: startIndex to: stopIndex in: sourceString rightX: rightX stopConditions: stops kern: kernDelta 
	| ascii encoding f nextDestX maxAscii startEncoding |
	lastIndex := startIndex.
	lastIndex > stopIndex ifTrue: 
		[ lastIndex := stopIndex.
		^ stops endOfRun ].
	startEncoding := (sourceString at: startIndex) leadingChar.
	font ifNil: [ font := (TextSharedInformation at: #DefaultMultiStyle) fontArray at: 1 ].
	((font isMemberOf: StrikeFontSet) or: [ font isKindOf: TTCFontSet ]) 
		ifTrue: 
			[ maxAscii := font maxAsciiFor: startEncoding.
			f := font fontArray at: startEncoding + 1.
			spaceWidth := f widthOf: Space ]
		ifFalse: [ maxAscii := font maxAscii ].
	[ lastIndex <= stopIndex ] whileTrue: 
		[ encoding := (sourceString at: lastIndex) leadingChar.
		encoding ~= startEncoding ifTrue: 
			[ lastIndex := lastIndex - 1.
			^ stops endOfRun ].
		ascii := (sourceString at: lastIndex) charCode.
		ascii > maxAscii ifTrue: [ ascii := maxAscii ].
		(encoding = 0 and: [ascii < stops size and: [ (stopConditions at: ascii + 1) ~~ nil ]]) ifTrue: [ ^ stops at: ascii + 1 ].
		nextDestX := destX + (font widthOf: (sourceString at: lastIndex)).
		nextDestX > rightX ifTrue: [ ^ stops crossedX ].
		destX := nextDestX + kernDelta.
		"destX printString displayAt: 0@(lastIndex*20)."
		lastIndex := lastIndex + 1 ].
	lastIndex := stopIndex.
	^ stops endOfRun