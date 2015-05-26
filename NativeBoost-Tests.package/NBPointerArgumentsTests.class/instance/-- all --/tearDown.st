tearDown
	toBeFreed
		ifNotNil: [
			toBeFreed free.
			toBeFreed := nil ]