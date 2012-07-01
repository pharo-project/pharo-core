utilities
parseMember: fileName
	| tokens |
	tokens := (self scanner scanTokens: (zip contentsOf: fileName)) first.
	^ self associate: tokens