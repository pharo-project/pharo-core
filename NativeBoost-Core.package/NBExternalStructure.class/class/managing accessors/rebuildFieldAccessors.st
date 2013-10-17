rebuildFieldAccessors

	currentFields ifNotNil: [
		currentFields fieldNamesDo: [:field |
			self removeAccessor: field.
			self removeAccessor: field asMutator ]].

	currentFields := self fieldsClass new 
		parseFields: self fieldsDesc byteAlignment: self byteAlignment structure: self.
	self fields fieldNamesDo: [:fldName | self createAccessorsFor: fldName ].

	^ currentFields