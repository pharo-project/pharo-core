gtSpotterExamplesFor: aStep
	<todo: 'example streaming to speed up spotter!!!'>
	<spotterOrder: 41>
	aStep listProcessor
		title: 'Examples';
		allCandidates: [ GTExampleFinder allGTExamples ];
		itemName: [ :example | example gtDisplayString ];
		filter: GTFilterSubstring;
		wantsToDisplayOnEmptyQuery: false