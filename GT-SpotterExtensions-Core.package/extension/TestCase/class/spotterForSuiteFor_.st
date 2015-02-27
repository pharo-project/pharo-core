spotterForSuiteFor: aStep
	<demoyOnly: 'NautilusUI - this is an ugly implementaiton - just to demo it'>
	<spotterOrder: 1>
	aStep listProcessor
		title: 'Tests';
		allCandidates: [ Array with: self suite ];
		itemName: [ :item | item name ];
		itemIcon: #systemIcon;
		actLogic: [ :item | NautilusUI new runTestsOfSuite: item notifying: true ];
		filter: GTFilterSubstring;
		wantsToDisplayOnEmptyQuery: true