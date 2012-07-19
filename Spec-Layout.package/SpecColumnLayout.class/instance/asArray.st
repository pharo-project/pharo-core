converting
asArray
	| size result currentOffset  numberOfProportionals currentProportional delta lastFractionIndex height |
	
	currentOffset := 0.
	currentProportional := 0.
	result := OrderedCollection new.
	result add: self type.
	size := self commands size.
	numberOfProportionals := 0.
	lastFractionIndex := 0.
	
	self commands do: [:e |
		e offsets = (0@0 corner: 0@0)
			ifTrue: [ numberOfProportionals := numberOfProportionals +1 ]].
	
	numberOfProportionals isZero
		ifTrue: [ delta := 0 ]
		ifFalse: [ delta := 1/numberOfProportionals ].
	
	self commands doWithIndex: [:e :idx || x0 x1 |
		e offsets = (0@0 corner: 0@0)
			ifTrue: [ "fractions"
				e fractions: (0@currentProportional corner: 1@(currentProportional +delta)).
				e offsets: (0@currentOffset corner: 0@0).
				currentOffset := 0.
				currentProportional := currentProportional +delta.
				lastFractionIndex := idx ]
			ifFalse: [ "offsets"
				height := e offsets height.
				x0 := e offsets left.
				x1 := e offsets right.
				idx = size
					ifTrue: [
						e fractions:  (0@1 corner: 1@1).
						e offsets: (x0@(height negated) corner: x1@0)]
					ifFalse: [
						e fractions: (0@currentProportional corner: 1@currentProportional).
						e offsets: (x0@currentOffset corner: x1@ (currentOffset + height)).
						currentOffset := (currentOffset + height) ]]].
			
	(lastFractionIndex > 0 and: [ lastFractionIndex < size ])
		ifTrue: [ | index ante x0 x1 y0 y1 |
			index := size-1.
			[ index > lastFractionIndex ] whileTrue: [ | myHeight |
				ante := self commands at: index.
				index := index -1.
				x0 := ante offsets topLeft x.
				y0 := ante offsets topLeft y.
				x1 := ante offsets bottomRight x.
				y1 := ante offsets bottomRight y.
				myHeight := y1-y0.
				ante offsets: (((height+myHeight) negated)@y0 corner: (height negated)@y1).
				height := height+myHeight ].
			self assert: (index = lastFractionIndex).
			ante := self commands at: index.
			x0 := ante offsets topLeft x.
			y0 := ante offsets topLeft y.
			y1 := ante offsets bottomRight y.
			ante offsets: (x0@y0 corner: (height negated)@y1) ].		
			
	self commands do: [:e |
		e generateArguments.
		e asSpecElements do: [:el |
			result add: el ]].
	
	^ result asArray