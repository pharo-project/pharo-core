enumerating
valuesDo: aBlock
	1 to: tally do: [ :index | aBlock value: (values at: index) ]