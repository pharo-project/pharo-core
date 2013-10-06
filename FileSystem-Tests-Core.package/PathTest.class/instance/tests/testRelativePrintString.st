testRelativePrintString
	| path actual |
	path := Path * 'plonk' / 'griffle'.
	actual := path printString.
	self assert: actual = 'Path * ''plonk'' / ''griffle'''