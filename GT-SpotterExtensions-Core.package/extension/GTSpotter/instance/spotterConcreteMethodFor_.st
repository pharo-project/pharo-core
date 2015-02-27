spotterConcreteMethodFor: aStep
    <spotterOrder: 30>
	^ aStep listProcessor
		title: 'Method';
		filter: [ :context | self concreteMethodsInContext: context ];
		wantsToDisplayOnEmptyQuery: false