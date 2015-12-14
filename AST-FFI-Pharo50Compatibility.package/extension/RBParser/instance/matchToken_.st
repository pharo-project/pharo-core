matchToken: thing 
	"Matches the token, not its type."
	currentToken value = thing ifTrue: [self step. ^true].
	^false