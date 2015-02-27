spotterAncestorsFor: aStep
	<spotterOrder: 1>
	aStep listProcessor
		title: 'Ancestors';
		allCandidates: [ self allAncestors ];
		filter: GTFilterSubstring