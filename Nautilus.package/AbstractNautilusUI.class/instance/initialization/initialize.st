initialize

	super initialize.
	shouldUpdateTitle := true.
	testSemaphore := Semaphore new.
	sourceTextAreas := OrderedCollection new.
	contentSelection := nil.
	acceptor := ClassDefinitionAcceptor model: self.
	classifier := MethodClassifier new. 