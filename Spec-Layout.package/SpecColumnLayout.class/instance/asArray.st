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
				x0 := ante leftOffset.
				y0 := ante topOffset.
				x1 := ante rightOffset.
				y1 := ante bottomOffset.
				myHeight := y1-y0.
				ante offsets: (x0@((height+myHeight) negated) corner: x1@(height negated)).
				height := height+myHeight ].
			self assert: (index = lastFractionIndex).
			ante := self commands at: index.
			x0 := ante leftOffset.
			y0 := ante topOffset.
			x1 := ante rightOffset.
			y1 := ante bottomOffset.
			ante offsets: (x0@y0 corner: x1@(height negated)) ].		
			
	self commands do: [:e |
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
	
	^ result asArray