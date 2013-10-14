testBasics
	| repoSpec repo |
	repoSpec := self repositorySpec.
	repo := repoSpec createRepository.
	self assert: repoSpec type = 'dictionary'.
	self assert: repo class == MCDictionaryRepository.
	