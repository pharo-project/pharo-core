spotterItemsFor: aStep
	<spotterOrder: 10>
	^ aStep listProcessor
		title: 'Items';
		candidatesLimit: 100;
		allCandidates: [ self ];
		itemName: [ :each | each gtDisplayString ];
		matchSubstring;
		wantsToDisplayOnEmptyQuery: true