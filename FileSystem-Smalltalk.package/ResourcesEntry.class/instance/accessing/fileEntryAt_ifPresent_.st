fileEntryAt: pathSegment ifPresent: presentBlock
	^ fileSystem 
		ifNil: [ nil ]
		ifNotNil: [ 
			self root fileEntryAt: pathSegment ifPresent: presentBlock ]