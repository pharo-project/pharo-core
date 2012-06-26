morphic
wantsDroppedMorph: aMorph event: anEvent
	aMorph dragTransferType == #dragTransfer ifFalse: [^false].
	dropItemSelector ifNil: [^false].
	wantsDropSelector ifNil: [^true].
	^ (model perform: wantsDropSelector with: aMorph passenger)