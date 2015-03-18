spotterItemsFor: aStep
	<spotterOrder: 10>
	| processor |
	self isEmpty ifTrue: [ ^ self ].
	(self allSatisfy: [ :each | 
		each class = GTSpotterCandidateLink ])
		ifFalse: [ ^ self ].
	processor := aStep previousProcessorFrom: self.
	^ aStep listProcessor
		title: processor title;
		candidatesLimit: 100;
		allCandidates: [ OrderedCollection newFrom: (self collect: #value)];
		itemName: processor itemName;
		filter: GTFilterSubstring;
		wantsToDisplayOnEmptyQuery: true