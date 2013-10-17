pointSizeString: aText
	
	| s n|
	s := aText asString trimBoth.
	s isEmpty ifTrue:[^self].
	(s detect:[:c | c isDigit not and:[c ~= $.]] ifNone:[]) ifNotNil:[^self].
	[n := s asNumber asFloat] on: Error do:[:e | ^self].
	(n < 1 or:[ n > 1024])
		ifTrue:[^self].
	pointSizeMorph ifNotNil:[pointSizeMorph hasUnacceptedEdits: false].
	model pointSize: n