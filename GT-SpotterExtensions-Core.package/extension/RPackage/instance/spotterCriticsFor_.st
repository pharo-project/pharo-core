spotterCriticsFor: aStep
	<spotterOrder: 90>
	aStep listProcessor
		title: 'Critics';
		items: [ { GTCritics onPackage: self } ];
		itemName: [ :item | item title ];
		itemIcon: [ Smalltalk ui icons smallWarningIcon  ];
		filter: GTFilterSubstring