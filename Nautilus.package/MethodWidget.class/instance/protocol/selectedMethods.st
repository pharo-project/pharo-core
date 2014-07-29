selectedMethods

	| associations |
	associations := self methodsSelection associations select: [:assoc | assoc value ] thenCollect: [:assoc | assoc key ].
	^ associations reject: [:each | each isNil ]