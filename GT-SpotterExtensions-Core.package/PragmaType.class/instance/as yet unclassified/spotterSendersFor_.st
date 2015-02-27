spotterSendersFor: aStep
	<spotterOrder: 50>
	^ aStep listProcessor
		title: 'Senders';
		allCandidates: [ (SystemNavigation default allSendersOf: self keyword) 
									collect: #compiledMethod ];
		filter: GTFilterSubstring