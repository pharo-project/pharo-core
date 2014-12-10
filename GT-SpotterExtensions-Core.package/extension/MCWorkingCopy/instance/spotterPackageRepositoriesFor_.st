spotterPackageRepositoriesFor: aStep
	<spotterOrder: 10>
	aStep listProcessor
		title: 'Package repositories';
		allCandidates: [ self repositoryGroup repositories ];
		itemName: [ :item | item description ];
		actLogic: [ :item | self spotterCommit: self in: item ];
		matchSubstring