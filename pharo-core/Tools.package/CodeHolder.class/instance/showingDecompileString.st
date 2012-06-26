what to show
showingDecompileString
	"Answer a string characerizing whether decompilation is showing"

	^ (self showingDecompile
		ifTrue:
			['<yes>']
		ifFalse:
			['<no>']), 'decompile'