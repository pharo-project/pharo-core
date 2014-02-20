disableForTesting
	restoreState ifNotNil: [  self error: 'Cannot nest disable for testing' ].
	restoreState := enabled.
	enabled := false.