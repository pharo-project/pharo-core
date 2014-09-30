shrinkButtons: GLMButtons by: aDeltaValue
	|sortBlock morphs delta |
	
	morphs := OrderedCollection new.
	delta := aDeltaValue.
	
	GLMButtons do: [ :each | 
		morphs add: each -> each measureWidth.
	].
	
	"we need to sort all resizable elements one time by their measured width"
	sortBlock := [ :first :second |
		first value > second value
	].
	morphs sort: sortBlock.
	
	"no need to do anything if there is no resizable elements"
	morphs size = 0 ifTrue: [ 
		delta := 0.
	].
	
	"when there is only one resizable we can calculate width directly"
	morphs size = 1 ifTrue: [ 
		morphs first value: morphs first value - delta.
		delta := 0.
	].

	"euristics for the case when all new widths will be the same.
	it happens when delta >= the summ of all differences between each element and the smallest"
	delta > 0 ifTrue: [
		|lastValue diff|
		diff := 0.
		lastValue := morphs last value.
		morphs do: [ :each |
			diff := diff + each value - lastValue .
		].
	
		diff <= delta ifTrue: [ 
			|newValue|
			newValue := lastValue - ((delta - diff) / morphs size).
			morphs do: [ :each |
				each value: newValue.
			].
			delta := 0.
		].
	].
	
	"first iteration only when the number of resizable morphs > 1"
	delta > 0 ifTrue: [ 
		|index|
		index := 1.
		[  delta > 0 ] whileTrue: [ 
			
			(morphs at: index) value: ((morphs at: index) value - 1).
			
			(index + 1) > morphs size ifTrue: [ 
				index := 1.
			].
		
			(morphs at: index) value > (morphs at: (index + 1)) value ifTrue: [ 
				index := 1.
			].
			
			delta := delta - 1.
		].
	].

	morphs do: [ :each |
		each key updateLabelTextToFit: each value.
	].