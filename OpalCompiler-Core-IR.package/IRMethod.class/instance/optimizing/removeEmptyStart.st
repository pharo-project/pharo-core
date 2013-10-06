removeEmptyStart

	startSequence size = 1 ifTrue: [
		"startSeq is just unconditional jump, forget it"
		startSequence := startSequence last destination].
