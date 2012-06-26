tests
testPrintWithDelimiter
	| path |
	path := (Path * 'plonk') / 'griffle'.
	self assert: (path printWithDelimiter: $%) = 'plonk%griffle'