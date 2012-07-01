what to show
prettyPrintString
	"Answer whether the receiver is showing pretty-print"

	^ ((contentsSymbol == #prettyPrint)
		ifTrue:
			['<yes>']
		ifFalse:
			['<no>']), 'prettyPrint'