forceLongForm
	compilationContext ifNil: [ ^ false ].
	^compilationContext optionLongIvarAccessBytecodes
		