initialize

	super initialize.
	cachedHierarchy := SortHierarchically new.
	groupsSelection := Dictionary new.
	packagesSelection := Dictionary new.
	shouldUpdateTitle := true.
	testSemaphore := Semaphore new.
	sourceTextAreas := OrderedCollection new.
	contentSelection := nil.
	acceptor := ClassDefinitionAcceptor model: self.
	classifier := MethodClassifier new. 