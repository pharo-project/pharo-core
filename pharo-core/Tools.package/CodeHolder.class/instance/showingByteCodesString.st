what to show
showingByteCodesString
	"Answer whether the receiver is showing bytecodes"

	^ (self showingByteCodes
		ifTrue:
			['<yes>']
		ifFalse:
			['<no>']), 'byteCodes'