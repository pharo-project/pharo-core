filterInContext: aSpotterContext
	[ super filterInContext: aSpotterContext ]
		on: Error 
		do: [ :e | ('[Spotter] Exception in processor <', self title asString, '>: ', e asString) logCr ]