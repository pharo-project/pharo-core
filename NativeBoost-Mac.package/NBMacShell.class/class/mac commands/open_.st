open: aString
	"self open: 'http://www.google.com'"

	| openCommand |
	openCommand := 'open "{1}"' format: { aString }.
	self run: openCommand.