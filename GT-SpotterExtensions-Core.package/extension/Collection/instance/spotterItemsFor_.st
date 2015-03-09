spotterItemsFor: aStep
	" Basically each candidate-link can specify its own processor, filterBlock, itemNameBlock ... However, in this step, we reduce ourself to just one processor when displaying a list of candidate-links - so which filterBlock to use, which itemNameBlock to use, ... ? We assume they are all identical, so we just pick the previous/first processor. This will ensure dive-in and expand will behave the same when using a query. (same filter, same itemName, ...). But, should a processor ever return mixed-items, then this behavior will be faulty. The absolutely correct behaviour woule be to return a list of processors grouped by their title, filter and itemName. That would ensure all items are handled correctly // mail thread <inconsistent behaviour in spotter> "
	| processor |
	<spotterOrder: 10>
	self ifEmpty: [ ^ self ].
	(self allSatisfy: [ :each | each class = GTSpotterCandidateLink ]) ifFalse: [ ^ self ].
	processor := aStep previousProcessorFrom: self.
	^ aStep listProcessor
		title: processor title;
		allCandidates: [ OrderedCollection newFrom: (self collect: #value) " before: each copy value " ];
		candidatesLimit: 100;
		itemName: processor itemName;
		filter: processor filter;
		wantsToDisplayOnEmptyQuery: true