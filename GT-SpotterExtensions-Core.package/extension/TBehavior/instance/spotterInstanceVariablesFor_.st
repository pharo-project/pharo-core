spotterInstanceVariablesFor: aStep
	<spotterOrder: 20>
	aStep listProcessor
			title: 'Instance variables';
			allCandidates: [ self layout allSlots ];
			itemName: [:each | each name asString];
			matchSubstring