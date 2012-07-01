tests
testParseWindowsPathWithUnixDelimiters
	"self run: #testParse"
	
	| path |
	path := WindowsStore new pathFromString: 'C:\a/b/c'.
	self assert: path segments size = 4.
	self assert: path segments = #('C:' 'a' 'b' 'c')
