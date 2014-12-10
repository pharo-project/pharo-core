spotterClassMethodsFor: aStep
	<spotterOrder: 15>
	aStep listProcessor
			title: 'Class methods';
			allCandidates: [ self class methods ];
			itemName: [ :method | method selector ];
			matchSubstring