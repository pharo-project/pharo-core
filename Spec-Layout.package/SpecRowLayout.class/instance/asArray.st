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
		e layoutFrame hasNoOffsets 
			ifTrue: [ numberOfProportionals := numberOfProportionals +1 ]].
	
	numberOfProportionals isZero
		ifTrue: [ delta := 0 ]
		ifFalse: [ delta := 1/numberOfProportionals ].
	
	self commands doWithIndex: [:e :idx |
		e layoutFrame hasNoOffsets 
			ifTrue: [
				e layoutFrame: ((currentProportional@0 corner: (currentProportional +delta)@1) asLayoutFrame leftOffset: currentOffset). 
				currentOffset := 0.
				currentProportional := currentProportional +delta.
				lastFractionIndex := idx ]
			ifFalse: [| y0 y1 |
				width := e offsets width.
				y0 := e offsets top.
				y1 := e offsets bottom.
				idx = size 
					ifTrue: [
						e layoutFrame: ((1@0 corner: 1@1) asLayoutFrame 
												topLeftOffset: width negated @y0;
												bottomRightOffset:  0@y1)]
					ifFalse: [
						e layoutFrame: ((currentProportional@0 corner: currentProportional@1) asLayoutFrame
							topLeftOffset: currentOffset@y0 ; 
							bottomRightOffset: (currentOffset + width)@y1).
						currentOffset := (currentOffset + width) ]]].
	
	(lastFractionIndex > 0 and: [ lastFractionIndex < size ])
		ifTrue: [ | index ante |
			index := size-1.
			[ index > lastFractionIndex ] whileTrue: [ | myWidth |
				ante := self commands at: index.
				index := index -1.
				myWidth := ante rightOffset - ante leftOffset.
				ante
					leftOffset: (width+myWidth) negated;
					rightOffset: width negated.
				width := width+myWidth ].
			self assert: (index = lastFractionIndex).
			ante := self commands at: index.
			ante layoutFrame rightOffset: width negated ].		
			
	(self commands reject: [:e | e isSplitter ]) do: [:e |
		| left right bottom top windowBorderWidth |
		windowBorderWidth := self class windowBorderWidth.
		left := e leftOffset.
		right := e rightOffset.

		bottom := e bottomOffset.
		top := e topOffset.
		
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