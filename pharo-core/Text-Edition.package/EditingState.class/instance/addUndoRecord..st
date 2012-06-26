undo-redo
addUndoRecord: anUndoRecord
	self undoManager isPlugged 
		ifTrue: [self undoManager clearRedoHistory.
			self undoManager addRecord: anUndoRecord]

