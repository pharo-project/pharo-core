updateSliderWith: aMethod
	aMethod pragmas
		detect: [ :e | e keyword beginsWith: 'api:' ]
		ifFound: [ :apiPragma | 
			| min max |
			min := apiPragma arguments second.
			max := apiPragma arguments third.
			max isInteger
				ifTrue: [ choice max: max ]
				ifFalse: [ choice max: (self model perform: max) ].
			min isInteger
				ifTrue: [ choice min: min ]
				ifFalse: [ choice min: (self model perform: min) ] ]