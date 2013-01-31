morphic
startDrag: anEvent 
	| aTransferMorph itemMorph passenger |
	self dragEnabled
		ifTrue: [itemMorph := scroller submorphs
						detect: [:any | any highlightedForMouseDown]
						ifNone: []].
	(itemMorph isNil
			or: [anEvent hand hasSubmorphs])
		ifTrue: [^ self].
	itemMorph highlightForMouseDown: false.
	itemMorph ~= self selectedMorph
		ifTrue: [self setSelectedMorph: itemMorph].
	passenger := self model perform: dragItemSelector with: itemMorph withoutListWrapper.
	passenger
		ifNotNil: [aTransferMorph := TransferMorph withPassenger: passenger from: self.
			aTransferMorph dragTransferType: #dragTransfer.
			aTransferMorph align: aTransferMorph draggedMorph center with: anEvent position.
			anEvent hand grabMorph: aTransferMorph].
	anEvent hand releaseMouseFocus: self