initialize

	super initialize.
	shouldUpdateTitle := true.
	testSemaphore := Semaphore new.
	contentSelection := nil.
	acceptor := ClassDefinitionAcceptor model: self.
	classifier := MethodClassifier new. 