as yet unclassified
testSetSearchString
	| editor |
	"
	self debug: #testSetSearchString.
	"
	editor := TextMorph new editor.
	self shouldnt: [ editor setSearchString ] raise: Error.