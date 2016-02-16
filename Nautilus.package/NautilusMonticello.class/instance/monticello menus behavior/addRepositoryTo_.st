addRepositoryTo: aGroup
	| repo |
	(repo := MCTool newRepository) ifNil: [ ^ self ].
	aGroup addRepository: repo.