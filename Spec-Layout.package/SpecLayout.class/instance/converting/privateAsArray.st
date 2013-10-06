privateAsArray

	| result shouldCheckSplitters |
	result := OrderedCollection new.
	shouldCheckSplitters := false.
		
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
					ifFalse: [ e leftOffset: left + ProportionalSplitterMorph splitterWidth ]]
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
		shouldCheckSplitters := true.
		e generateArguments.
			e asSpecElements do: [:el |
				result add: el ]].
				
	shouldCheckSplitters ifTrue: [ result add: #checkSplitters ].
	
	^ result asArray