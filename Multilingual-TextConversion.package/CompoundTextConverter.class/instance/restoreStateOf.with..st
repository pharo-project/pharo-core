friend
restoreStateOf: aStream with: aConverterState

	state := aConverterState copy.
	aStream position: state streamPosition.
