fileEntryAt: pathSegment ifAbsent: absentBlock
	^ fileSystem 
		ifNil: absentBlock
		ifNotNil: [
			self root fileEntryAt: pathSegment ifAbsent: absentBlock ]