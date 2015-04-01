calculateOffset: aClass
	| booleanSlots  |
	booleanSlots := aClass allSlots select: [ :each | each isKindOf: self class ].
	offset := booleanSlots indexOf: self.