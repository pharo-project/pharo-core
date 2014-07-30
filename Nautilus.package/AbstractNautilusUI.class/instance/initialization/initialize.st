initialize

	super initialize.
	cachedHierarchy := nil. "to delete"
	shouldUpdateTitle := true.
	testSemaphore := Semaphore new.
	sourceTextAreas := OrderedCollection new.
	contentSelection := nil.
	acceptor := ClassDefinitionAcceptor model: self.
	classifier := MethodClassifier new. 