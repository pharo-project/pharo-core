read: anObject
	^((self baseSlotRead: anObject) bitAt: offset) == 1