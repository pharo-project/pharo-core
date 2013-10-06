fileEntryAt: pathSegment ifAbsent: absentBlock
	^ clazz methodDict
		at: (MethodFileNameEncoder decode: pathSegment) asSymbol
		ifAbsent: absentBlock