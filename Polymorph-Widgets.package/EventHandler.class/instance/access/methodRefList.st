methodRefList
	"Return a MethodReference for each message I can send."
	| list adder |
	list := SortedCollection new.
	adder := [:recip :sel | recip
				ifNotNil: [list
						add: (RGMethodDefinition
								realClass: (recip class whichClassIncludesSelector: sel)
								selector: sel)]].
	adder value: mouseDownRecipient value: mouseDownSelector.
	adder value: mouseMoveRecipient value: mouseMoveSelector.
	adder value: mouseStillDownRecipient value: mouseStillDownSelector.
	adder value: mouseUpRecipient value: mouseUpSelector.
	adder value: mouseEnterRecipient value: mouseEnterSelector.
	adder value: mouseLeaveRecipient value: mouseLeaveSelector.
	adder value: mouseEnterDraggingRecipient value: mouseEnterDraggingSelector.
	adder value: mouseLeaveDraggingRecipient value: mouseLeaveDraggingSelector.
	adder value: doubleClickRecipient value: doubleClickSelector.
	adder value: keyStrokeRecipient value: keyStrokeSelector.
	^ list