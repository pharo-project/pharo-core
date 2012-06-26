as yet unclassified
noteChangeType: newChangeType

	(changeType == #addedThenRemoved and: [newChangeType == #change])
		ifTrue: [changeType := #add]
		ifFalse: [changeType := newChangeType]