valueInContext: aBlock
	(RFMetaContext current isActive: self level)
		ifFalse: [ ^ self ].
	RFMetaContext current shiftLevelUp.
	^ aBlock ctxtEnsure: [ RFMetaContext current shiftLevelDown ]