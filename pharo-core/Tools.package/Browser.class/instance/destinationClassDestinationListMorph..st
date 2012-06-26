drag and drop
destinationClassDestinationListMorph: dstListMorph
	| dropItem |
	^ dstListMorph getListSelector == #classList
		ifTrue: [ (dropItem := dstListMorph potentialDropItem) ifNotNil: [ Smalltalk globals at: dropItem withBlanksCondensed asSymbol ] ]
		ifFalse: [ dstListMorph model selectedClass ]