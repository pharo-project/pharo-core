scanning
scanFile: aFile from: startPosition to: stopPosition
	
	file := aFile.
	changeList := OrderedCollection new.
	list := OrderedCollection new.
	listIndex := 0.
	file position: startPosition.
'Scanning ', aFile localName, '...'
	displayProgressFrom: startPosition to: stopPosition
	during: [:bar | | item prevChar itemPosition |
	[file position < stopPosition]
		whileTrue:
		[bar current: file position.
		[file atEnd not and: [file peek isSeparator]]
				whileTrue: [prevChar := file next].
		(file peekFor: $!)
		ifTrue:
			[(prevChar = Character cr or: [prevChar = Character lf])
				ifTrue: [self scanCategory]]
		ifFalse:
			[itemPosition := file position.
			item := file nextChunk.
			file skipStyleChunk.
			item size > 0 ifTrue:
				[self addItem: (ChangeRecord new file: file position: itemPosition type: #doIt)
					text: 'do it: ' , (item contractTo: 50)]]]].
	listSelections := Array new: list size withAll: false