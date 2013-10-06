entryText: anObject
	"Set the value of entryText"

	entryText := anObject.
	self changed: #entryText.
	self textEditorMorph selectAll.
	self autoAccept ifTrue: [ self ok ].
	self textEditorMorph hasUnacceptedEdits: true.