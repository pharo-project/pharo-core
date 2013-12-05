buildRoots
	| repos |
	
	packages selectedItem
		ifNil: [ repos := #() ]
		ifNotNil: [ :item | repos := item content repositoryGroup repositories ].

	^ MCRepositoryGroup default repositories
		select: [ :each | each isCache not ]
		thenCollect: [ :each || remote  |			
			remote := each koRemote.
			TreeNodeModel new
				content: remote;
				hasContentToShow: true;
				selected: (repos includes: each);
				whenSelectedChanged: [ :bool | self doIfNotSilent: [ self change: bool forRemote: remote ] ];
				yourself ]