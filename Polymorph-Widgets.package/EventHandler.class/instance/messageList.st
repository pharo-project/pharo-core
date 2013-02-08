access
messageList
	"Return a list of 'Class selector' for each message I can send. tk 
	9/13/97"
	| list |
	self flag: #mref.
	"is this still needed? I replaced the one use that I could spot with 
	#methodRefList "
	list := SortedCollection new.
	mouseDownRecipient
		ifNotNil: [list add: (mouseDownRecipient class whichClassIncludesSelector: mouseDownSelector) name , ' ' , mouseDownSelector].
	mouseMoveRecipient
		ifNotNil: [list add: (mouseMoveRecipient class whichClassIncludesSelector: mouseMoveSelector) name , ' ' , mouseMoveSelector].
	mouseStillDownRecipient
		ifNotNil: [list add: (mouseStillDownRecipient class whichClassIncludesSelector: mouseStillDownSelector) name , ' ' , mouseStillDownSelector].
	mouseUpRecipient
		ifNotNil: [list add: (mouseUpRecipient class whichClassIncludesSelector: mouseUpSelector) name , ' ' , mouseUpSelector].
	mouseEnterRecipient
		ifNotNil: [list add: (mouseEnterRecipient class whichClassIncludesSelector: mouseEnterSelector) name , ' ' , mouseEnterSelector].
	mouseLeaveRecipient
		ifNotNil: [list add: (mouseLeaveRecipient class whichClassIncludesSelector: mouseLeaveSelector) name , ' ' , mouseLeaveSelector].
	mouseEnterDraggingRecipient
		ifNotNil: [list add: (mouseEnterDraggingRecipient class whichClassIncludesSelector: mouseEnterDraggingSelector) name , ' ' , mouseEnterDraggingSelector].
	mouseLeaveDraggingRecipient
		ifNotNil: [list add: (mouseLeaveDraggingRecipient class whichClassIncludesSelector: mouseLeaveDraggingSelector) name , ' ' , mouseLeaveDraggingSelector].
	doubleClickRecipient
		ifNotNil: [list add: (doubleClickRecipient class whichClassIncludesSelector: doubleClickSelector) name , ' ' , doubleClickSelector].
	keyStrokeRecipient
		ifNotNil: [list add: (keyStrokeRecipient class whichClassIncludesSelector: keyStrokeSelector) name , ' ' , keyStrokeSelector].
	^ list