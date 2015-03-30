spotterForSuiteFor: aStep
	<spotterOrder: 1>
	aStep listProcessor
		title: 'Tests';
		allCandidates: [ Array with: self suite ];
		itemName: [ :item | item name ];
		itemIcon: [ :item | GTTestRunner iconForClass: self ];
		actLogic: [ :item | GTTestRunner runTestsForSuite: item ];
		filter: GTFilterSubstring;
		wantsToDisplayOnEmptyQuery: true