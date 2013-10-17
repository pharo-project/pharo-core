wantsDroppedMorph: aTransferMorph event: evt inMorph: dest
	| retval |
	retval := (aTransferMorph isKindOf: TransferMorph)
		and: [ (aTransferMorph dragTransferType == #file)
				and: [ self isDirectoryList: dest ]].
	^retval