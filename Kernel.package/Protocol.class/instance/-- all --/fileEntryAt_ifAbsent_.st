fileEntryAt: pathSegment ifAbsent: absentBlock
	^ self class methodDict
		at: (MethodFileNameEncoder decode: pathSegment) asSymbol
		ifAbsent: absentBlock