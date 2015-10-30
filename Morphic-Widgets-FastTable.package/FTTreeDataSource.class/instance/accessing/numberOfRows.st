numberOfRows
	^ items
		ifNotNil:
			[ | cpt |
			cpt := items size + (items collect: [ :item | item numberOfVisibleChildren ]) sum.
			cpt ]
		ifNil: [ 0 ]