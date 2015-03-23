spotterItemsFor: aStep
	<spotterOrder: 10>
	| processor |
	self ifEmpty: [ ^ self ].
	processor := aStep previousProcessorFrom: self.
	^ aStep listProcessor
		title: processor title;
		candidatesLimit: 100;
		items: [ OrderedCollection newFrom: (self collect: [ :each | each asSpotterCandidateLink value]) ];
		itemName: processor itemName;
		itemFilterName: processor itemFilterName;
		filter: processor filter gtListFilter;
		wantsToDisplayOnEmptyQuery: true