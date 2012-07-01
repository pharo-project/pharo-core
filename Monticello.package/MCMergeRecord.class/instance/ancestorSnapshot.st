as yet unclassified
ancestorSnapshot
	^ ancestorSnapshot ifNil: [ancestorSnapshot := version workingCopy findSnapshotWithVersionInfo: self ancestorInfo]