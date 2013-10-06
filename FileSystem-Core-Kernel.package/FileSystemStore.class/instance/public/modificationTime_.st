modificationTime: aPath
	self 
		nodeAt: aPath 
		ifPresent: [ :entry | ^ self basicModificationTime: entry ] 
		ifAbsent: [ ^ false ].
	