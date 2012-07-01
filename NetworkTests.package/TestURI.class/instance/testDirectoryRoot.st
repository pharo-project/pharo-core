running file
testDirectoryRoot

	| rootDir uriRoot uriDir |
	rootDir := FileSystem root.
	uriRoot := 'file:///' asURI.
	self assert: uriRoot isAbsolute.
	uriDir := uriRoot asFileReference.
	self assert: (rootDir fullName = uriDir fullName)