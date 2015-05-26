spotterAllRepositoriesFor: aStep
	<spotterOrder: 20>
	aStep listProcessor
		title: 'All other repositories';
		allCandidates: [ MCRepositoryGroup default repositories \ self repositoryGroup repositories ];
		itemName: [ :item | item description ];
		actLogic: [ :item | self spotterCommit: self in: item ];
		filter: GTFilterSubstring