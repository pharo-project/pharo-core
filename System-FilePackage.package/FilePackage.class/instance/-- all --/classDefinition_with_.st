classDefinition: string with: chgRec
	| tokens theClass |
	
	self flag: #traits.
		
	tokens := string parseLiterals.

	"tokens size = 11 ifFalse:[^doIts add: chgRec]."

	theClass := self getClass: (tokens at: 3).
	theClass definition: string.
	classOrder add: theClass.