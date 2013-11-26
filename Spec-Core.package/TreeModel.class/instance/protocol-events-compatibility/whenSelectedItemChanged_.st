whenSelectedItemChanged: aBlock
	"Set a block to perform when a new item is selected"

	selectionHolder whenChangedDo: [ :col | 
		col 
			ifNil: [ aBlock value: nil ]
			ifNotNil: [ col isEmpty
					ifTrue: [ aBlock value: nil ]
					ifFalse: [ aBlock value: (col last nodeModel lastClicked
						ifTrue: [ col last item ]
						ifFalse: [ nil ]) ] ] ]