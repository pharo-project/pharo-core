converting
asArray
	| result currentOffset  numberOfProportionals currentProportional delta |
	
	currentOffset := 0.
	currentProportional := 0.
	result := OrderedCollection new.
	result add: self type.
	
	numberOfProportionals := 0.
	self commands do: [:e |
		e offsets = (0@0 corner: 0@0)
			ifTrue: [ numberOfProportionals := numberOfProportionals +1 ]].
	
	numberOfProportionals isZero
		ifTrue: [ delta := 0 ]
		ifFalse: [ delta := 1/numberOfProportionals ].
	
	self commands do: [:e || x0 x1 height |
		e offsets = (0@0 corner: 0@0)
			ifTrue: [
				e fractions: (0@currentProportional corner: 1@(currentProportional +delta)).
				e offsets: (0@currentOffset corner: 0@0).
				currentOffset := 0.
				currentProportional := currentProportional +delta ]
			ifFalse: [
				height := e offsets height.
				x0 := e offsets left.
				x1 := e offsets right.
				e fractions: (0@currentProportional corner: 1@currentProportional).
				e offsets: (x0@currentOffset corner: x1@ (currentOffset + height)).
				currentOffset := (currentOffset + height)].
		e generateArguments.
		e asSpecElements do: [:el |
			result add: el ]].
			
	^result asArray