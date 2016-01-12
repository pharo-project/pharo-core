spotterForSendersFor: aStep
	<spotterOrder: 31>

	aStep listProcessor
		title: 'Senders';
		filter: GTNullFilter item: [ :filter :context | 
			SystemNavigation default allSendersToSubstring: context textTrimmed do: filter ];
		wantsToDisplayOnEmptyQuery: false