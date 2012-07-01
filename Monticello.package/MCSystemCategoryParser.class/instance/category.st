as yet unclassified
category
	| tokens  |
	tokens := Scanner new scanTokens: source.
	tokens size = 3 ifFalse: [self error: 'Unrecognized category definition'].
	^ tokens at: 3