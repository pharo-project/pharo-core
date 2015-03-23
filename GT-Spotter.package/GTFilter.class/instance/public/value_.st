value: aSpotterContext

	^ [ self applyFilterInContext: aSpotterContext ]
		on: Error
		do: [ :exception | 
			self exceptionHandler 
				handleException: exception 
				do: [ self applyFilterInContext: aSpotterContext error: exception ] ]