private
possibleSystemSource: chgRec
	| tokens |
	sourceSystem isEmpty ifTrue:[
		tokens := Scanner new scanTokens: chgRec string.
		(tokens size = 1 and:[tokens first isString]) ifTrue:[
			sourceSystem := tokens first.
			^self]].
	doIts add: chgRec.