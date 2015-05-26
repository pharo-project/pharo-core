fileEntryAt: pathSegment ifAbsent: absentBlock
	| decodedName |
	decodedName := FSSTFileNameEncoder decode: pathSegment.
	^ (self listAtCategoryNamed: decodedName)
		ifNil: absentBlock
		ifNotNil: [
			ProtocolEntry 
				class: self subject
				protocol: decodedName ]