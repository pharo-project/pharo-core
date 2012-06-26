tests - line breaking
testLinesDoWithCrLf

	| string newString |
	string := 'This is a test of line breaking', String crlf.
	string linesDo: [ :line |
		self assert: ((line size + 2) = string size)]