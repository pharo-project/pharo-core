tests
testSlash
	| path actual |
	path := Path * 'plonk'.
	actual := path / 'griffle'.
	self assert: actual class = path class.
	self assert: (actual printWithDelimiter: $/)  = 'plonk/griffle'