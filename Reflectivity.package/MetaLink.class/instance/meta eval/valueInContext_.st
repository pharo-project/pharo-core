valueInContext: aBlock
	(RFMetaContext current isActive: self level) ifTrue: [
	RFMetaContext current shiftLevelUp.
	^aBlock ctxtEnsure: [RFMetaContext current shiftLevelDown] ]