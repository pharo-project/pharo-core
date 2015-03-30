spotterCriticsFor: aStep
	<spotterOrder: 1>
	aStep listProcessor
		title: 'Critics Results';
		itemName: [ :each | each class uniqueIdentifierName, ' (', each problemCount asString, ')' ];
		itemIcon: [ :each | self itemIconFor: each ];
		filter: GTFilterSubstring item: [ :filter :context | self filter: filter context: context ];
		wantsToDisplayOnEmptyQuery: true