initializeLatelyPresenter
	
	tree whenHighlightedItemChanged: [ :node || item |
		item := node 
			ifNil: [ nil ]
			ifNotNil: [ node content ].
		diff
			leftText: (self leftTextFor: item);
			rightText: (self rightTextFor: item).
		(item isNil or: [ item added ])
			ifTrue: [ diff showOnlyDestination: true ]
			ifFalse: [
		( item removed or: [ item isPackage or: [ (item isClass and: [ item isDirty not ]) ] ] )
			ifTrue: [ diff showOnlySource: true ]
			ifFalse: [ diff showBoth ] ] ].
	
	tree whenSelectedItemsChanged: [ self updateRemotes ]