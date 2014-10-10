checkClass: aClass
	| count current |
	aClass isMeta
		ifTrue: [ ^ self ].
	count := 1.
	current := aClass.
	[ current isNil ] whileFalse: [
		self inheritanceDepth < count
			ifTrue: [ ^ result addClass: aClass; addClass: aClass class ].
		current := current superclass.
		count := count + 1 ]