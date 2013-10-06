=> aSlot
	aSlot isBehavior
		ifTrue: [ ^ aSlot named: self].
	^ aSlot name: self;
		yourself