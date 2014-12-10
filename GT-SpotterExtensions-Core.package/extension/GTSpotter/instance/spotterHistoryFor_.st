spotterHistoryFor: aStep
	<spotterOrder: 80>
	aStep listProcessor
			allCandidates: [:x | self class history select: [ :each | each isNotNil ] ];
			title: 'History';
			matchSubstring;
			wantsToDisplayOnEmptyQuery: true