spotterClipboardFor: aStep
	<spotterOrder: 90>
	^ aStep listProcessor
		title: 'Clipboard History';
		items: [ Clipboard default recentItems ];
		itemName: [ :item | item asString contractTo: 100 ];
		itemFilterName: [ :item | item asString ];
		filter: GTFilterSubstrings;
		actLogic: [ :item | item asString inspect ];
		wantsToDisplayOnEmptyQuery: false