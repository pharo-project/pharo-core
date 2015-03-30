spotterForSuitesFor: aStep
	<spotterOrder: 1>
	aStep listProcessor
		title: 'Testcases';
		allCandidates: [ self testSelectors collect: [ :each | self selector: each ] ];
		itemName: [ :item | item name ];
		itemIcon: [ :item | GTTestRunner iconForTestCase: item ];
		actLogic: [ :item | GTTestRunner runTestForTestCase: item ];
		filter: GTFilterSubstring;
		wantsToDisplayOnEmptyQuery: true