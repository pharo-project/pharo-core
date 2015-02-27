spotterItemsFor: aStep
	<spotterOrder: 10>
	(self allSatisfy: [ :each | 
		each class = GTSpotterCandidateLink ])
		ifFalse: [ ^ self ].
	^ aStep listProcessor
		title: 'Items';
		candidatesLimit: 100;
		allCandidates: [ OrderedCollection newFrom: (self collect: [ :each | each copy ])];
		itemName: [ :each | each renderingProcessor itemNameFor: each value ];
		filter: GTFilterSubstring;
		wantsToDisplayOnEmptyQuery: true