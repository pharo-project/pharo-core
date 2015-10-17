gtSpotterGTExamplesFor: aStep
	<spotterOrder: 100>
	aStep listProcessor
		title: 'Examples';
		allCandidates: [ self examples ];
		itemName: [ :example | example gtDisplayString ];
		filter: GTFilterSubstring