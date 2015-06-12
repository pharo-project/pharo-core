initialize

	super initialize.
	ok := false.
	dirSelectionBlock := [ :dirName | true].
	baseLabel := ''.
	configuredServices := OrderedCollection new.
	self directory: FileSystem workingDirectory.