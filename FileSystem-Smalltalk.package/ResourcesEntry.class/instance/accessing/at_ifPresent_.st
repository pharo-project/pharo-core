at: pathSegment ifPresent: absentBlock
	^ fileSystem ifNotNil: [
		self root at: pathSegment ifPresent: absentBlock ]