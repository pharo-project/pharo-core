dragTransferTypeForMorph: dragSource 

	^(dragSource isKindOf: PluggableListMorph)
		ifTrue: [ dragSource getListElementSelector ]