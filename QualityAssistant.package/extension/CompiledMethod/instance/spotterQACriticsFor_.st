spotterQACriticsFor: aStep
	<spotterOrder: 0>
	aStep listProcessor
		title: 'QA Critics';
		items: [ self critics asArray ];
		itemName: #title;
		itemIcon: #icon;
		filter: GTFilterSubstring