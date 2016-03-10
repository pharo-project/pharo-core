spotterQACriticsFor: aStep
	<spotterOrder: 0>
	
	aStep listProcessor
		title: 'QA Critics';
		items: [ self externalProperties asArray ];
		itemName: #title;
		itemIcon: #icon;
		filter: GTFilterSubstring