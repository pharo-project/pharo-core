event handling
startDrag: evt 
	| ddm itemMorph passenger |
	self dragEnabled
		ifTrue: [itemMorph := scroller submorphs
						detect: [:any | any highlightedForMouseDown]
						ifNone: []].
	(itemMorph isNil
			or: [evt hand hasSubmorphs])
		ifTrue: [^ self].
	itemMorph highlightForMouseDown: false.
	itemMorph ~= self selectedMorph
		ifTrue: [self setSelectedMorph: itemMorph].
	passenger := self model dragPassengerFor: itemMorph inMorph: self.
	passenger
		ifNotNil: [ddm := TransferMorph withPassenger: passenger from: self.
			ddm
				dragTransferType: (self model dragTransferTypeForMorph: self).
			evt hand grabMorph: ddm].
	evt hand releaseMouseFocus: self