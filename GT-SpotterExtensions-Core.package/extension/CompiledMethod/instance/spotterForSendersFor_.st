spotterForSendersFor: aStep
	<spotterOrder: 10>
	aStep listProcessor
			title: 'Senders';
			allCandidates: [ self senders collect: #compiledMethod ];
			itemName: [ :method | method printString ];
			matchSubstring