as yet unclassified
categoryFromDoIt: aString
	| tokens  |
	tokens := Scanner new scanTokens: aString.
	tokens size = 3 ifFalse: [self error: 'Unrecognized category definition'].
	^ tokens at: 3