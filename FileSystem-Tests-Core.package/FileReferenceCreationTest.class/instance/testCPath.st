tests
testCPath
	| ref |
	ref := FileReference C / 'WINDOWS'.
	self assert: (ref fileSystem isKindOf: FileSystem).
	self assert: ref path = (Path / 'C:' / 'WINDOWS')