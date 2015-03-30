spotterCriticsFor: aStep
	<spotterOrder: 90>
	self hasCriticsResults ifFalse: [ ^ self ].
	aStep listProcessor
		title: self name;
		items: [ self result smallLintCritics asArray ];
		filter: GTFilterSubstring;
		wantsToDisplayOnEmptyQuery: true