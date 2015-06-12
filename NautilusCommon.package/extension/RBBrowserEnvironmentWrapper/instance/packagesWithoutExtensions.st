packagesWithoutExtensions

	^ (self classes flatCollect: [:each | each packagesWithoutExtensions]) asSet