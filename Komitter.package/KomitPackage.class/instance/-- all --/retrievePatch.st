retrievePatch
	
	dataRetriever ifNotNil: [ dataRetriever release ].
	dataRetriever := DataRetriever for: [ self package patch ].