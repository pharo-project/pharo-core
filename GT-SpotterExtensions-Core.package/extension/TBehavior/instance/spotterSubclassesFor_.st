spotterSubclassesFor: aStep
	<spotterOrder: 50>
	aStep listProcessor
			title: 'All subclasses';
			allCandidates: [ self allSubclasses ];
			itemIcon: #systemIcon;
			matchSubstring