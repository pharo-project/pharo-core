tests - line breaking
testLinesDoWithCrLfBetween

	| string newString |
	string := '-This is a test-', String crlf,'of line breaking'.
	string linesDo: [ :line |
		self assert: ((line size) = 16)]