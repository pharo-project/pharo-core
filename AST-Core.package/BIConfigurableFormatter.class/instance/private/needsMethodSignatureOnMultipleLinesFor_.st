needsMethodSignatureOnMultipleLinesFor: aMethodNode
	| cpt |
	cpt := 0.
	self methodSignatureOnMultipleLines
		ifTrue: [ 
			1 to: aMethodNode selectorParts size do: [ :i | 
				(aMethodNode selectorParts at: i) size + (aMethodNode arguments at: i) name size
					> self selectorAndArgumentCombinedMaxSize
					ifTrue: [ cpt := cpt + 1. ]. ].
			^ cpt > 1. ]
		ifFalse: [ ^ false. ].