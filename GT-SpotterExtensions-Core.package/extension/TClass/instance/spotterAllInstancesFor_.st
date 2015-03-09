spotterAllInstancesFor: aStep
	<spotterOrder: 100>
	aStep listProcessor
		title: 'All instances';
		allCandidates: [ self allInstances ];
		filter: GTFilterSubstring