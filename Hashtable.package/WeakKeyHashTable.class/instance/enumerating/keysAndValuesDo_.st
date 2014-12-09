keysAndValuesDo: aBlock
	self table withIndexDo: [ :each :index |
		| current |
		self fixAt: index.
		current := each.
		[ current notNil ] whileTrue:  [
			aBlock value: current key value: current value.
			current := current next ] ]