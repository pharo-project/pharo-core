tests
testCommaAddsExtension
	| path result |
	path := Path * 'plonk' .
	result := path, 'griffle'.
	self assert: result basename = 'plonk.griffle'