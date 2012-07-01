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
	
	self commands do: [:e |
		e offsets = (0@0 corner: 0@0)
			ifTrue: [
				e fractions: (currentProportional@0 corner: (currentProportional +delta)@1).
				e offsets: (currentOffset@0 corner: 0@0).
				currentOffset := 0.
				currentProportional := currentProportional +delta ]
			ifFalse: [| y0 y1 width |
				width := e offsets width.
				y0 := e offsets top.
				y1 := e offsets bottom.
				e fractions: (currentProportional@0 corner: currentProportional@1).
				e offsets: (currentOffset@y0 corner: (currentOffset + width)@y1).
				currentOffset := (currentOffset + width)].
		e generateArguments.
		e asSpecElements do: [:el |
			result add: el ]].
			
	^result asArray