relevantProcessorsProcess: aSpotterContext
	self relevantProcessorsProcess: aSpotterContext do: [ :processor | 
		aSpotterContext processor: processor.
		processor filterInContext: aSpotterContext ]