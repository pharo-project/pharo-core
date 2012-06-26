monticello menus behavior
addRepositoryTo: aGroup
	| repo |
	(repo := self newRepository) ifNil: [ ^ self ].
	aGroup addRepository: repo.