do: aBlock
	self table withIndexDo: [ :each :index |
		| current |
		self fixAt: index.
		current := each.
		[ current notNil ]
			whileTrue: [
				current key ifNotNilDo: [ :key |
					aBlock value: key ].
				current := current next ] ]