menu: aMenu shifted: aBoolean
	(self allowMenuOnNoItem not and: [ self selectedItems isEmpty ])
		ifTrue: [ ^ nil ].
	menuBlockHolder value cull: aMenu cull: aBoolean.
	^ aMenu