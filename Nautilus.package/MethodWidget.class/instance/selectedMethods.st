selection
selectedMethods

	| associations |
	associations := self methodsSelection associations select: [:assoc | assoc value == true ] thenCollect: [:assoc | assoc key ].
	^ associations reject: [:each | each isNil ]