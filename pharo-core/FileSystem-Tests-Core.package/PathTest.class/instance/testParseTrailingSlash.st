tests
testParseTrailingSlash
	| path |
	path := Path from: 'griffle/' delimiter: $/.
	self assert: path size = 1.
	self assert: (path at: 1) = 'griffle'