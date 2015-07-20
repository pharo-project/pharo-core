write: aValue to: anObject
	^(baseSlot read: anObject) at: offset put: aValue.
	