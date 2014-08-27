testStructWithPointerAccess

	| struct |
	
	struct := NBTestStructureWithPointer1 new.
	self assert: struct isExternal not.
	self assert: struct field isNil.