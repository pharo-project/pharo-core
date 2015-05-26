spotterItemsFor: aStep
	<spotterOrder: 10>
	self flag: #refactoringViolationForSpotterActDefault:.
	^ aStep listProcessor 
		title: 'Items';
		candidatesLimit: Float infinity;
		allCandidates: [ self items ];
		itemName: #contents;
		itemIcon: [ :item | item icon ];
		actLogic: [ :item | item hasSubMenu 
					ifTrue: [ aStep diveIn ] 
					ifFalse: [ item spotterActDefault. aStep exit ] ];
		filter: GTFilterSubstring 