tests - line breaking
testLinesDoWithCrBetween

	| string newString |
	string := ' This is a test ', String cr,'of line breaking'.
	string linesDo: [ :line |
		self assert: ((line size) = 16)]