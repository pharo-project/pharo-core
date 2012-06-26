updating
update: anEvent
	(isPerformingRefactoring or: [ anEvent isDoIt or: [ anEvent isCommented or: [ anEvent isRecategorized ] ] ])
		ifFalse: [ self clearUndoRedoList ]