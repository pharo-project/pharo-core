event handling
startDrag: anEvent
	| trf |
	self dragEnabled ifFalse: [^ self].
	(anEvent hand hasSubmorphs)
		ifTrue: [^ self].
	oldColor 
		ifNotNil: [
			self fillStyle: oldColor.
			oldColor := nil].
	trf := TransferMorph withPassenger: self model from: self.
	anEvent hand grabMorph: trf.
	anEvent hand releaseMouseFocus: self