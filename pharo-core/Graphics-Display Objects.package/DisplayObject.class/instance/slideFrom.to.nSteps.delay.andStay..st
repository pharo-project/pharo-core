displaying-Display
slideFrom: startPoint to: stopPoint nSteps: nSteps delay: milliSecs andStay: stayAtEnd
	"Does not display at the first point, but does at the last.
	Moreover, if stayAtEnd is true, it leaves the dragged image at the stopPoint"
	| i |
	i := 0.
	^ self follow: [startPoint + ((stopPoint-startPoint) * i // nSteps)]
		while: [ | done |
				milliSecs ifNotNil: [(Delay forMilliseconds: milliSecs) wait].
				((done := (i := i+1) > nSteps) and: [stayAtEnd])
					ifTrue: [^ self "Return without clearing the image"].
				done not]