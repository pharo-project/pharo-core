spotterForSelectorsFor: aStep
	<spotterOrder: 35>

	aStep listProcessor
		title: 'Selectors';
		filter: GTNullFilter item: [ :filter :context | 
			GTSelectorImplementors substring: context textTrimmed filter: filter ];
		actLogic: [ :each | self systemNavigation browseAllImplementorsOf: each name ];		
		wantsToDisplayOnEmptyQuery: false