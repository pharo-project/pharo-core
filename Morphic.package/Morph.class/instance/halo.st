halos and balloon help
halo
	^ self outermostWorldMorph 
		ifNotNil: [:w | w haloMorphs detect: [:h | h target == self] ifNone: []]