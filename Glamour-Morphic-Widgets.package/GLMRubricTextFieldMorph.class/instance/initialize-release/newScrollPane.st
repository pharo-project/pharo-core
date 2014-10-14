newScrollPane
	| sp |
	sp := GLMRubricTextFieldScrollPane new.
	sp scrollTarget: self defaultScrollTarget.
	^ sp