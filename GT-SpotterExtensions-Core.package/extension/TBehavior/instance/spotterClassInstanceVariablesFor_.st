spotterClassInstanceVariablesFor: aStep
	<spotterOrder: 25>
	aStep listProcessor
			title: 'Class instance variables';
			allCandidates: [ self class layout allSlots ];
			itemName: [:each | each name asString];
			matchSubstring