spotterForClassesFor: aStep
	<spotterOrder: 10>
	aStep listProcessor
			allCandidates: [ Smalltalk allClassesAndTraits ];
			title: 'Classes';
			matchSubstring;
			itemIcon: #systemIcon;
			wantsToDisplayOnEmptyQuery: false