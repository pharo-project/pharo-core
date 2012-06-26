as yet unclassified
parseMember: fileName
	| tokens |
	tokens := (self scanner scanTokens: (self zip contentsOf: fileName)) first.
	^ self associate: tokens