accessing
contents
	^ (filesystem instVarNamed: 'store')
		nodeAt: Path / 'giffle'
		ifPresent: [:bytes | bytes]
		ifAbsent: [self signalFailure: 'No file!']