spotterForPlaygroundPagesFor: aStep
	<spotterOrder: 100>
	aStep listProcessor
			allCandidates: [ GTPlayBook instance pagesSorted ];
			title: 'Playground';
			itemName: [ :page | page content asString contractTo: 100 ];
			filter: GTFilterSubstring