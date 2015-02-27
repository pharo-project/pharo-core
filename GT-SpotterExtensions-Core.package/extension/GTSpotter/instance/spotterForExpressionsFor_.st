spotterForExpressionsFor: aStep
	<spotterOrder: 1>
	| processor |
	(processor := aStep listProcessor)
		title: 'Calculator';
		filter: [ :context | self evaluateExpressionInContext: context ];
		wantsToDisplayOnEmptyQuery: false