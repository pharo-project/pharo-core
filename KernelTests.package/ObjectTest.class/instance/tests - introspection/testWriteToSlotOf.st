testWriteToSlotOf
	| object |
	object := 5@6.
	
	self assert: (7 writeToSlot: (Point slotNamed: #x) of: object) = 7.
	self assert: object = (7@6).