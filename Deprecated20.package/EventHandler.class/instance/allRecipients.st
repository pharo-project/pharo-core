access
allRecipients
	"Answer a list, without duplication, of all the objects serving as recipients to any of the events I handle.  Intended for debugging/documentation use only"
	| aList |
	aList := OrderedCollection with: mouseDownRecipient with: mouseStillDownRecipient with: mouseUpRecipient with: mouseEnterRecipient with: mouseLeaveRecipient.
	aList addAll: (OrderedCollection with:  mouseEnterDraggingRecipient with: mouseLeaveDraggingRecipient with: doubleClickRecipient with: keyStrokeRecipient).
	aList add: mouseMoveRecipient.
	^ (aList copyWithout: nil) asSet asArray