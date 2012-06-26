what to show
showingDocumentationString
	"Answer a string characerizing whether documentation is showing"

	^ (self showingDocumentation
		ifTrue:
			['<yes>']
		ifFalse:
			['<no>']), 'documentation'