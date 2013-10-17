checkClass: aContext
	| count current |
	aContext selectedClass isMeta
		ifTrue: [ ^ self ].
	count := 1.
	current := aContext selectedClass.
	[ current isNil ] whileFalse: [
		self inheritanceDepth < count
			ifTrue: [ ^ result addClass: aContext selectedClass; addClass: aContext selectedClass class ].
		current := current superclass.
		count := count + 1 ]