spotterForTestClassesFor: aStep
	<spotterOrder: 20>
	aStep listProcessor
		title: 'Tests';
		allCandidates: [ TestCase allSubclasses reject: [ :each | each isAbstract ] ];
		itemName: [ :item | item name ];
		itemIcon: [ :item | GTTestRunner iconForClass: item ];
		actLogic: [ :item | GTTestRunner runTestsForClass: item ];
		filter: GTFilterSubstring;
		wantsToDisplayOnEmptyQuery: false