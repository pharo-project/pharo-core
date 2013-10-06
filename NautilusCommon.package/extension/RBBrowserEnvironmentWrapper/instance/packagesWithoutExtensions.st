packagesWithoutExtensions

	^ (self classes gather: [:each | each packagesWithoutExtensions]) asSet