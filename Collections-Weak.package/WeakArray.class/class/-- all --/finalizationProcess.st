finalizationProcess
	[true] whileTrue: [ 
		FinalizationSemaphore wait.
		FinalizationLock critical: [
			FinalizationDependents do: 	[:weakDependent |
				weakDependent ifNotNil: [
					[ weakDependent finalizeValues ] on: Exception fork: [:ex | ex pass ] ]]]].
