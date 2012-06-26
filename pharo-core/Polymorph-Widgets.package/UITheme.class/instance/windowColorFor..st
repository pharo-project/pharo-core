basic-colors
windowColorFor: aWindowOrModel 
	"Answer the colour for the given window."
	| c |
	^ self settings standardColorsOnly
		ifTrue: [self settings windowColor]
		ifFalse: [c := aWindowOrModel isMorphicModel
						ifTrue: [self patchworkUIThemeColorFor: aWindowOrModel model].
			c
				ifNil: [(self patchworkUIThemeColorFor: aWindowOrModel)
						ifNil: [self settings windowColor]]] 