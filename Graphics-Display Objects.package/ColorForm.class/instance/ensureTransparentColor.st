color manipulation
ensureTransparentColor
	"Ensure that the receiver (a) includes Color transparent in its color map and (b) that the entry for Color transparent is the first entry in its color map."

	| i |
self error: 'not yet implemented'.
	(colors includes: Color transparent)
		ifTrue: [
			(colors indexOf: Color transparent) = 1 ifTrue: [^ self].
			"shift the entry for color transparent"]
		ifFalse: [
			i := self unusedColormapEntry.
			i = 0 ifTrue: [self error: 'no color map entry is available'].
			colors at: i put: Color transparent.
			"shift the entry for color transparent"].
