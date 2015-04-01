write: aValue to: anObject
	| newInteger |
	newInteger := (baseSlot read: anObject) bitAt: offset put: aValue asBit.
	baseSlot write: newInteger to: anObject.
	^aValue