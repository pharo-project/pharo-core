keysAndValuesDo: aBlock
	self table do: [ :each |
		| current |
		current := each.
		[ current notNil ] whileTrue:  [
			aBlock value: current key value: current value.
			current := current next ] ]