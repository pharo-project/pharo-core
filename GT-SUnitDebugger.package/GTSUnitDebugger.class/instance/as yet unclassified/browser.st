browser 

	^ self presentations first cachedPresentation ifNotNil: [ :aComposite | aComposite presentations first ]