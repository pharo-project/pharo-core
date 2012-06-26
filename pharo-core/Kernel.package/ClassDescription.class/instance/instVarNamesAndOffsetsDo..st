compiling
instVarNamesAndOffsetsDo: aBinaryBlock
	"This is part of the interface between the compiler and a class's instance or field names.
	 The class should enumerate aBinaryBlock with the instance variable name strings and
	 their integer offsets.  The order is important. Names evaluated later will override the
	 same names occurring earlier."

	| superInstSize |
	(superInstSize := superclass notNil ifTrue: [superclass instSize] ifFalse: [0]) > 0 ifTrue:
		[superclass instVarNamesAndOffsetsDo: aBinaryBlock].
	1 to: self instSize - superInstSize do:
		[:i| aBinaryBlock value: (instanceVariables at: i) value: i + superInstSize]