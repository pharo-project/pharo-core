as yet unclassified
testCompactFloats

	| idx format |
	format := NBObjectFormat32 new.
	idx := Smalltalk compactClassesArray indexOf: Float ifAbsent: [ ^ nil ].
	idx := idx bitShift: format compactClassIndexShift.

	NativeBoost enableNativeCode.
	Float allInstances do: [:each |
		| oopIdx |
		oopIdx := (NBObjectFormat32 headerOf: each) bitAnd: format compactClassMask.
		self assert: (oopIdx = idx) ]