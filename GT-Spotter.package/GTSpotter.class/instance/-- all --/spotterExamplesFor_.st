spotterExamplesFor: aStep
	<spotterOrder: 40>
	aStep listProcessor
		title: 'Examples';
		filter: GTFilterSubstring item: [ :filter :context | 
			SystemNavigation default allBehaviorsDo: [ :class | class gtExamples do: filter ] ];
		wantsToDisplayOnEmptyQuery: false