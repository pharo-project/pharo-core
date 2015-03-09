spotterForHelpTopicFor: aStep
	<spotterOrder: 200>
	aStep listProcessor 
		allCandidates: [ self subtopics ];
		title: 'Help contents';
		itemName: [ :helpTopic | helpTopic title ];
		itemIcon: [ :helpTopic | helpTopic gtTopicIcon ];
		filter: (GTFilterBlock new 
			matcher: [ :item :context |				
				(context cacheAt: #queryForHelpTopics ifAbsentPut: [ context textLowercase splitOn: ' ' ])
					 allSatisfy: [ :each | item contents asString includesSubstring: each ] ];
		yourself);
		wantsToDisplayOnEmptyQuery: true