newScrollPane
	| sp |
	sp := RubTextScrollPane new.
	sp scrollTarget: self defaultScrollTarget.
	^ sp