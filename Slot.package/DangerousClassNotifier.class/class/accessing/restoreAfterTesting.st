restoreAfterTesting
	restoreState ifNil: [  self error: 'Cannot nest disable for testing' ].
	enabled := restoreState.
	restoreState := nil.