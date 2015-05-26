basicRelevantProcessorsProcess: aSpotterContext
	self basicRelevantProcessorsProcess: aSpotterContext do: [ :processor | 
		aSpotterContext processor: processor.
		processor filterInContext: aSpotterContext ]