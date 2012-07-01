what to show
showDocumentation: aBoolean
	"Set the showDocumentation toggle as indicated"

	self contentsSymbol: (aBoolean ifFalse: [#source] ifTrue: [#documentation])