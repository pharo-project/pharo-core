menu: aMenu shifted: aBoolean
	(self allowMenuOnNoItem not and: [ self selectedItems isEmpty ])
		ifTrue: [ ^ nil ].
	menuBlockHolder contents cull: aMenu cull: aBoolean.
	^ aMenu