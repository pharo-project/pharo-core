iconForItem: anItem at: anIndex

	^ self getIconSelector
		ifNil: [ nil ]
		ifNotNil: [:s | self model perform: s withEnoughArguments: {anItem . anIndex} ]