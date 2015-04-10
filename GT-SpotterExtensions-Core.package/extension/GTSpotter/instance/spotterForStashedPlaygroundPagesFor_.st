spotterForStashedPlaygroundPagesFor: aStep
	<spotterOrder: 100>
	aStep listProcessor
			allCandidates: [ GTPlayBook stashDirectory files collect: [ :file |
					(GTPlayPage fromFileReference: file) 
						title: (file basename copyUpTo: $-) ] ];
			title: 'Playground named pages';
			itemName: [ :page | page title, ' - ', page content asString contractTo: 100 ];
			filter: GTFilterSubstring