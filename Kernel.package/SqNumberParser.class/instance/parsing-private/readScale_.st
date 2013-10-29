readScale: defaultScale
	"Read the scale if any (stored in instVar).
	Answer true if found, answer false if none.
	If scale letter is not followed by a digit, then the defaultScale is used."

	scale := 0.
	sourceStream atEnd
		ifTrue: [ ^ false ].
	(sourceStream peekFor: $s)
		ifFalse: [ ^ false ].
	scale := (self nextUnsignedIntegerOrNilBase: 10) ifNil: [defaultScale].
	^ true