recordSelectionChange: aBlock

	| operation |
	operation := (TxSelectionChangeOperation editor: self).
	operation captureDuring: aBlock.
	self addUndo: operation. 

	"And last thing, announce that selection has changed"
	
	self announce: (TxSelectionChangedAnnouncement new editor: self; newSelection: selection).
	