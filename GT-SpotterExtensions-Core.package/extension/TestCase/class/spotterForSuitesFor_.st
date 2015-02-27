spotterForSuitesFor: aStep
	<demoOnly: 'NautilusUI - this is an ugly implementaiton - just to demo it '>
	<spotterOrder: 1>
	aStep listProcessor
		title: 'Testcases';
		allCandidates: [ 
			self testSelectors collect: [ :each | 
				(self buildSuiteFromMethods: { each }) name: each; yourself ] ];
		itemName: [ :item | item name ];
		itemIcon: #systemIcon;
		actLogic: [ :item | NautilusUI new runTestsOfSuite: item notifying: true ];
		filter: GTFilterSubstring;
		wantsToDisplayOnEmptyQuery: true