spotterExamplesFor: aStep
	<spotterOrder: 50>
	aStep listProcessor
			title: 'Examples';
			allCandidates: [ self gtExamples ];
			itemName: [ :example | example title ];
			filter: GTFilterSubstring