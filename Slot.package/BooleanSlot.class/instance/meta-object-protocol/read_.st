read: anObject
	^((baseSlot read: anObject) bitAt: offset) == 1
		