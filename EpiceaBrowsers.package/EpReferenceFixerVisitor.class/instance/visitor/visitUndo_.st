visitUndo: anUndoEvent
	^ anUndoEvent copyWithEntryReferences: referencesMap values.