spotterForReferencesFor: aStep
	<spotterOrder: 32>
	
	aStep listProcessor
		title: 'References';
		filter: GTNullFilter item: [ :filter :context | 
			SystemNavigation default allReferencesToSubstring: context textTrimmed do: filter ];
		itemName: [ :method | method gtDisplayString ]