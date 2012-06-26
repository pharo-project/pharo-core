scanning
scanFile: file from: startPosition to: stopPosition
	| changeList |
	changeList := OrderedCollection new.
	file position: startPosition.
'Scanning ', file localName, '...'
	displayProgressFrom: startPosition to: stopPosition
	during: [:bar | | prevChar itemPosition item |
	[file position < stopPosition] whileTrue:[
		bar current: file position.
		[file atEnd not and: [file peek isSeparator]]
			whileTrue: [prevChar := file next].
		(file peekFor: $!) ifTrue:[
			(prevChar = Character cr or: [prevChar = Character lf])
				ifTrue: [changeList addAll: (self scanCategory: file)].
		] ifFalse:[
			itemPosition := file position.
			item := file nextChunk.
			file skipStyleChunk.
			item size > 0 ifTrue:[
				changeList add: (ChangeRecord new file: file position: itemPosition type: #doIt).
			].
		].
	]].
	^changeList