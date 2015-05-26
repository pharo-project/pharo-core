spotterForClassesFor: aStep
	<spotterOrder: 10>
	aStep listProcessor
			allCandidates: [ Smalltalk allClassesAndTraits ];
			title: 'Classes';
			filter: GTFilterSubstring;
			itemIcon: #systemIcon;
			wantsToDisplayOnEmptyQuery: false