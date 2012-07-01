as yet unclassified
addVersionInfo: aVersionInfo
	(aVersionInfo hasAncestor: target)
		ifTrue: [super addVersionInfo: aVersionInfo]
