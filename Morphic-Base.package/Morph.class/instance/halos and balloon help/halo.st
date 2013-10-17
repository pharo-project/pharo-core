halo
	^ self outermostWorldMorph 
		ifNotNil: [:w | w haloMorphs detect: [:h | h target == self] ifNone: []]