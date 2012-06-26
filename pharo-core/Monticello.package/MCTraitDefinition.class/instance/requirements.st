comparing
requirements
	"Assuming that traits in a composition can be identified by
	testing for the first character beeing an uppercase character
	(and thus not a special character such as {, # etc.)"

	| tokens traitNames |
	self hasTraitComposition ifFalse: [ ^Array new ].
	tokens := Scanner new scanTokens: self traitComposition.
	traitNames := tokens select: [:each | each first isUppercase].
	^traitNames asArray