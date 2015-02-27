spotterForTestClassesFor: aStep
	<demoOnly: 'NautilusUI - this is a very ugly implementaiton - just for demo'>
	<spotterOrder: 20>
	aStep listProcessor
		title: 'Tests';
		allCandidates: [ TestCase allSubclasses ];
		itemName: [ :item | item name ];
		itemIcon: #systemIcon;
		actLogic: [ :item | NautilusUI new runTestsOfClass: item notifying: true ];
		filter: GTFilterSubstring;
		wantsToDisplayOnEmptyQuery: false