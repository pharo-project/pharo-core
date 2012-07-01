as yet unclassified
addVersionInfo: aVersionInfo
	roots add: aVersionInfo.
	self registerStepChildrenOf: aVersionInfo seen: Set new