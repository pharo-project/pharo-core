spotterQACriticsFor: aStep
	<spotterOrder: 0>
	aStep listProcessor
		title: 'QA Critics';
		items: [ self critics asArray ];
		itemName: [ :critic | critic title ];
		itemIcon: [ :critic | critic icon ];
		filter: GTFilterSubstring