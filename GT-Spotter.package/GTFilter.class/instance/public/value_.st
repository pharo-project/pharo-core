value: aSpotterContext
	^ [ self applyFilterInContext: aSpotterContext ]
		on: Error
		do: [ :exception | self applyFilterInContext: aSpotterContext error: exception ]