converting
asArray
	| result currentOffset  numberOfProportionals currentProportional delta size lastFractionIndex width |
	
	currentOffset := 0.
	currentProportional := 0.
	result := OrderedCollection new.
	result add: self type.
	numberOfProportionals := 0.
	lastFractionIndex := 0.
	size := self commands size.
	
	self commands do: [:e |
		e offsets = (0@0 corner: 0@0)
			ifTrue: [ numberOfProportionals := numberOfProportionals +1 ]].
	
	numberOfProportionals isZero
		ifTrue: [ delta := 0 ]
		ifFalse: [ delta := 1/numberOfProportionals ].
	
	self commands doWithIndex: [:e :idx |
		e offsets = (0@0 corner: 0@0)
			ifTrue: [
				e fractions: (currentProportional@0 corner: (currentProportional +delta)@1).
				e offsets: (currentOffset@0 corner: 0@0).
				currentOffset := 0.
				currentProportional := currentProportional +delta.
				lastFractionIndex := idx ]
			ifFalse: [| y0 y1 |
				width := e offsets width.
				y0 := e offsets top.
				y1 := e offsets bottom.
				idx = size 
					ifTrue: [
						e fractions: (1@0 corner: 1@1).
						e offsets: ((width negated)@y0 corner: 0@y1)]
					ifFalse: [
						e fractions: (currentProportional@0 corner: currentProportional@1).
						e offsets: (currentOffset@y0 corner: (currentOffset + width)@y1).
						currentOffset := (currentOffset + width) ]]].
	
	(lastFractionIndex > 0 and: [ lastFractionIndex < size ])
		ifTrue: [ | index ante x0 x1 y0 y1 |
			index := size-1.
			[ index > lastFractionIndex ] whileTrue: [ | myWidth |
				ante := self commands at: index.
				index := index -1.
				x0 := ante offsets topLeft x.
				y0 := ante offsets topLeft y.
				x1 := ante offsets bottomRight x.
				y1 := ante offsets bottomRight y.
				myWidth := x1-x0.
				ante offsets: (((width+myWidth) negated)@y0 corner: (width negated)@y1).
				width := width+myWidth ].
			self assert: (index = lastFractionIndex).
			ante := self commands at: index.
			x0 := ante offsets topLeft x.
			y0 := ante offsets topLeft y.
			y1 := ante offsets bottomRight y.
			ante offsets: (x0@y0 corner: (width negated)@y1) ].		
			
	(self commands reject: [:e | e isSplitter ]) do: [:e |
		| left right bottom top windowBorderWidth |
		windowBorderWidth := self class windowBorderWidth.
		left := e leftOffset ifNil: [0].
		right := e rightOffset ifNil: [0].

		bottom := e bottomOffset ifNil: [0].
		top := e topOffset ifNil: [0].
		
		e rightFraction = 1 ifTrue: [ 
			right isZero 
				ifTrue: [ e rightOffset: windowBorderWidth negated ]
				ifFalse: [ e rightOffset: right - ProportionalSplitterMorph splitterWidth ]].
		e leftFraction = 0
			ifTrue: [ 
				left isZero 
					ifTrue: [ e leftOffset: windowBorderWidth ]
					ifFalse: [ e leftOffset: left+ ProportionalSplitterMorph splitterWidth ]]
			ifFalse: [ e leftFraction = 1 ifFalse: [
						e leftOffset: left + ProportionalSplitterMorph splitterWidth]].

		e bottomFraction = 1 ifTrue: [ 
			bottom isZero
				ifTrue: [ e bottomOffset: windowBorderWidth negated ]
				ifFalse: [ e bottomOffset: bottom - ProportionalSplitterMorph splitterWidth ]].
		e topFraction = 0
			ifTrue: [ 
				top isZero 
					ifTrue: [ e topOffset: windowBorderWidth ]
					ifFalse: [ e topOffset: top + ProportionalSplitterMorph splitterWidth ]]
			ifFalse: [ e topFraction = 1 ifFalse: [
						e topOffset: top + ProportionalSplitterMorph splitterWidth]].
		e generateArguments.
		e asSpecElements do: [:el |
			result add: el ]].
	
	(self commands select: [:e | e isSplitter ]) do: [:e |
		e generateArguments.
		e asSpecElements do: [:el |
			result add: el ]].
	
	result add: #checkSplitters.
	
	^ result asArray