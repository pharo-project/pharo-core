spotterForClassesFor: aStep
	<spotterOrder: 10>
	aStep listProcessor
			allCandidates: [ Smalltalk allClasses ];
			title: 'Classes';
			matchSubstring;
			itemIcon: #systemIcon;
			wantsToDisplayOnEmptyQuery: false