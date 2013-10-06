checkInheritedSlots: cls
	| mySlot |
	cls superclass 
		ifNil: [ ^ self ].
		
	(cls superclass layout size <= cls layout size)
		ifFalse: [
			self error: (cls name, ' does not inherit all slots from ', cls superclass name).
			^ self].
	
	cls superclass layout allSlots withIndexDo: [ :slot :index|
		mySlot := (cls layout slotAt: index).
		self haltIf: slot index ~= mySlot index.
		self haltIf: slot name ~= mySlot name].