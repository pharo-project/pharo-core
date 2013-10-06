numberSelectors
	| total |
	total := 0.
	self classesDo: [ :each | 
		self
			selectorsForClass: each
			do: [ :selector | total := total + 1 ] ].
	^ total