testRemovePropertySlot
	
	| propertySlot |
	
	propertySlot := #prop => PropertySlot.
	
	aClass := self make: [ :builder |
		builder 
			slots: {propertySlot}
		].

	self assert: (aClass hasSlot: propertySlot).
	self assert: (aClass layout hasSlot: (propertySlot instVarNamed: 'baseSlot')).
	
	aClass := self make: [ :builder |
		builder 
			slots: {}
		].
	self deny: (aClass hasSlot: propertySlot).	
	self deny: (aClass layout hasSlot: (propertySlot instVarNamed: 'baseSlot')).
	self deny: (aClass layout hasSlotNamed: #'_propertyBaseSlot').