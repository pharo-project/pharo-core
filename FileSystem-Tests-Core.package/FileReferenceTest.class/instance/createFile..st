support
createFile: aPath
	filesystem ensureDirectory: aPath parent.
	(filesystem writeStreamOn: aPath) close