parsing
tokenize: aString 
	"answer an OrderedCollection of {string. start. end} tuples.
	tokens are separated by $- $:= $, $. and whitespace"
	| tokens answer start |
	
	tokens := aString findTokens: delimiters keep: delimiters.
	answer := OrderedCollection new.
	start := 1.
	tokens do:[:tok |
		(delimiters includes: tok first)
			ifFalse:[answer add: {tok. start. start+tok size - 1}].
		start := start + tok size].
	^answer