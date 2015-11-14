spotterQACriticsFor: aStep
	<spotterOrder: 0>
	| critics |
	
	"A way to disable plugin from prefs"
	critics := QASettings spotterPlugin
		ifTrue: [ self critics asArray ]
		ifFalse: [ #() ].
	
	aStep listProcessor
		title: 'QA Critics';
		items: [ critics ];
		itemName: #title;
		itemIcon: #icon;
		filter: GTFilterSubstring