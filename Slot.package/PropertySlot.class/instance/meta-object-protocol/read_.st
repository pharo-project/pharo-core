read: anObject
	^ (baseSlot read: anObject) at: self name ifAbsent: nil