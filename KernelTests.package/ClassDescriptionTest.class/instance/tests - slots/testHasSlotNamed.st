testHasSlotNamed
	self assert: (Point hasSlotNamed: #x).
	self deny: (Point hasSlotNamed: #z).
	
	self assert: (Context hasSlotNamed: #stackp).
	self deny: (Context hasSlotNamed: #sender).
	