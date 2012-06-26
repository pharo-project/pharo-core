settings
depthChoices
	| oldDepth allDepths hasBoth allLabels | 
	oldDepth := Display nativeDepth. 
	allDepths := #(1 -1 2 -2 4 -4 8 -8 16 -16 32 -32 ) 
				select: [:d | Display supportsDisplayDepth: d].
	hasBoth := (allDepths anySatisfy: [:d | d > 0]) and: [allDepths anySatisfy: [:d | d < 0]].
	allLabels := allDepths 
				collect: [:d | String
						streamContents: [:s | 
							s print: d abs.
							hasBoth
								ifTrue: [s
										nextPutAll: (d > 0
												ifTrue: ['  (big endian)']
												ifFalse: ['  (little endian)'])]]].
	^ (allLabels with: allDepths collect: [:l :d | l -> d]) asArray sort: [:a :b | a value < b value]
