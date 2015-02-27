spotterAncestorsFor: aStep
	<spotterOrder: 2>
	aStep listProcessor
		title: 'Ancestors';
		allCandidates: [ self allAncestors ];
		filter: GTFilterSubstring