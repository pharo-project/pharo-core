as yet unclassified
ancestorInfo
	^ ancestorInfo ifNil: [ancestorInfo := version info commonAncestorWith: version workingCopy ancestry]