onExamples: aCollection builder: aBuilder
	(aBuilder item: #'Inspect Examples')
		order: 10000;
		action: [ (self examples: aCollection) inspect ].

	(aBuilder item: #'Run Examples')
		order: 10000;
		action: [ (self examples: aCollection do: #run) inspect ].
		
	(aBuilder item: #'Debug Examples')
		order: 10000;
		action: [ (self examples: aCollection do: #debug) ].
		
		