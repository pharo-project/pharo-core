tests - various
testCharacterSeparators
	"Regression test"

	| result |
	self shouldnt: [result := '/', Character separators] raise: Error.
	self assert: result size = (Character separators size + 1).
