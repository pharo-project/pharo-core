spotterForIconsFor: aStep
	<spotterOrder: 10>
	aStep listProcessor
		title: 'Icons';
		allCandidates: [ 
			self iconSelectors asSortedCollection 
				collect: [ :each | each -> (self perform: each) ] ];
		itemIcon: #value;
		itemName: #key;
		actLogic: [ :association | (self class lookupSelector: association key) browse ];
		filter: GTFilterSubstring